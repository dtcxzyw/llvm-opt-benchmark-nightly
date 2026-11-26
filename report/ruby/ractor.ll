Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ractor?download=true
inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0_@rb_ractor_vm_barrier_interrupt_running_thread:bb.a
  tail call void @rb_native_mutex_lock(ptr noundef %i.a) #21
  %i.b = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !148, !nonnull !149, !noundef !149
  %i.d = getelementptr i8, ptr %.val.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr i8, ptr %i.e, i64 448
  store i8 1, ptr %i.f, align 8, !tbaa !180
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.g = getelementptr i8, ptr %0, i64 352
  %.val = load i32, ptr %i.g, align 8, !tbaa !225
  %i.h = icmp eq i32 %.val, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %ractor_lock.exit
  %i.i = getelementptr i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !259  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = atomicrmw volatile or ptr %i.k, i32 32 seq_cst, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %ractor_lock.exit
  %i.m = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i7, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i8

rb_ec_ractor_ptr.exit.i8:                         ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !148, !nonnull !149, !noundef !149
  %i.o = getelementptr i8, ptr %.val.i9, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170
  %i.q = getelementptr i8, ptr %i.p, i64 448
  store i8 0, ptr %i.q, align 8, !tbaa !180
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %bb.d, %rb_ec_ractor_ptr.exit.i8
  tail call void @rb_native_mutex_unlock(ptr noundef %i.a) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_interrupt_main_thread(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !389 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 248
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 3
  %.not6 = icmp eq i8 %i.e, 3
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = atomicrmw volatile or ptr %i.h, i32 16 seq_cst, align 4 ; 0 uses
  tail call void @rb_threadptr_interrupt(ptr noundef nonnull %i.b) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @rb_threadptr_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_all() local_unnamed_addr #0 !guid !393 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !257 ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255  ; 2 uses
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !207
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit

rb_vm_lock.exit:                                  ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8        ; 6 uses
  %i.h = getelementptr i8, ptr %i.c, i64 24       ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !223
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.preheader.i, label %ractor_terminal_interrupt_all.exit

.preheader.i:                                     ; preds = %rb_vm_lock.exit
  %.pn10.i = load ptr, ptr %i.g, align 8, !tbaa !230 ; 2 uses
  %.not11.i = icmp eq ptr %.pn10.i, %i.g
  br i1 %.not11.i, label %ractor_terminal_interrupt_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %rb_ractor_terminate_interrupt_main_thread.exit.i
  %.pn12.i = phi ptr [ %.pn.i, %rb_ractor_terminate_interrupt_main_thread.exit.i ], [ %.pn10.i, %.preheader.i ] ; 3 uses
  %.0.i = getelementptr i8, ptr %.pn12.i, i64 -360
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !255
  %.not9.i = icmp eq ptr %.0.i, %i.k
  br i1 %.not9.i, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.pn12.i, i64 -40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237  ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.m, null
  br i1 %.not.i.i15, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 248
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 3
  %.not6.i.i = icmp eq i8 %i.p, 3
  br i1 %.not6.i.i, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !260
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = atomicrmw volatile or ptr %i.s, i32 16 seq_cst, align 4 ; 0 uses
  tail call void @rb_threadptr_interrupt(ptr noundef nonnull %i.m) #21
  br label %rb_ractor_terminate_interrupt_main_thread.exit.i

rb_ractor_terminate_interrupt_main_thread.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %.pn.i = load ptr, ptr %.pn12.i, align 8, !tbaa !230 ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.g
  br i1 %.not.i, label %ractor_terminal_interrupt_all.exit, label %.lr.ph.i, !llvm.loop !390

ractor_terminal_interrupt_all.exit:               ; preds = %rb_ractor_terminate_interrupt_main_thread.exit.i, %rb_vm_lock.exit, %.preheader.i
  %i.u = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !207
  %.not.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i16, label %bb.f, label %rb_vm_unlock.exit

bb.f:                                             ; preds = %ractor_terminal_interrupt_all.exit
  tail call void @rb_vm_unlock_body() #21
  br label %rb_vm_unlock.exit

rb_vm_unlock.exit:                                ; preds = %ractor_terminal_interrupt_all.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !191
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !191
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !148
  tail call void @rb_thread_terminate_all(ptr noundef %.val.i) #21
  %i.y = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !207
  %.not.i.i17 = icmp eq ptr %i.y, null
  br i1 %.not.i.i17, label %bb.g, label %rb_vm_lock.exit18

bb.g:                                             ; preds = %rb_vm_unlock.exit
  tail call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit18

rb_vm_lock.exit18:                                ; preds = %rb_vm_unlock.exit, %bb.g
  %i.z = load i32, ptr %i.h, align 8, !tbaa !223
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %rb_vm_lock.exit18
  %i.ab = getelementptr i8, ptr %i.c, i64 152     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.e, i64 352     ; 5 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 28      ; 4 uses
  %i.ae = getelementptr i8, ptr %i.e, i64 312     ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 104
  %i.ag = getelementptr i8, ptr %i.c, i64 456     ; 2 uses
  store i8 1, ptr %i.ab, align 8, !tbaa !258
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !225
  %cond.i.i.i49 = icmp eq i32 %i.ah, 3
  br i1 %cond.i.i.i49, label %._crit_edge50, label %rb_vm_ractor_blocking_cnt_inc.exit

._crit_edge50:                                    ; preds = %.backedge, %.lr.ph38
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_inc.exit:               ; preds = %.lr.ph38, %.backedge
  store i32 2, ptr %i.ac, align 8, !tbaa !225
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !224
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !224
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !259
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %.val14 = load ptr, ptr %i.al, align 8, !tbaa !148
  call void @rb_del_running_thread(ptr noundef %.val14) #21
  call void @rb_vm_cond_timedwait(ptr noundef nonnull %i.c, ptr noundef %i.af, i64 noundef 1000) #21
  %i.am = load i8, ptr %i.ag, align 8, !tbaa !394, !range !196, !noundef !149
  %i.an = trunc nuw i8 %i.am to i1
  %0 = load ptr, ptr @ruby_single_main_ractor, align 8
  %1 = icmp eq ptr %0, null
  %or.cond = select i1 %i.an, i1 %1, i1 false
  br i1 %or.cond, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %rb_vm_ractor_blocking_cnt_inc.exit, %rb_vm_lock_enter_nb.exit
  %i.ao = phi ptr [ %i.ap, %rb_vm_lock_enter_nb.exit ], [ null, %rb_vm_ractor_blocking_cnt_inc.exit ] ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i19, label %rb_vm_unlock.exit20, label %rb_vm_unlock.exit20.thread

rb_vm_unlock.exit20.thread:                       ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %rb_vm_lock_enter_nb.exit

rb_vm_unlock.exit20:                              ; preds = %.lr.ph.split
  call void @rb_vm_unlock_body() #21
  %.pr = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %.not.i.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i.i21, label %bb.h, label %rb_vm_lock_enter_nb.exit

bb.h:                                             ; preds = %rb_vm_unlock.exit20
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.b) #21
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !207
  br label %rb_vm_lock_enter_nb.exit

