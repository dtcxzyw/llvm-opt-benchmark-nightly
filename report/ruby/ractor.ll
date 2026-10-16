Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ractor?download=true
inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0_@ractor_init:bb.a
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i64 %i.bq, 7
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = or i1 %i.br, %i.bt
  br i1 %i.bu, label %rb_obj_set_shareable.exit16, label %imemo_type_p.exit.i.i14, !prof !125

imemo_type_p.exit.i.i14:                          ; preds = %bb.g
  %i.bv = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !117 ; 2 uses
  %i.bx = and i64 %i.bw, 61471
  %.not.i.i15 = icmp eq i64 %i.bx, 53274
  br i1 %.not.i.i15, label %bb.h, label %rb_obj_set_shareable.exit16

bb.h:                                             ; preds = %imemo_type_p.exit.i.i14
  %i.by = or i64 %i.bw, 256
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !117
  br label %rb_obj_set_shareable.exit16

rb_obj_set_shareable.exit16:                      ; preds = %bb.h, %imemo_type_p.exit.i.i14, %bb.g, %rb_obj_gen_fields_p.exit.i.i12, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %bb.f
  %i.bz = getelementptr i8, ptr %0, i64 344
  store i64 %2, ptr %i.bz, align 8, !tbaa !83
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !62
  %i.cb = getelementptr i8, ptr %0, i64 336
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_atexit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call fastcc void @ractor_atexit(ptr noundef %.0.i, i64 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_atexit(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.b) #21
  %i.c = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %ractor_lock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.e = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr i8, ptr %i.f, i64 448
  store i8 1, ptr %i.g, align 8, !tbaa !61
  br label %ractor_lock_self.exit.i

ractor_lock_self.exit.i:                          ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ractor_lock_self.exit.i
  %i.j = ptrtoint ptr %0 to i64
  %i.k = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.i, ptr noundef nonnull @ractor_free_all_ports_i, i64 noundef %i.j) #21 ; 0 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !114
  tail call void @rb_st_free_table(ptr noundef %i.l) #21
  store ptr null, ptr %i.h, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ractor_lock_self.exit.i
  %i.m = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 5 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %ractor_free_all_ports.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not12.i.i.i, label %ractor_queue_free.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.pn.in13.i.i.i = phi ptr [ %.pn.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.d ] ; 6 uses
  %.09.i.i.i = getelementptr i8, ptr %.pn.in13.i.i.i, i64 -40
  %.pn.i.i.i = load ptr, ptr %.pn.in13.i.i.i, align 8, !tbaa !111 ; 4 uses
  %i.p = getelementptr i8, ptr %.pn.in13.i.i.i, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = getelementptr i8, ptr %.pn.i.i.i, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !112
  store ptr %.pn.i.i.i, ptr %i.q, align 8, !tbaa !111
  store ptr %.pn.in13.i.i.i, ptr %i.p, align 8, !tbaa !112
  store ptr %.pn.in13.i.i.i, ptr %.pn.in13.i.i.i, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.09.i.i.i) #21
  %.not.i.i19.i = icmp eq ptr %.pn.i.i.i, %i.n
  br i1 %.not.i.i19.i, label %ractor_queue_free.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

ractor_queue_free.exit.i.i:                       ; preds = %.lr.ph.i.i.i, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #21
  store ptr null, ptr %i.m, align 8, !tbaa !115
  br label %ractor_free_all_ports.exit.i

ractor_free_all_ports.exit.i:                     ; preds = %ractor_queue_free.exit.i.i, %bb.c
  %i.s = getelementptr i8, ptr %0, i64 168
  store i64 %1, ptr %i.s, align 8, !tbaa !116
  %i.t = getelementptr i8, ptr %0, i64 176
  store i8 %i.a, ptr %i.t, align 8, !tbaa !126
  %i.u = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i20.i, label %ractor_unlock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i21.i

rb_ec_ractor_ptr.exit.i.i21.i:                    ; preds = %ractor_free_all_ports.exit.i
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %.val.i.i22.i = load ptr, ptr %i.v, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.w = getelementptr i8, ptr %.val.i.i22.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr i8, ptr %i.x, i64 448
  store i8 0, ptr %i.y, align 8, !tbaa !61
  br label %ractor_unlock_self.exit.i

ractor_unlock_self.exit.i:                        ; preds = %rb_ec_ractor_ptr.exit.i.i21.i, %ractor_free_all_ports.exit.i
  tail call void @rb_native_mutex_unlock(ptr noundef %i.b) #21
  %..i.i = select i1 %2, i64 3729, i64 3745
  %i.z = tail call i64 @rb_id2sym(i64 noundef %..i.i) #21
  %i.aa = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %.not2.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not2.i, label %ractor_notify_exit.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ractor_unlock_self.exit.i, %.lr.ph.i
  %.pn.in3.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %i.ab, %ractor_unlock_self.exit.i ] ; 4 uses
  %.018.i = getelementptr i8, ptr %.pn.in3.i, i64 -16 ; 2 uses
  %.pn.i = load ptr, ptr %.pn.in3.i, align 8, !tbaa !111 ; 2 uses
  tail call fastcc void @ractor_send0(ptr noundef readonly %.018.i, i64 noundef %i.z, i64 noundef 0, i1 noundef zeroext false)
  %i.ac = getelementptr i8, ptr %.pn.in3.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 2 uses
  %i.ae = load ptr, ptr %.pn.in3.i, align 8, !tbaa !111 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !112
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.018.i) #21
  %.not.i = icmp eq ptr %.pn.i, %i.aa
  br i1 %.not.i, label %ractor_notify_exit.exit, label %.lr.ph.i, !llvm.loop !233

