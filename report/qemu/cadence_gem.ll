Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cadence_gem?download=true
inline.NumInlined: 181
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@gem_transmit:bb.a
  store i32 %i.iw, ptr %i.y, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %gem_set_isr.exit.thread
  %i.ix = phi i32 [ %i.iw, %bb.bb ], [ %.pre362, %gem_set_isr.exit.thread ]
  %i.iy = load ptr, ptr %i.z, align 8
  %i.iz = icmp ne i32 %i.ix, 0
  %i.ja = zext i1 %i.iz to i32
  call void @qemu_set_irq(ptr noundef %i.iy, i32 noundef %i.ja) #8
  %i.jb = load i8, ptr %i.i, align 8
  %i.jc = icmp ugt i8 %i.jb, 1
  br i1 %i.jc, label %.lr.ph.i251, label %gem_update_int_status.exit254

.lr.ph.i251:                                      ; preds = %bb.bc, %.lr.ph.i251
  %indvars.iv.i252 = phi i64 [ %indvars.iv.next.i253, %.lr.ph.i251 ], [ 1, %bb.bc ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i252
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i252
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 10576
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = icmp ne i32 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  call void @qemu_set_irq(ptr noundef %i.je, i32 noundef %i.jj) #8
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i252, 1 ; 2 uses
  %i.jk = load i8, ptr %i.i, align 8
  %i.jl = zext i8 %i.jk to i64
  %i.jm = icmp samesign ult i64 %indvars.iv.next.i253, %i.jl
  br i1 %i.jm, label %.lr.ph.i251, label %gem_update_int_status.exit254, !llvm.loop !7

gem_update_int_status.exit254:                    ; preds = %.lr.ph.i251, %bb.bc, %gem_set_isr.exit
  %.1131290394 = phi ptr [ %.1131307, %gem_set_isr.exit ], [ %.1131290393, %bb.bc ], [ %.1131290393, %.lr.ph.i251 ]
  %.1134298392 = phi i32 [ %.1134306, %gem_set_isr.exit ], [ %.1134298391, %bb.bc ], [ %.1134298391, %.lr.ph.i251 ]
  %i.jn = icmp sgt i64 %indvars.iv, 1
  br i1 %i.jn, label %bb.c, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %gem_update_int_status.exit254, %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @gem_can_receive(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9556
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 52704
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9544
  %i.g = load i8, ptr %i.f, align 8               ; 3 uses
  %i.h = zext i8 %i.g to i32
  %.not25 = icmp eq i8 %i.g, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i8 %i.g to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 19936 ; 2 uses
  %i.j = load i8, ptr %i.i, align 16
  %.not16 = icmp eq i8 %i.j, 1
  br i1 %.not16, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.i, align 16
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv
  %.val = load i32, ptr %i.k, align 4
  %i.l = and i32 %.val, 1
  %.not17.not = icmp eq i32 %i.l, 0
  br i1 %.not17.not, label %._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.m, %._crit_edge.loopexit ]
  %i.n = icmp eq i32 %.0.lcssa, %i.h
  br i1 %i.n, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 19936 ; 2 uses
  %i.p = load i8, ptr %i.o, align 16
  %.not19 = icmp eq i8 %i.p, 2
  br i1 %.not19, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  store i8 2, ptr %i.o, align 16
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 19936 ; 2 uses
  %i.r = load i8, ptr %i.q, align 16
  %.not18 = icmp eq i8 %i.r, 0
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.q, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge.thread, %bb.e, %bb.b, %bb.c
  %.015 = phi i1 [ false, %bb.b ], [ false, %._crit_edge.thread ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.g ], [ true, %bb.f ]
  ret i1 %.015
}

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

