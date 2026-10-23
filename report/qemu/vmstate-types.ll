Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vmstate-types?download=true
inline.NumInlined: 69
inline.NumDeleted: 32
begin_hunk_0_@load_qtailq:bb.a
  %i.ae = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i34 = icmp eq i32 %i.ae, 0
  br i1 %.not.i34, label %trace_load_qtailq_end.exit, label %bb.k, !prof !10

bb.k:                                             ; preds = %._crit_edge
  %i.af = load i16, ptr @_TRACE_LOAD_QTAILQ_END_DSTATE, align 2
  %.not1.i35 = icmp eq i16 %i.af, 0
  br i1 %.not1.i35, label %trace_load_qtailq_end.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 32768
  %.not2.i36 = icmp eq i32 %i.ah, 0
  br i1 %.not2.i36, label %trace_load_qtailq_end.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34, ptr noundef %i.ad) #8
  br label %trace_load_qtailq_end.exit

trace_load_qtailq_end.exit:                       ; preds = %bb.m, %bb.l, %bb.k, %._crit_edge, %bb.i, %bb.g, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ true, %._crit_edge ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @save_qtailq(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_save_qtailq.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_SAVE_QTAILQ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_save_qtailq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_save_qtailq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.35, ptr noundef %i.e, i32 noundef %i.g) #8
  br label %trace_save_qtailq.exit

trace_save_qtailq.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.022 = load ptr, ptr %1, align 8               ; 2 uses
  %.not23 = icmp eq ptr %.022, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_save_qtailq.exit, %bb.e
  %.024 = phi ptr [ %.0, %bb.e ], [ %.022, %trace_save_qtailq.exit ] ; 2 uses
  tail call void @qemu_put_byte(ptr noundef %0, i32 noundef 1) #8
  %i.l = tail call zeroext i1 @vmstate_save_vmsd(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %.024, ptr noundef %4, ptr noundef %5) #8
  br i1 %i.l, label %bb.e, label %trace_save_qtailq_end.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.024, i64 %i.d
  %.0 = load ptr, ptr %i.m, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %trace_save_qtailq.exit
  tail call void @qemu_put_byte(ptr noundef %0, i32 noundef 0) #8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i17 = icmp eq i32 %i.o, 0
  br i1 %.not.i17, label %trace_save_qtailq_end.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %._crit_edge
  %i.p = load i16, ptr @_TRACE_SAVE_QTAILQ_END_DSTATE, align 2
  %.not1.i18 = icmp eq i16 %i.p, 0
  br i1 %.not1.i18, label %trace_save_qtailq_end.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not2.i19 = icmp eq i32 %i.r, 0
  br i1 %.not2.i19, label %trace_save_qtailq_end.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.36, ptr noundef %i.n) #8
  br label %trace_save_qtailq_end.exit

trace_save_qtailq_end.exit:                       ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %._crit_edge
  %.not21 = phi i1 [ true, %._crit_edge ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ false, %.lr.ph ]
  ret i1 %.not21
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @load_gtree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, 0                     ; 3 uses
  br i1 %.not, label %.thread75, label %bb.b

.thread75:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %.in79.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.pre = load ptr, ptr %.in79.phi.trans.insert, align 8
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %i.i, %i.k
  %i.m = load ptr, ptr %i.g, align 8              ; 3 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 798, ptr noundef nonnull @__func__.load_gtree, ptr noundef nonnull @.str.30, ptr noundef %i.m, ptr noundef nonnull @.str.31) #8
  br label %trace_load_gtree_end.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.i, %i.o
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 802, ptr noundef nonnull @__func__.load_gtree, ptr noundef nonnull @.str.30, ptr noundef %i.m, ptr noundef nonnull @.str.32) #8
  br label %trace_load_gtree_end.exit