ractor_notify_exit.exit:                          ; preds = %.lr.ph.i, %ractor_unlock_self.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_atexit_exception(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !234
  tail call fastcc void @ractor_atexit(ptr noundef %.0.i, i64 noundef %i.e, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_teardown(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %rb_vm_lock_enter.exit, label %rb_vm_lock_enter.exit.thread

rb_vm_lock_enter.exit.thread:                     ; preds = %rb_ec_ractor_ptr.exit
  %i.f = getelementptr i8, ptr %.0.i, i64 320
  br label %rb_vm_lock_enter.exit.split.us

rb_vm_lock_enter.exit:                            ; preds = %rb_ec_ractor_ptr.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %1 = icmp eq ptr %.pre, null
  %2 = getelementptr i8, ptr %.0.i, i64 320       ; 2 uses
  br i1 %1, label %4, label %rb_vm_lock_enter.exit.split.us

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit.thread, %rb_vm_lock_enter.exit
  %3 = phi ptr [ %i.f, %rb_vm_lock_enter.exit.thread ], [ %2, %rb_vm_lock_enter.exit ]
  store ptr null, ptr %3, align 8, !tbaa !118
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %4, %rb_vm_lock_enter.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

4:                                                ; preds = %rb_vm_lock_enter.exit
  store ptr null, ptr %2, align 8, !tbaa !118
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_receive_parameters(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 120
  %i.f = getelementptr i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %ractor_receive.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %ractor_receive.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %ractor_receive.exit ] ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !tbaa !122
  %i.g = inttoptr i64 %.val to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ] ; 5 uses
  %i.l = call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i, ptr noundef readonly %i.i) ; 2 uses
  %.not13.i = icmp eq i64 %i.l, 36
  br i1 %.not13.i, label %.lr.ph.i.preheader, label %ractor_receive.exit

.lr.ph.i.preheader:                               ; preds = %rb_ec_ractor_ptr.exit.i
  %i.m = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.n = getelementptr i8, ptr %.0.i.i, i64 128   ; 2 uses
  %i.o = getelementptr i8, ptr %.0.i.i, i64 56    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %ractor_try_receive.exit
  call fastcc void @ractor_wait_receive(ptr noundef nonnull %0, ptr noundef %.0.i.i)
  %.val14.i = load i64, ptr %i.m, align 8, !tbaa !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !114  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i.i6, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %.val14.i, ptr noundef nonnull %i.c) #21
  %.not8.i.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !129  ; 7 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !121, !range !77, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @ractor_delete_port(ptr noundef nonnull %.0.i.i, i64 noundef %.val14.i, i1 noundef zeroext false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.x = load i64, ptr @rb_eRactorClosedError, align 8, !tbaa !62
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.76) #22
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !108  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i, label %ractor_queue_deq.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !111 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !112
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !111
  %i.ad = getelementptr i8, ptr %i.y, i64 -40
  br label %ractor_queue_deq.exit.i

ractor_queue_deq.exit.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.ad, %bb.i ], [ null, %bb.h ] ; 6 uses
  %i.ae = load i8, ptr %i.s, align 8, !tbaa !121, !range !77, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %ractor_queue_deq.exit.i
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.val.i8 = load i64, ptr %i.m, align 8, !tbaa !128
  call void @rb_native_mutex_lock(ptr noundef %i.o) #21
  %i.ai = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i7.i, label %ractor_lock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.ak = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr i8, ptr %i.al, i64 448
  store i8 1, ptr %i.am, align 8, !tbaa !61
  br label %ractor_lock_self.exit.i

ractor_lock_self.exit.i:                          ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %bb.k
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.val.i8, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.an = call i32 @rb_st_delete(ptr noundef %.val.i9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %.not.i8.i = icmp eq i32 %i.an, 0
  br i1 %.not.i8.i, label %ractor_delete_port_locked.exit16.i, label %bb.l

bb.l:                                             ; preds = %ractor_lock_self.exit.i
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !129 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108 ; 2 uses
  %.not12.i.i9.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not12.i.i9.i, label %ractor_queue_free.exit.i15.i, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.l, %.lr.ph.i.i10.i
  %.pn.in13.i.i11.i = phi ptr [ %.pn.i.i13.i, %.lr.ph.i.i10.i ], [ %i.ap, %bb.l ] ; 6 uses
  %.09.i.i12.i = getelementptr i8, ptr %.pn.in13.i.i11.i, i64 -40
  %.pn.i.i13.i = load ptr, ptr %.pn.in13.i.i11.i, align 8, !tbaa !111 ; 4 uses
  %i.aq = getelementptr i8, ptr %.pn.in13.i.i11.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.as = getelementptr i8, ptr %.pn.i.i13.i, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !112
  store ptr %.pn.i.i13.i, ptr %i.ar, align 8, !tbaa !111
  store ptr %.pn.in13.i.i11.i, ptr %i.aq, align 8, !tbaa !112
  store ptr %.pn.in13.i.i11.i, ptr %.pn.in13.i.i11.i, align 8, !tbaa !111
  call void @ruby_xfree(ptr noundef %.09.i.i12.i) #21
  %.not.i.i14.i = icmp eq ptr %.pn.i.i13.i, %i.ao
  br i1 %.not.i.i14.i, label %ractor_queue_free.exit.i15.i, label %.lr.ph.i.i10.i, !llvm.loop !2

ractor_queue_free.exit.i15.i:                     ; preds = %.lr.ph.i.i10.i, %bb.l
  call void @ruby_xfree(ptr noundef nonnull %i.ao) #21
  br label %ractor_delete_port_locked.exit16.i

ractor_delete_port_locked.exit16.i:               ; preds = %ractor_queue_free.exit.i15.i, %ractor_lock_self.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i17.i, label %ractor_delete_port.exit, label %rb_ec_ractor_ptr.exit.i.i18.i

rb_ec_ractor_ptr.exit.i.i18.i:                    ; preds = %ractor_delete_port_locked.exit16.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %.val.i.i19.i = load ptr, ptr %i.au, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.av = getelementptr i8, ptr %.val.i.i19.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.ax = getelementptr i8, ptr %i.aw, i64 448
  store i8 0, ptr %i.ax, align 8, !tbaa !61
  br label %ractor_delete_port.exit

ractor_delete_port.exit:                          ; preds = %ractor_delete_port_locked.exit16.i, %rb_ec_ractor_ptr.exit.i.i18.i
  call void @rb_native_mutex_unlock(ptr noundef %i.o) #21
  br label %bb.m

bb.m:                                             ; preds = %ractor_delete_port.exit, %bb.j, %ractor_queue_deq.exit.i
  %.not.i7 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i7, label %ractor_try_receive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %.0.i.i.i, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !132 ; 2 uses
  %i.ba = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !133, !range !77, !noundef !30
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %ractor_basket_accept.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !134
  %i.bf = call fastcc i64 @ractor_make_remote_exception(i64 noundef %i.az, i64 noundef %i.be)
  call fastcc void @ractor_basket_free(ptr noundef nonnull %.0.i.i.i)
  call void @rb_exc_raise(i64 noundef %i.bf) #22
  unreachable

ractor_basket_accept.exit.i:                      ; preds = %bb.n
end_hunk_0
begin_hunk_1_@rb_ractor_send_parameters:bb.a
  br label %bb.e

._crit_edge:                                      ; preds = %RARRAY_AREF.exit, %RARRAY_LENINT.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %RARRAY_AREF.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %RARRAY_AREF.exit ] ; 2 uses
  %.val = load i64, ptr %i.j, align 8, !tbaa !122
  %i.m = inttoptr i64 %.val to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = load i64, ptr %i.a, align 8, !tbaa !117
  %i.q = and i64 %i.p, 8192
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %bb.f, label %RARRAY_AREF.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !135
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i.i8 = phi ptr [ %i.r, %bb.f ], [ %i.k, %bb.e ]
  %i.s = getelementptr [8 x i8], ptr %.0.i.i8, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62
  tail call fastcc void @ractor_send0(ptr noundef readonly %i.o, i64 noundef %i.t, i64 noundef 0, i1 noundef zeroext true)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.0.i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !236
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #6 {
rb_ec_vm_ptr.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !29, !nonnull !30, !noundef !30 ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr i8, ptr %.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.k = icmp eq ptr %i.f, %i.j
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @rb_ractor_living_thread_num(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ractor_thread_list() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_current_ractor.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  %i.h = tail call i64 @rb_ary_new() #21          ; 2 uses
  %i.i = getelementptr i8, ptr %.0.i.i, i64 184   ; 3 uses
  %.07 = load ptr, ptr %i.i, align 8, !tbaa !111  ; 2 uses
  %.not8 = icmp eq ptr %.07, %i.i
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rb_current_ractor.exit, %bb.e
  %.09 = phi ptr [ %.0, %bb.e ], [ %.07, %rb_current_ractor.exit ] ; 3 uses
  %i.j = getelementptr i8, ptr %.09, i64 248
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 3
  %i.m = icmp eq i8 %i.l, 3
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %.09, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !137
  %i.p = tail call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.o) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0 = load ptr, ptr %.09, align 8, !tbaa !111   ; 2 uses
  %.not = icmp eq ptr %.0, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !237

