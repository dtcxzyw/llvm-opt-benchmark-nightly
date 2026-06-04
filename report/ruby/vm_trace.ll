inline.NumInlined: 332
inline.NumDeleted: 99
begin_hunk_0_@rb_ec_clear_current_thread_trace_func:bb.a
  %i.r = phi ptr [ inttoptr (i64 16 to ptr), %rb_ec_ractor_hooks.exit.i.i.thread ], [ %i.h, %bb.d ], [ %i.d, %rb_ec_ractor_hooks.exit.i.i ], [ %i.d, %bb.b ]
  %.0.i.i.i.i28 = phi ptr [ null, %rb_ec_ractor_hooks.exit.i.i.thread ], [ %.0.i.i.i.i2733, %bb.d ], [ %i.c, %rb_ec_ractor_hooks.exit.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0.i.i.i.i28, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !22, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %remove_event_hook_from_list.exit18, !prof !74

bb.e:                                             ; preds = %._crit_edge.i11
  %i.v = getelementptr i8, ptr %.0.i.i.i.i28, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %remove_event_hook_from_list.exit18

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @clean_hooks(ptr noundef nonnull %i.r)
  %.val.i.i.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %remove_event_hook_from_list.exit18

remove_event_hook_from_list.exit18:               ; preds = %._crit_edge.i11, %bb.e, %bb.f
  %.val.i.i = phi ptr [ %.val, %._crit_edge.i11 ], [ %.val, %bb.e ], [ %.val.i.i.pre, %bb.f ] ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i11.i.i, label %rb_threadptr_remove_event_hook.exit, label %bb.g

bb.g:                                             ; preds = %remove_event_hook_from_list.exit18
  %i.y = getelementptr i8, ptr %.val.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  br label %rb_threadptr_remove_event_hook.exit

rb_threadptr_remove_event_hook.exit:              ; preds = %remove_event_hook_from_list.exit18, %bb.g
  %.0.i.i12.i.i = phi ptr [ %i.z, %bb.g ], [ null, %remove_event_hook_from_list.exit18 ] ; 4 uses
  %i.aa = getelementptr i8, ptr %.0.i.i12.i.i, i64 1112 ; 2 uses
  %.019.i = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 3 uses
  %.not20.i = icmp eq ptr %.019.i, null
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_threadptr_remove_event_hook.exit
  %i.ab = icmp eq ptr %.val, inttoptr (i64 1 to ptr)
  %i.ac = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132 ; 2 uses
  br i1 %i.ab, label %.lr.ph.split.us.split.us.split.us.i, label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.i
  store i8 1, ptr %i.ac, align 4, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.split.us.split.us.split.us.i
  %.022.us.us.us.i = phi ptr [ %.019.i, %.lr.ph.split.us.split.us.split.us.i ], [ %.0.us.us.us.i, %bb.h ] ; 3 uses
  %i.ad = load i32, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.af = getelementptr i8, ptr %.022.us.us.us.i, i64 24
  %.0.us.us.us.i = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i = icmp eq ptr %.0.us.us.us.i, null
  br i1 %.not.us.us.us.i, label %._crit_edge.i, label %bb.h, !llvm.loop !71

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.i, %bb.j
  %.022.us.us.i = phi ptr [ %.0.us.us.i, %bb.j ], [ %.019.i, %.lr.ph.i ] ; 4 uses
  %i.ag = getelementptr i8, ptr %.022.us.us.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ai = icmp eq ptr %i.ah, %.val
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us.split.i
  %i.aj = load i32, ptr %.022.us.us.i, align 8, !tbaa !27
  %i.ak = or i32 %i.aj, 2
  store i32 %i.ak, ptr %.022.us.us.i, align 8, !tbaa !27
  store i8 1, ptr %i.ac, align 4, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split.us.split.i
  %i.al = getelementptr i8, ptr %.022.us.us.i, i64 24
  %.0.us.us.i = load ptr, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.i = icmp eq ptr %.0.us.us.i, null
  br i1 %.not.us.us.i, label %._crit_edge.i, label %.lr.ph.split.us.split.us.split.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %bb.j, %bb.h, %rb_threadptr_remove_event_hook.exit
  %i.am = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132
  %i.an = load i8, ptr %i.am, align 4, !tbaa !22, !range !72, !noundef !73
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %remove_event_hook_from_list.exit, !prof !74

bb.k:                                             ; preds = %._crit_edge.i
  %i.ap = getelementptr i8, ptr %.0.i.i12.i.i, i64 1124
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %remove_event_hook_from_list.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @clean_hooks(ptr noundef nonnull %i.aa)
  br label %remove_event_hook_from_list.exit

remove_event_hook_from_list.exit:                 ; preds = %._crit_edge.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ec_clear_all_trace_func(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val10.i.i = load ptr, ptr %i.a, align 8, !tbaa !38 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val10.i.i, null
  br i1 %.not.i.i.i.i, label %rb_ec_ractor_hooks.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val10.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  br label %rb_ec_ractor_hooks.exit.i.i

rb_ec_ractor_hooks.exit.i.i:                      ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %.019.i1 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.not20.i2 = icmp eq ptr %.019.i1, null
  %.phi.trans.insert = getelementptr i8, ptr %.0.i.i.i.i, i64 36 ; 2 uses
  br i1 %.not20.i2, label %._crit_edge.i8, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %rb_ec_ractor_hooks.exit.i.i
  store i8 1, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i3
  %.022.us.us.us.i4 = phi ptr [ %.019.i1, %.lr.ph.i3 ], [ %.0.us.us.us.i6, %bb.c ] ; 3 uses
  %i.e = load i32, ptr %.022.us.us.us.i4, align 8, !tbaa !27
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %.022.us.us.us.i4, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.022.us.us.us.i4, i64 24
  %.0.us.us.us.i6 = load ptr, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i7 = icmp eq ptr %.0.us.us.us.i6, null
  br i1 %.not.us.us.us.i7, label %._crit_edge.i8.thread, label %bb.c, !prof !75, !llvm.loop !71

._crit_edge.i8:                                   ; preds = %rb_ec_ractor_hooks.exit.i.i
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !22, !range !72
  %i.h = trunc nuw i8 %.pre to i1
  br i1 %i.h, label %._crit_edge.i8.thread, label %remove_event_hook_from_list.exit10, !prof !76

._crit_edge.i8.thread:                            ; preds = %bb.c, %._crit_edge.i8
  %i.i = getelementptr i8, ptr %.0.i.i.i.i, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %remove_event_hook_from_list.exit10

bb.d:                                             ; preds = %._crit_edge.i8.thread
  tail call fastcc void @clean_hooks(ptr noundef nonnull %i.d)
  %.val.i.i.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %remove_event_hook_from_list.exit10

remove_event_hook_from_list.exit10:               ; preds = %._crit_edge.i8, %._crit_edge.i8.thread, %bb.d
  %.val.i.i = phi ptr [ %.val10.i.i, %._crit_edge.i8 ], [ %.val10.i.i, %._crit_edge.i8.thread ], [ %.val.i.i.pre, %bb.d ] ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i11.i.i, label %rb_threadptr_remove_event_hook.exit, label %bb.e

bb.e:                                             ; preds = %remove_event_hook_from_list.exit10
  %i.l = getelementptr i8, ptr %.val.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  br label %rb_threadptr_remove_event_hook.exit

rb_threadptr_remove_event_hook.exit:              ; preds = %remove_event_hook_from_list.exit10, %bb.e
  %.0.i.i12.i.i = phi ptr [ %i.m, %bb.e ], [ null, %remove_event_hook_from_list.exit10 ] ; 3 uses
  %i.n = getelementptr i8, ptr %.0.i.i12.i.i, i64 1112 ; 2 uses
  %.019.i = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, null
  %.phi.trans.insert12 = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132 ; 2 uses
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_threadptr_remove_event_hook.exit
  store i8 1, ptr %.phi.trans.insert12, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.022.us.us.us.i = phi ptr [ %.019.i, %.lr.ph.i ], [ %.0.us.us.us.i, %bb.f ] ; 3 uses
  %i.o = load i32, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.p = or i32 %i.o, 2
  store i32 %i.p, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.q = getelementptr i8, ptr %.022.us.us.us.i, i64 24
  %.0.us.us.us.i = load ptr, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i = icmp eq ptr %.0.us.us.us.i, null
  br i1 %.not.us.us.us.i, label %._crit_edge.i.thread, label %bb.f, !prof !75, !llvm.loop !71

._crit_edge.i:                                    ; preds = %rb_threadptr_remove_event_hook.exit
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 4, !tbaa !22, !range !72
  %i.r = trunc nuw i8 %.pre13 to i1
  br i1 %i.r, label %._crit_edge.i.thread, label %remove_event_hook_from_list.exit, !prof !76

._crit_edge.i.thread:                             ; preds = %bb.f, %._crit_edge.i
  %i.s = getelementptr i8, ptr %.0.i.i12.i.i, i64 1124
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %remove_event_hook_from_list.exit

bb.g:                                             ; preds = %._crit_edge.i.thread
  tail call fastcc void @clean_hooks(ptr noundef nonnull %i.n)
  br label %remove_event_hook_from_list.exit

remove_event_hook_from_list.exit:                 ; preds = %._crit_edge.i, %._crit_edge.i.thread, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_exec_event_hooks(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 13 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.f = and i32 %i.e, 133169152
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 120      ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 3 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 8, !tbaa !79
  %i.k = and i32 %i.j, 133169152
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %0, ptr %i.g, align 8, !tbaa !80
  tail call fastcc void @exec_hooks_unprotected(ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef nonnull %0)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !80
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82
  %i.n = load i64, ptr @rb_mRubyVMFrozenCore, align 8, !tbaa !34
  %.not40 = icmp eq i64 %i.m, %i.n
  br i1 %.not40, label %bb.ae, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.d, i64 128      ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !83
  %i.q = getelementptr i8, ptr %i.d, i64 80       ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !84   ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 88       ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85   ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !tbaa !84
  store i64 4, ptr %i.o, align 8, !tbaa !83
  store ptr %0, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %i.w = and i32 %i.v, %i.e
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %exec_hooks_protected.exit.thread, label %bb.h

exec_hooks_protected.exit.thread:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %1, i64 12         ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !25
  %i.aa = tail call i32 @rb_ec_reset_raised(ptr noundef nonnull %i.d) #6
  store volatile i32 %i.aa, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.ab, align 8, !tbaa !86
  store i64 36, ptr %3, align 8, !tbaa !88
  %i.ac = getelementptr i8, ptr %i.d, i64 24      ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !90
  %i.af = getelementptr i8, ptr %i.d, i64 48      ; 2 uses
  %.0.1.val.i = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.1.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %.0.1.val.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = getelementptr i8, ptr %.0.1.val.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.i, %bb.h
  %.0.i2.i.i = phi ptr [ %i.ah, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.aj, %bb.i ], [ null, %bb.h ]
  %i.ak = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.al = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.al, label %bb.j, label %rb_ec_vm_lock_rec.exit.i

bb.j:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.am = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.an = load i32, ptr %i.am, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.j, %rb_ec_ractor_ptr.exit.i.i
  %.0.i19.i = phi i32 [ %i.an, %bb.j ], [ 0, %rb_ec_ractor_ptr.exit.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i19.i, ptr %i.ao, align 4, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = tail call ptr @llvm.stacksave.p0()
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ap)
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !81

bb.k:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  %.0..0..0..0..0..0.2.i = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  %i.au = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0..0..0.2.i)
  br label %exec_hooks_body.exit.i

bb.l:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  store ptr %3, ptr %i.ac, align 8, !tbaa !89
  %.027.i.i = load ptr, ptr %1, align 8, !tbaa !11 ; 2 uses
  %.not28.i.i = icmp eq ptr %.027.i.i, null
  br i1 %.not28.i.i, label %exec_hooks_body.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.d, i64 16
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = getelementptr i8, ptr %0, i64 48
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.029.i.i = phi ptr [ %.027.i.i, %.lr.ph.i.i ], [ %.0.i20.i, %bb.v ] ; 9 uses
  %i.ay = load i32, ptr %.029.i.i, align 8, !tbaa !27 ; 2 uses
  %i.az = and i32 %i.ay, 2
  %.not24.i.i = icmp eq i32 %i.az, 0
  br i1 %.not24.i.i, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %0, align 8, !tbaa !79
  %i.bb = getelementptr i8, ptr %.029.i.i, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !30
  %i.bd = and i32 %i.bc, %i.ba
  %.not25.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not25.i.i, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %.029.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.q, label %bb.p, !prof !81

bb.p:                                             ; preds = %bb.o
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.bh = icmp eq ptr %i.bf, %.val.i.i
  br i1 %i.bh, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = getelementptr i8, ptr %.029.i.i, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !36 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.r, !prof !81

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !110
  %i.bm = call i32 @rb_vm_get_sourceline(ptr noundef %i.bl) #6
  %i.bn = icmp eq i32 %i.bj, %i.bm
  br i1 %i.bn, label %._crit_edge30.i.i, label %bb.v

._crit_edge30.i.i:                                ; preds = %bb.r
  %.pre.i.i = load i32, ptr %.029.i.i, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge30.i.i, %bb.q
  %i.bo = phi i32 [ %.pre.i.i, %._crit_edge30.i.i ], [ %i.ay, %bb.q ]
  %i.bp = and i32 %i.bo, 4
  %.not26.i.i = icmp eq i32 %i.bp, 0
  %i.bq = getelementptr i8, ptr %.029.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 2 uses
  br i1 %.not26.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = load i32, ptr %0, align 8, !tbaa !79
  %i.bt = getelementptr i8, ptr %.029.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !82
  %i.bw = load i64, ptr %i.aw, align 8, !tbaa !111
  %i.bx = load i64, ptr %i.ax, align 8, !tbaa !112
  call void %i.br(i32 noundef %i.bs, i64 noundef %i.bu, i64 noundef %i.bv, i64 noundef %i.bw, i64 noundef %i.bx) #6, !inline_history !113
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr i8, ptr %.029.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14
  call void %i.br(i64 noundef %i.bz, ptr noundef nonnull %0) #6, !inline_history !113
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.n, %bb.m
  %i.ca = getelementptr i8, ptr %.029.i.i, i64 24
  %.0.i20.i = load ptr, ptr %i.ca, align 8, !tbaa !11 ; 2 uses
  %.not.i21.i = icmp eq ptr %.0.i20.i, null
  br i1 %.not.i21.i, label %exec_hooks_body.exit.i, label %bb.m, !llvm.loop !114

exec_hooks_body.exit.i:                           ; preds = %bb.v, %bb.l, %bb.k
  %i.cb = phi i32 [ %i.au, %bb.k ], [ 0, %bb.l ], [ 0, %bb.v ] ; 2 uses
  %i.cc = load ptr, ptr %i.ae, align 8, !tbaa !90
  store ptr %i.cc, ptr %i.ac, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = load i32, ptr %i.x, align 4, !tbaa !25
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.x, align 4, !tbaa !25
  %i.cf = getelementptr i8, ptr %1, i64 20
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !22, !range !72, !noundef !73
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %exec_hooks_postcheck.exit.i, !prof !74

bb.w:                                             ; preds = %exec_hooks_body.exit.i
  %i.ci = icmp eq i32 %i.ce, 0
  br i1 %i.ci, label %bb.x, label %exec_hooks_postcheck.exit.i

bb.x:                                             ; preds = %bb.w
  call fastcc void @clean_hooks(ptr noundef nonnull %1)
  br label %exec_hooks_postcheck.exit.i

exec_hooks_postcheck.exit.i:                      ; preds = %bb.x, %bb.w, %exec_hooks_body.exit.i
  %.0..0..0..0..0..0.5.i = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %.not18.i = icmp eq i32 %.0..0..0..0..0..0.5.i, 0
  br i1 %.not18.i, label %exec_hooks_protected.exit, label %bb.y

bb.y:                                             ; preds = %exec_hooks_postcheck.exit.i
  %i.cj = call i32 @rb_ec_set_raised(ptr noundef nonnull %i.d) #6 ; 0 uses
  br label %exec_hooks_protected.exit

exec_hooks_protected.exit:                        ; preds = %exec_hooks_postcheck.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = icmp eq i32 %i.cb, 0
  %.pre = load i64, ptr %i.q, align 8, !tbaa !84  ; 2 uses
  br i1 %i.ck, label %.thread, label %bb.z

.thread:                                          ; preds = %exec_hooks_protected.exit, %exec_hooks_protected.exit.thread
  %i.cl = phi i64 [ %.pre, %exec_hooks_protected.exit ], [ %i.t, %exec_hooks_protected.exit.thread ]
  store i64 %i.p, ptr %i.o, align 8, !tbaa !83
  store ptr null, ptr %i.g, align 8, !tbaa !80
  store i64 %i.cl, ptr %i.s, align 8, !tbaa !85
  store i64 %i.r, ptr %i.q, align 8, !tbaa !84
  br label %bb.ae

bb.z:                                             ; preds = %exec_hooks_protected.exit
  store ptr null, ptr %i.g, align 8, !tbaa !80
  store i64 %.pre, ptr %i.s, align 8, !tbaa !85
  store i64 %i.r, ptr %i.q, align 8, !tbaa !84
  %.not42 = icmp eq i32 %2, 0
  br i1 %.not42, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr i8, ptr %i.d, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !110
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %.val = load ptr, ptr %i.co, align 8, !tbaa !115
  %.val.val = load i64, ptr %.val, align 8, !tbaa !34
  %i.cp = and i64 %.val.val, 32
  %.not43 = icmp eq i64 %i.cp, 0
  br i1 %.not43, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.cr = getelementptr i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !90
  store ptr %i.cs, ptr %i.ac, align 8, !tbaa !89
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @rb_vm_pop_frame(ptr noundef nonnull %i.d) #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.val46 = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 2 uses
  %i.ct = getelementptr i8, ptr %.val46, i64 64
  store i32 %i.cb, ptr %i.ct, align 8, !tbaa !86
  %i.cu = getelementptr i8, ptr %.val46, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.cu)
  unreachable

bb.ae:                                            ; preds = %.thread, %bb.e, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @exec_hooks_unprotected(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %2, align 8, !tbaa !79
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = and i32 %i.b, %.val
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %exec_hooks_postcheck.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 12         ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !25
  %.027.i = load ptr, ptr %1, align 8, !tbaa !11  ; 2 uses
  %.not28.i = icmp eq ptr %.027.i, null
  br i1 %.not28.i, label %exec_hooks_body.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = getelementptr i8, ptr %2, i64 24
  %i.j = getelementptr i8, ptr %2, i64 32
  %i.k = getelementptr i8, ptr %2, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph.i
  %.029.i = phi ptr [ %.027.i, %.lr.ph.i ], [ %.0.i8, %bb.l ] ; 9 uses
  %i.l = load i32, ptr %.029.i, align 8, !tbaa !27 ; 2 uses
  %i.m = and i32 %i.l, 2
  %.not24.i = icmp eq i32 %i.m, 0
  br i1 %.not24.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 8, !tbaa !79
  %i.o = getelementptr i8, ptr %.029.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = and i32 %i.p, %i.n
  %.not25.i = icmp eq i32 %i.q, 0
  br i1 %.not25.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.029.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.f, !prof !81

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.u = icmp eq ptr %i.s, %.val.i
  br i1 %i.u, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr i8, ptr %.029.i, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.h, !prof !81

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.z = tail call i32 @rb_vm_get_sourceline(ptr noundef %i.y) #6
  %i.aa = icmp eq i32 %i.w, %i.z
  br i1 %i.aa, label %._crit_edge30.i, label %bb.l

._crit_edge30.i:                                  ; preds = %bb.h
  %.pre.i = load i32, ptr %.029.i, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge30.i, %bb.g
  %i.ab = phi i32 [ %.pre.i, %._crit_edge30.i ], [ %i.l, %bb.g ]
  %i.ac = and i32 %i.ab, 4
  %.not26.i = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr i8, ptr %.029.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  br i1 %.not26.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %2, align 8, !tbaa !79
  %i.ag = getelementptr i8, ptr %.029.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !82
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !111
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !112
  tail call void %i.ae(i32 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.ak) #6, !inline_history !118
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.029.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  tail call void %i.ae(i64 noundef %i.am, ptr noundef nonnull %2) #6, !inline_history !118
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c
  %i.an = getelementptr i8, ptr %.029.i, i64 24
  %.0.i8 = load ptr, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %.not.i9 = icmp eq ptr %.0.i8, null
  br i1 %.not.i9, label %exec_hooks_body.exit.loopexit, label %bb.c, !llvm.loop !114

exec_hooks_body.exit.loopexit:                    ; preds = %bb.l
  %.pre = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ao = add i32 %.pre, -1
  br label %exec_hooks_body.exit

exec_hooks_body.exit:                             ; preds = %exec_hooks_body.exit.loopexit, %bb.b
  %i.ap = phi i32 [ %i.ao, %exec_hooks_body.exit.loopexit ], [ %i.e, %bb.b ] ; 2 uses
  store i32 %i.ap, ptr %i.d, align 4, !tbaa !25
  %i.aq = getelementptr i8, ptr %1, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !22, !range !72, !noundef !73
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %exec_hooks_postcheck.exit, !prof !74

bb.m:                                             ; preds = %exec_hooks_body.exit
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %bb.n, label %exec_hooks_postcheck.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @clean_hooks(ptr noundef nonnull %1)
  br label %exec_hooks_postcheck.exit

exec_hooks_postcheck.exit:                        ; preds = %bb.a, %bb.n, %bb.m, %exec_hooks_body.exit
  ret void
}

declare void @rb_vm_pop_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_suppress_tracing(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
rb_ec_vm_ptr.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 4, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !32 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i32 0, ptr %2, align 8, !tbaa !79
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 120 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_ec_vm_ptr.exit
  store ptr %2, ptr %i.h, align 8, !tbaa !80
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %rb_ec_vm_ptr.exit
  %i.j = call i32 @rb_ec_reset_raised(ptr noundef nonnull %.0..0..0..0..0..0..i) #6
  store volatile i32 %i.j, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.k, align 8, !tbaa !86
  store i64 36, ptr %3, align 8, !tbaa !88
  %i.l = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !90
  %.0.1.val = load ptr, ptr %i.g, align 8, !tbaa !38 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.0.1.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr i8, ptr %.0.1.val, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.c, %bb.b
  %.0.i2.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ]
  %i.s = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.s, align 8, !tbaa !91
  %i.t = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.t, label %bb.d, label %rb_ec_vm_lock_rec.exit

bb.d:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.u = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.d
  %.0.i23 = phi i32 [ %i.v, %bb.d ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i23, ptr %i.w, align 4, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.y, ptr %i.x, align 8
  %i.z = call ptr @llvm.stacksave.p0()
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.x)
  %.not19 = icmp eq i32 %i.ab, 0                  ; 2 uses
  br i1 %.not19, label %bb.f, label %bb.e, !prof !81

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !32
  %i.ac = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  br label %bb.g

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.l, align 8, !tbaa !89
  %i.ad = call i64 %0(i64 noundef %1) #6
  store volatile i64 %i.ad, ptr %i.c, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %i.ac, %bb.e ], [ 0, %bb.f ]
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !90
  store ptr %i.af, ptr %i.l, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.0..0..0..0.16 = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.not20 = icmp eq i32 %.0..0..0..0.16, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call i32 @rb_ec_reset_raised(ptr noundef nonnull %.0..0..0..0..0..0..i) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.ai = icmp eq ptr %i.ah, %2
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.h, align 8, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val22 = load ptr, ptr %i.l, align 8, !tbaa !89 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val22, i64 64
  store i32 %i.ae, ptr %i.aj, align 8, !tbaa !86
  %i.ak = getelementptr i8, ptr %.val22, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ak)
  unreachable

