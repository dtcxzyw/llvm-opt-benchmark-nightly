inline.NumInlined: 320
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nbd_co_send_block_status:bb.a
  %i.f = icmp ugt i32 %i.d, 2
  br i1 %i.f, label %nbd_extent_array_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 2285, ptr noundef nonnull @__PRETTY_FUNCTION__.nbd_extent_array_new) #20
  unreachable

nbd_extent_array_new.exit:                        ; preds = %bb.a
  %i.g = select i1 %5, i32 1, i32 131072          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = zext nneg i32 %i.g to i64
  %i.j = tail call noalias ptr @g_malloc_n(i64 noundef %i.i, i64 noundef 16) #22
  store ptr %i.j, ptr %i.e, align 8
  %i.k = icmp ne i32 %i.d, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 1, ptr %i.n, align 1
  %i.o = icmp eq i32 %7, 0
  %.not26.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %nbd_extent_array_new.exit
  br i1 %.not26.i, label %blockstatus_to_extents.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.01428.i = phi i64 [ %i.x, %bb.e ], [ %3, %bb.c ] ; 2 uses
  %.01627.i = phi i64 [ %i.y, %bb.e ], [ %4, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.p = call i32 @blk_co_block_status_above(ptr noundef %2, ptr noundef null, i64 noundef %.01428.i, i64 noundef %.01627.i, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #19 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = and i32 %i.p, 3
  %i.s = xor i32 %i.r, 1
  %i.t = load i64, ptr %i.b, align 8
  %i.u = call fastcc i32 @nbd_extent_array_add(ptr noundef nonnull %i.e, i64 noundef %i.t, i32 noundef %i.s)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  %.1.ph.i = phi i32 [ 0, %bb.d ], [ %i.p, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %blockstatus_to_extents.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.b, align 8              ; 2 uses
  %i.x = add i64 %i.w, %.01428.i
  %i.y = sub i64 %.01627.i, %i.w                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %blockstatus_to_extents.exit.thread, label %.lr.ph.i

bb.f:                                             ; preds = %nbd_extent_array_new.exit
  br i1 %.not26.i, label %blockstatus_to_extents.exit.thread, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.f, %bb.h
  %.01224.i = phi i64 [ %i.af, %bb.h ], [ %3, %bb.f ] ; 2 uses
  %.01423.i = phi i64 [ %i.ag, %bb.h ], [ %4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.z = call i32 @blk_co_is_allocated_above(ptr noundef %2, ptr noundef null, i1 noundef zeroext false, i64 noundef %.01224.i, i64 noundef %.01423.i, ptr noundef nonnull %i.a) #19 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread.i24, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i21
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = call fastcc i32 @nbd_extent_array_add(ptr noundef nonnull %i.e, i64 noundef %i.ab, i32 noundef %i.z)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.thread.i24, label %bb.h

.thread.i24:                                      ; preds = %bb.g, %.lr.ph.i21
  %.1.ph.i25 = phi i32 [ 0, %bb.g ], [ %i.z, %.lr.ph.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %blockstatus_to_extents.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.a, align 8             ; 2 uses
  %i.af = add i64 %i.ae, %.01224.i
  %i.ag = sub i64 %.01423.i, %i.ae                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i22 = icmp eq i64 %i.ag, 0
  br i1 %.not.i22, label %blockstatus_to_extents.exit.thread, label %.lr.ph.i21

blockstatus_to_extents.exit:                      ; preds = %.thread.i24, %.thread.i
  %.020 = phi i32 [ %.1.ph.i25, %.thread.i24 ], [ %.1.ph.i, %.thread.i ] ; 2 uses
  %i.ah = icmp slt i32 %.020, 0
  br i1 %i.ah, label %bb.i, label %blockstatus_to_extents.exit.thread

bb.i:                                             ; preds = %blockstatus_to_extents.exit
  %i.ai = sub i32 0, %.020
  %i.aj = call i32 @nbd_co_send_chunk_error(ptr noundef %0, ptr noundef %1, i32 noundef %i.ai, ptr noundef nonnull @.str.83, ptr noundef %8)
  br label %glib_autoptr_cleanup_NBDExtentArray.exit

blockstatus_to_extents.exit.thread:               ; preds = %bb.h, %bb.e, %bb.f, %bb.c, %blockstatus_to_extents.exit
  %i.ak = call i32 @nbd_co_send_extents(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.e, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8)
  br label %glib_autoptr_cleanup_NBDExtentArray.exit

glib_autoptr_cleanup_NBDExtentArray.exit:         ; preds = %blockstatus_to_extents.exit.thread, %bb.i
  %.0 = phi i32 [ %i.aj, %bb.i ], [ %i.ak, %blockstatus_to_extents.exit.thread ]
  %i.al = load ptr, ptr %i.e, align 8
  call void @g_free(ptr noundef %i.al) #19
  call void @g_free(ptr noundef nonnull %i.e) #19
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -5, 1) i32 @nbd_co_send_bitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #23 ; 10 uses
  %i.f = icmp ugt i32 %i.d, 2
  br i1 %i.f, label %nbd_extent_array_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 2285, ptr noundef nonnull @__PRETTY_FUNCTION__.nbd_extent_array_new) #20
  unreachable

nbd_extent_array_new.exit:                        ; preds = %bb.a
  %i.g = select i1 %5, i32 1, i32 131072          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = zext nneg i32 %i.g to i64
  %i.j = tail call noalias ptr @g_malloc_n(i64 noundef %i.i, i64 noundef 16) #22
  store ptr %i.j, ptr %i.e, align 8
  %i.k = icmp ne i32 %i.d, 3                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 1, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.o = add i64 %4, %3                           ; 3 uses
  %i.p = select i1 %i.k, i64 9223372036854775807, i64 2147483647 ; 2 uses
  tail call void @bdrv_dirty_bitmap_lock(ptr noundef %2) #19
  %i.q = call zeroext i1 @bdrv_dirty_bitmap_next_dirty_area(ptr noundef %2, i64 noundef %3, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19
  br i1 %i.q, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %nbd_extent_array_new.exit, %bb.d
  %.018.i = phi i64 [ %i.aa, %bb.d ], [ %3, %nbd_extent_array_new.exit ]
  %i.r = load i64, ptr %i.a, align 8
  %i.s = sub i64 %i.r, %.018.i
  %i.t = call fastcc i32 @nbd_extent_array_add(ptr noundef nonnull %i.e, i64 noundef %i.s, i32 noundef 0)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %glib_autoptr_cleanup_NBDExtentArray.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = load i64, ptr %i.b, align 8
  %i.w = call fastcc i32 @nbd_extent_array_add(ptr noundef nonnull %i.e, i64 noundef %i.v, i32 noundef 1)
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %glib_autoptr_cleanup_NBDExtentArray.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.a, align 8
  %i.z = load i64, ptr %i.b, align 8
  %i.aa = add i64 %i.z, %i.y                      ; 3 uses
  %i.ab = call zeroext i1 @bdrv_dirty_bitmap_next_dirty_area(ptr noundef %2, i64 noundef %i.aa, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19
  br i1 %i.ab, label %.lr.ph.i, label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.d, %nbd_extent_array_new.exit
  %.0.lcssa.i = phi i64 [ %3, %nbd_extent_array_new.exit ], [ %i.aa, %bb.d ]
  %i.ac = sub i64 %i.o, %.0.lcssa.i
  %i.ad = call fastcc i32 @nbd_extent_array_add(ptr noundef nonnull %i.e, i64 noundef %i.ac, i32 noundef 0) ; 0 uses
  br label %glib_autoptr_cleanup_NBDExtentArray.exit

glib_autoptr_cleanup_NBDExtentArray.exit:         ; preds = %.lr.ph.i, %bb.c, %.critedge.i
  call void @bdrv_dirty_bitmap_unlock(ptr noundef %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ae = call i32 @nbd_co_send_extents(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.e, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8)
  %i.af = load ptr, ptr %i.e, align 8
  call void @g_free(ptr noundef %i.af) #19
  call void @g_free(ptr noundef nonnull %i.e) #19
  ret i32 %i.ae
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @bdrv_graph_co_rdlock() #2

declare void @bdrv_graph_co_rdunlock() #2

declare i32 @blk_co_preadv(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @nbd_co_send_sparse_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %union.NBDReply, align 8            ; 4 uses
  %7 = alloca %struct.NBDStructuredReadHole, align 8 ; 6 uses
  %8 = alloca [2 x %struct.iovec], align 16       ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp ult i64 %4, 33554433
  br i1 %i.d, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 2216, ptr noundef nonnull @__PRETTY_FUNCTION__.nbd_co_send_sparse_read) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph, %.thread67
  %.05788 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %.thread67 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = add i64 %.05788, %2                      ; 5 uses
  %i.q = sub nuw nsw i64 %4, %.05788              ; 2 uses
  %i.r = call i32 @blk_co_block_status_above(ptr noundef %i.o, ptr noundef null, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #19 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread76, label %bb.d

.thread76:                                        ; preds = %bb.c
  %i.t = sub i32 0, %i.r                          ; 2 uses
  %i.u = call ptr @strerror(i32 noundef %i.t) #19
  %i.v = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.78, ptr noundef %i.u) #19 ; 2 uses
  %i.w = call i32 @nbd_co_send_chunk_error(ptr noundef %0, ptr noundef %1, i32 noundef %i.t, ptr noundef %i.v, ptr noundef %5)
  call void @g_free(ptr noundef %i.v) #19
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.a, align 8              ; 4 uses
  %i.y = add i64 %i.x, -1
  %or.cond.not = icmp ult i64 %i.y, %i.q
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 2233, ptr noundef nonnull @__PRETTY_FUNCTION__.nbd_co_send_sparse_read) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.x, %.05788
  %i.aa = icmp eq i64 %i.z, %4                    ; 2 uses
  %i.ab = and i32 %i.r, 2
  %.not65 = icmp eq i32 %i.ab, 0
  br i1 %.not65, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %6, ptr %8, align 16
  store i64 0, ptr %i.f, align 8
  store ptr %7, ptr %i.g, align 16
  store i64 12, ptr %i.h, align 8
  %i.ac = load i64, ptr %1, align 8
  %i.ad = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.ae = load i16, ptr @_TRACE_NBD_CO_SEND_CHUNK_READ_HOLE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ae, 0
  br i1 %.not3.i, label %._crit_edge.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr @qemu_loglevel, align 4
  %i.ag = and i32 %i.af, 32768
  %.not4.i = icmp eq i32 %i.ag, 0
  br i1 %.not4.i, label %._crit_edge.thread.i, label %trace_nbd_co_send_chunk_read_hole.exit

trace_nbd_co_send_chunk_read_hole.exit:           ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.80, i64 noundef %i.ac, i64 noundef %i.p, i64 noundef %i.x) #19
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ah = icmp ult i64 %.pre, 33554441
  br i1 %i.ah, label %._crit_edge.thread.i, label %bb.j

bb.j:                                             ; preds = %trace_nbd_co_send_chunk_read_hole.exit
  call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 2111, ptr noundef nonnull @__PRETTY_FUNCTION__.set_be_chunk) #20
  unreachable

._crit_edge.thread.i:                             ; preds = %bb.i, %bb.h, %bb.g, %trace_nbd_co_send_chunk_read_hole.exit
  %i.ai = phi i64 [ %.pre, %trace_nbd_co_send_chunk_read_hole.exit ], [ 12, %bb.g ], [ 12, %bb.h ], [ 12, %bb.i ] ; 2 uses
  %i.aj = load i32, ptr %i.i, align 4
  %i.ak = icmp ugt i32 %i.aj, 3
  %i.al = load ptr, ptr %8, align 16              ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = select i1 %i.aa, i16 256, i16 0         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread.i
  store i64 32, ptr %i.f, align 8
  store i32 -1943565714, ptr %i.al, align 1
  store i16 %i.an, ptr %i.am, align 1
  store i16 512, ptr %i.ao, align 1
  %i.ar = load i64, ptr %1, align 8
  %i.as = call i64 @llvm.bswap.i64(i64 %i.ar)
  store i64 %i.as, ptr %i.ap, align 1
  %i.at = load i64, ptr %i.j, align 8
  %i.au = call i64 @llvm.bswap.i64(i64 %i.at)
  store i64 %i.au, ptr %i.aq, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = call i64 @llvm.bswap.i64(i64 %i.ai)
  store i64 %i.aw, ptr %i.av, align 1
  br label %set_be_chunk.exit

bb.l:                                             ; preds = %._crit_edge.thread.i
  store i64 20, ptr %i.f, align 8
  store i32 -281833882, ptr %i.al, align 1
  store i16 %i.an, ptr %i.am, align 1
  store i16 512, ptr %i.ao, align 1
  %i.ax = load i64, ptr %1, align 8
  %i.ay = call i64 @llvm.bswap.i64(i64 %i.ax)
  store i64 %i.ay, ptr %i.ap, align 1
  %i.az = trunc nuw nsw i64 %i.ai to i32
  %i.ba = call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %i.aq, align 1
  br label %set_be_chunk.exit

set_be_chunk.exit:                                ; preds = %bb.k, %bb.l
  %i.bb = call i64 @llvm.bswap.i64(i64 %i.p)
  store i64 %i.bb, ptr %7, align 8
  %i.bc = load i64, ptr %i.a, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call i32 @llvm.bswap.i32(i32 %i.bd)
  store i32 %i.be, ptr %i.k, align 8
  %i.bf = call zeroext i1 @qemu_in_coroutine() #19
  br i1 %i.bf, label %nbd_co_send_iov.exit, label %bb.m, !prof !20

bb.m:                                             ; preds = %set_be_chunk.exit
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 2048, ptr noundef nonnull @__func__.nbd_co_send_iov, ptr noundef nonnull @.str.30) #20
  unreachable

nbd_co_send_iov.exit:                             ; preds = %set_be_chunk.exit
  call void @qemu_co_mutex_lock(ptr noundef nonnull %i.l) #19
  %i.bg = call ptr @qemu_coroutine_self() #19
  store ptr %i.bg, ptr %i.m, align 8
  %i.bh = load ptr, ptr %i.n, align 8
  %i.bi = call i32 @qio_channel_writev_all(ptr noundef %i.bh, ptr noundef nonnull %8, i64 noundef 2, ptr noundef %5) #19
  %i.bj = icmp slt i32 %i.bi, 0
  store ptr null, ptr %i.m, align 8
  call void @qemu_co_mutex_unlock(ptr noundef nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.bj, label %.loopexit.sink.split, label %.thread67

bb.n:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.e, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.05788 ; 2 uses
  %i.bm = call i32 @blk_co_pread(ptr noundef %i.bk, i64 noundef %i.p, i64 noundef %i.x, ptr noundef %i.bl, i32 noundef 0) #19 ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = sub i32 0, %i.bm
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 2255, ptr noundef nonnull @__func__.nbd_co_send_sparse_read, i32 noundef %i.bo, ptr noundef nonnull @.str.76) #19
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = call i32 @nbd_co_send_chunk_read(ptr noundef %0, ptr noundef %1, i64 noundef %i.p, ptr noundef %i.bl, i64 noundef %i.bp, i1 noundef zeroext %i.aa, ptr noundef %5) ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.loopexit.sink.split, label %.thread67

.thread67:                                        ; preds = %nbd_co_send_iov.exit, %bb.p
  %i.bs = load i64, ptr %i.a, align 8
  %i.bt = add i64 %i.bs, %.05788                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bu = icmp ult i64 %i.bt, %4
  br i1 %i.bu, label %bb.c, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.p, %nbd_co_send_iov.exit, %bb.o, %.thread76
  %.2.ph = phi i32 [ %i.w, %.thread76 ], [ %i.bm, %bb.o ], [ -5, %nbd_co_send_iov.exit ], [ %i.bq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.thread67, %.loopexit.sink.split, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ %.2.ph, %.loopexit.sink.split ], [ 0, %.thread67 ]
  ret i32 %.2
}

declare i32 @blk_co_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -5, 1) i32 @nbd_co_send_chunk_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef %6) #1 {
bb.a:
  %7 = alloca %union.NBDReply, align 8            ; 11 uses
  %8 = alloca %struct.NBDStructuredReadData, align 8 ; 5 uses
  %9 = alloca [3 x %struct.iovec], align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 0, ptr %8, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, i8 0, i64 16, i1 false), !annotation !11
  store ptr %7, ptr %9, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 8, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %3, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %4, ptr %i.e, align 8
  %i.f = add i64 %4, -1
  %or.cond = icmp ult i64 %i.f, 33554432
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 2166, ptr noundef nonnull @__PRETTY_FUNCTION__.nbd_co_send_chunk_read) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr @_TRACE_NBD_CO_SEND_CHUNK_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.i, 0
  br i1 %.not3.i, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %._crit_edge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.82, i64 noundef %i.g, i64 noundef %2, ptr noundef %3, i64 noundef range(i64 1, 33554433) %4) #19
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.l = add nuw nsw i64 %4, 8                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ugt i32 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.q = select i1 %5, i16 256, i16 0             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread.i
  store i64 32, ptr %i.a, align 8
  store i32 -1943565714, ptr %7, align 8
  store i16 %i.q, ptr %i.p, align 4
  store i16 256, ptr %i.r, align 2
  %i.u = load i64, ptr %1, align 8
  %i.v = call i64 @llvm.bswap.i64(i64 %i.u)
  store i64 %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = call i64 @llvm.bswap.i64(i64 %i.x)
  store i64 %i.y, ptr %i.t, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aa = call i64 @llvm.bswap.i64(i64 %i.l)
  store i64 %i.aa, ptr %i.z, align 8
  br label %set_be_chunk.exit

bb.h:                                             ; preds = %._crit_edge.thread.i
  store i64 20, ptr %i.a, align 8
  store i32 -281833882, ptr %7, align 8
  store i16 %i.q, ptr %i.p, align 4
  store i16 256, ptr %i.r, align 2
  %i.ab = load i64, ptr %1, align 8
  %i.ac = call i64 @llvm.bswap.i64(i64 %i.ab)
  store i64 %i.ac, ptr %i.s, align 8
  %i.ad = trunc nuw nsw i64 %i.l to i32
  %i.ae = call i32 @llvm.bswap.i32(i32 %i.ad)
  store i32 %i.ae, ptr %i.t, align 8
  br label %set_be_chunk.exit

set_be_chunk.exit:                                ; preds = %bb.g, %bb.h
  %i.af = call i64 @llvm.bswap.i64(i64 %2)
  store i64 %i.af, ptr %8, align 8
end_hunk_0