._crit_edge:                                      ; preds = %bb.e, %rb_current_ractor.exit
  ret i64 %i.h
}

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_ractor_blocking_cnt_inc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 352        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.b, 3
  br i1 %cond.i.i, label %bb.b, label %vm_ractor_blocking_cnt_inc.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

vm_ractor_blocking_cnt_inc.exit:                  ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !105
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_ractor_blocking_cnt_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !105
  %i.d = getelementptr i8, ptr %1, i64 352        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106
  %cond.i = icmp eq i32 %i.e, 3
  br i1 %cond.i, label %bb.b, label %ractor_status_set.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

ractor_status_set.exit:                           ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !106
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_living_threads_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 1
  br i1 %.not.i, label %ractor_check_blocking.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = add i32 %i.e, 1
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %ractor_check_blocking.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_vm_lock_enter.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  %cond.i.i.i.i = icmp eq i32 %i.k, 3
  br i1 %cond.i.i.i.i, label %bb.e, label %rb_vm_ractor_blocking_cnt_inc.exit.i

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_inc.exit.i:             ; preds = %rb_vm_lock_enter.exit.i
  %2 = getelementptr i8, ptr %i.h, i64 28         ; 2 uses
  store i32 2, ptr %i.j, align 8, !tbaa !106
  %i.l = load i32, ptr %2, align 4, !tbaa !105
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %2, align 4, !tbaa !105
  %i.n = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %bb.f, label %rb_vm_lock_leave.exit.i

bb.f:                                             ; preds = %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.f, %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %ractor_check_blocking.exit

ractor_check_blocking.exit:                       ; preds = %bb.a, %bb.b, %rb_vm_lock_leave.exit.i
  call void @rb_threadptr_remove(ptr noundef %1) #21
  %i.o = load i32, ptr %i.b, align 8, !tbaa !109
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.n

bb.g:                                             ; preds = %ractor_check_blocking.exit
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 3 uses
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i10 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i10, label %bb.h, label %rb_vm_lock.exit.i

bb.h:                                             ; preds = %bb.g
  call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit.i

rb_vm_lock.exit.i:                                ; preds = %bb.h, %bb.g
  %i.t = getelementptr i8, ptr %0, i64 360
  %i.u = getelementptr i8, ptr %0, i64 368
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !111  ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !112
  store ptr %i.w, ptr %i.v, align 8, !tbaa !111
  %i.y = getelementptr i8, ptr %i.r, i64 24       ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !104  ; 3 uses
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %rb_vm_lock.exit.i
  %i.ab = getelementptr i8, ptr %i.r, i64 152
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !139, !range !77, !noundef !30
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.r, i64 104
  call void @rb_native_cond_signal(ptr noundef %i.ae) #21
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !104
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %rb_vm_lock.exit.i
  %i.af = phi i32 [ %.pre.i, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %rb_vm_lock.exit.i ]
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !104
  %i.ah = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !86
  call void @rb_gc_ractor_cache_free(ptr noundef %i.ai) #21
  store ptr null, ptr %i.ah, align 8, !tbaa !86
  %i.aj = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.ak, 3
  br i1 %cond.i.i, label %bb.l, label %ractor_status_set.exit.i

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

ractor_status_set.exit.i:                         ; preds = %bb.k
  store i32 3, ptr %i.aj, align 8, !tbaa !106
  %i.al = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i8.i11 = icmp eq ptr %i.al, null
  br i1 %.not.i.i8.i11, label %bb.m, label %vm_remove_ractor.exit

bb.m:                                             ; preds = %ractor_status_set.exit.i
  call void @rb_vm_unlock_body() #21
  br label %vm_remove_ractor.exit

bb.n:                                             ; preds = %ractor_check_blocking.exit
  %i.am = getelementptr i8, ptr %0, i64 56        ; 2 uses
  call void @rb_native_mutex_lock(ptr noundef %i.am) #21
  %i.an = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i12, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %.val.i = load ptr, ptr %i.ao, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.ap = getelementptr i8, ptr %.val.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.ar = getelementptr i8, ptr %i.aq, i64 448
  store i8 1, ptr %i.ar, align 8, !tbaa !61
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.n, %rb_ec_ractor_ptr.exit.i
  %i.as = getelementptr i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !112 ; 2 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !112
  store ptr %i.au, ptr %i.at, align 8, !tbaa !111
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !109
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !109
  %i.ay = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i13 = icmp eq ptr %i.ay, null
  br i1 %.not.i13, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i14

rb_ec_ractor_ptr.exit.i14:                        ; preds = %ractor_lock.exit
  %i.az = getelementptr i8, ptr %i.ay, i64 48
  %.val.i15 = load ptr, ptr %i.az, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.ba = getelementptr i8, ptr %.val.i15, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %i.bc = getelementptr i8, ptr %i.bb, i64 448
  store i8 0, ptr %i.bc, align 8, !tbaa !61
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %ractor_lock.exit, %rb_ec_ractor_ptr.exit.i14
  call void @rb_native_mutex_unlock(ptr noundef %i.am) #21
  br label %vm_remove_ractor.exit

vm_remove_ractor.exit:                            ; preds = %bb.m, %ractor_status_set.exit.i, %ractor_unlock.exit
  ret void
}

