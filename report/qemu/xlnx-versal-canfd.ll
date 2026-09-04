Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-versal-canfd?download=true
inline.NumInlined: 224
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@canfd_update_irq:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 171120 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16
  %i.e = tail call ptr @object_get_canonical_path(ptr noundef %0) #9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 171320
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 171324
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 63
  %i.m = icmp samesign ugt i32 %i.i, %i.l         ; 2 uses
  %.pre.pre.pre = load i32, ptr %i.a, align 4     ; 2 uses
  %i.n = or i32 %.pre.pre.pre, 4096
  %.pre.pre = select i1 %i.m, i32 %i.n, i32 %.pre.pre.pre ; 2 uses
  %i.o = lshr i32 %i.g, 24
  %i.p = and i32 %i.o, 127
  %i.q = lshr i32 %i.k, 8
  %i.r = and i32 %i.q, 63
  %i.s = icmp samesign ugt i32 %i.p, %i.r         ; 2 uses
  %i.t = or i32 %.pre.pre, 65536
  %.pre = select i1 %i.s, i32 %i.t, i32 %.pre.pre ; 3 uses
  %i.u = or i1 %i.m, %i.s
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %.pre, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 171248
  %i.w = load i32, ptr %i.v, align 16
  %i.x = lshr i32 %i.w, 8
  %i.y = and i32 %i.x, 63
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 171252
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 31
  %i.ac = icmp samesign ugt i32 %i.y, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = or i32 %.pre, -2147483648               ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.d ], [ %.pre, %bb.c ]
  %i.af = and i32 %i.d, %i.b
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = load i32, ptr %i.c, align 16
  %i.ai = zext i1 %i.ag to i32                    ; 2 uses
  %i.aj = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %trace_xlnx_canfd_update_irq.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ak = load i16, ptr @_TRACE_XLNX_CANFD_UPDATE_IRQ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ak, 0
  br i1 %.not3.i, label %trace_xlnx_canfd_update_irq.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr @qemu_loglevel, align 4
  %i.am = and i32 %i.al, 32768
  %.not4.i = icmp eq i32 %i.am, 0
  br i1 %.not4.i, label %trace_xlnx_canfd_update_irq.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.e, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef range(i32 0, 2) %i.ai) #9
  br label %trace_xlnx_canfd_update_irq.exit

