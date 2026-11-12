Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-zynqmp-can?download=true
inline.NumInlined: 192
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@can_rxfifo_post_read_id:bb.a
  store i32 %i.bb, ptr %i.bc, align 8
  %i.bd = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.be = zext i8 %i.bd to i32
  %i.bf = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = or disjoint i32 %i.bh, %i.be
  %i.bj = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 16
  %i.bm = or disjoint i32 %i.bl, %i.bi
  %i.bn = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw i32 %i.bo, 24
  %i.bq = or disjoint i32 %i.bp, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 2340
  store i32 %i.bq, ptr %i.br, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %1, %bb.b ], [ %i.y, %bb.c ]
  tail call fastcc void @can_update_irq(ptr noundef nonnull %i.c)
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @can_filter_enable_post_write(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 801, ptr noundef nonnull @__func__.can_filter_enable_post_write) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2344
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 15
  %or.cond18.not = icmp eq i32 %i.f, 15
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2272 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -2049
  %masksel = select i1 %or.cond18.not, i32 2048, i32 0
  %.sink = or disjoint i32 %i.i, %masksel
  store i32 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @can_filter_mask_pre_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 815, ptr noundef nonnull @__func__.can_filter_mask_pre_write) #6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 2                         ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -25
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2344
  %i.n = load i32, ptr %i.m, align 8
  %i.o = shl nuw i32 1, %i.k
  %i.p = and i32 %i.o, %i.n
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = trunc i64 %1 to i32                      ; 2 uses
  %i.r = and i64 %i.h, 4294967295                 ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %trace_xlnx_can_filter_mask_pre_write.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr @_TRACE_XLNX_CAN_FILTER_MASK_PRE_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.u, 0
  br i1 %.not2.i, label %trace_xlnx_can_filter_mask_pre_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not3.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i, label %trace_xlnx_can_filter_mask_pre_write.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i32 %i.k, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.66, i32 noundef %i.x, i32 noundef %i.q) #6
  br label %trace_xlnx_can_filter_mask_pre_write.exit

bb.f:                                             ; preds = %bb.a
  %i.y = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.c) #6 ; 2 uses
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 2048
  %.not14 = icmp eq i32 %i.aa, 0
  br i1 %.not14, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw i32 %i.k, 1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef %i.y, i32 noundef %i.ab) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @g_free(ptr noundef %i.y) #6
  %.pre = and i64 %i.h, 4294967295
  br label %trace_xlnx_can_filter_mask_pre_write.exit

trace_xlnx_can_filter_mask_pre_write.exit:        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.h
  %.pre-phi = phi i64 [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.r, %bb.c ], [ %i.r, %bb.b ], [ %.pre, %bb.h ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  ret i64 %i.ae
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @can_filter_id_pre_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 837, ptr noundef nonnull @__func__.can_filter_id_pre_write) #6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 2                         ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -26
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2344
  %i.n = load i32, ptr %i.m, align 8
  %i.o = shl nuw i32 1, %i.k
  %i.p = and i32 %i.o, %i.n
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = trunc i64 %1 to i32                      ; 2 uses
  %i.r = and i64 %i.h, 4294967295                 ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %trace_xlnx_can_filter_id_pre_write.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr @_TRACE_XLNX_CAN_FILTER_ID_PRE_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.u, 0
  br i1 %.not2.i, label %trace_xlnx_can_filter_id_pre_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not3.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i, label %trace_xlnx_can_filter_id_pre_write.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i32 %i.k, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.68, i32 noundef %i.x, i32 noundef %i.q) #6
  br label %trace_xlnx_can_filter_id_pre_write.exit

bb.f:                                             ; preds = %bb.a
  %i.y = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.c) #6 ; 2 uses
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 2048
  %.not14 = icmp eq i32 %i.aa, 0
  br i1 %.not14, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw i32 %i.k, 1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.67, ptr noundef %i.y, i32 noundef %i.ab) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @g_free(ptr noundef %i.y) #6
  %.pre = and i64 %i.h, 4294967295
  br label %trace_xlnx_can_filter_id_pre_write.exit