declare void @rb_threadptr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_blocking_threads_inc(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ractor_check_blocking.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = add i32 %i.e, 1
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %ractor_check_blocking.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_vm_lock_enter.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  %cond.i.i.i.i = icmp eq i32 %i.k, 3
  br i1 %cond.i.i.i.i, label %bb.e, label %rb_vm_ractor_blocking_cnt_inc.exit.i

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_inc.exit.i:             ; preds = %rb_vm_lock_enter.exit.i
  %3 = getelementptr i8, ptr %i.h, i64 28         ; 2 uses
  store i32 2, ptr %i.j, align 8, !tbaa !106
  %i.l = load i32, ptr %3, align 4, !tbaa !105
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %3, align 4, !tbaa !105
  %i.n = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %bb.f, label %rb_vm_lock_leave.exit.i

bb.f:                                             ; preds = %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.f, %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %ractor_check_blocking.exit

ractor_check_blocking.exit:                       ; preds = %bb.a, %bb.b, %rb_vm_lock_leave.exit.i
  %i.o = getelementptr i8, ptr %0, i64 204        ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !110
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_blocking_threads_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr i8, ptr %0, i64 204        ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110  ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %rb_vm_lock_enter.exit

bb.c:                                             ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 28       ; 2 uses
  %3 = getelementptr i8, ptr %0, i64 352          ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !105
  %i.l = load i32, ptr %3, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.l, 3
  br i1 %cond.i.i, label %bb.d, label %rb_vm_ractor_blocking_cnt_dec.exit

bb.d:                                             ; preds = %rb_vm_lock_enter.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_dec.exit:               ; preds = %rb_vm_lock_enter.exit
  store i32 1, ptr %3, align 8, !tbaa !106
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i5, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %rb_vm_ractor_blocking_cnt_dec.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_ractor_blocking_cnt_dec.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre = load i32, ptr %i.d, align 4, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %rb_vm_lock_leave.exit, %bb.a
  %i.n = phi i32 [ %.pre, %rb_vm_lock_leave.exit ], [ %i.e, %bb.a ]
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.d, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_vm_barrier_interrupt_running_thread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.a) #21
  %i.b = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.d = getelementptr i8, ptr %.val.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr i8, ptr %i.e, i64 448
  store i8 1, ptr %i.f, align 8, !tbaa !61
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.g = getelementptr i8, ptr %0, i64 352
  %.val = load i32, ptr %i.g, align 8, !tbaa !106
  %i.h = icmp eq i32 %.val, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %ractor_lock.exit
  %i.i = getelementptr i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
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
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.o = getelementptr i8, ptr %.val.i9, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = getelementptr i8, ptr %i.p, i64 448
  store i8 0, ptr %i.q, align 8, !tbaa !61
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %bb.d, %rb_ec_ractor_ptr.exit.i8
  tail call void @rb_native_mutex_unlock(ptr noundef %i.a) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_interrupt_main_thread(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 4 uses
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = atomicrmw volatile or ptr %i.h, i32 16 seq_cst, align 4 ; 0 uses
  tail call void @rb_threadptr_interrupt(ptr noundef nonnull %i.b) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @rb_threadptr_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_all() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !138 ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit

rb_vm_lock.exit:                                  ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8        ; 6 uses
  %i.h = getelementptr i8, ptr %i.c, i64 24       ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.preheader.i, label %ractor_terminal_interrupt_all.exit

.preheader.i:                                     ; preds = %rb_vm_lock.exit
  %.pn10.i = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.not11.i = icmp eq ptr %.pn10.i, %i.g
  br i1 %.not11.i, label %ractor_terminal_interrupt_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %rb_ractor_terminate_interrupt_main_thread.exit.i
  %.pn12.i = phi ptr [ %.pn.i, %rb_ractor_terminate_interrupt_main_thread.exit.i ], [ %.pn10.i, %.preheader.i ] ; 3 uses
  %.0.i = getelementptr i8, ptr %.pn12.i, i64 -360
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !136
  %.not9.i = icmp eq ptr %.0.i, %i.k
  br i1 %.not9.i, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.pn12.i, i64 -40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118  ; 4 uses
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !141
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = atomicrmw volatile or ptr %i.s, i32 16 seq_cst, align 4 ; 0 uses
  tail call void @rb_threadptr_interrupt(ptr noundef nonnull %i.m) #21
  br label %rb_ractor_terminate_interrupt_main_thread.exit.i

rb_ractor_terminate_interrupt_main_thread.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %.pn.i = load ptr, ptr %.pn12.i, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.g
  br i1 %.not.i, label %ractor_terminal_interrupt_all.exit, label %.lr.ph.i, !llvm.loop !238

ractor_terminal_interrupt_all.exit:               ; preds = %rb_ractor_terminate_interrupt_main_thread.exit.i, %rb_vm_lock.exit, %.preheader.i
  %i.u = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i16, label %bb.f, label %rb_vm_unlock.exit

bb.f:                                             ; preds = %ractor_terminal_interrupt_all.exit
  tail call void @rb_vm_unlock_body() #21
  br label %rb_vm_unlock.exit

rb_vm_unlock.exit:                                ; preds = %ractor_terminal_interrupt_all.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !29
  tail call void @rb_thread_terminate_all(ptr noundef %.val.i) #21
  %i.y = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i17 = icmp eq ptr %i.y, null
  br i1 %.not.i.i17, label %bb.g, label %rb_vm_lock.exit18

bb.g:                                             ; preds = %rb_vm_unlock.exit
  tail call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit18
end_hunk_1
begin_hunk_2_@rb_ractor_ensure_main_ractor:bb.a
  br i1 %i.l, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.m = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !62
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.32, ptr noundef %0) #22
  unreachable

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @shareable_p_enter, ptr %1, align 8, !tbaa !143
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @null_leave, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %1)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %rb_obj_traverse.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %rb_obj_traverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @mark_shareable, ptr %2, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = ptrtoint ptr %2 to i64
  %i.h = call i32 @rb_st_foreach(ptr noundef nonnull %i.d, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.g) #21 ; 0 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.j = icmp eq i32 %i.i, 0
  br label %rb_obj_traverse.exit