rb_vm_lock_enter_nb.exit:                         ; preds = %rb_vm_unlock.exit20.thread, %rb_vm_unlock.exit20, %bb.h
  %i.ap = phi ptr [ %i.ao, %rb_vm_unlock.exit20.thread ], [ %.pr, %rb_vm_unlock.exit20 ], [ %.pre, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.aq = load i8, ptr %i.ag, align 8, !tbaa !394, !range !196, !noundef !149
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.split, label %._crit_edge, !llvm.loop !391

._crit_edge:                                      ; preds = %rb_vm_lock_enter_nb.exit, %rb_vm_ractor_blocking_cnt_inc.exit
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !259
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %.val = load ptr, ptr %i.at, align 8, !tbaa !148
  call void @rb_add_running_thread(ptr noundef %.val) #21
  %i.au = load i32, ptr %i.ad, align 4, !tbaa !224
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.ad, align 4, !tbaa !224
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !225
  %cond.i.i = icmp eq i32 %i.aw, 3
  br i1 %cond.i.i, label %bb.i, label %rb_vm_ractor_blocking_cnt_dec.exit

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_dec.exit:               ; preds = %._crit_edge
  store i32 1, ptr %i.ac, align 8, !tbaa !225
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !223
  %i.ay = icmp ugt i32 %i.ax, 1
  br i1 %i.ay, label %.preheader.i22, label %._crit_edge39

.preheader.i22:                                   ; preds = %rb_vm_ractor_blocking_cnt_dec.exit
  %.pn10.i23 = load ptr, ptr %i.g, align 8, !tbaa !230 ; 2 uses
  %.not11.i24 = icmp eq ptr %.pn10.i23, %i.g
  br i1 %.not11.i24, label %.backedge, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22, %rb_ractor_terminate_interrupt_main_thread.exit.i31
  %.pn12.i26 = phi ptr [ %.pn.i32, %rb_ractor_terminate_interrupt_main_thread.exit.i31 ], [ %.pn10.i23, %.preheader.i22 ] ; 3 uses
  %.0.i27 = getelementptr i8, ptr %.pn12.i26, i64 -360
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !255
  %.not9.i28 = icmp eq ptr %.0.i27, %i.az
  br i1 %.not9.i28, label %rb_ractor_terminate_interrupt_main_thread.exit.i31, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i25
  %i.ba = getelementptr i8, ptr %.pn12.i26, i64 -40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !237 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i29, label %rb_ractor_terminate_interrupt_main_thread.exit.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr i8, ptr %i.bb, i64 248
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = and i8 %i.bd, 3
  %.not6.i.i30 = icmp eq i8 %i.be, 3
  br i1 %.not6.i.i30, label %rb_ractor_terminate_interrupt_main_thread.exit.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr i8, ptr %i.bb, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !260
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = atomicrmw volatile or ptr %i.bh, i32 16 seq_cst, align 4 ; 0 uses
  call void @rb_threadptr_interrupt(ptr noundef nonnull %i.bb) #21
  br label %rb_ractor_terminate_interrupt_main_thread.exit.i31

rb_ractor_terminate_interrupt_main_thread.exit.i31: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i25
  %.pn.i32 = load ptr, ptr %.pn12.i26, align 8, !tbaa !230 ; 2 uses
  %.not.i33 = icmp eq ptr %.pn.i32, %i.g
  br i1 %.not.i33, label %ractor_terminal_interrupt_all.exit34.loopexit, label %.lr.ph.i25, !llvm.loop !390

ractor_terminal_interrupt_all.exit34.loopexit:    ; preds = %rb_ractor_terminate_interrupt_main_thread.exit.i31
  %.pre42 = load i32, ptr %i.h, align 8, !tbaa !223
  %i.bj = icmp ugt i32 %.pre42, 1
  br i1 %i.bj, label %.backedge, label %._crit_edge39

.backedge:                                        ; preds = %.preheader.i22, %ractor_terminal_interrupt_all.exit34.loopexit
  store i8 1, ptr %i.ab, align 8, !tbaa !258
  %i.bk = load i32, ptr %i.ac, align 8, !tbaa !225
  %cond.i.i.i = icmp eq i32 %i.bk, 3
  br i1 %cond.i.i.i, label %._crit_edge50, label %rb_vm_ractor_blocking_cnt_inc.exit, !llvm.loop !392

._crit_edge39:                                    ; preds = %rb_vm_ractor_blocking_cnt_dec.exit, %ractor_terminal_interrupt_all.exit34.loopexit, %rb_vm_lock.exit18
  %i.bl = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !207
  %.not.i.i35 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i35, label %bb.m, label %rb_vm_unlock.exit36

bb.m:                                             ; preds = %._crit_edge39
  call void @rb_vm_unlock_body() #21
  br label %rb_vm_unlock.exit36

rb_vm_unlock.exit36:                              ; preds = %._crit_edge39, %bb.m
  ret void
}