bb.m:                                             ; preds = %bb.k
  %.0..0..0..0.15 = load volatile i64, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.0..0..0..0.15
}

declare i32 @rb_ec_reset_raised(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #5

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #6

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !109  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #6
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull ptr @rb_tracearg_from_tracepoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %get_trace_arg.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !34
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.38) #19
  unreachable

get_trace_arg.exit:                               ; preds = %bb.a
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @rb_tracearg_event_flag(ptr noundef nonnull readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !79
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_tracearg_event(ptr noundef nonnull readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.split.i, label %get_event_id.exit

.split.i:                                         ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true)
  switch i32 %i.d, label %get_event_id.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
  ]

bb.b:                                             ; preds = %.split.i
  %.pr.i.i = load i64, ptr @get_event_id.rbimpl_id, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %get_event_id.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 4) #6 ; 3 uses
  store i64 %i.e, ptr @get_event_id.rbimpl_id, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %get_event_id.exit, !llvm.loop !119

bb.c:                                             ; preds = %.split.i
  %.pr.i17.i = load i64, ptr @get_event_id.rbimpl_id.40, align 8, !tbaa !34 ; 2 uses
  %.not4.i18.i = icmp eq i64 %.pr.i17.i, 0
  br i1 %.not4.i18.i, label %.lr.ph.i20.i, label %get_event_id.exit