rb_obj_traverse.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ %i.j, %bb.c ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @shareable_p_enter(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 7 uses
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %mark_shareable.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit13

rbimpl_RB_TYPE_P_fastpath.exit13:                 ; preds = %bb.b
  %i.h = and i64 %i.b, 31                         ; 3 uses
  %i.i = and i64 %i.b, 30
  %or.cond = icmp eq i64 %i.i, 2
  %i.j = icmp eq i64 %i.h, 28
  %or.cond28 = or i1 %i.j, %or.cond
  br i1 %or.cond28, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %.thread19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit13
  %i.k = icmp eq i64 %i.h, 5
  br i1 %i.k, label %bb.c, label %rb_type.exit.i.i.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_make_independent(i64 noundef %0) #21
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !117
  br label %rb_type.exit.i.i.i

rb_type.exit.i.i.i:                               ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.l = phi i64 [ %.pre.i, %bb.c ], [ %i.b, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 3 uses
  %i.m = or i64 %i.l, 256
  store i64 %i.m, ptr %i.a, align 8, !tbaa !117
  %i.n = trunc i64 %i.l to i32
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 27
  %switch.shifted = lshr i32 67108879, %i.o
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond32 = select i1 %i.p, i1 %switch.lobit, i1 false
  %i.q = and i64 %i.l, 578712547822141440
  %.not9.i.i = icmp eq i64 %i.q, 0
  %or.cond33 = or i1 %or.cond32, %.not9.i.i
  br i1 %or.cond33, label %mark_shareable.exit, label %bb.d

bb.d:                                             ; preds = %rb_type.exit.i.i.i
  %i.r = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %mark_shareable.exit, label %imemo_type_p.exit.i.i, !prof !125

imemo_type_p.exit.i.i:                            ; preds = %bb.d
  %i.w = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %i.y = and i64 %i.x, 61471
  %.not.i.i = icmp eq i64 %i.y, 53274
  br i1 %.not.i.i, label %bb.e, label %mark_shareable.exit

bb.e:                                             ; preds = %imemo_type_p.exit.i.i
  %i.z = or i64 %i.x, 256
  store i64 %i.z, ptr %i.w, align 8, !tbaa !117
  br label %mark_shareable.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b
  %i.aa = and i64 %i.b, 2048
  %.not8 = icmp eq i64 %i.aa, 0
  br i1 %.not8, label %mark_shareable.exit, label %allow_frozen_shareable_p.exit.thread

.thread19:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit13
  %i.ab = and i64 %i.b, 2048
  %.not820 = icmp eq i64 %i.ab, 0
  br i1 %.not820, label %mark_shareable.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i14

rbimpl_RB_TYPE_P_fastpath.exit.i14:               ; preds = %.thread19
  %i.ac = icmp eq i64 %i.h, 12
  br i1 %i.ac, label %bb.f, label %allow_frozen_shareable_p.exit.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i14
  %i.ad = and i64 %i.b, 64
  %.not7.i = icmp eq i64 %i.ad, 0
  br i1 %.not7.i, label %mark_shareable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.a, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !151
  %i.ak = and i64 %i.aj, 256
  %.not.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not.i, label %mark_shareable.exit, label %allow_frozen_shareable_p.exit.thread

allow_frozen_shareable_p.exit.thread:             ; preds = %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit.i14, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  br label %mark_shareable.exit

mark_shareable.exit:                              ; preds = %rb_type.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %.thread19, %bb.f, %bb.g, %allow_frozen_shareable_p.exit.thread, %bb.e, %imemo_type_p.exit.i.i, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %allow_frozen_shareable_p.exit.thread ], [ 1, %bb.a ], [ 1, %imemo_type_p.exit.i.i ], [ 2, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ 2, %.thread19 ], [ 2, %bb.f ], [ 2, %bb.g ], [ 1, %rb_type.exit.i.i.i ], [ 1, %bb.d ]
  ret i32 %.0
}

declare void @ruby_xfree(ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef nonnull ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #24 ; 3 uses
  %.not = icmp eq ptr %0, null
  %i.b = select i1 %.not, ptr @ractor_local_storage_type_null, ptr %0
  store ptr %i.b, ptr %i.a, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 36 to ptr), ptr %i.c, align 8, !tbaa !167
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef nonnull ptr @rb_ractor_local_storage_value_newkey() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #24 ; 3 uses
  store ptr @ractor_local_storage_type_value, ptr %i.a, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 36 to ptr), ptr %i.b, align 8, !tbaa !167
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ractor_local_storage_delkey(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr @freed_ractor_local_keys.0, align 8, !tbaa !170 ; 4 uses
  %i.d = load i32, ptr @freed_ractor_local_keys.1, align 4, !tbaa !171
  %i.e = icmp eq i32 %i.c, %i.d
  %.pre = load ptr, ptr @freed_ractor_local_keys.2, align 8, !tbaa !172 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  %.not2 = icmp eq i32 %i.c, 0
  %i.f = shl i32 %i.c, 1
  %i.g = select i1 %.not2, i32 4, i32 %i.f        ; 2 uses
  store i32 %i.g, ptr @freed_ractor_local_keys.1, align 4, !tbaa !171
  %i.h = sext i32 %i.g to i64
  %i.i = call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.h, i64 noundef 8) #26 ; 2 uses
  store ptr %i.i, ptr @freed_ractor_local_keys.2, align 8, !tbaa !172
  %.pre4 = load i32, ptr @freed_ractor_local_keys.0, align 8, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_vm_lock_enter.exit
  %i.j = phi i32 [ %.pre4, %bb.c ], [ %i.c, %rb_vm_lock_enter.exit ] ; 2 uses
  %i.k = phi ptr [ %i.i, %bb.c ], [ %.pre, %rb_vm_lock_enter.exit ]
  %i.l = add i32 %i.j, 1
  store i32 %i.l, ptr @freed_ractor_local_keys.0, align 8, !tbaa !170
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %i.m
  store ptr %0, ptr %i.n, align 8, !tbaa !174
  %i.o = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i3 = icmp eq ptr %i.o, null
  br i1 %.not.i.i3, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %bb.d
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ractor_local_storage_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !29, !nonnull !30, !noundef !30 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr i8, ptr %.val.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = getelementptr i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.n = icmp eq ptr %i.i, %i.m
  br i1 %i.n, label %rb_ractor_main_p.exit.thread.i, label %rb_current_ractor.exit.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !167  ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 36 to ptr)
  br i1 %i.q, label %ractor_local_ref.exit, label %bb.c

rb_current_ractor.exit.i:                         ; preds = %rb_ractor_main_p.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i, i64 48
  %.val.i.i11.i = load ptr, ptr %i.r, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.s = getelementptr i8, ptr %.val.i.i11.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = getelementptr i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %ractor_local_ref.exit, label %bb.b

bb.b:                                             ; preds = %rb_current_ractor.exit.i
  %i.w = ptrtoint ptr %0 to i64
  %i.x = call i32 @rb_st_lookup(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull %i.c) #21
  %.not9.i = icmp eq i32 %i.x, 0
  br i1 %.not9.i, label %ractor_local_ref.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread.i, %._crit_edge
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.p, %rb_ractor_main_p.exit.thread.i ]
  %i.z = ptrtoint ptr %i.y to i64
  br label %ractor_local_ref.exit