declare void @qemu_flush_queued_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @flatview_translate(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #1

declare ptr @qemu_map_ram_ptr(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @flatview_read_continue(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @address_space_read_full(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #1

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_is_ram_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 65536) i32 @gem_get_max_buf_len(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9560
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9628
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9552
  %i.g = load i16, ptr %i.f, align 16
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  %i.i = icmp ugt i32 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 2048
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.g, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef %i.h) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.b, 256
  %.not10 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not10, i32 1518, i32 1538
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.m, %bb.f ], [ 1518, %bb.e ]
  ret i32 %.0
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare i32 @address_space_write(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @net_checksum_calculate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @qemu_receive_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @qemu_send_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @qemu_get_nic_opaque(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @gem_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 30, ptr noundef nonnull @__func__.CADENCE_GEM) #8 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.d = load ptr, ptr %i.c, align 16             ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @get_system_memory() #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  tail call void @address_space_init(ptr noundef nonnull %i.b, ptr noundef %i.f, ptr noundef nonnull @.str.17) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9544 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = add i8 %i.h, -9
  %or.cond = icmp ult i8 %i.i, -8
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext i8 %i.h to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 1769, ptr noundef nonnull @__func__.gem_realize, ptr noundef nonnull @.str.18, i32 noundef %i.j) #8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 9545
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp ugt i8 %i.l, 16
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = zext i8 %i.l to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 1773, ptr noundef nonnull @__func__.gem_realize, ptr noundef nonnull @.str.19, i32 noundef %i.n) #8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9546
  %i.p = load i8, ptr %i.o, align 2               ; 2 uses
  %i.q = icmp ugt i8 %i.p, 16
  br i1 %i.q, label %bb.h, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9480
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = zext i8 %i.p to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 1777, ptr noundef nonnull @__func__.gem_realize, ptr noundef nonnull @.str.20, i32 noundef %i.s) #8
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.t = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  tail call void @sysbus_init_irq(ptr noundef %i.t, ptr noundef nonnull %i.u) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i8, ptr %i.g, align 8               ; 7 uses
  %i.w = zext i8 %i.v to i64                      ; 7 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.i, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 13652 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.y, i8 noundef 0, i64 noundef 2048, i1 noundef false) #8
  store i32 -524288, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 13660
  store i32 -1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 13668
  store <4 x i32> <i32 -1912541184, i32 -504, i32 3, i32 3>, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 13684
  store i32 -16, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 13688
  store i32 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 13700
  store i32 -1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 13904
  store i32 -1, ptr %i.ae, align 16
  %.not.i = icmp eq i8 %i.v, 0                    ; 2 uses
  br i1 %.not.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

._crit_edge.thread.i:                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 15700
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.af, i8 noundef 0, i64 noundef 2048, i1 noundef false) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 15736
  store i32 -1, ptr %i.ag, align 8
  br label %._crit_edge46.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext i8 %i.v to i64        ; 2 uses
  %min.iters.check = icmp ult i8 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.w, 252                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1024
  store <4 x i32> splat (i32 -1), ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1536
  store <4 x i32> splat (i32 -3303), ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1568
  store <4 x i32> splat (i32 -3303), ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1600
  store <4 x i32> splat (i32 -1), ptr %i.al, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br i1 %cmp.n, label %.lr.ph45.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1024
  store i32 -1, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1536
  store i32 -3303, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1568
  store i32 -3303, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1600
  store i32 -1, ptr %i.ar, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph45.preheader.i, label %.lr.ph.i, !llvm.loop !26

.lr.ph45.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 15700 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.as, i8 noundef 0, i64 noundef 2048, i1 noundef false) #8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 15736
  store i32 -1, ptr %i.at, align 8
  %min.iters.check40 = icmp ult i8 %i.v, 8
  br i1 %min.iters.check40, label %.lr.ph45.i.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph45.preheader.i
  %n.vec42 = and i64 %i.w, 248                    ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next45, %vector.body43 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index44 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1024
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1040
  store <4 x i32> splat (i32 3302), ptr %i.av, align 4
  store <4 x i32> splat (i32 3302), ptr %i.aw, align 4
  %index.next45 = add nuw i64 %index44, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.ax, label %middle.block46, label %vector.body43, !llvm.loop !27

middle.block46:                                   ; preds = %vector.body43
  %cmp.n47 = icmp eq i64 %n.vec42, %i.w
  br i1 %cmp.n47, label %._crit_edge46.i, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %.lr.ph45.preheader.i, %middle.block46
  %indvars.iv54.i.ph = phi i64 [ 0, %.lr.ph45.preheader.i ], [ %n.vec42, %middle.block46 ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %.lr.ph45.i ], [ %indvars.iv54.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv54.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1024
  store i32 3302, ptr %i.az, align 4
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count.i
  br i1 %exitcond58.not.i, label %._crit_edge46.i, label %.lr.ph45.i, !llvm.loop !28

._crit_edge46.i:                                  ; preds = %.lr.ph45.i, %middle.block46, %._crit_edge.thread.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 17748
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.ba, i8 noundef 0, i64 noundef 2048, i1 noundef false) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 17768
  store i32 503, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 17780
  store i32 15, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 11604 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.bd, i8 noundef 0, i64 noundef 2048, i1 noundef false) #8
  store i32 474720, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 11644
  store i32 134217727, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 11648
  store i32 134217727, ptr %i.bf, align 16
  br i1 %.not.i, label %gem_init_register_masks.exit, label %.lr.ph49.preheader.i