trace_xlnx_canfd_update_irq.exit:                 ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ao = load ptr, ptr %i.an, align 16
  tail call void @qemu_set_irq(ptr noundef %i.ao, i32 noundef %i.ai) #9
  tail call void @g_free(ptr noundef %i.e) #9
  ret void
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_rx_sequential(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 171324
  %i.c = load i32, ptr %i.b, align 4
  %i.d = lshr i32 %i.c, 16
  %i.e = and i32 %i.d, 31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 171312
  %i.g = load i32, ptr %i.f, align 16             ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 16
  %.not.i = icmp eq i8 %i.j, 0
  %i.k = load i32, ptr %1, align 8
  %.fr53.i = freeze i32 %i.k                      ; 7 uses
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %.fr53.i, 1073741824             ; 2 uses
  %.not45.i = icmp sgt i32 %.fr53.i, -1
  br i1 %.not45.i, label %bb.e, label %bb.d

.thread.i:                                        ; preds = %bb.b
  %.not4546.i = icmp sgt i32 %.fr53.i, -1
  br i1 %.not4546.i, label %.thread47.i, label %.thread50.i

.thread47.i:                                      ; preds = %.thread.i
  %i.m = shl i32 %.fr53.i, 21
  br label %frame_to_reg_id.exit

bb.d:                                             ; preds = %bb.c
  %.not54.i = icmp eq i32 %i.l, 0
  %spec.select52.i = select i1 %.not54.i, i32 1572864, i32 1572865
  br label %.thread50.i

.thread50.i:                                      ; preds = %.thread.i, %bb.d
  %i.n = phi i32 [ %spec.select52.i, %bb.d ], [ 1572864, %.thread.i ]
  %.in55.i = shl i32 %.fr53.i, 3
  %i.o = and i32 %.in55.i, -2097152
  %.in.i = shl i32 %.fr53.i, 1
  %i.p = and i32 %.in.i, 524286
  %i.q = or disjoint i32 %i.o, %i.p
  %spec.select.i = or disjoint i32 %i.q, %i.n
  br label %frame_to_reg_id.exit

bb.e:                                             ; preds = %bb.c
  %i.r = shl i32 %.fr53.i, 21
  %i.s = lshr exact i32 %i.l, 10
  %spec.select48.i = or disjoint i32 %i.s, %i.r
  br label %frame_to_reg_id.exit

frame_to_reg_id.exit:                             ; preds = %.thread47.i, %.thread50.i, %bb.e
  %.0.i = phi i32 [ %i.m, %.thread47.i ], [ %spec.select48.i, %bb.e ], [ %spec.select.i, %.thread50.i ]
  br label %bb.f

bb.f:                                             ; preds = %frame_to_reg_id.exit, %.thread
  %indvars.iv = phi i64 [ 0, %frame_to_reg_id.exit ], [ %indvars.iv.next, %.thread ] ; 4 uses
  %.071104 = phi i32 [ %i.g, %frame_to_reg_id.exit ], [ %i.af, %.thread ] ; 2 uses
  %i.t = and i32 %.071104, 1
  %.not84 = icmp eq i32 %i.t, 0
  br i1 %.not84, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2560
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2564
  %i.y = load i32, ptr %i.x, align 4
  %i.z = xor i32 %i.y, %.0.i
  %i.aa = and i32 %i.z, %i.w                      ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 2097152
  br i1 %i.ab, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = and i32 %i.w, 524288
  %.not85 = icmp eq i32 %i.ac, 0
  %i.ad = and i32 %i.aa, 524286
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond = or i1 %.not85, %i.ae
  br i1 %or.cond, label %.thread97, label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f
  %i.af = lshr i32 %.071104, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !15

.critedge:                                        ; preds = %.thread, %bb.a
  %i.ag = tail call ptr @object_get_canonical_path(ptr noundef %0) #9 ; 5 uses
  %i.ah = load i32, ptr %1, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i89 = icmp eq i32 %i.ak, 0
  br i1 %.not.i89, label %trace_xlnx_canfd_rx_fifo_filter_reject.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %.critedge
  %i.al = load i16, ptr @_TRACE_XLNX_CANFD_RX_FIFO_FILTER_REJECT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.al, 0
  br i1 %.not2.i, label %trace_xlnx_canfd_rx_fifo_filter_reject.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not3.i = icmp eq i32 %i.an, 0
  br i1 %.not3.i, label %trace_xlnx_canfd_rx_fifo_filter_reject.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = zext i8 %i.aj to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.55, ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ao) #9
  br label %trace_xlnx_canfd_rx_fifo_filter_reject.exit

.thread97:                                        ; preds = %bb.h
  %.073103107 = trunc i64 %indvars.iv to i32
  %.3100 = trunc i64 %indvars.iv to i8            ; 2 uses
  %.not86 = icmp samesign ult i32 %i.e, %.073103107
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 171320
  %i.aq = load i32, ptr %i.ap, align 8            ; 4 uses
  br i1 %.not86, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread97
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 127                      ; 2 uses
  %i.at = and i32 %i.aq, 63
  %i.au = add nuw nsw i32 %i.as, %i.at            ; 2 uses
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192432
  %i.ax = load i8, ptr %i.aw, align 16            ; 3 uses
  %i.ay = zext i8 %i.ax to i32
  %.not88 = icmp samesign ult i32 %i.au, %i.ay
  %i.az = select i1 %.not88, i8 0, i8 %i.ax
  %.072 = sub i8 %i.av, %i.az
  %i.ba = zext i8 %.072 to i32
  %i.bb = mul nuw nsw i32 %i.ba, 18
  %i.bc = add nuw nsw i32 %i.bb, 2112
  tail call fastcc void @store_rx_sequential(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.as, i32 noundef %i.bc, i8 noundef zeroext %i.ax, i1 noundef zeroext false, i8 noundef zeroext %.3100)
  br label %bb.n