ractor_local_ref.exit:                            ; preds = %rb_ractor_main_p.exit.thread.i, %bb.b, %rb_current_ractor.exit.i, %bb.c
  %i.aa = phi i64 [ %i.z, %bb.c ], [ 4, %rb_current_ractor.exit.i ], [ 4, %bb.b ], [ 4, %rb_ractor_main_p.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @rb_ractor_local_storage_value_lookup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !29, !nonnull !30, !noundef !30 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr i8, ptr %.val.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread.i, label %rb_current_ractor.exit.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !167  ; 2 uses
  %i.p = icmp eq ptr %i.o, inttoptr (i64 36 to ptr)
  br i1 %i.p, label %ractor_local_ref.exit, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  store ptr %i.o, ptr %1, align 8, !tbaa !176
  br label %ractor_local_ref.exit

rb_current_ractor.exit.i:                         ; preds = %rb_ractor_main_p.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i, i64 48
  %.val.i.i11.i = load ptr, ptr %i.q, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.r = getelementptr i8, ptr %.val.i.i11.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr i8, ptr %i.s, i64 384
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !175  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_current_ractor.exit.i
  %i.v = ptrtoint ptr %0 to i64
  %i.w = tail call i32 @rb_st_lookup(ptr noundef nonnull %i.u, i64 noundef %i.v, ptr noundef %1) #21
  %.not9.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i, label %bb.d, label %ractor_local_ref.exit

bb.d:                                             ; preds = %bb.c, %rb_current_ractor.exit.i
  br label %ractor_local_ref.exit

ractor_local_ref.exit:                            ; preds = %rb_ractor_main_p.exit.thread.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi i1 [ false, %rb_ractor_main_p.exit.thread.i ], [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ractor_local_storage_value_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_current_ractor.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.h = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  br label %rb_current_ractor.exit.i

rb_current_ractor.exit.i:                         ; preds = %bb.b, %bb.a
end_hunk_2
begin_hunk_3_@obj_traverse_replace_i:bb.a
  %i.gr = call fastcc i32 @obj_refer_only_shareables_p(i64 noundef %i.ap)
  %.not174 = icmp eq i32 %i.gr, 0
  br i1 %.not174, label %._crit_edge, label %.critedge198

._crit_edge:                                      ; preds = %bb.bp
  %.pre285 = load i8, ptr %i.al, align 8, !tbaa !199, !range !77
  %i.gs = trunc nuw i8 %.pre285 to i1
  %i.gt = select i1 %i.gs, ptr @.str.91, ptr @.str.92
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge, %bb.bo
  %i.gu = phi ptr [ %i.gt, %._crit_edge ], [ @.str.91, %bb.bo ]
  %i.gv = load i64, ptr @rb_eRactorError, align 8, !tbaa !62
  %i.gw = call fastcc i64 @rb_class_of(i64 noundef %i.ap) #25
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gv, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.gu, i64 noundef %i.gw) #22
  unreachable

bb.br:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_obj_info_dump_loc(i64 noundef %i.ap, ptr noundef nonnull @.str, i32 noundef 1952, ptr noundef nonnull @__func__.obj_traverse_replace_i) #21
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

.critedge198:                                     ; preds = %rb_obj_write.exit234, %rb_obj_write.exit229, %RSTRUCT_CONST_PTR.exit, %ROBJECT_FIELDS.exit, %bb.bl, %bb.bm, %bb.bn, %bb.be, %bb.bf, %bb.bg, %bb.ax, %bb.ay, %bb.az, %bb.ap, %bb.bp, %bb.w, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %.critedge201, %bb.u
  %i.gx = phi i64 [ %i.ap, %rb_obj_write.exit229 ], [ %i.ap, %bb.u ], [ %i.ap, %RSTRUCT_CONST_PTR.exit ], [ %i.ap, %ROBJECT_FIELDS.exit ], [ %i.ap, %bb.bl ], [ %i.ap, %bb.bm ], [ %i.ap, %bb.bn ], [ %i.ap, %bb.be ], [ %i.ap, %bb.bf ], [ %i.ap, %bb.bg ], [ %i.ap, %bb.ax ], [ %i.ap, %bb.ay ], [ %i.ap, %bb.az ], [ %i.ap, %bb.ap ], [ %i.ap, %bb.bp ], [ %i.ap, %bb.w ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %.pre288, %.critedge201 ], [ %i.ap, %rb_obj_write.exit234 ]
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.gy, ptr %i.k, align 8, !tbaa !163
  %i.gz = getelementptr i8, ptr %1, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !162
  %i.hb = call i32 %i.ha(i64 noundef %i.gx, ptr noundef nonnull %1) #21
  %i.hc = icmp eq i32 %i.hb, 2
  %. = zext i1 %i.hc to i32
  br label %.critedge210

.critedge203:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge210

.critedge205:                                     ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge210

.critedge210:                                     ; preds = %.lr.ph, %.lr.ph264, %bb.ag, %.lr.ph267, %rb_imemo_fields_complex_tbl.exit, %rb_obj_write.exit238, %bb.bh, %rb_obj_write.exit236, %bb.ba, %bb.aw, %.critedge198, %rb_obj_gen_fields_p.exit.thread, %.critedge205, %.critedge203, %bb.c, %bb.w, %bb.g, %bb.d, %bb.b
  %.24 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ %., %.critedge198 ], [ 1, %rb_obj_gen_fields_p.exit.thread ], [ 1, %bb.w ], [ 1, %rb_obj_write.exit238 ], [ 1, %.lr.ph264 ], [ 1, %.lr.ph267 ], [ 1, %bb.ba ], [ 1, %bb.ag ], [ 1, %rb_obj_write.exit236 ], [ 1, %bb.aw ], [ 1, %.critedge203 ], [ 1, %.critedge205 ], [ 1, %bb.bh ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %rb_imemo_fields_complex_tbl.exit ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.24
}

declare i32 @rb_st_foreach_with_replace(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @obj_iv_hash_traverse_replace_foreach_i(i64 %0, i64 %1, i64 %2, i32 %3) #9 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_iv_hash_traverse_replace_i(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !62
  %i.e = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.d, ptr noundef %i.c)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !206
  br label %rb_obj_written.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !62
  %i.g = getelementptr i8, ptr %i.c, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !163  ; 5 uses
  %.not12 = icmp eq i64 %i.f, %i.h
  br i1 %.not12, label %rb_obj_written.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %1, align 8, !tbaa !62
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_written.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !204
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.h) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare void @rb_str_make_independent(i64 noundef) local_unnamed_addr #1