declare void @rb_thread_terminate_all(ptr noundef) local_unnamed_addr #1

declare void @rb_del_running_thread(ptr noundef) local_unnamed_addr #1

declare void @rb_vm_cond_timedwait(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_add_running_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_main_ractor_ec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !396 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.c = getelementptr i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !397
  %i.g = getelementptr i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Ractor() local_unnamed_addr #0 !guid !398 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !181
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.12, i64 noundef %i.a) #21 ; 2 uses
  store i64 %i.b, ptr @rb_cRactor, align 8, !tbaa !181
  tail call void @rb_undef_alloc_func(i64 noundef %i.b) #21
  %i.c = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !181
  %i.e = tail call i64 @rb_define_class_under(i64 noundef %i.c, ptr noundef nonnull @.str.13, i64 noundef %i.d) #21 ; 2 uses
  store i64 %i.e, ptr @rb_eRactorError, align 8, !tbaa !181
  %i.f = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.g = tail call i64 @rb_define_class_under(i64 noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef %i.e) #21
  store i64 %i.g, ptr @rb_eRactorIsolationError, align 8, !tbaa !181
  %i.h = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.i = load i64, ptr @rb_eRactorError, align 8, !tbaa !181
  %i.j = tail call i64 @rb_define_class_under(i64 noundef %i.h, ptr noundef nonnull @.str.15, i64 noundef %i.i) #21
  store i64 %i.j, ptr @rb_eRactorRemoteError, align 8, !tbaa !181
  %i.k = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.l = load i64, ptr @rb_eRactorError, align 8, !tbaa !181
  %i.m = tail call i64 @rb_define_class_under(i64 noundef %i.k, ptr noundef nonnull @.str.16, i64 noundef %i.l) #21
  store i64 %i.m, ptr @rb_eRactorMovedError, align 8, !tbaa !181
  %i.n = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.o = load i64, ptr @rb_eStopIteration, align 8, !tbaa !181
  %i.p = tail call i64 @rb_define_class_under(i64 noundef %i.n, ptr noundef nonnull @.str.17, i64 noundef %i.o) #21
  store i64 %i.p, ptr @rb_eRactorClosedError, align 8, !tbaa !181
  %i.q = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.r = load i64, ptr @rb_eRactorError, align 8, !tbaa !181
  %i.s = tail call i64 @rb_define_class_under(i64 noundef %i.q, ptr noundef nonnull @.str.18, i64 noundef %i.r) #21
  store i64 %i.s, ptr @rb_eRactorUnsafeError, align 8, !tbaa !181
  %i.t = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.u = load i64, ptr @rb_cBasicObject, align 8, !tbaa !181
  %i.v = tail call i64 @rb_define_class_under(i64 noundef %i.t, ptr noundef nonnull @.str.19, i64 noundef %i.u) #21 ; 2 uses
  store i64 %i.v, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_undef_alloc_func(i64 noundef %i.v) #21
  %i.w = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.20, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.x = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.21, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.y = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.y, ptr noundef nonnull @.str.22, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.z = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.z, ptr noundef nonnull @.str.23, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.aa = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.24, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ab = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.25, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ac = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.26, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ad = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.27, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ae = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.28, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.af = load i64, ptr @rb_cRactor, align 8, !tbaa !181
  %i.ag = load i64, ptr @rb_cObject, align 8, !tbaa !181
  %i.ah = tail call i64 @rb_define_class_under(i64 noundef %i.af, ptr noundef nonnull @.str.101, i64 noundef %i.ag) #21 ; 2 uses
  store i64 %i.ah, ptr @rb_cRactorPort, align 8, !tbaa !181
  tail call void @rb_define_alloc_func(i64 noundef %i.ah, ptr noundef nonnull @ractor_port_alloc) #21
  %i.ai = load i64, ptr @rb_cRactorPort, align 8, !tbaa !181
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.102, ptr noundef nonnull @ractor_port_initialize, i32 noundef 0) #21
end_hunk_0
begin_hunk_1_@move_enter:bb.a
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef 0, i64 noundef %i.t, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef %i.t, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi i64 [ %i.z, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = add i64 %i.u, -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.ae, i1 noundef false) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread18, %bb.a, %bb.b, %bb.h
  %.sink = phi i64 [ %i.ab, %bb.h ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %rb_ractor_shareable_p.exit.thread18 ], [ %0, %rb_ractor_shareable_p.exit ]
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %rb_ractor_shareable_p.exit.thread18 ], [ 1, %rb_ractor_shareable_p.exit ]
  %i.af = getelementptr i8, ptr %1, i64 32
  store i64 %.sink, ptr %i.af, align 8, !tbaa !282
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @move_leave(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 !guid !526 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !236
  %i.c = and i64 %i.b, -33
  %i.d = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !282
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !236
  %i.h = and i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %i.f, align 8, !tbaa !236
  %i.j = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.k = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #21
  %i.l = add i64 %i.k, -8                         ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.f, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull readonly align 8 %i.j, i64 noundef range(i64 1, 0) %i.l, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.n = load i64, ptr %i.d, align 8, !tbaa !282
  tail call void @rb_gc_writebarrier_remember(i64 noundef %i.n) #21
  %i.o = icmp eq i64 %0, 0
  %i.p = and i64 %0, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  %.pre = load i64, ptr %i.a, align 8, !tbaa !236 ; 2 uses
  br i1 %i.r, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.s = trunc i64 %.pre to i32
  %i.t = and i32 %i.s, 31
  switch i32 %i.t, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %ruby_nonempty_memcpy.exit, %rb_type.exit.i
  %i.u = and i64 %.pre, 578712547822141440
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.c, !prof !319

bb.c:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !282
  tail call void @rb_replace_generic_ivar(i64 noundef %i.v, i64 noundef %0) #21
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.c, %rb_obj_gen_fields_p.exit
  %i.w = load i64, ptr %i.d, align 8, !tbaa !282
  tail call void @rb_gc_obj_id_moved(i64 noundef %i.w) #21
  %i.x = load i64, ptr %i.a, align 8, !tbaa !236
  %i.y = and i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, 2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #21
  store i64 %i.z, ptr %i.a, align 8, !tbaa !236
  %i.aa = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !181
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !181
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @obj_traverse_replace_i(i64 noundef %0, ptr noundef %1) unnamed_addr #0 !guid !531 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %2 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 7 uses
  %3 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 9 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 32
  store i64 %0, ptr %i.h, align 8, !tbaa !282
  br label %.critedge210

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !280
  %i.j = tail call i32 %i.i(i64 noundef %0, ptr noundef nonnull %1) #21
  switch i32 %i.j, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %.critedge210
  ]