trace_xlnx_can_filter_id_pre_write.exit:          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.h
  %.pre-phi = phi i64 [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.r, %bb.c ], [ %i.r, %bb.b ], [ %.pre, %bb.h ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  ret i64 %i.ae
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @transfer_fifo(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.qemu_can_frame, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 3 uses
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %bb.j, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, ptr noundef %i.d) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 3 uses
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 2048
  %.not14.i = icmp eq i32 %i.k, 0
  br i1 %.not14.i, label %bb.j, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, ptr noundef %i.i) #6
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 4096
  %.not7.i = icmp eq i32 %i.n, 0
  br i1 %.not7.i, label %tx_ready_check.exit.preheader, label %bb.h

tx_ready_check.exit.preheader:                    ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false), !annotation !9
  %i.o = tail call zeroext i1 @fifo8_is_empty(ptr noundef %1) #6
  br i1 %i.o, label %tx_ready_check.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %tx_ready_check.exit.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.q = icmp eq ptr %1, %i.p                     ; 3 uses
  %i.r = select i1 %i.q, i64 16, i64 12
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r
  %i.t = select i1 %i.q, i64 17, i64 13
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = select i1 %i.q, i64 18, i64 14
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1096
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 2048
  %.not13.i = icmp eq i32 %i.ai, 0
  br i1 %.not13.i, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.54, ptr noundef %i.ag) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i
  %.sink.i = phi ptr [ %i.i, %bb.e ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.i, %bb.f ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ]
  tail call void @g_free(ptr noundef %.sink.i) #6
  %i.aj = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 2048
  %.not43 = icmp eq i32 %i.al, 0
  br i1 %.not43, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.49, ptr noundef %i.aj) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call fastcc void @can_update_irq(ptr noundef nonnull %0)
  tail call void @g_free(ptr noundef %i.aj) #6
  br label %bb.ai

bb.m:                                             ; preds = %.lr.ph, %tx_ready_check.exit
  %i.am = call i32 @fifo8_num_used(ptr noundef %1) #6
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 3
  %i.ap = lshr i64 %i.ao, 2                       ; 2 uses
  %.not.i39 = icmp eq i64 %i.ap, 0
  br i1 %.not.i39, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef 442, ptr noundef nonnull @__PRETTY_FUNCTION__.read_tx_frame) #7
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3                        ; 4 uses
  %.not29.i = icmp eq i32 %i.ar, 0                ; 2 uses
  br i1 %.not29.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o
  %i.as = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.at = zext i8 %i.as to i32
  %i.au = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.aw, %i.at
  %i.ay = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 16
  %i.bb = or disjoint i32 %i.ba, %i.ax
  %i.bc = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw i32 %i.bd, 24
  %i.bf = or disjoint i32 %i.be, %i.bb
  br label %.split.i

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.s, align 4             ; 3 uses
  %i.bh = icmp eq i32 %i.ar, 1                    ; 2 uses
  %or.cond.not.i = icmp eq i32 %i.ar, 3
  br i1 %or.cond.not.i, label %.split.i, label %bb.q