declare void @rb_ary_cancel_sharing(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #15

declare i32 @rb_hash_stlike_foreach_with_replace(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @obj_hash_traverse_replace_foreach_i(i64 %0, i64 %1, i64 %2, i32 %3) #9 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_hash_traverse_replace_i(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !62
  %i.e = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.d, ptr noundef %i.c)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !206
  br label %rb_obj_written.exit25

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !62
  %i.g = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !163  ; 5 uses
  %.not22 = icmp eq i64 %i.f, %i.h
  br i1 %.not22, label %rb_obj_written.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %0, align 8, !tbaa !62
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_written.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !204
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.h) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.e, %bb.d, %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !62
  %i.p = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.o, ptr noundef nonnull %i.c)
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_obj_written.exit
  store i8 1, ptr %i.a, align 8, !tbaa !206
  br label %rb_obj_written.exit25

bb.g:                                             ; preds = %rb_obj_written.exit
  %i.q = load i64, ptr %1, align 8, !tbaa !62
  %i.r = load i64, ptr %i.g, align 8, !tbaa !163  ; 5 uses
  %.not24 = icmp eq i64 %i.q, %i.r
  br i1 %.not24, label %rb_obj_written.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.r, ptr %1, align 8, !tbaa !62
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_written.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !204
  tail call void @rb_gc_writebarrier(i64 noundef %i.x, i64 noundef %i.r) #21
  br label %rb_obj_written.exit25

rb_obj_written.exit25:                            ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

declare i64 @rb_hash_set_ifnone(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @obj_refer_only_shareables_p(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter_nb.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.b) #21
  br label %rb_vm_lock_enter_nb.exit

rb_vm_lock_enter_nb.exit:                         ; preds = %bb.b, %bb.a
  call void @rb_objspace_reachable_objects_from(i64 noundef %0, ptr noundef nonnull @obj_refer_only_shareables_p_i, ptr noundef nonnull %i.a) #21
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i.i2, label %bb.c, label %rb_vm_lock_leave_nb.exit

bb.c:                                             ; preds = %rb_vm_lock_enter_nb.exit
  call void @rb_vm_lock_leave_body_nb(ptr noundef nonnull %i.b) #21
  br label %rb_vm_lock_leave_nb.exit

rb_vm_lock_leave_nb.exit:                         ; preds = %rb_vm_lock_enter_nb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.e = load i32, ptr %i.a, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !62
  ret i64 %.0
}

