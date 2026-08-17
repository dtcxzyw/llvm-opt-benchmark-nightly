inline.NumInlined: 149
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vhost_user_backend_handle_shmem_unmap:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i64 [ %.pre1, %bb.f ], [ %i.m, %bb.e ]
  %i.t = phi i64 [ %.pre, %bb.f ], [ %i.k, %bb.e ]
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.81, i64 noundef %i.t, i64 noundef %i.s) #15
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.u = tail call ptr @virtio_find_shmem_map(ptr noundef nonnull %i.g, i64 noundef %.pre, i64 noundef %.pre1) #15
  %.not44 = icmp eq ptr %i.u, null
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %i.j, align 8
  %i.w = load i64, ptr %i.l, align 8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.82, i64 noundef %i.v, i64 noundef %i.w) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.d, %bb.b
  %.039 = phi ptr [ null, %bb.b ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ null, %bb.d ] ; 2 uses
  %i.x = phi i64 [ 1, %bb.b ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.d ]
  %i.y = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = and i32 %i.aa, 8
  %.not45 = icmp eq i32 %i.ab, 0
  br i1 %.not45, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.x, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 8, ptr %i.ac, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %1, ptr %3, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 8, ptr %i.af, align 8
  %i.ag = load i32, ptr %i.z, align 1
  %i.ah = and i32 %i.ag, -13
  %i.ai = or disjoint i32 %i.ah, 4
  store i32 %i.ai, ptr %i.z, align 1
  %i.aj = call i32 @qio_channel_writev_all(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 2, ptr noundef nonnull %i.a) #15
  %.not.i = icmp eq i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.ak) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.al = icmp ne ptr %.039, null
  %or.cond = and i1 %i.al, %i.y
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ap = load i64, ptr %i.ao, align 8
  call void @virtio_del_shmem_map(ptr noundef nonnull %.039, i64 noundef %i.an, i64 noundef %i.ap) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.037 = phi i32 [ -14, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.037
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @vhost_user_send_resp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [2 x %struct.iovec], align 16       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %1, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 1
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = and i32 %i.h, -13
  %i.j = or disjoint i32 %i.i, 4
  store i32 %i.j, ptr %i.g, align 1
  %i.k = call i32 @qio_channel_writev_all(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 2, ptr noundef nonnull %3) #15
  %.not = icmp eq i32 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i1 %.not
}

declare i32 @virtio_get_num_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