.split.i:                                         ; preds = %bb.p, %.thread.i
  %.sroa.0.0 = phi i32 [ %i.bf, %.thread.i ], [ %i.bg, %bb.p ] ; 2 uses
  %i.bi = phi i1 [ false, %.thread.i ], [ %i.bh, %bb.p ]
  %i.bj = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = or disjoint i32 %i.bn, %i.bk
  %i.bp = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %i.bs = or disjoint i32 %i.br, %i.bo
  %i.bt = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw i32 %i.bu, 24
  %i.bw = or disjoint i32 %i.bv, %i.bs            ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bx = load i32, ptr %i.u, align 4             ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %.split.i
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %.split.i ], [ %i.bg, %bb.q ]
  %.sroa.6.0 = phi i32 [ %i.bw, %.split.i ], [ %i.bx, %bb.q ]
  %i.by = load i32, ptr %i.w, align 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.split.i
  %.sroa.0.2 = phi i32 [ %.sroa.0.0, %.split.i ], [ %i.bg, %bb.q ]
  %.sroa.6.1 = phi i32 [ %i.bw, %.split.i ], [ %i.bx, %bb.q ]
  %i.bz = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.ca = zext i8 %i.bz to i32
  %i.cb = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = or disjoint i32 %i.cd, %i.ca
  %i.cf = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 16
  %i.ci = or disjoint i32 %i.ch, %i.ce
  %i.cj = call zeroext i8 @fifo8_pop(ptr noundef %1) #6
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw i32 %i.ck, 24
  %i.cm = or disjoint i32 %i.cl, %i.ci
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.3 = phi i32 [ %.sroa.0.1, %bb.r ], [ %.sroa.0.2, %bb.s ] ; 6 uses
  %.sroa.6.2 = phi i32 [ %.sroa.6.0, %bb.r ], [ %.sroa.6.1, %bb.s ] ; 5 uses
  %.sink.i40 = phi i32 [ %i.by, %bb.r ], [ %i.cm, %bb.s ] ; 9 uses
  %.sroa.9.sroa.5.0.extract.shift = lshr i32 %.sink.i40, 24 ; 2 uses
  %.sroa.9.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.9.sroa.5.0.extract.shift to i8
  %i.cn = call zeroext i8 @fifo8_pop(ptr noundef %1) #6 ; 3 uses
  %i.co = zext i8 %i.cn to i32
  %i.cp = call zeroext i8 @fifo8_pop(ptr noundef %1) #6 ; 3 uses
  %i.cq = zext i8 %i.cp to i32
  %i.cr = call zeroext i8 @fifo8_pop(ptr noundef %1) #6 ; 3 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = call zeroext i8 @fifo8_pop(ptr noundef %1) #6 ; 3 uses
  br i1 %.not29.i, label %read_tx_frame.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr @qemu_loglevel, align 4
  %i.cv = and i32 %i.cu, 2048
  %.not33.i = icmp eq i32 %i.cv, 0
  br i1 %.not33.i, label %read_tx_frame.exit, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str, i32 noundef %i.ar, i32 noundef 4) #6
  br label %read_tx_frame.exit

read_tx_frame.exit:                               ; preds = %bb.t, %bb.u, %bb.v
  %i.cw = load i32, ptr %i.l, align 8
  %i.cx = and i32 %i.cw, 2
  %.not38 = icmp eq i32 %i.cx, 0
  br i1 %.not38, label %bb.y, label %bb.w

bb.w:                                             ; preds = %read_tx_frame.exit
  %i.cy = call i32 @fifo8_num_free(ptr noundef nonnull %i.x) #6
  %i.cz = icmp ult i32 %i.cy, 4
  br i1 %i.cz, label %bb.x, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w
  %i.da = trunc i32 %.sroa.0.3 to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.da) #6
  %i.db = lshr i32 %.sroa.0.3, 8
  %i.dc = trunc i32 %i.db to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dc) #6
  %i.dd = lshr i32 %.sroa.0.3, 16
  %i.de = trunc i32 %i.dd to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.de) #6
  %i.df = lshr i32 %.sroa.0.3, 24
  %i.dg = trunc nuw i32 %i.df to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dg) #6
  %i.dh = trunc i32 %.sroa.6.2 to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dh) #6
  %i.di = lshr i32 %.sroa.6.2, 8
  %i.dj = trunc i32 %i.di to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dj) #6
  %i.dk = lshr i32 %.sroa.6.2, 16
  %i.dl = trunc i32 %i.dk to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dl) #6
  %i.dm = lshr i32 %.sroa.6.2, 24
  %i.dn = trunc nuw i32 %i.dm to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dn) #6
  %i.do = trunc i32 %.sink.i40 to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.do) #6
  %i.dp = lshr i32 %.sink.i40, 8
  %i.dq = trunc i32 %i.dp to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.dq) #6
  %i.dr = lshr i32 %.sink.i40, 16
  %i.ds = trunc i32 %i.dr to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.ds) #6
  %i.dt = lshr i32 %.sink.i40, 24
  %i.du = trunc nuw i32 %i.dt to i8
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.du) #6
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.cn) #6
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.cp) #6
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.cr) #6
  call void @fifo8_push(ptr noundef nonnull %i.x, i8 noundef zeroext %i.ct) #6
  %i.dv = load i32, ptr %i.y, align 4
  %i.dw = or i32 %i.dv, 16
  store i32 %i.dw, ptr %i.y, align 4
  br label %tx_ready_check.exit