bb.d:                                             ; preds = %bb.c
  br label %.critedge210

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 32         ; 13 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !282
  store i64 %i.l, ptr %i.b, align 8, !tbaa !181
  %i.m = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !532  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %obj_traverse_replace_rec.exit, !prof !244

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @rb_ident_hash_new() #21   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !533
  %i.q = add i64 %i.o, 24
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !532
  br label %obj_traverse_replace_rec.exit

obj_traverse_replace_rec.exit:                    ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %i.t = call i32 @rb_st_lookup(ptr noundef %i.s, i64 noundef %0, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !320

bb.g:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !181
  store i64 %i.u, ptr %i.k, align 8, !tbaa !282
  br label %.critedge210

bb.h:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !532  ; 2 uses
  %.not.i219 = icmp eq ptr %i.v, null
  br i1 %.not.i219, label %bb.i, label %rb_obj_written.exit, !prof !244

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @rb_ident_hash_new() #21        ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !533
  %i.y = add i64 %i.w, 24
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store ptr %i.z, ptr %i.m, align 8, !tbaa !532
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.z, %bb.i ], [ %i.v, %bb.h ]
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !181
  %i.ac = call i32 @rb_st_insert(ptr noundef %i.aa, i64 noundef %0, i64 noundef %i.ab) #21 ; 0 uses
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !533
  call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %0) #21
  %i.af = load i64, ptr %i.b, align 8, !tbaa !181 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_obj_written.exit221, label %bb.j