.lr.ph49.preheader.i:                             ; preds = %._crit_edge46.i
  %wide.trip.count62.i = zext i8 %i.v to i64
  %min.iters.check50 = icmp ult i8 %i.v, 4
  br i1 %min.iters.check50, label %.lr.ph49.i.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph49.preheader.i
end_hunk_0
begin_hunk_1_@gem_receive:bb.a
  %i.sk = getelementptr inbounds nuw i8, ptr %i.a, i64 9900 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4
  %i.sn = load i32, ptr %1, align 1
  %i.so = xor i32 %i.sn, -1
  %i.sp = getelementptr i8, ptr %1, i64 4
  %i.sq = load i16, ptr %i.sp, align 1
  %i.sr = zext i16 %i.sq to i32
  %i.ss = xor i32 %i.sr, 65535
  %i.st = or i32 %i.so, %i.ss
  %i.su = icmp ne i32 %i.st, 0
  %i.sv = zext i1 %i.su to i32
  %.not.i196 = icmp eq i32 %i.sv, 0
  br i1 %.not.i196, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge
  %i.sw = getelementptr inbounds nuw i8, ptr %i.a, i64 9904 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4
  %i.sy = add i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge
  %i.sz = load i8, ptr %1, align 1
  %i.ta = icmp eq i8 %i.sz, 1
  br i1 %i.ta, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.a, i64 9908 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr %i.tb, align 4
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.te = icmp ult i32 %.pre-phi, 65
  br i1 %i.te, label %gem_receive_updatestats.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tf = icmp ult i32 %.pre-phi, 128
  br i1 %i.tf, label %gem_receive_updatestats.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tg = icmp ult i32 %.pre-phi, 256
  br i1 %i.tg, label %gem_receive_updatestats.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.th = icmp ult i32 %.pre-phi, 512
  br i1 %i.th, label %gem_receive_updatestats.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ti = icmp ult i32 %.pre-phi, 1024
  br i1 %i.ti, label %gem_receive_updatestats.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tj = icmp ult i32 %.pre-phi, 1519
  %..i197 = select i1 %i.tj, i64 9936, i64 9940
  br label %gem_receive_updatestats.exit

