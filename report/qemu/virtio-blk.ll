inline.NumInlined: 209
inline.NumDeleted: 70
begin_hunk_0_@virtio_blk_zone_mgmt_complete:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, ptr noundef %i.c, ptr noundef nonnull %0, i32 noundef %1) #14
  br label %trace_virtio_blk_zone_mgmt_complete.exit

trace_virtio_blk_zone_mgmt_complete.exit:         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not = icmp eq i32 %1, 0
  %. = select i1 %.not, i8 0, i8 3
  tail call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext %.)
  tail call void @g_free(ptr noundef nonnull %0) #14
  ret void
}

declare i64 @iov_from_buf_full(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @blk_aio_zone_append(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_blk_zone_append_complete(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !14
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %trace_virtio_blk_zone_append_complete.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = ashr i64 %i.g, 9                         ; 3 uses
  %i.i = getelementptr i8, ptr %i.e, i64 184
  %.val.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.val.i.i, 4294967296
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %virtio_stq_p.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %virtio_stq_p.exit [
    i8 0, label %bb.d
    i8 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = tail call i64 @llvm.bswap.i64(i64 %i.h)
  br label %virtio_stq_p.exit

virtio_stq_p.exit:                                ; preds = %bb.b, %bb.c, %bb.e
  %storemerge.i = phi i64 [ %i.m, %bb.e ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  store i64 %storemerge.i, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %iov_from_buf.exit, label %bb.f

bb.f:                                             ; preds = %virtio_stq_p.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %.not21.i = icmp ult i64 %i.s, 8
  br i1 %.not21.i, label %iov_from_buf.exit, label %iov_from_buf.exit.thread

iov_from_buf.exit.thread:                         ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = load i64, ptr %i.a, align 8
  store i64 %i.u, ptr %i.t, align 1
  br label %bb.h

iov_from_buf.exit:                                ; preds = %virtio_stq_p.exit, %bb.f
  %i.v = call i64 @iov_from_buf_full(ptr noundef %i.o, i32 noundef %i.q, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 8) #14
  %.not17 = icmp eq i64 %i.v, 8
  br i1 %.not17, label %iov_from_buf.exit._crit_edge, label %bb.g

iov_from_buf.exit._crit_edge:                     ; preds = %iov_from_buf.exit
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %iov_from_buf.exit
  call void (ptr, ptr, ...) @virtio_error(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.24) #14
  br label %trace_virtio_blk_zone_append_complete.exit

bb.h:                                             ; preds = %iov_from_buf.exit._crit_edge, %iov_from_buf.exit.thread
  %i.w = phi i64 [ %.pre, %iov_from_buf.exit._crit_edge ], [ %storemerge.i, %iov_from_buf.exit.thread ]
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %trace_virtio_blk_zone_append_complete.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.y = load i16, ptr @_TRACE_VIRTIO_BLK_ZONE_APPEND_COMPLETE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.y, 0
  br i1 %.not3.i, label %trace_virtio_blk_zone_append_complete.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not4.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i, label %trace_virtio_blk_zone_append_complete.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i64 noundef %i.w, i32 noundef 0) #14
  br label %trace_virtio_blk_zone_append_complete.exit

trace_virtio_blk_zone_append_complete.exit:       ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.a, %bb.g
  %.0 = phi i8 [ 3, %bb.a ], [ 3, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  call void @virtio_blk_req_complete(ptr noundef nonnull %i.b, i8 noundef zeroext %.0)
  call void @g_free(ptr noundef nonnull %i.b) #14
  call void @g_free(ptr noundef nonnull %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @blk_aio_pwrite_zeroes(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_blk_discard_write_zeroes_complete(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 184
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i.i, 4294967296
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.b, label %virtio_vdev_is_big_endian.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.h = load i8, ptr %i.g, align 8
  switch i8 %i.h, label %virtio_vdev_is_big_endian.exit.thread.i [
    i8 0, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %i.d, align 8
  %i.i = tail call i32 @llvm.bswap.i32(i32 %.val.i)
  br label %virtio_ldl_p.exit

virtio_vdev_is_big_endian.exit.thread.i:          ; preds = %bb.b, %bb.a
  %.val3.i = load i32, ptr %i.d, align 8
  br label %virtio_ldl_p.exit

virtio_ldl_p.exit:                                ; preds = %bb.d, %virtio_vdev_is_big_endian.exit.thread.i
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %.val3.i, %virtio_vdev_is_big_endian.exit.thread.i ]
  %i.j = and i32 %.0.i, 2147483647
  %i.k = icmp eq i32 %i.j, 13                     ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %virtio_ldl_p.exit
  %i.l = sub i32 0, %1
  %i.m = tail call fastcc i32 @virtio_blk_handle_rw_error(ptr noundef nonnull %0, i32 noundef %i.l, i1 noundef zeroext false, i1 noundef zeroext %i.k)
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %virtio_ldl_p.exit
  tail call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext 0)
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @blk_get_stats(ptr noundef %i.o) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @block_acct_done(ptr noundef %i.p, ptr noundef nonnull %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @g_free(ptr noundef nonnull %0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  ret void
}

declare ptr @blk_aio_pdiscard(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @submit_requests(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.j = load i8, ptr %i.i, align 4, !range !12, !noundef !13 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %i.l = icmp sgt i32 %3, 1
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  tail call void @qemu_iovec_init(ptr noundef nonnull %i.f, i32 noundef %4) #14
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.b
  %i.q = add i32 %3, %2                           ; 2 uses
  %.161 = add i32 %2, 1                           ; 2 uses
  %i.r = icmp slt i32 %.161, %i.q
  br i1 %i.r, label %.lr.ph64.preheader, label %._crit_edge

.lr.ph64.preheader:                               ; preds = %.preheader
  %i.s = sext i32 %.161 to i64
  %5 = sext i32 %2 to i64
  br label %.lr.ph64

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8
  tail call void @qemu_iovec_add(ptr noundef nonnull %i.f, ptr noundef %i.u, i64 noundef %i.w) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !23

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.lr.ph64
  %indvars.iv66.a = phi i64 [ %i.s, %.lr.ph64.preheader ], [ %indvars.iv.next67.a, %.lr.ph64 ] ; 3 uses
  %.1.in62 = phi i64 [ %5, %.lr.ph64.preheader ], [ %indvars.iv66.a, %.lr.ph64 ]
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv66.a ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.ab = load i64, ptr %i.aa, align 8
  tail call void @qemu_iovec_concat(ptr noundef nonnull %i.f, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef %i.ab) #14
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %.1.in62
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  store ptr %i.ac, ptr %i.af, align 8
  %indvars.iv.next67.a = add nsw i64 %indvars.iv66.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next67.a to i32
  %exitcond69.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond69.not, label %._crit_edge, label %.lr.ph64, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph64, %.preheader
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ai, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #14
  %i.ak = shl i64 %i.h, 9
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.am = load i64, ptr %i.al, align 8
  %i.an = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %trace_virtio_blk_submit_multireq.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %._crit_edge
  %i.ao = load i16, ptr @_TRACE_VIRTIO_BLK_SUBMIT_MULTIREQ_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.ao, 0
  br i1 %.not6.i, label %trace_virtio_blk_submit_multireq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not7.i = icmp eq i32 %i.aq, 0
  br i1 %.not7.i, label %trace_virtio_blk_submit_multireq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = zext nneg i8 %i.j to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, ptr noundef %i.aj, ptr noundef nonnull %1, i32 noundef %2, i32 noundef range(i32 2, -2147483648) %3, i64 noundef range(i64 0, -511) %i.ak, i64 noundef %i.am, i32 noundef %i.ar) #14
  br label %trace_virtio_blk_submit_multireq.exit

trace_virtio_blk_submit_multireq.exit:            ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  %i.as = tail call ptr @blk_get_stats(ptr noundef %i.b) #14
  %i.at = select i1 %i.k, i32 2, i32 1
  %i.au = add nsw i32 %3, -1
  tail call void @block_acct_merge_done(ptr noundef %i.as, i32 noundef %i.at, i32 noundef %i.au) #14
  br label %bb.f

bb.f:                                             ; preds = %trace_virtio_blk_submit_multireq.exit, %bb.a
  %i.av = getelementptr i8, ptr %0, i64 856
  %.val = load i8, ptr %i.av, align 8, !range !12, !noundef !13
  %i.aw = shl nuw nsw i8 %.val, 3
  %spec.select = zext nneg i8 %i.aw to i32        ; 2 uses
  %i.ax = shl i64 %i.h, 9                         ; 2 uses
  %i.ay = load ptr, ptr %i.d, align 8             ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = tail call ptr @blk_aio_pwritev(ptr noundef %i.b, i64 noundef %i.ax, ptr noundef nonnull %i.f, i32 noundef %spec.select, ptr noundef nonnull @virtio_blk_rw_complete, ptr noundef %i.ay) #14 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = tail call ptr @blk_aio_preadv(ptr noundef %i.b, i64 noundef %i.ax, ptr noundef nonnull %i.f, i32 noundef %spec.select, ptr noundef nonnull @virtio_blk_rw_complete, ptr noundef %i.ay) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare i32 @blk_get_max_transfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @multireq_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %.0 = tail call i32 @llvm.scmp.i32.i64(i64 %i.d, i64 %i.f)
  ret i32 %.0
}

declare i32 @blk_get_max_iov(ptr noundef) local_unnamed_addr #2

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qemu_iovec_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @qemu_iovec_concat(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @block_acct_merge_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @blk_aio_pwritev(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_blk_rw_complete(ptr noundef %0, i32 noundef %1) #0 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #14 ; 2 uses
  %.not25 = icmp eq i32 %1, 0
  %i.d = sub i32 0, %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 552 ; 2 uses
  br i1 %.not25, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.02229.us = phi ptr [ %i.g, %bb.e ], [ %0, %.lr.ph ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02229.us, i64 208
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.us = icmp eq i32 %i.h, 0
  br i1 %.not.i.us, label %trace_virtio_blk_rw_complete.exit.us, label %bb.a, !prof !7

bb.a:                                             ; preds = %.lr.ph.split.us
  %i.i = load i16, ptr @_TRACE_VIRTIO_BLK_RW_COMPLETE_DSTATE, align 2
  %.not2.i.us = icmp eq i16 %i.i, 0
  br i1 %.not2.i.us, label %trace_virtio_blk_rw_complete.exit.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not3.i.us = icmp eq i32 %i.k, 0
  br i1 %.not3.i.us, label %trace_virtio_blk_rw_complete.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef %i.c, ptr noundef nonnull %.02229.us, i32 noundef 0) #14
  br label %trace_virtio_blk_rw_complete.exit.us

trace_virtio_blk_rw_complete.exit.us:             ; preds = %bb.c, %bb.b, %bb.a, %.lr.ph.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.02229.us, i64 168
  %i.m = load i32, ptr %i.l, align 8
  %.not24.us = icmp eq i32 %i.m, -1
  br i1 %.not24.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %trace_virtio_blk_rw_complete.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %.02229.us, i64 152
  tail call void @qemu_iovec_destroy(ptr noundef nonnull %i.n) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %trace_virtio_blk_rw_complete.exit.us
  tail call void @virtio_blk_req_complete(ptr noundef nonnull %.02229.us, i8 noundef zeroext 0)
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = tail call ptr @blk_get_stats(ptr noundef %i.o) #14
  %i.q = getelementptr inbounds nuw i8, ptr %.02229.us, i64 216
  tail call void @block_acct_done(ptr noundef %i.p, ptr noundef nonnull %i.q) #14
  tail call void @g_free(ptr noundef nonnull %.02229.us) #14
  %.not.us = icmp eq ptr %i.g, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.02229 = phi ptr [ %i.s, %bb.o ], [ %0, %.lr.ph ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02229, i64 208
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %trace_virtio_blk_rw_complete.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %.lr.ph.split
  %i.u = load i16, ptr @_TRACE_VIRTIO_BLK_RW_COMPLETE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.u, 0
  br i1 %.not2.i, label %trace_virtio_blk_rw_complete.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not3.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i, label %trace_virtio_blk_rw_complete.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef %i.c, ptr noundef nonnull %.02229, i32 noundef %1) #14
  br label %trace_virtio_blk_rw_complete.exit

trace_virtio_blk_rw_complete.exit:                ; preds = %.lr.ph.split, %bb.f, %bb.g, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.02229, i64 168
  %i.y = load i32, ptr %i.x, align 8
  %.not24 = icmp eq i32 %i.y, -1
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %trace_virtio_blk_rw_complete.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.02229, i64 152
  tail call void @qemu_iovec_destroy(ptr noundef nonnull %i.z) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %trace_virtio_blk_rw_complete.exit
  %i.aa = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #14 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02229, i64 136 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 184
  %.val.i.i = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.val.i.i, 4294967296
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.k, label %virtio_vdev_is_big_endian.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 480
  %i.af = load i8, ptr %i.ae, align 8
  switch i8 %i.af, label %virtio_vdev_is_big_endian.exit.thread.i [
    i8 0, label %bb.l
    i8 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

bb.m:                                             ; preds = %bb.k
end_hunk_0