.critedge:                                        ; preds = %.thread75, %bb.d
  %i.q = phi ptr [ %.pre, %.thread75 ], [ %i.f, %bb.d ] ; 8 uses
  %i.r = phi i32 [ %i.d, %.thread75 ], [ %i.i, %bb.d ] ; 5 uses
  %i.s = phi ptr [ @.str.37, %.thread75 ], [ %i.m, %bb.d ] ; 2 uses
  %i.t = phi ptr [ null, %.thread75 ], [ %i.g, %bb.d ]
  %.in = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load i64, ptr %.in, align 8              ; 2 uses
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp sgt i32 %i.r, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.z = load ptr, ptr %i.q, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 806, ptr noundef nonnull @__func__.load_gtree, ptr noundef nonnull @.str.30, ptr noundef %i.z, ptr noundef nonnull @.str.31) #8
  br label %trace_load_gtree_end.exit

bb.g:                                             ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.r, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.q, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 810, ptr noundef nonnull @__func__.load_gtree, ptr noundef nonnull @.str.30, ptr noundef %i.ad, ptr noundef nonnull @.str.32) #8
  br label %trace_load_gtree_end.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call i32 @qemu_get_be32(ptr noundef %0) #8 ; 4 uses
  %i.af = load ptr, ptr %3, align 8
  %i.ag = load ptr, ptr %i.q, align 8
  %i.ah = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %trace_load_gtree.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.ai = load i16, ptr @_TRACE_LOAD_GTREE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ai, 0
  br i1 %.not3.i, label %trace_load_gtree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 32768
  %.not4.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i, label %trace_load_gtree.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef %i.af, ptr noundef %i.s, ptr noundef %i.ag, i32 noundef %i.ae) #8
  br label %trace_load_gtree.exit

trace_load_gtree.exit:                            ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.al = tail call i32 @qemu_get_byte(ptr noundef %0) #8
  %.not7081 = icmp eq i32 %i.al, 0
  br i1 %.not7081, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_load_gtree.exit
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.n
  %.06482.us = phi i32 [ %i.am, %bb.n ], [ 0, %.lr.ph ]
  %i.am = add i32 %.06482.us, 1                   ; 3 uses
  %i.an = icmp sgt i32 %i.am, %i.ae
  br i1 %i.an, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.ao = tail call i64 @qemu_get_be64(ptr noundef %0) #8
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = tail call noalias ptr @g_malloc0(i64 noundef %i.u) #10 ; 3 uses
  %i.ar = tail call zeroext i1 @vmstate_load_vmsd(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef %i.aq, i32 noundef %i.r, ptr noundef %4) #8
  br i1 %i.ar, label %bb.n, label %.split.us

bb.n:                                             ; preds = %bb.m
  tail call void @g_tree_insert(ptr noundef %i.v, ptr noundef %i.ap, ptr noundef %i.aq) #8
  %i.as = tail call i32 @qemu_get_byte(ptr noundef %0) #8
  %.not70.us = icmp eq i32 %i.as, 0
  br i1 %.not70.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !18

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.06482 = phi i32 [ %i.at, %bb.q ], [ 0, %.lr.ph ]
  %i.at = add i32 %.06482, 1                      ; 3 uses
  %i.au = icmp sgt i32 %i.at, %i.ae
  br i1 %i.au, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split
  %i.av = tail call noalias ptr @g_malloc0(i64 noundef %i.b) #10 ; 4 uses
  %i.aw = tail call zeroext i1 @vmstate_load_vmsd(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.av, i32 noundef %i.r, ptr noundef %4) #8
  br i1 %i.aw, label %bb.p, label %.thread76

bb.p:                                             ; preds = %bb.o
  %i.ax = tail call noalias ptr @g_malloc0(i64 noundef %i.u) #10 ; 3 uses
  %i.ay = tail call zeroext i1 @vmstate_load_vmsd(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef %i.ax, i32 noundef %i.r, ptr noundef %4) #8
  br i1 %i.ay, label %bb.q, label %.split.us