bb.j:                                             ; preds = %rb_obj_written.exit
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !533
  call void @rb_gc_writebarrier(i64 noundef %i.ak, i64 noundef %i.af) #21
  br label %rb_obj_written.exit221

rb_obj_written.exit221:                           ; preds = %rb_obj_written.exit, %bb.j
  %i.al = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !318, !range !196, !noundef !149
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit221
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !181
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rb_obj_written.exit221
  %i.ap = phi i64 [ %i.ao, %bb.k ], [ %0, %rb_obj_written.exit221 ] ; 47 uses
  %i.aq = icmp eq i64 %i.ap, 0                    ; 2 uses
  %i.ar = and i64 %i.ap, 7
  %i.as = icmp ne i64 %i.ar, 0                    ; 2 uses
  %i.at = or i1 %i.aq, %i.as                      ; 2 uses
  %.pre.i = inttoptr i64 %i.ap to ptr             ; 14 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !236 ; 2 uses
  br i1 %i.at, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %bb.l
  %i.au = trunc i64 %.pre to i32
  %i.av = and i32 %i.au, 31
  switch i32 %i.av, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %bb.l, %rb_type.exit.i
  %i.aw = and i64 %.pre, 578712547822141440
  %.not249 = icmp eq i64 %i.aw, 0
  br i1 %.not249, label %rb_obj_gen_fields_p.exit.thread, label %bb.m, !prof !319

bb.m:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.ax = call i64 @rb_obj_fields(i64 noundef %i.ap, i64 noundef 0) #21 ; 5 uses
  %.pre284 = load i64, ptr %.pre.i, align 8, !tbaa !236 ; 2 uses
  %i.ay = and i64 %.pre284, 576460752303423488
  %.not250 = icmp eq i64 %i.ay, 0
  %or.cond = select i1 %i.at, i1 true, i1 %.not250, !prof !534
  %.not.i224 = icmp eq i64 %i.ax, 0               ; 2 uses
  br i1 %or.cond, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.n, !prof !534

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !323
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.ba, align 8, !tbaa !324
  br i1 %.not.i224, label %rb_imemo_fields_complex_tbl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = inttoptr i64 %i.ax to ptr
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !254
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.n, %bb.o
  %.0.i223 = phi ptr [ %i.bd, %bb.o ], [ null, %bb.n ]
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = call i32 @rb_st_foreach_with_replace(ptr noundef %.0.i223, ptr noundef nonnull @obj_iv_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_iv_hash_traverse_replace_i, i64 noundef %i.be) #21 ; 0 uses
  %i.bg = load i8, ptr %2, align 8, !tbaa !325, !range !196, !noundef !149
  %i.bh = trunc nuw i8 %i.bg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.bh, label %.critedge210, label %rb_obj_gen_fields_p.exit.thread

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.m
  %i.bi = lshr i64 %.pre284, 32
  %i.bj = and i64 %i.bi, 524287
  %i.bk = load ptr, ptr @rb_shape_tree, align 8, !tbaa !275
  %i.bl = getelementptr [40 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 28
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !278 ; 2 uses
  br i1 %.not.i224, label %rb_imemo_fields_ptr.exit, label %bb.p

bb.p:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.bo = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !236
  %i.bq = and i64 %i.bp, 65536
  %.not5.i = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.q, !prof !320

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !254
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.p, %bb.q
  %.0.i225 = phi ptr [ %i.bs, %bb.q ], [ null, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.br, %bb.p ]
  %.not173260.not = icmp eq i16 %i.bn, 0
  br i1 %.not173260.not, label %rb_obj_gen_fields_p.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit
  %wide.trip.count = zext i16 %i.bn to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_write.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_write.exit ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %.0.i225, i64 %indvars.iv ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !181 ; 2 uses
  %i.bv = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.bu, ptr noundef nonnull %1)
  %.not171 = icmp eq i32 %i.bv, 0
  br i1 %.not171, label %bb.r, label %.critedge210