declare void @rb_obj_info_dump_loc(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #18

declare i64 @rb_ident_hash_new() local_unnamed_addr #1

declare i64 @rb_obj_fields(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #1

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #1

declare void @rb_objspace_reachable_objects_from(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @obj_refer_only_shareables_p_i(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread5

rb_ractor_shareable_p.exit.thread5:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread3, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread3:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.q, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread5, %rb_ractor_shareable_p.exit
  %i.r = load i32, ptr %1, align 4, !tbaa !15
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %1, align 4, !tbaa !15
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %bb.b, %bb.a, %rb_ractor_shareable_p.exit.thread3, %bb.e, %rb_ractor_shareable_p.exit
  ret void
}

declare void @rb_vm_lock_leave_body_nb(ptr noundef) local_unnamed_addr #1

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_unprotected_newobj_of(i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier_remember(i64 noundef) local_unnamed_addr #1

declare void @rb_replace_generic_ivar(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_gc_obj_id_moved(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #1

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

declare ptr @rb_current_ec_noinline() local_unnamed_addr #1

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @rb_native_cond_signal(ptr noundef) local_unnamed_addr #1

declare void @rb_vm_lock_body() local_unnamed_addr #1

declare void @rb_vm_unlock_body() local_unnamed_addr #1

declare void @rb_vm_lock_enter_body_nb(ptr noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_port_alloc(i64 noundef %0) #0 {
RTYPEDDATA_GET_DATA.exit:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 16, ptr noundef nonnull @ractor_port_data_type) #21 ; 2 uses
  %i.b = tail call i64 @rb_obj_freeze(i64 noundef %i.a) #21 ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_port_initialize(i64 noundef returned %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_current_ractor.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
end_hunk_3
begin_hunk_4_@obj_traverse_i:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @rb_ident_hash_new() #21   ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 24
  store i64 %i.j, ptr %i.k, align 8, !tbaa !290
  %i.l = add i64 %i.j, 24
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !289
  br label %obj_traverse_rec.exit

obj_traverse_rec.exit:                            ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  %i.o = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %0, i64 noundef 1) #21
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %rb_obj_written.exit, label %bb.ab, !prof !201

rb_obj_written.exit:                              ; preds = %obj_traverse_rec.exit
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !290
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store ptr %1, ptr %i.r, align 8, !tbaa !219
  %i.s = ptrtoint ptr %2 to i64
  call void @rb_ivar_foreach(i64 noundef %0, ptr noundef nonnull @obj_traverse_ivar_foreach_i, i64 noundef %i.s) #21
  %i.t = load i8, ptr %2, align 8, !tbaa !220, !range !77, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %rb_obj_written.exit
  %i.v = inttoptr i64 %0 to ptr                   ; 12 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !117  ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 31
  switch i32 %i.y, label %bb.aa [
    i32 5, label %.critedge
    i32 4, label %.critedge
    i32 10, label %.critedge
    i32 6, label %.critedge
    i32 11, label %.critedge
    i32 20, label %.critedge
    i32 1, label %.critedge
    i32 7, label %bb.g
    i32 8, label %bb.m
    i32 9, label %bb.o
    i32 13, label %bb.s
    i32 15, label %bb.t
    i32 14, label %bb.v
    i32 12, label %bb.x
    i32 26, label %bb.x
  ]

bb.g:                                             ; preds = %bb.f
  call void @rb_ary_cancel_sharing(i64 noundef %0) #21
  %i.z = getelementptr i8, ptr %i.v, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !117 ; 2 uses
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = lshr i64 %i.aa, 15
  %i.ad = and i64 %i.ac, 127
  br label %rb_array_len.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !135
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.ad, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  %i.af = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.k

bb.k:                                             ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #23
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %.not75 = icmp slt i64 %indvars.iv, %.0.i.i
  br i1 %.not75, label %bb.l, label %.critedge

bb.l:                                             ; preds = %RARRAY_LENINT.exit
  %i.ag = call i64 @rb_ary_entry(i64 noundef %0, i64 noundef %indvars.iv) #25
  %i.ah = call fastcc i32 @obj_traverse_i(i64 noundef %i.ag, ptr noundef nonnull %1)
  %.not74 = icmp eq i32 %i.ah, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not74, label %bb.h, label %.loopexit, !llvm.loop !287

bb.m:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.v, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !208
  %i.ak = call fastcc i32 @obj_traverse_i(i64 noundef %i.aj, ptr noundef nonnull %1)
  %.not73 = icmp eq i32 %i.ak, 0
  br i1 %.not73, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %i.al, align 8, !tbaa !219
  %i.am = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef nonnull @obj_hash_traverse_i, i64 noundef %i.am) #21
  %i.an = load i8, ptr %3, align 8, !tbaa !220, !range !77, !noundef !30
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.ao, label %.loopexit, label %.critedge

bb.o:                                             ; preds = %bb.f
  %i.ap = and i64 %i.w, 1040384
  %.not.i78 = icmp eq i64 %i.ap, 0
  br i1 %.not.i78, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = lshr i64 %i.w, 13
  %i.ar = and i64 %i.aq, 127
  %i.as = getelementptr i8, ptr %i.v, i64 16
  br label %RSTRUCT_CONST_PTR.exit

bb.q:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %i.v, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !135
  %i.av = getelementptr i8, ptr %i.v, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !135
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.p, %bb.q
  %.0.i84 = phi i64 [ %i.ar, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  %.0.i80 = phi ptr [ %i.as, %bb.p ], [ %i.aw, %bb.q ]
  %.not7290 = icmp sgt i64 %.0.i84, 0
  br i1 %.not7290, label %.lr.ph, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  %i.ax = add nuw nsw i64 %.05791, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %.0.i84
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !288

.lr.ph:                                           ; preds = %RSTRUCT_CONST_PTR.exit, %bb.r
  %.05791 = phi i64 [ %i.ax, %bb.r ], [ 0, %RSTRUCT_CONST_PTR.exit ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %.0.i80, i64 %.05791
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !62
  %i.ba = call fastcc i32 @obj_traverse_i(i64 noundef %i.az, ptr noundef nonnull %1)
  %.not71 = icmp eq i32 %i.ba, 0
  br i1 %.not71, label %bb.r, label %.loopexit

bb.s:                                             ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %i.v, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !210
  %i.bd = call fastcc i32 @obj_traverse_i(i64 noundef %i.bc, ptr noundef nonnull %1)
  %.not70 = icmp eq i32 %i.bd, 0
  br i1 %.not70, label %.critedge, label %.loopexit

bb.t:                                             ; preds = %bb.f
  %i.be = getelementptr i8, ptr %i.v, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !212
  %i.bg = call fastcc i32 @obj_traverse_i(i64 noundef %i.bf, ptr noundef nonnull %1)
  %.not68 = icmp eq i32 %i.bg, 0
  br i1 %.not68, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %i.v, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !213
  %i.bj = call fastcc i32 @obj_traverse_i(i64 noundef %i.bi, ptr noundef nonnull %1)
  %.not69 = icmp eq i32 %i.bj, 0
  br i1 %.not69, label %.critedge, label %.loopexit

bb.v:                                             ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %i.v, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !215
  %i.bm = call fastcc i32 @obj_traverse_i(i64 noundef %i.bl, ptr noundef nonnull %1)
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr i8, ptr %i.v, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !216
  %i.bp = call fastcc i32 @obj_traverse_i(i64 noundef %i.bo, ptr noundef nonnull %1)
  %.not67 = icmp eq i32 %i.bp, 0
  br i1 %.not67, label %.critedge, label %.loopexit

bb.x:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.br = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i81 = icmp eq ptr %i.br, null
  br i1 %.not.i.i81, label %bb.y, label %rb_vm_lock_enter_nb.exit

bb.y:                                             ; preds = %bb.x
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter_nb.exit

rb_vm_lock_enter_nb.exit:                         ; preds = %bb.y, %bb.x
  call void @rb_objspace_reachable_objects_from(i64 noundef %0, ptr noundef nonnull @obj_traverse_reachable_i, ptr noundef nonnull %4) #21
  %i.bs = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i82 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i82, label %bb.z, label %rb_vm_lock_leave_nb.exit

bb.z:                                             ; preds = %rb_vm_lock_enter_nb.exit
  call void @rb_vm_lock_leave_body_nb(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave_nb.exit

rb_vm_lock_leave_nb.exit:                         ; preds = %rb_vm_lock_enter_nb.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bt = load i8, ptr %4, align 8, !tbaa !220, !range !77, !noundef !30
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bu, label %.loopexit, label %.critedge

bb.aa:                                            ; preds = %bb.f
  call void @rb_obj_info_dump_loc(i64 noundef %0, ptr noundef nonnull @.str, i32 noundef 1392, ptr noundef nonnull @__func__.obj_traverse_i) #21
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

.critedge:                                        ; preds = %bb.r, %RARRAY_LENINT.exit, %RSTRUCT_CONST_PTR.exit, %rb_vm_lock_leave_nb.exit, %bb.w, %bb.u, %bb.s, %bb.n, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.bv = getelementptr i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !144
  %i.bx = call i32 %i.bw(i64 noundef %0) #21
  %i.by = icmp eq i32 %i.bx, 2
  %. = zext i1 %i.by to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %.critedge, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.m, %rb_obj_written.exit, %bb.n, %rb_vm_lock_leave_nb.exit
  %.6 = phi i32 [ 1, %rb_vm_lock_leave_nb.exit ], [ %., %.critedge ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %rb_obj_written.exit ], [ 1, %bb.n ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ab

bb.ab:                                            ; preds = %obj_traverse_rec.exit, %bb.b, %bb.a, %.loopexit, %bb.c
  %.7 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.6, %.loopexit ], [ 1, %bb.c ], [ 0, %obj_traverse_rec.exit ]
  ret i32 %.7
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_traverse_final_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = tail call i32 %i.b(i64 noundef %0) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @rb_ivar_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_traverse_ivar_foreach_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.d = tail call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_hash_traverse_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.d = tail call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.f = tail call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef %i.e)
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @obj_traverse_reachable_i(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = tail call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_ractor_make_shareable(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_id(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @copy_enter(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread8

rb_ractor_shareable_p.exit.thread8:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread6, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread6:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.q, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread8, %rb_ractor_shareable_p.exit
  %i.r = call i64 @rb_obj_clone(i64 noundef %0) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread6, %bb.a, %bb.b, %bb.e
  %.sink = phi i64 [ %i.r, %bb.e ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %rb_ractor_shareable_p.exit.thread6 ], [ %0, %rb_ractor_shareable_p.exit ]
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %rb_ractor_shareable_p.exit.thread6 ], [ 1, %rb_ractor_shareable_p.exit ]
  %i.s = getelementptr i8, ptr %1, i64 32
  store i64 %.sink, ptr %i.s, align 8, !tbaa !163
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @copy_leave(i64 %0, ptr nofree readnone captures(none) %1) #9 {
end_hunk_4