bb.q:                                             ; preds = %bb.p
  tail call void @g_tree_insert(ptr noundef %i.v, ptr noundef %i.av, ptr noundef %i.ax) #8
  %i.az = tail call i32 @qemu_get_byte(ptr noundef %0) #8
  %.not70 = icmp eq i32 %i.az, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph.split, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.q, %bb.n, %trace_load_gtree.exit
  %.165 = phi i32 [ 0, %trace_load_gtree.exit ], [ %i.am, %bb.n ], [ %i.at, %bb.q ]
  %.not71 = icmp eq i32 %.165, %i.ae
  br i1 %.not71, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split, %.lr.ph.split.us, %._crit_edge
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 837, ptr noundef nonnull @__func__.load_gtree, ptr noundef nonnull @.str.38, ptr noundef %5) #8
  br label %trace_load_gtree_end.exit

bb.s:                                             ; preds = %._crit_edge
  %6 = load ptr, ptr %3, align 8
  %i.ba = load ptr, ptr %i.q, align 8
  %i.bb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i72 = icmp eq i32 %i.bb, 0
  br i1 %.not.i72, label %trace_load_gtree_end.exit, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.bc = load i16, ptr @_TRACE_LOAD_GTREE_END_DSTATE, align 2
  %.not3.i73 = icmp eq i16 %i.bc, 0
  br i1 %.not3.i73, label %trace_load_gtree_end.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = load i32, ptr @qemu_loglevel, align 4
  %i.be = and i32 %i.bd, 32768
  %.not4.i74 = icmp eq i32 %i.be, 0
  br i1 %.not4.i74, label %trace_load_gtree_end.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %6, ptr noundef %i.s, ptr noundef %i.ba) #8
  br label %trace_load_gtree_end.exit

.split.us:                                        ; preds = %bb.p, %bb.m
  %.us-phi85 = phi ptr [ %i.ap, %bb.m ], [ %i.av, %bb.p ]
  %.us-phi86 = phi ptr [ %i.aq, %bb.m ], [ %i.ax, %bb.p ]
  tail call void @g_free(ptr noundef %.us-phi86) #8
  br i1 %.not, label %trace_load_gtree_end.exit, label %.thread76

.thread76:                                        ; preds = %bb.o, %.split.us
  %.178 = phi ptr [ %.us-phi85, %.split.us ], [ %i.av, %bb.o ]
  tail call void @g_free(ptr noundef %.178) #8
  br label %trace_load_gtree_end.exit

trace_load_gtree_end.exit:                        ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %.split.us, %.thread76, %bb.r, %bb.h, %bb.f, %bb.e, %bb.c
  %.066 = phi i1 [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.r ], [ false, %.split.us ], [ false, %bb.c ], [ false, %bb.e ], [ false, %.thread76 ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.v ]
  ret i1 %.066
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @save_gtree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %6 = alloca %struct.save_gtree_data, align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.h = phi ptr [ %i.f, %bb.b ], [ @.str.37, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %0, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %5, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 0, ptr %i.m, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = tail call i32 @g_tree_nnodes(ptr noundef %i.n) #8 ; 2 uses
  %i.p = load ptr, ptr %3, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %trace_save_gtree.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %.thread
  %i.s = load i16, ptr @_TRACE_SAVE_GTREE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i, label %trace_save_gtree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not4.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i, label %trace_save_gtree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.41, ptr noundef %i.p, ptr noundef %i.h, ptr noundef %i.q, i32 noundef %i.o) #8
  br label %trace_save_gtree.exit