bb.r:                                             ; preds = %.lr.ph
  %i.bw = load i64, ptr %i.k, align 8, !tbaa !282 ; 5 uses
  %.not172 = icmp eq i64 %i.bw, %i.bu
  br i1 %.not172, label %rb_obj_write.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !181
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = and i64 %i.bw, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rb_obj_write.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @rb_gc_writebarrier(i64 noundef %i.ax, i64 noundef %i.bw) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.r, %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %rb_obj_gen_fields_p.exit.thread, label %.lr.ph, !llvm.loop !527

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_obj_write.exit, %rb_imemo_fields_ptr.exit, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_imemo_fields_complex_tbl.exit, %rb_obj_gen_fields_p.exit
  %i.cb = load i64, ptr %.pre.i, align 8, !tbaa !236 ; 6 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 31
  switch i32 %i.cd, label %bb.br [
    i32 4, label %.critedge198
    i32 10, label %.critedge198
    i32 6, label %.critedge198
    i32 11, label %.critedge198
    i32 20, label %.critedge198
    i32 5, label %bb.u
    i32 1, label %bb.v
    i32 7, label %bb.ab
    i32 8, label %bb.al
    i32 9, label %bb.aq
    i32 13, label %bb.aw
    i32 15, label %bb.ba
    i32 14, label %bb.bh
    i32 12, label %bb.bo
    i32 26, label %.critedge210
  ]

bb.u:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_str_make_independent(i64 noundef %i.ap) #21
  br label %.critedge198

bb.v:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ce = xor i1 %i.as, %i.aq
  %i.cf = and i64 %i.cb, 576460752303423488
  %i.cg = icmp eq i64 %i.cf, 0
  %or.cond.not = or i1 %i.cg, %i.ce
  br i1 %or.cond.not, label %rb_shape_obj_too_complex_p.exit226.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store i64 %i.ap, ptr %i.ch, align 8, !tbaa !323
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.ci, align 8, !tbaa !324
  %i.cj = getelementptr i8, ptr %.pre.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !254
  %i.cl = ptrtoint ptr %3 to i64
  %i.cm = call i32 @rb_st_foreach_with_replace(ptr noundef %i.ck, ptr noundef nonnull @obj_iv_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_iv_hash_traverse_replace_i, i64 noundef %i.cl) #21 ; 0 uses
  %i.cn = load i8, ptr %3, align 8, !tbaa !325, !range !196, !noundef !149
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.co, label %.critedge210, label %.critedge198

rb_shape_obj_too_complex_p.exit226.thread:        ; preds = %bb.v
  %i.cp = lshr i64 %i.cb, 32
  %i.cq = and i64 %i.cp, 524287
  %i.cr = load ptr, ptr @rb_shape_tree, align 8, !tbaa !275
  %i.cs = getelementptr [40 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = getelementptr i8, ptr %i.cs, i64 28
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !278 ; 2 uses
  %i.cv = and i64 %i.cb, 65536
  %.not.i227 = icmp eq i64 %i.cv, 0
  %i.cw = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  br i1 %.not.i227, label %ROBJECT_FIELDS.exit, label %bb.x, !prof !320

bb.x:                                             ; preds = %rb_shape_obj_too_complex_p.exit226.thread
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !254
  br label %ROBJECT_FIELDS.exit

ROBJECT_FIELDS.exit:                              ; preds = %rb_shape_obj_too_complex_p.exit226.thread, %bb.x
  %.0.i228 = phi ptr [ %i.cx, %bb.x ], [ %i.cw, %rb_shape_obj_too_complex_p.exit226.thread ]
  %.not195265.not = icmp eq i16 %i.cu, 0
  br i1 %.not195265.not, label %.critedge198, label %.lr.ph267.preheader

.lr.ph267.preheader:                              ; preds = %ROBJECT_FIELDS.exit
  %wide.trip.count282 = zext i16 %i.cu to i64
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %rb_obj_write.exit229
  %indvars.iv279 = phi i64 [ 0, %.lr.ph267.preheader ], [ %indvars.iv.next280, %rb_obj_write.exit229 ] ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %.0.i228, i64 %indvars.iv279 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !181 ; 2 uses
  %i.da = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.cz, ptr noundef nonnull %1)
  %.not193 = icmp eq i32 %i.da, 0
  br i1 %.not193, label %bb.y, label %.critedge210