bb.x:                                             ; preds = %bb.w
  %i.dx = load i32, ptr %i.y, align 4
  %i.dy = or i32 %i.dx, 64
  store i32 %i.dy, ptr %i.y, align 4
  br label %tx_ready_check.exit

bb.y:                                             ; preds = %read_tx_frame.exit
  store i32 %.sroa.0.3, ptr %2, align 8
  %i.dz = lshr i32 %.sroa.6.2, 28                 ; 2 uses
  %i.ea = trunc nuw nsw i32 %i.dz to i8
  store i8 %i.ea, ptr %3, align 4
  %6 = trunc i32 %.sink.i40 to i8
  store i8 %6, ptr %4, align 8
  %i.eb = lshr i32 %.sink.i40, 8                  ; 2 uses
  %7 = trunc i32 %i.eb to i8
  store i8 %7, ptr %5, align 1
  %i.ec = lshr i32 %.sink.i40, 16                 ; 2 uses
  %8 = trunc i32 %i.ec to i8
  store i8 %8, ptr %i.z, align 2
  store i8 %.sroa.9.sroa.5.0.extract.trunc, ptr %i.aa, align 1
  store i8 %i.cn, ptr %i.ab, align 4
  store i8 %i.cp, ptr %i.ac, align 1
  store i8 %i.cr, ptr %i.ad, align 2
  store i8 %i.ct, ptr %i.ae, align 1
  %i.ed = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i41 = icmp eq i32 %i.ed, 0
  br i1 %.not.i41, label %trace_xlnx_can_tx_data.exit, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.ee = load i16, ptr @_TRACE_XLNX_CAN_TX_DATA_DSTATE, align 2
  %.not10.i = icmp eq i16 %i.ee, 0
  br i1 %.not10.i, label %trace_xlnx_can_tx_data.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = load i32, ptr @qemu_loglevel, align 4
  %i.eg = and i32 %i.ef, 32768
  %.not11.i = icmp eq i32 %i.eg, 0
  br i1 %.not11.i, label %trace_xlnx_can_tx_data.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = and i32 %.sink.i40, 255
  %i.ei = and i32 %i.eb, 255
  %i.ej = and i32 %i.ec, 255
  %9 = zext i8 %i.ct to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i32 noundef %.sroa.0.3, i32 noundef %i.dz, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %.sroa.9.sroa.5.0.extract.shift, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %9) #6
  br label %trace_xlnx_can_tx_data.exit

trace_xlnx_can_tx_data.exit:                      ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.ek = call i64 @can_bus_client_send(ptr noundef nonnull %i.af, ptr noundef nonnull %2, i64 noundef 1) #6 ; 0 uses
  br label %tx_ready_check.exit

tx_ready_check.exit:                              ; preds = %bb.x, %.preheader.preheader, %trace_xlnx_can_tx_data.exit
  %i.el = call zeroext i1 @fifo8_is_empty(ptr noundef %1) #6
  br i1 %i.el, label %tx_ready_check.exit._crit_edge, label %bb.m, !llvm.loop !8