trace_save_gtree.exit:                            ; preds = %.thread, %bb.c, %bb.d, %bb.e
  tail call void @qemu_put_be32(ptr noundef %0, i32 noundef %i.o) #8
  call void @g_tree_foreach(ptr noundef %i.n, ptr noundef nonnull @save_gtree_elem, ptr noundef nonnull %6) #8
  call void @qemu_put_byte(ptr noundef %0, i32 noundef 0) #8
  %i.v = load i8, ptr %i.m, align 8, !range !7, !noundef !8
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = load ptr, ptr %3, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i28 = icmp eq i32 %i.z, 0                 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %trace_save_gtree.exit
  br i1 %.not.i28, label %trace_save_gtree_end.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.aa = load i16, ptr @_TRACE_SAVE_GTREE_END_DSTATE, align 2
  %.not3.i29 = icmp eq i16 %i.aa, 0
  br i1 %.not3.i29, label %trace_save_gtree_end.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr @qemu_loglevel, align 4
  %i.ac = and i32 %i.ab, 32768
  %.not4.i30 = icmp eq i32 %i.ac, 0
  br i1 %.not4.i30, label %trace_save_gtree_end.exit, label %trace_save_gtree_end.exit.sink.split

bb.i:                                             ; preds = %trace_save_gtree.exit
  br i1 %.not.i28, label %trace_save_gtree_end.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.ad = load i16, ptr @_TRACE_SAVE_GTREE_END_DSTATE, align 2
  %.not3.i32 = icmp eq i16 %i.ad, 0
  br i1 %.not3.i32, label %trace_save_gtree_end.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not4.i33 = icmp eq i32 %i.af, 0
  br i1 %.not4.i33, label %trace_save_gtree_end.exit, label %trace_save_gtree_end.exit.sink.split

trace_save_gtree_end.exit.sink.split:             ; preds = %bb.k, %bb.h
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.42, ptr noundef %i.x, ptr noundef %i.h, ptr noundef %i.y) #8
  br label %trace_save_gtree_end.exit

trace_save_gtree_end.exit:                        ; preds = %trace_save_gtree_end.exit.sink.split, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = xor i1 %i.w, true
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @load_qlist(ptr noundef %0, ptr noundef %1, i64 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = load ptr, ptr %3, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %trace_load_qlist.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i16, ptr @_TRACE_LOAD_QLIST_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.n, 0
  br i1 %.not2.i, label %trace_load_qlist.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not3.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i, label %trace_load_qlist.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.43, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.l) #8
  %.pre = load i32, ptr %i.k, align 4
  br label %trace_load_qlist.exit

trace_load_qlist.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.q = phi i32 [ %i.l, %bb.a ], [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %.pre, %bb.d ]
  %i.r = icmp sgt i32 %i.h, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_load_qlist.exit
  %i.s = load ptr, ptr %i.b, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 896, ptr noundef nonnull @__func__.load_qlist, ptr noundef nonnull @.str.30, ptr noundef %i.s, ptr noundef nonnull @.str.31) #8
  br label %trace_load_qlist_end.exit

bb.f:                                             ; preds = %trace_load_qlist.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp slt i32 %i.h, %i.u
  br i1 %i.v, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.w = tail call i32 @qemu_get_byte(ptr noundef %0) #8
  %.not60 = icmp eq i32 %i.w, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = add i64 %i.f, 8                          ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.b, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 900, ptr noundef nonnull @__func__.load_qlist, ptr noundef nonnull @.str.30, ptr noundef %i.y, ptr noundef nonnull @.str.32) #8
  br label %trace_load_qlist_end.exit

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %.061 = phi ptr [ null, %.lr.ph ], [ %i.z, %bb.o ] ; 2 uses
  %i.z = tail call noalias ptr @g_malloc(i64 noundef %i.d) #10 ; 8 uses
  %i.aa = tail call zeroext i1 @vmstate_load_vmsd(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.z, i32 noundef %i.h, ptr noundef %4) #8
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_free(ptr noundef %i.z) #8
  br label %trace_load_qlist_end.exit

bb.j:                                             ; preds = %bb.h
  %.not55 = icmp eq ptr %.061, null
  br i1 %.not55, label %bb.k, label %bb.n
end_hunk_0