gem_receive_updatestats.exit:                     ; preds = %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg
  %.sink27.i = phi i64 [ 9916, %bb.db ], [ 9924, %bb.dd ], [ %..i197, %bb.dg ], [ 9932, %bb.df ], [ 9928, %bb.de ], [ 9920, %bb.dc ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink27.i ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4
  %i.tm = add i32 %i.tl, 1
  store i32 %i.tm, ptr %i.tk, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.a, i64 9588 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4
  %i.tp = or i32 %i.to, 2
  store i32 %i.tp, ptr %i.tn, align 4
  %i.tq = icmp eq i32 %.088.i, 0
  br i1 %i.tq, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %gem_receive_updatestats.exit
  %i.tr = getelementptr inbounds nuw i8, ptr %i.a, i64 9604
  %i.ts = load i32, ptr %i.tr, align 4
  %i.tt = and i32 %i.ts, 2
  %i.tu = xor i32 %i.tt, 2
  %i.tv = getelementptr inbounds nuw i8, ptr %i.a, i64 9592 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4
  %i.tx = or i32 %i.tu, %i.tw                     ; 2 uses
  store i32 %i.tx, ptr %i.tv, align 4
  br label %gem_set_isr.exit198

bb.di:                                            ; preds = %gem_receive_updatestats.exit
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 9556
  %i.tz = zext nneg i32 %.088.i to i64
  %i.ua = getelementptr [4 x i8], ptr %i.ty, i64 %i.tz ; 2 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 1596
  %i.uc = load i32, ptr %i.ub, align 4
  %i.ud = and i32 %i.uc, 2
  %i.ue = xor i32 %i.ud, 2
  %i.uf = getelementptr i8, ptr %i.ua, i64 1020   ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4
  %i.uh = or i32 %i.ue, %i.ug
  store i32 %i.uh, ptr %i.uf, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 9592
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %gem_set_isr.exit198

gem_set_isr.exit198:                              ; preds = %bb.dh, %bb.di
  %i.ui = phi i32 [ %i.tx, %bb.dh ], [ %.pre, %bb.di ]
  %i.uj = getelementptr inbounds nuw i8, ptr %i.a, i64 9480 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = icmp ne i32 %i.ui, 0
  %i.um = zext i1 %i.ul to i32
  tail call void @qemu_set_irq(ptr noundef %i.uk, i32 noundef %i.um) #8
  %i.un = getelementptr inbounds nuw i8, ptr %i.a, i64 9544 ; 2 uses
  %i.uo = load i8, ptr %i.un, align 8
  %i.up = icmp ugt i8 %i.uo, 1
  br i1 %i.up, label %.lr.ph.i200, label %.critedge168

.lr.ph.i200:                                      ; preds = %gem_set_isr.exit198, %.lr.ph.i200
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i202, %.lr.ph.i200 ], [ 1, %gem_set_isr.exit198 ] ; 3 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %indvars.iv.i201
  %i.ur = load ptr, ptr %i.uq, align 8
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i201
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 10576
  %i.uu = load i32, ptr %i.ut, align 4
  %i.uv = icmp ne i32 %i.uu, 0
  %i.uw = zext i1 %i.uv to i32
  tail call void @qemu_set_irq(ptr noundef %i.ur, i32 noundef %i.uw) #8
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %i.ux = load i8, ptr %i.un, align 8
  %i.uy = zext i8 %i.ux to i64
  %i.uz = icmp samesign ult i64 %indvars.iv.next.i202, %i.uy
  br i1 %i.uz, label %.lr.ph.i200, label %.critedge168, !llvm.loop !7

.critedge168:                                     ; preds = %.lr.ph.i200, %bb.ci, %bb.cg, %._crit_edge.thread.i, %bb.cf, %bb.m, %bb.n, %gem_set_isr.exit198, %bb.cd, %bb.cc, %bb.c, %bb.p
  %.4 = phi i64 [ %2, %bb.m ], [ -1, %bb.ci ], [ -1, %bb.cd ], [ -1, %bb.cc ], [ -1, %bb.p ], [ %2, %bb.c ], [ %.0151, %gem_set_isr.exit198 ], [ %2, %bb.n ], [ -1, %bb.cf ], [ -1, %._crit_edge.thread.i ], [ -1, %bb.cg ], [ %.0151, %.lr.ph.i200 ]
  ret i64 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gem_set_link(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @qemu_get_queue(ptr noundef %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not.i = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 19800 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 19836 ; 2 uses
  %i.j = and i16 %i.h, -37
  %masksel.i = select i1 %.not.i, i16 36, i16 0
  %.sink.i = or disjoint i16 %i.j, %masksel.i
  %.sink6.i = select i1 %.not.i, i16 3088, i16 1024
  store i16 %.sink.i, ptr %i.g, align 8
  %i.k = load i16, ptr %i.i, align 4
  %i.l = or i16 %i.k, %.sink6.i
  store i16 %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9480 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9592
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  tail call void @qemu_set_irq(ptr noundef %i.n, i32 noundef %i.r) #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9544 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = icmp ugt i8 %i.t, 1
  br i1 %i.u, label %.lr.ph.i, label %gem_update_int_status.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10576
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  tail call void @qemu_set_irq(ptr noundef %i.w, i32 noundef %i.ab) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i8, ptr %i.s, align 8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %gem_update_int_status.exit, !llvm.loop !7

gem_update_int_status.exit:                       ; preds = %.lr.ph.i, %bb.a
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i64 2151014536}
!17 = !{i64 2151274066}
!18 = !{i64 2151015350}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !8, !25, !24}
!27 = distinct !{!27, !8, !24, !25}
!28 = distinct !{!28, !8, !25, !24}
!29 = distinct !{!29, !8, !24, !25}
!30 = distinct !{!30, !8, !25, !24}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
end_hunk_1