declare void @memory_region_init_ram_device_ptr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @g_ptr_array_set_size(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @g_ptr_array_remove_index(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_ptr_array_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @virtio_add_vhost_device(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @virtio_object_type(ptr noundef) local_unnamed_addr #4

declare ptr @virtio_lookup_vhost_device(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @virtio_remove_resource(ptr noundef) local_unnamed_addr #4

declare i32 @virtio_lookup_dmabuf(ptr noundef) local_unnamed_addr #4

declare ptr @virtio_find_shmem_region(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare i64 @memory_region_size(ptr noundef) local_unnamed_addr #4

declare ptr @virtio_shared_memory_mapping_new(i8 noundef zeroext, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @virtio_add_shmem_map(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @object_unref(ptr noundef) local_unnamed_addr #4

declare ptr @virtio_find_shmem_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @virtio_del_shmem_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @qio_channel_writev_all(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare void @g_source_destroy(ptr noundef) local_unnamed_addr #4

declare void @g_source_unref(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @qemu_set_blocking(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vhost_user_postcopy_fault_handler(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 1              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %trace_vhost_user_postcopy_fault_handler.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr @_TRACE_VHOST_USER_POSTCOPY_FAULT_HANDLER_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.m, 0
  br i1 %.not2.i, label %trace_vhost_user_postcopy_fault_handler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %trace_vhost_user_postcopy_fault_handler.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.90, ptr noundef %i.h, i64 noundef %i.f, i32 noundef %i.k) #15
  %.pre = load ptr, ptr %i.i, align 8             ; 2 uses
  %.pre73 = load i32, ptr %.pre, align 8
  br label %trace_vhost_user_postcopy_fault_handler.exit

trace_vhost_user_postcopy_fault_handler.exit:     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.p = phi i32 [ %i.k, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %.pre73, %bb.d ]
  %i.q = phi ptr [ %i.j, %bb.a ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4192 ; 2 uses
  %i.s = zext i32 %i.p to i64
  %i.t = load i64, ptr %i.r, align 8
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.s) ; 2 uses
  %.not63 = icmp eq i64 %i.u, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_vhost_user_postcopy_fault_handler.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.w = load i32, ptr @trace_events_enabled_count, align 4 ; 3 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %trace_vhost_user_postcopy_fault_handler_loop.exit.us, label %.lr.ph.split, !prof !7

trace_vhost_user_postcopy_fault_handler_loop.exit.us: ; preds = %.lr.ph, %bb.f
  %i.y = phi i64 [ %i.al, %bb.f ], [ 0, %.lr.ph ] ; 4 uses
  %.04560.us = phi i32 [ %i.ak, %bb.f ], [ 0, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not.us = icmp ult i64 %i.f, %i.aa
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_vhost_user_postcopy_fault_handler_loop.exit.us
  %i.ab = sub nuw i64 %i.f, %i.aa                 ; 2 uses
  %i.ac = getelementptr [32 x i8], ptr %i.q, i64 %i.y
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %.not50.us = icmp ult i64 %i.ab, %i.ae
  br i1 %.not50.us, label %.split.us.thread, label %bb.f

.split.us.thread:                                 ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4208
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.y
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.ab
  br label %.thread

bb.f:                                             ; preds = %bb.e, %trace_vhost_user_postcopy_fault_handler_loop.exit.us
  %i.ak = add i32 %.04560.us, 1                   ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp ugt i64 %i.u, %i.al
  br i1 %i.am, label %trace_vhost_user_postcopy_fault_handler_loop.exit.us, label %._crit_edge, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.pre7778 = phi ptr [ %.pre77, %bb.m ], [ %i.q, %.lr.ph ] ; 4 uses
  %i.an = phi i32 [ %i.ay, %bb.m ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.ao = phi i32 [ %i.ba, %bb.m ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.ap = phi i64 [ %i.bv, %bb.m ], [ 0, %.lr.ph ] ; 7 uses
  %.04560 = phi i32 [ %i.bu, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr [32 x i8], ptr %.pre7778, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8
  %.not.i51 = icmp eq i32 %i.ao, 0
  br i1 %.not.i51, label %trace_vhost_user_postcopy_fault_handler_loop.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %.lr.ph.split
  %i.av = load i16, ptr @_TRACE_VHOST_USER_POSTCOPY_FAULT_HANDLER_LOOP_DSTATE, align 2
  %.not3.i52 = icmp eq i16 %i.av, 0
  br i1 %.not3.i52, label %trace_vhost_user_postcopy_fault_handler_loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @qemu_loglevel, align 4
  %i.ax = and i32 %i.aw, 32768
  %.not4.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i, label %trace_vhost_user_postcopy_fault_handler_loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.91, i32 noundef %.04560, i64 noundef %i.ar, i64 noundef %i.au) #15
  %.pre74 = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  %.pre76 = load i64, ptr %i.aq, align 8
  %.pre77.pre = load ptr, ptr %i.i, align 8
  br label %trace_vhost_user_postcopy_fault_handler_loop.exit

trace_vhost_user_postcopy_fault_handler_loop.exit: ; preds = %.lr.ph.split, %bb.g, %bb.h, %bb.i
  %.pre77 = phi ptr [ %.pre7778, %.lr.ph.split ], [ %.pre7778, %bb.g ], [ %.pre7778, %bb.h ], [ %.pre77.pre, %bb.i ] ; 3 uses
  %i.ay = phi i32 [ %i.an, %.lr.ph.split ], [ %i.an, %bb.g ], [ %i.an, %bb.h ], [ %.pre74, %bb.i ] ; 2 uses
  %i.az = phi i64 [ %i.ar, %.lr.ph.split ], [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %.pre76, %bb.i ] ; 2 uses
  %i.ba = phi i32 [ 0, %.lr.ph.split ], [ %i.ao, %bb.g ], [ %i.ao, %bb.h ], [ %.pre74, %bb.i ]
  %.not = icmp ult i64 %i.f, %i.az
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %trace_vhost_user_postcopy_fault_handler_loop.exit
  %i.bb = sub nuw i64 %i.f, %i.az                 ; 3 uses
  %i.bc = getelementptr [32 x i8], ptr %.pre77, i64 %i.ap
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8
  %.not50 = icmp ult i64 %i.bb, %i.be
  br i1 %.not50, label %.split.us, label %bb.m

.split.us:                                        ; preds = %bb.j
  %i.bf = icmp eq i32 %i.ay, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4208
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ap
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = add i64 %i.bj, %i.bb                    ; 4 uses
  %i.bl = load i16, ptr @_TRACE_VHOST_USER_POSTCOPY_FAULT_HANDLER_FOUND_DSTATE, align 2
  %.not3.i54 = icmp eq i16 %i.bl, 0
  %or.cond = select i1 %i.bf, i1 true, i1 %.not3.i54, !prof !27
  br i1 %or.cond, label %.thread, label %bb.k, !prof !27

bb.k:                                             ; preds = %.split.us
  %i.bm = load i32, ptr @qemu_loglevel, align 4
  %i.bn = and i32 %i.bm, 32768
  %.not4.i55 = icmp eq i32 %i.bn, 0
  br i1 %.not4.i55, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.92, i32 noundef %.04560, i64 noundef %i.bb, i64 noundef %i.bk) #15
  br label %.thread

.thread:                                          ; preds = %.split.us.thread, %bb.l, %bb.k, %.split.us
  %i.bo = phi i64 [ %i.aj, %.split.us.thread ], [ %i.bk, %bb.l ], [ %i.bk, %bb.k ], [ %i.bk, %.split.us ]
  %.us-phi6293 = phi i64 [ %i.y, %.split.us.thread ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ %i.ap, %.split.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 4200
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.us-phi6293
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call i32 @postcopy_request_shared_page(ptr noundef %0, ptr noundef %i.bs, i64 noundef %i.f, i64 noundef %i.bo) #15
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %trace_vhost_user_postcopy_fault_handler_loop.exit
  %i.bu = add i32 %.04560, 1                      ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = load i32, ptr %.pre77, align 8
  %i.bx = zext i32 %i.bw to i64
  %i.by = load i64, ptr %i.r, align 8
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bx)
  %i.ca = icmp ugt i64 %i.bz, %i.bv
  br i1 %i.ca, label %.lr.ph.split, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.m, %bb.f, %trace_vhost_user_postcopy_fault_handler.exit
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.vhost_user_postcopy_fault_handler, i64 noundef %i.f) #15
  br label %bb.n

bb.n:                                             ; preds = %.thread, %._crit_edge
  %.3 = phi i32 [ %i.bt, %.thread ], [ -1, %._crit_edge ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vhost_user_postcopy_waker(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = tail call ptr @qemu_ram_get_idstr(ptr noundef %1) #15
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %trace_vhost_user_postcopy_waker.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr @_TRACE_VHOST_USER_POSTCOPY_WAKER_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.g, 0
  br i1 %.not1.i, label %trace_vhost_user_postcopy_waker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not2.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i, label %trace_vhost_user_postcopy_waker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.93, ptr noundef %i.e, i64 noundef %2) #15
  br label %trace_vhost_user_postcopy_waker.exit

trace_vhost_user_postcopy_waker.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %trace_vhost_user_postcopy_waker_nomatch.exit, label %.preheader

.preheader:                                       ; preds = %trace_vhost_user_postcopy_waker.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4192
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.m) ; 2 uses
  %.not52 = icmp eq i64 %i.p, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4200
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4208
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.t = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.l ] ; 4 uses
  %.03651 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.l ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %.not42 = icmp ult i64 %2, %i.z
  br i1 %.not42, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr [32 x i8], ptr %i.k, i64 %i.t
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = icmp ult i64 %2, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.af = sub nuw i64 %2, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.t
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.af                    ; 2 uses
  %i.ak = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i43 = icmp eq i32 %i.ak, 0
  br i1 %.not.i43, label %trace_vhost_user_postcopy_waker_found.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.al = load i16, ptr @_TRACE_VHOST_USER_POSTCOPY_WAKER_FOUND_DSTATE, align 2
  %.not1.i44 = icmp eq i16 %i.al, 0
  br i1 %.not1.i44, label %trace_vhost_user_postcopy_waker_found.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not2.i45 = icmp eq i32 %i.an, 0
  br i1 %.not2.i45, label %trace_vhost_user_postcopy_waker_found.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.94, i64 noundef %i.aj) #15
  br label %trace_vhost_user_postcopy_waker_found.exit

trace_vhost_user_postcopy_waker_found.exit:       ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ao = tail call i32 @postcopy_wake_shared(ptr noundef %0, i64 noundef %i.aj, ptr noundef %1) #15
  br label %trace_vhost_user_postcopy_waker_nomatch.exit

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.ap = add i32 %.03651, 1                      ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ugt i64 %i.p, %i.aq
  br i1 %i.ar, label %bb.e, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.as = tail call ptr @qemu_ram_get_idstr(ptr noundef %1) #15
  %i.at = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i46 = icmp eq i32 %i.at, 0
  br i1 %.not.i46, label %trace_vhost_user_postcopy_waker_nomatch.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %._crit_edge
  %i.au = load i16, ptr @_TRACE_VHOST_USER_POSTCOPY_WAKER_NOMATCH_DSTATE, align 2
  %.not1.i47 = icmp eq i16 %i.au, 0
  br i1 %.not1.i47, label %trace_vhost_user_postcopy_waker_nomatch.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 32768
  %.not2.i48 = icmp eq i32 %i.aw, 0
  br i1 %.not2.i48, label %trace_vhost_user_postcopy_waker_nomatch.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.95, ptr noundef %i.as, i64 noundef %2) #15
  br label %trace_vhost_user_postcopy_waker_nomatch.exit

trace_vhost_user_postcopy_waker_nomatch.exit:     ; preds = %bb.o, %bb.n, %bb.m, %._crit_edge, %trace_vhost_user_postcopy_waker.exit, %trace_vhost_user_postcopy_waker_found.exit
  %.0 = phi i32 [ %i.ao, %trace_vhost_user_postcopy_waker_found.exit ], [ 0, %trace_vhost_user_postcopy_waker.exit ], [ 0, %._crit_edge ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ]
  ret i32 %.0
}

declare void @postcopy_register_shared_ufd(ptr noundef) local_unnamed_addr #4

declare i32 @postcopy_request_shared_page(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @qemu_ram_get_idstr(ptr noundef) local_unnamed_addr #4

declare i32 @postcopy_wake_shared(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @postcopy_unregister_shared_ufd(ptr noundef) local_unnamed_addr #4

declare void @postcopy_remove_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @vhost_user_add_remove_regions(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull initializes((8, 12)) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.VhostUserMsg, align 4       ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %5 = alloca %struct.VhostUserMsg, align 4       ; 9 uses
  %6 = alloca %struct.VhostUserMsg, align 4       ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca [512 x i8], align 16              ; 6 uses
  %i.e = alloca i64, align 8                      ; 10 uses
  %7 = alloca [512 x %struct.scrub_regions], align 16 ; 5 uses
  %8 = alloca [512 x %struct.scrub_regions], align 16 ; 10 uses
  %i.f = alloca [512 x i64], align 16             ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %7, i8 0, i64 8192, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %8, i8 0, i64 8192, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 40, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i32 %i.l, 513
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.1, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_user_add_remove_regions) #14
  unreachable
end_hunk_0