.lr.ph.i20.i:                                     ; preds = %bb.c, %.lr.ph.i20.i
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.41, i64 noundef 5) #6 ; 3 uses
  store i64 %i.f, ptr @get_event_id.rbimpl_id.40, align 8, !tbaa !34
  %.not.i21.i = icmp eq i64 %i.f, 0
  br i1 %.not.i21.i, label %.lr.ph.i20.i, label %get_event_id.exit, !llvm.loop !119

bb.d:                                             ; preds = %.split.i
  %.pr.i23.i = load i64, ptr @get_event_id.rbimpl_id.42, align 8, !tbaa !34 ; 2 uses
  %.not4.i24.i = icmp eq i64 %.pr.i23.i, 0
  br i1 %.not4.i24.i, label %.lr.ph.i26.i, label %get_event_id.exit

.lr.ph.i26.i:                                     ; preds = %bb.d, %.lr.ph.i26.i
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.43, i64 noundef 3) #6 ; 3 uses
  store i64 %i.g, ptr @get_event_id.rbimpl_id.42, align 8, !tbaa !34
  %.not.i27.i = icmp eq i64 %i.g, 0
  br i1 %.not.i27.i, label %.lr.ph.i26.i, label %get_event_id.exit, !llvm.loop !119

bb.e:                                             ; preds = %.split.i
  %.pr.i29.i = load i64, ptr @get_event_id.rbimpl_id.44, align 8, !tbaa !34 ; 2 uses
  %.not4.i30.i = icmp eq i64 %.pr.i29.i, 0
  br i1 %.not4.i30.i, label %.lr.ph.i32.i, label %get_event_id.exit