tx_ready_check.exit._crit_edge:                   ; preds = %tx_ready_check.exit, %tx_ready_check.exit.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 3 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = or i32 %i.en, 2
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = load i32, ptr %i.l, align 8             ; 3 uses
  %i.eq = and i32 %i.ep, -513
  store i32 %i.eq, ptr %i.l, align 8
  %i.er = and i32 %i.ep, 4
  %.not = icmp eq i32 %i.er, 0
  br i1 %.not, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %tx_ready_check.exit._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2252 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %i.eu = and i32 %i.et, -2
  store i32 %i.eu, ptr %i.es, align 4
  %i.ev = and i32 %i.ep, -4623                    ; 3 uses
  %i.ew = and i32 %i.et, 2
  %.not.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = or disjoint i32 %i.ev, 2
  store i32 %i.ex, ptr %i.l, align 8
  br label %can_exit_sleep_mode.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ey = and i32 %i.et, 4
  %.not73.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not73.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = or disjoint i32 %i.ev, 4096
  store i32 %i.ez, ptr %i.l, align 8
  br label %can_exit_sleep_mode.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fa = or disjoint i32 %i.ev, 8
  store i32 %i.fa, ptr %i.l, align 8
  %i.fb = or i32 %i.en, 2050
  store i32 %i.fb, ptr %i.em, align 4
  br label %can_exit_sleep_mode.exit

can_exit_sleep_mode.exit:                         ; preds = %bb.ad, %bb.af, %bb.ag
  call fastcc void @can_update_irq(ptr noundef nonnull %0)
  br label %bb.ah

bb.ah:                                            ; preds = %can_exit_sleep_mode.exit, %tx_ready_check.exit._crit_edge
  call fastcc void @can_update_irq(ptr noundef nonnull %0)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @register_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @can_update_irq(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 3 uses
  %i.b = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.a) #6
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 3
  %sum.shift = lshr i64 %i.d, 4
  %i.e = trunc nuw nsw i64 %sum.shift to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2292 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 255
  %i.j = icmp samesign ult i32 %i.i, %i.e
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 8192
  store i32 %i.m, ptr %i.k, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.o = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.n) #6
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 3
  %sum.shift49 = lshr i64 %i.q, 4
  %i.r = trunc nuw nsw i64 %sum.shift49 to i32
  %i.s = load i32, ptr %i.f, align 4
  %i.t = and i32 %i.s, 255
  %i.u = icmp samesign ult i32 %i.t, %i.r
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = or i32 %i.w, 4096
  store i32 %i.x, ptr %i.v, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.n) #6
  %i.z = icmp ugt i32 %i.y, 12
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = or i32 %i.ab, 128
  store i32 %i.ac, ptr %i.aa, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.a) #6
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = or i32 %i.af, 16384
  store i32 %i.ag, ptr %i.ae, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.a) #6
  %i.ai = icmp ult i32 %i.ah, 4
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = or i32 %i.ak, 4
  store i32 %i.al, ptr %i.aj, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.an = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.am) #6
  %i.ao = icmp ult i32 %i.an, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2276 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  br i1 %i.ao, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.ar = or i32 %i.aq, 8                         ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.l
  %i.as = phi i32 [ %i.ar, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = and i32 %i.au, %i.as                    ; 2 uses
  %i.aw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %trace_xlnx_can_update_irq.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %._crit_edge
  %i.ax = load i16, ptr @_TRACE_XLNX_CAN_UPDATE_IRQ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ax, 0
  br i1 %.not3.i, label %trace_xlnx_can_update_irq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr @qemu_loglevel, align 4
  %i.az = and i32 %i.ay, 32768
  %.not4.i = icmp eq i32 %i.az, 0
  br i1 %.not4.i, label %trace_xlnx_can_update_irq.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.av) #6
  br label %trace_xlnx_can_update_irq.exit

trace_xlnx_can_update_irq.exit:                   ; preds = %._crit_edge, %bb.m, %bb.n, %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bb = load ptr, ptr %i.ba, align 16
  tail call void @qemu_set_irq(ptr noundef %i.bb, i32 noundef %i.av) #6
  ret void
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fifo8_num_free(ptr noundef) local_unnamed_addr #1

declare i32 @fifo8_num_used(ptr noundef) local_unnamed_addr #1
end_hunk_0