bb.y:                                             ; preds = %.lr.ph267
  %i.db = load i64, ptr %i.k, align 8, !tbaa !282 ; 5 uses
  %.not194 = icmp eq i64 %i.db, %i.cz
  br i1 %.not194, label %rb_obj_write.exit229, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !181
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = and i64 %i.db, 7
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = or i1 %i.dc, %i.de
  br i1 %i.df, label %rb_obj_write.exit229, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.db) #21
  br label %rb_obj_write.exit229

rb_obj_write.exit229:                             ; preds = %bb.y, %bb.z, %bb.aa
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %.critedge198, label %.lr.ph267, !llvm.loop !528

bb.ab:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_ary_cancel_sharing(i64 noundef %i.ap) #21
  %5 = inttoptr i64 %i.ap to ptr                  ; 2 uses
  %i.dg = getelementptr i8, ptr %5, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ab
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %bb.ak ], [ 0, %bb.ab ] ; 4 uses
  %i.dh = load i64, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.di = and i64 %i.dh, 8192
  %.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = lshr i64 %i.dh, 15
  %i.dk = and i64 %i.dj, 127
  br label %rb_array_len.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dl = load i64, ptr %i.dg, align 8, !tbaa !254
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i64 [ %i.dk, %bb.ad ], [ %i.dl, %bb.ae ] ; 3 uses
  %i.dm = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.dm, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.af

bb.af:                                            ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #23
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %.not192 = icmp slt i64 %indvars.iv276, %.0.i.i
  br i1 %.not192, label %bb.ag, label %.critedge201

bb.ag:                                            ; preds = %RARRAY_LENINT.exit
  %i.dn = call i64 @rb_ary_entry(i64 noundef %i.ap, i64 noundef %indvars.iv276) #25 ; 2 uses
  %i.do = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.dn, ptr noundef nonnull %1)
  %.not190 = icmp eq i32 %i.do, 0
  br i1 %.not190, label %bb.ah, label %.critedge210

bb.ah:                                            ; preds = %bb.ag
  %i.dp = load i64, ptr %i.k, align 8, !tbaa !282 ; 5 uses
  %.not191 = icmp eq i64 %i.dn, %i.dp
  br i1 %.not191, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = call ptr @rb_ary_ptr_use_start(i64 noundef %i.ap) #21
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %indvars.iv276
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !181
  %i.ds = icmp eq i64 %i.dp, 0
  %i.dt = and i64 %i.dp, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %RARRAY_ASET.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.dp) #21
  br label %RARRAY_ASET.exit

RARRAY_ASET.exit:                                 ; preds = %bb.ai, %bb.aj
  call void @rb_ary_ptr_use_end(i64 noundef %i.ap) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %RARRAY_ASET.exit
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  br label %bb.ac, !llvm.loop !529

.critedge201:                                     ; preds = %RARRAY_LENINT.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !238
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !535
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.dx = load volatile i64, ptr %i.dw, align 8, !tbaa !181 ; 0 uses
  %.pre288 = load i64, ptr %i.a, align 8, !tbaa !181
  br label %.critedge198

bb.al:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store i64 %i.ap, ptr %i.dy, align 8, !tbaa !323
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.dz, align 8, !tbaa !324
  %i.ea = ptrtoint ptr %4 to i64
  %i.eb = call i32 @rb_hash_stlike_foreach_with_replace(i64 noundef %i.ap, ptr noundef nonnull @obj_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_hash_traverse_replace_i, i64 noundef %i.ea) #21 ; 0 uses
  %i.ec = load i8, ptr %4, align 8, !tbaa !325, !range !196, !noundef !149
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.critedge203, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = getelementptr i8, ptr %.pre.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !327 ; 2 uses
  %i.eg = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.ef, ptr noundef nonnull %1)
  %.not188 = icmp eq i32 %i.eg, 0
  br i1 %.not188, label %bb.an, label %.critedge205