.lr.ph.i32.i:                                     ; preds = %bb.e, %.lr.ph.i32.i
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.45, i64 noundef 4) #6 ; 3 uses
end_hunk_0
begin_hunk_1_@rb_postponed_job_preregister:bb.a
  %i.ev = cmpxchg volatile ptr %i.eu, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 0
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = extractvalue { i64, i1 } %i.ev, 1
  %i.ez = icmp eq ptr %1, %i.ex
  %or.cond.24 = or i1 %i.ey, %i.ez
  br i1 %or.cond.24, label %bb.b, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr i8, ptr %i.c, i64 400     ; 2 uses
  %i.fb = cmpxchg volatile ptr %i.fa, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 0
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = extractvalue { i64, i1 } %i.fb, 1
  %i.ff = icmp eq ptr %1, %i.fd
  %or.cond.25 = or i1 %i.fe, %i.ff
  br i1 %or.cond.25, label %bb.b, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = getelementptr i8, ptr %i.c, i64 416     ; 2 uses
  %i.fh = cmpxchg volatile ptr %i.fg, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 0
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = extractvalue { i64, i1 } %i.fh, 1
  %i.fl = icmp eq ptr %1, %i.fj
  %or.cond.26 = or i1 %i.fk, %i.fl
  br i1 %or.cond.26, label %bb.b, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr i8, ptr %i.c, i64 432     ; 2 uses
  %i.fn = cmpxchg volatile ptr %i.fm, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.fo = extractvalue { i64, i1 } %i.fn, 0
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = extractvalue { i64, i1 } %i.fn, 1
  %i.fr = icmp eq ptr %1, %i.fp
  %or.cond.27 = or i1 %i.fq, %i.fr
  br i1 %or.cond.27, label %bb.b, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = getelementptr i8, ptr %i.c, i64 448     ; 2 uses
  %i.ft = cmpxchg volatile ptr %i.fs, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.fu = extractvalue { i64, i1 } %i.ft, 0
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = extractvalue { i64, i1 } %i.ft, 1
  %i.fx = icmp eq ptr %1, %i.fv
  %or.cond.28 = or i1 %i.fw, %i.fx
  br i1 %or.cond.28, label %bb.b, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr i8, ptr %i.c, i64 464     ; 2 uses
  %i.fz = cmpxchg volatile ptr %i.fy, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.ga = extractvalue { i64, i1 } %i.fz, 0
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = extractvalue { i64, i1 } %i.fz, 1
  %i.gd = icmp eq ptr %1, %i.gb
  %or.cond.29 = or i1 %i.gc, %i.gd
  br i1 %or.cond.29, label %bb.b, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr i8, ptr %i.c, i64 480     ; 2 uses
  %i.gf = cmpxchg volatile ptr %i.ge, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.gg = extractvalue { i64, i1 } %i.gf, 0
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = extractvalue { i64, i1 } %i.gf, 1
  %i.gj = icmp eq ptr %1, %i.gh
  %or.cond.30 = or i1 %i.gi, %i.gj
  br i1 %or.cond.30, label %bb.b, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gk = getelementptr i8, ptr %i.c, i64 496     ; 2 uses
  %i.gl = cmpxchg volatile ptr %i.gk, i64 0, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 0
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = extractvalue { i64, i1 } %i.gl, 1
  %i.gp = icmp eq ptr %1, %i.gn
  %or.cond.31 = or i1 %i.go, %i.gp
  br i1 %or.cond.31, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %bb.b
  %spec.select = phi i32 [ %.01724.lcssa.wide, %bb.b ], [ -1, %bb.ag ]
  ret i32 %spec.select
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_postponed_job_trigger(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !165 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.e = getelementptr i8, ptr %i.d, i64 512
  %i.f = shl nuw i32 1, %0
  %i.g = atomicrmw volatile or ptr %i.e, i32 %i.f seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp eq ptr %.0..0..0..0..0..0..0..0..i.i, null
  br i1 %i.j, label %bb.b, label %get_valid_ec.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @rb_vm_main_ractor_ec(ptr noundef nonnull %i.b) #6
  br label %get_valid_ec.exit

get_valid_ec.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %.0..0..0..0..0..0..0..0..i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i, i64 32
  %i.m = atomicrmw volatile or ptr %i.l, i32 4 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_postponed_job_register(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_postponed_job_preregister(i32 poison, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %pjob_register_legacy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !165 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.g = getelementptr i8, ptr %i.f, i64 512
  %i.h = shl nuw i32 1, %i.b
  %i.i = atomicrmw volatile or ptr %i.g, i32 %i.h seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, null
  br i1 %i.l, label %bb.c, label %rb_postponed_job_trigger.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @rb_vm_main_ractor_ec(ptr noundef nonnull %i.d) #6
  br label %rb_postponed_job_trigger.exit.i

rb_postponed_job_trigger.exit.i:                  ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, %bb.b ]
  %i.n = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.o = atomicrmw volatile or ptr %i.n, i32 4 seq_cst, align 4 ; 0 uses
  br label %pjob_register_legacy_impl.exit

pjob_register_legacy_impl.exit:                   ; preds = %bb.a, %rb_postponed_job_trigger.exit.i
  %.0.i = phi i32 [ 1, %rb_postponed_job_trigger.exit.i ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_postponed_job_register_one(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_postponed_job_preregister(i32 poison, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %pjob_register_legacy_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !165 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.g = getelementptr i8, ptr %i.f, i64 512
  %i.h = shl nuw i32 1, %i.b
  %i.i = atomicrmw volatile or ptr %i.g, i32 %i.h seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, null
  br i1 %i.l, label %bb.c, label %rb_postponed_job_trigger.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @rb_vm_main_ractor_ec(ptr noundef nonnull %i.d) #6
  br label %rb_postponed_job_trigger.exit.i

rb_postponed_job_trigger.exit.i:                  ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, %bb.b ]
  %i.n = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.o = atomicrmw volatile or ptr %i.n, i32 4 seq_cst, align 4 ; 0 uses
  br label %pjob_register_legacy_impl.exit

pjob_register_legacy_impl.exit:                   ; preds = %bb.a, %rb_postponed_job_trigger.exit.i
  %.0.i = phi i32 [ 1, %rb_postponed_job_trigger.exit.i ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_postponed_job_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.ccan_list_head, align 8     ; 18 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !165
  %i.h = getelementptr i8, ptr %i.g, i64 1136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.k, ptr %i.c, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !32 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !197
  %i.n = and i32 %i.m, 12
  store volatile i32 %i.n, ptr %i.d, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !83
  store volatile i64 %i.p, ptr %i.e, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !198
  store ptr %1, ptr %1, align 8, !tbaa !199
  %i.r = getelementptr i8, ptr %0, i64 1168       ; 4 uses
  call void @rb_nativethread_lock_lock(ptr noundef %i.r) #6
  %i.s = getelementptr i8, ptr %0, i64 1152       ; 8 uses
  %i.t = getelementptr i8, ptr %0, i64 1160       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198  ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !198  ; 3 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !198
  store ptr %1, ptr %i.u, align 8, !tbaa !188
  store ptr %i.s, ptr %i.v, align 8, !tbaa !188
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !188  ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !193
  store ptr %i.w, ptr %i.v, align 8, !tbaa !188
  store ptr %i.s, ptr %i.t, align 8, !tbaa !198
  store ptr %i.s, ptr %i.s, align 8, !tbaa !199
  call void @rb_nativethread_lock_unlock(ptr noundef %i.r) #6
  %i.y = getelementptr i8, ptr %i.i, i64 512      ; 2 uses
  %i.z = atomicrmw volatile xchg ptr %i.y, i32 0 seq_cst, align 4 ; 3 uses
  store i64 4, ptr %i.o, align 8, !tbaa !83
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !197
  %i.ab = or i32 %i.aa, 12
  store i32 %i.ab, ptr %i.l, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.0..0..0..0..0..0..i, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.ac, align 8, !tbaa !86
  store i64 36, ptr %2, align 8, !tbaa !88
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !90
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.10.val = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.10.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %.0.10.val, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = getelementptr i8, ptr %.0.10.val, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ]
  %i.al = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.al, align 8, !tbaa !91
  %i.am = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.am, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.an = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.ao, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = call ptr @llvm.stacksave.p0()
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.as, ptr %i.at, align 8
  %i.au = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.aq)
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.d, label %.thread, !prof !81

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.11 = load volatile ptr, ptr %i.f, align 8, !tbaa !32
  %i.av = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.11) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !199
  %i.aw = icmp eq ptr %.pre, %1
  br label %ccan_list_pop_.exit.thread

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.ad, align 8, !tbaa !89
  %.not3949 = icmp eq i32 %i.z, 0
  br i1 %.not3949, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.d
  %i.ax = load ptr, ptr %1, align 8, !tbaa !199   ; 2 uses
  %.not.i51 = icmp eq ptr %i.ax, %1
  br i1 %.not.i51, label %ccan_list_pop_.exit.thread, label %ccan_list_pop_.exit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.050 = phi i32 [ %i.bc, %.lr.ph ], [ %i.z, %bb.d ] ; 3 uses
  %i.ay = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.050, i1 true) ; 2 uses
  %i.az = xor i32 %i.ay, 31
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr exact i32 -2147483648, %i.ay       ; 2 uses
  %i.bc = xor i32 %i.bb, %.050
  %i.bd = getelementptr [16 x i8], ptr %i.i, i64 %i.ba ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !202
  call void %i.be(ptr noundef %i.bg) #6
  %.not39 = icmp eq i32 %i.bb, %.050
  br i1 %.not39, label %.preheader, label %.lr.ph, !llvm.loop !203

ccan_list_pop_.exit:                              ; preds = %.preheader, %ccan_list_pop_.exit
  %i.bh = phi ptr [ %i.bq, %ccan_list_pop_.exit ], [ %i.ax, %.preheader ] ; 5 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !193 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !188 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !193
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !188
  %i.bm = getelementptr i8, ptr %i.bh, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !190
  %i.bo = getelementptr i8, ptr %i.bh, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !192
  call void @free(ptr noundef nonnull %i.bh) #6
  call void %i.bn(ptr noundef %i.bp) #6
  %i.bq = load ptr, ptr %1, align 8, !tbaa !199   ; 2 uses
  %.not.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i, label %ccan_list_pop_.exit.thread, label %ccan_list_pop_.exit, !llvm.loop !204

ccan_list_pop_.exit.thread:                       ; preds = %ccan_list_pop_.exit, %.preheader, %.thread
  %.not48 = phi i1 [ %i.aw, %.thread ], [ true, %.preheader ], [ true, %ccan_list_pop_.exit ]
  %.1 = phi i32 [ %i.z, %.thread ], [ 0, %.preheader ], [ 0, %ccan_list_pop_.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !90
  store ptr %i.br, ptr %i.ad, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.0..0..0..0.20 = load volatile i32, ptr %i.d, align 4, !tbaa !7
  %i.bs = xor i32 %.0..0..0..0.20, -13
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !197
  %i.bu = and i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.l, align 4, !tbaa !197
  %.0..0..0..0.19 = load volatile i64, ptr %i.e, align 8, !tbaa !34
  store i64 %.0..0..0..0.19, ptr %i.o, align 8, !tbaa !83
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ccan_list_pop_.exit.thread
  call void @rb_nativethread_lock_lock(ptr noundef %i.r) #6
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !198 ; 2 uses
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !199 ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !199
  store ptr %i.s, ptr %i.q, align 8, !tbaa !198
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !193
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !188
  %i.by = load ptr, ptr %i.q, align 8, !tbaa !193 ; 2 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !188   ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !193
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !188
  store ptr %1, ptr %i.q, align 8, !tbaa !198
  store ptr %1, ptr %1, align 8, !tbaa !199
  call void @rb_nativethread_lock_unlock(ptr noundef %i.r) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.cb, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..i44 = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cc = getelementptr i8, ptr %.0..0..0..0..0..0..i44, i64 32
  %i.cd = atomicrmw volatile or ptr %i.cc, i32 4 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ccan_list_pop_.exit.thread
  %.not42 = icmp eq i32 %.1, 0
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = atomicrmw volatile or ptr %i.y, i32 %.1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.cf, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i45 = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = getelementptr i8, ptr %.0..0..0..0..0..0..i45, i64 32
  %i.ch = atomicrmw volatile or ptr %i.cg, i32 4 seq_cst, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_global_event_hooks(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp ne ptr %.0..0..0..0..0..0..i, null ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %rb_vm_lock_enter.exit

bb.c:                                             ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #6
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.c
  call void @rb_vm_barrier() #6
  br label %bb.d

bb.d:                                             ; preds = %rb_vm_lock_enter.exit, %bb.a
  %i.f = load i32, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7 ; 2 uses
  %i.g = and i32 %1, 213887
  %i.h = xor i32 %i.f, -1
  %i.i = and i32 %i.g, %i.h
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %i.k = and i32 %0, 8
  %i.l = icmp eq i32 %i.k, 0
  %i.m = and i32 %1, 8
  %i.n = icmp ne i32 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  %i.p = and i32 %0, 16
  %i.q = icmp eq i32 %i.p, 0
  %i.r = and i32 %1, 16
  %i.s = icmp ne i32 %i.r, 0
  %i.t = and i1 %i.q, %i.s
  %i.u = and i32 %0, 32
  %i.v = icmp eq i32 %i.u, 0
  %i.w = and i32 %1, 32
  %i.x = icmp ne i32 %i.w, 0
  %i.y = and i1 %i.v, %i.x
  %i.z = and i32 %0, 64
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = and i32 %1, 64
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = and i1 %i.aa, %i.ac
  %i.ae = or i1 %i.y, %i.ad                       ; 2 uses
  %i.af = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.ag = xor i32 %0, -1
  %i.ah = and i32 %i.af, %i.ag
  %i.ai = or i32 %i.ah, %1                        ; 3 uses
  store i32 %i.ai, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = or i32 %i.f, %1
  %i.ak = and i32 %i.aj, 213887
  call void @rb_iseq_trace_set_all(i32 noundef %i.ak) #6
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @rb_clear_attr_ccs() #6
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %or.cond = or i1 %i.o, %i.t
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @rb_clear_bf_ccs() #6
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  %i.al = load i32, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %i.am = add i32 %i.al, %2
  store i32 %i.am, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %i.an = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %i.ao = add i32 %i.an, %3
  store i32 %i.ao, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %i.ap = load i32, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %1
  store i32 %i.aq, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7
  %.not30 = icmp ult i32 %i.ai, 65536
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_objspace_set_event_hook(i32 noundef %i.ai) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %or.cond3 = or i1 %i.ae, %i.j
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @rb_yjit_tracing_invalidate_all() #6
  call void @rb_zjit_tracing_invalidate_all() #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ar = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i31 = icmp eq ptr %i.ar, null
  %or.cond1 = select i1 %.not, i1 %.not.i.i31, i1 false
  br i1 %or.cond1, label %bb.o, label %rb_vm_lock_leave.exit

bb.o:                                             ; preds = %bb.n
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #6
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret void
}

declare void @rb_iseq_trace_set_all(i32 noundef) local_unnamed_addr #2

declare void @rb_clear_attr_ccs() local_unnamed_addr #2

declare void @rb_clear_bf_ccs() local_unnamed_addr #2

end_hunk_1