bb.m:                                             ; preds = %.thread97
  %i.bd = lshr i32 %i.aq, 24
  %i.be = and i32 %i.bd, 127                      ; 2 uses
  %i.bf = lshr i32 %i.aq, 16
  %i.bg = and i32 %i.bf, 63
  %i.bh = add nuw nsw i32 %i.bg, %i.be            ; 2 uses
  %i.bi = trunc nuw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192433
  %i.bk = load i8, ptr %i.bj, align 1             ; 3 uses
  %i.bl = zext i8 %i.bk to i32
  %.not87 = icmp samesign ult i32 %i.bh, %i.bl
  %i.bm = select i1 %.not87, i8 0, i8 %i.bk
  %.1 = sub i8 %i.bi, %i.bm
  %i.bn = zext i8 %.1 to i32
  %i.bo = mul nuw nsw i32 %i.bn, 18
  %i.bp = add nuw nsw i32 %i.bo, 4160
  tail call fastcc void @store_rx_sequential(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.be, i32 noundef %i.bp, i8 noundef zeroext %i.bk, i1 noundef zeroext true, i8 noundef zeroext %.3100)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bq = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #9 ; 2 uses
  %i.br = load i32, ptr %1, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = load i8, ptr %i.h, align 1
  %i.bv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i90 = icmp eq i32 %i.bv, 0
  br i1 %.not.i90, label %trace_xlnx_canfd_rx_data.exit, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bw = load i16, ptr @_TRACE_XLNX_CANFD_RX_DATA_DSTATE, align 2
  %.not3.i91 = icmp eq i16 %i.bw, 0
  br i1 %.not3.i91, label %trace_xlnx_canfd_rx_data.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 32768
  %.not4.i = icmp eq i32 %i.by, 0
  br i1 %.not4.i, label %trace_xlnx_canfd_rx_data.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = zext i8 %i.bt to i32
  %i.ca = zext i8 %i.bu to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bz, i32 noundef %i.ca) #9
  br label %trace_xlnx_canfd_rx_data.exit

trace_xlnx_canfd_rx_data.exit:                    ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  tail call fastcc void @canfd_update_irq(ptr noundef nonnull %0)
  br label %trace_xlnx_canfd_rx_fifo_filter_reject.exit

trace_xlnx_canfd_rx_fifo_filter_reject.exit:      ; preds = %bb.k, %bb.j, %bb.i, %.critedge, %trace_xlnx_canfd_rx_data.exit
  %.092 = phi ptr [ %i.bq, %trace_xlnx_canfd_rx_data.exit ], [ %i.ag, %.critedge ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ]
  tail call void @g_free(ptr noundef %.092) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tx_fifo_stamp(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171088 ; 3 uses
  %i.b = add i32 %1, 1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 16777216
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 171248 ; 3 uses
  %i.h = load i32, ptr %i.g, align 16             ; 3 uses
  %i.i = lshr i32 %i.h, 8
  %i.j = and i32 %i.i, 63                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192434
  %i.l = load i8, ptr %i.k, align 2               ; 3 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %.not85 = icmp samesign ult i32 %i.j, %i.m
  br i1 %.not85, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 2048
  %.not87 = icmp eq i32 %i.o, 0
  br i1 %.not87, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.66) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 171116 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = or i32 %i.q, 1073741824
  store i32 %i.r, ptr %i.p, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.s = and i32 %i.h, 31
  %i.t = add nuw nsw i32 %i.j, %i.s               ; 2 uses
  %i.u = trunc nuw nsw i32 %i.t to i8
  %.not86 = icmp samesign ult i32 %i.t, %i.m
  %i.v = select i1 %.not86, i8 0, i8 %i.l
  %.0 = sub i8 %i.u, %i.v                         ; 2 uses
  %i.w = icmp ult i8 %.0, %i.l
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.6, i32 noundef 1248, ptr noundef nonnull @__PRETTY_FUNCTION__.tx_fifo_stamp) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = zext i8 %.0 to i64
  %i.y = zext i32 %1 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8192
  store i32 %i.aa, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192336
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = tail call i64 @ptimer_get_count(ptr noundef %i.ae) #9
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.e, -50397184
  %i.ai = and i32 %i.ag, 65535
  %i.aj = or disjoint i32 %i.ah, %i.ai
  %i.ak = xor i32 %i.aj, 50397183
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8196
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = load i32, ptr %i.g, align 16
  %i.an = and i32 %i.am, -16129
  %i.ao = add i32 %i.h, 256
  %i.ap = and i32 %i.ao, 16128
  %i.aq = or disjoint i32 %i.an, %i.ap
  store i32 %i.aq, ptr %i.g, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.a
  ret void
}

declare i64 @can_bus_client_send(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_slist_sort_with_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @g_cmp_ids(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ult i32 %i.e, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.a, %i.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i1 [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.j = select i1 %.sink, i32 -1, i32 1
  ret i32 %i.j
}

declare zeroext i8 @can_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

end_hunk_0