bb.an:                                            ; preds = %bb.am
  %i.eh = load i64, ptr %i.k, align 8, !tbaa !282 ; 2 uses
  %.not189 = icmp eq i64 %i.ef, %i.eh
  br i1 %.not189, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = call i64 @rb_hash_set_ifnone(i64 noundef %i.ap, i64 noundef %i.eh) #21 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge198

bb.aq:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ej = and i64 %i.cb, 1040384
  %.not.i230 = icmp eq i64 %i.ej, 0
  br i1 %.not.i230, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = lshr i64 %i.cb, 13
  %i.el = and i64 %i.ek, 127
  %i.em = getelementptr i8, ptr %.pre.i, i64 16
  br label %RSTRUCT_CONST_PTR.exit

bb.as:                                            ; preds = %bb.aq
  %i.en = getelementptr i8, ptr %.pre.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !254
  %i.ep = getelementptr i8, ptr %.pre.i, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !254
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.ar, %bb.as
  %.0.i231245 = phi i64 [ %i.el, %bb.ar ], [ %i.eo, %bb.as ] ; 2 uses
  %.0.i233 = phi ptr [ %i.em, %bb.ar ], [ %i.eq, %bb.as ]
  %.not187262 = icmp sgt i64 %.0.i231245, 0
  br i1 %.not187262, label %.lr.ph264, label %.critedge198

.lr.ph264:                                        ; preds = %RSTRUCT_CONST_PTR.exit, %rb_obj_write.exit234
  %.0263 = phi i64 [ %i.ez, %rb_obj_write.exit234 ], [ 0, %RSTRUCT_CONST_PTR.exit ] ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %.0.i233, i64 %.0263 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !181 ; 2 uses
  %i.et = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.es, ptr noundef nonnull %1)
  %.not185 = icmp eq i32 %i.et, 0
  br i1 %.not185, label %bb.at, label %.critedge210

bb.at:                                            ; preds = %.lr.ph264
  %i.eu = load i64, ptr %i.k, align 8, !tbaa !282 ; 5 uses
  %.not186 = icmp eq i64 %i.eu, %i.es
  br i1 %.not186, label %rb_obj_write.exit234, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !181
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = and i64 %i.eu, 7
  %i.ex = icmp ne i64 %i.ew, 0
  %i.ey = or i1 %i.ev, %i.ex
  br i1 %i.ey, label %rb_obj_write.exit234, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.eu) #21
  br label %rb_obj_write.exit234

rb_obj_write.exit234:                             ; preds = %bb.at, %bb.au, %bb.av
  %i.ez = add nuw nsw i64 %.0263, 1               ; 2 uses
  %exitcond275.not = icmp eq i64 %i.ez, %.0.i231245
  br i1 %exitcond275.not, label %.critedge198, label %.lr.ph264, !llvm.loop !530

bb.aw:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fa = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !329 ; 2 uses
  %i.fc = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fb, ptr noundef nonnull %1)
  %.not183 = icmp eq i32 %i.fc, 0
  br i1 %.not183, label %bb.ax, label %.critedge210

bb.ax:                                            ; preds = %bb.aw
  %i.fd = load i64, ptr %i.k, align 8, !tbaa !282 ; 5 uses
  %.not184 = icmp eq i64 %i.fd, %i.fb
  br i1 %.not184, label %.critedge198, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !181
  %i.fe = icmp eq i64 %i.fd, 0
  %i.ff = and i64 %i.fd, 7
  %i.fg = icmp ne i64 %i.ff, 0
  %i.fh = or i1 %i.fe, %i.fg
  br i1 %i.fh, label %.critedge198, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.fd) #21
  br label %.critedge198

bb.ba:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fi = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !331 ; 2 uses
  %i.fk = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fj, ptr noundef nonnull %1)
  %.not179 = icmp eq i32 %i.fk, 0
  br i1 %.not179, label %bb.bb, label %.critedge210

bb.bb:                                            ; preds = %bb.ba
  %i.fl = load i64, ptr %i.k, align 8, !tbaa !282 ; 5 uses
  %.not180 = icmp eq i64 %i.fl, %i.fj
  br i1 %.not180, label %rb_obj_write.exit236, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !181
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = and i64 %i.fl, 7
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = or i1 %i.fm, %i.fo
  br i1 %i.fp, label %rb_obj_write.exit236, label %bb.bd
end_hunk_1
