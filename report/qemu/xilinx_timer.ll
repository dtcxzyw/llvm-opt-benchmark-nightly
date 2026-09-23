Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xilinx_timer?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
begin_hunk_0_@xilinx_timer_class_init:bb.a
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @xilinx_timer_realize, ptr %i.b, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @xilinx_timer_properties, i64 noundef 3) #4
  ret void
}

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_timer_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 71, ptr noundef nonnull @__func__.XILINX_TIMER) #4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 234, ptr noundef nonnull @__func__.xilinx_timer_realize, ptr noundef nonnull @.str.7) #4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 1096     ; 3 uses
  %.val27 = load i8, ptr %i.e, align 8
  %i.f = zext i8 %.val27 to i64
  %i.g = sub nsw i64 2, %i.f
  %i.h = and i64 %i.g, 4294967295
  %i.i = mul nuw nsw i64 %i.h, 48
  %i.j = tail call noalias ptr @g_malloc0(i64 noundef %i.i) #5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 2 uses
  store ptr %i.j, ptr %i.k, align 16
  %.val2628 = load i8, ptr %i.e, align 8          ; 2 uses
  %i.l = zext nneg i8 %.val2628 to i32
  %i.m = sub nuw nsw i32 2, %i.l
  %.not = icmp eq i8 %.val2628, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1100
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %i.k, align 16
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %indvars.iv ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.a, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = trunc nuw i64 %indvars.iv to i32
  store i32 %i.s, ptr %i.r, align 8
  %i.t = tail call ptr @ptimer_init(ptr noundef nonnull @timer_hit, ptr noundef %i.p, i8 noundef zeroext 0) #4 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.t) #4
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = load i32, ptr %i.n, align 4
  tail call void @ptimer_set_freq(ptr noundef %i.u, i32 noundef %i.v) #4
  %i.w = load ptr, ptr %i.p, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.w) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val26 = load i8, ptr %i.e, align 8
  %i.x = zext i8 %.val26 to i32
  %i.y = sub nsw i32 2, %i.x                      ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.d, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.lcssa = phi i32 [ %i.m, %bb.c ], [ %i.y, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  %i.ac = load i32, ptr %i.b, align 8
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [80 x i8], ptr @timer_ops, i64 %i.ae
  %i.ag = shl nsw i32 %.lcssa, 4
  %i.ah = zext i32 %i.ag to i64
  tail call void @memory_region_init_io(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef %i.ah) #4
  %i.ai = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  tail call void @sysbus_init_mmio(ptr noundef %i.ai, ptr noundef nonnull %i.ab) #4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

declare ptr @ptimer_init(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @timer_hit(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = or i32 %i.d, 256
  store i32 %i.e, ptr %i.c, align 8
  %i.f = and i32 %i.d, 16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  tail call void @ptimer_stop(ptr noundef %i.g) #4
  %i.h = load i32, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = lshr i32 %i.h, 1
  %i.l = and i32 %i.k, 1
  %sext.i = add nsw i32 %i.l, -1
  %.0.in.i = xor i32 %sext.i, %i.j
  %.0.i = zext i32 %.0.in.i to i64
  %i.m = load ptr, ptr %0, align 8
  tail call void @ptimer_set_limit(ptr noundef %i.m, i64 noundef %.0.i, i32 noundef 1) #4
  %i.n = load ptr, ptr %0, align 8
  tail call void @ptimer_run(ptr noundef %i.n, i32 noundef 1) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr i8, ptr %i.b, i64 1096
  %.val.i = load i8, ptr %i.o, align 8            ; 2 uses
  %.not.i = icmp eq i8 %.val.i, 2
  br i1 %.not.i, label %timer_update_irq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = zext i8 %.val.i to i64
  %i.q = sub nsw i64 2, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.s = load ptr, ptr %i.r, align 16             ; 9 uses
  %wide.trip.count.i = and i64 %i.q, 4294967295   ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.q, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  %i.aj = load i32, ptr %i.ab, align 8
  %i.ak = load i32, ptr %i.ac, align 8
  %i.al = load i32, ptr %i.ad, align 8
  %i.am = load i32, ptr %i.ae, align 8
  %i.an = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 1
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 2
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 3
  %i.ar = load i32, ptr %i.af, align 8
  %i.as = load i32, ptr %i.ag, align 8
  %i.at = load i32, ptr %i.ah, align 8
  %i.au = load i32, ptr %i.ai, align 8
  %i.av = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = and <4 x i32> %i.aq, splat (i32 320)
  %i.ba = and <4 x i32> %i.ay, splat (i32 320)
  %i.bb = icmp eq <4 x i32> %i.az, splat (i32 320)
  %i.bc = icmp eq <4 x i32> %i.ba, splat (i32 320)
  %i.bd = zext <4 x i1> %i.bb to <4 x i32>
  %i.be = zext <4 x i1> %i.bc to <4 x i32>
  %i.bf = or <4 x i32> %vec.phi, %i.bd            ; 2 uses
  %i.bg = or <4 x i32> %vec.phi6, %i.be           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %timer_update_irq.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.011.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.011.i = phi i32 [ %i.bp, %scalar.ph ], [ %.011.i.ph, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = and i32 %i.bl, 320
  %i.bn = icmp eq i32 %i.bm, 320
  %i.bo = zext i1 %i.bn to i32
  %i.bp = or i32 %.011.i, %i.bo                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %timer_update_irq.exit, label %scalar.ph, !llvm.loop !12

timer_update_irq.exit:                            ; preds = %scalar.ph, %middle.block, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bi, %middle.block ], [ %i.bp, %scalar.ph ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  %i.br = load ptr, ptr %i.bq, align 16
  tail call void @qemu_set_irq(ptr noundef %i.br, i32 noundef %.0.lcssa.i) #4
  ret void
}

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_limit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @timer_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = lshr i64 %1, 2
  %i.b = lshr i64 %1, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = and i64 %i.b, 4294967295
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = and i64 %i.a, 3                          ; 2 uses
  %cond = icmp eq i64 %i.g, 2
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = tail call i64 @ptimer_get_count(ptr noundef %i.h) #4
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 1
  %sext = add nsw i32 %i.n, -1
  %spec.select = xor i32 %sext, %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.g
  %i.q = load i32, ptr %i.p, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %spec.select, %bb.b ], [ %i.q, %bb.c ]
  %i.r = zext i32 %.0 to i64
  ret i64 %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @timer_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  %i.b = lshr i64 %1, 2
  %i.c = lshr i64 %1, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = and i64 %i.c, 4294967295
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.f ; 8 uses
  %i.h = and i64 %i.b, 3                          ; 2 uses
  %cond = icmp eq i64 %i.h, 0
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.a, 1791
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4
  %i.k = and i32 %i.a, 128
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.l) #4
  %i.m = load ptr, ptr %i.g, align 8
  tail call void @ptimer_stop(ptr noundef %i.m) #4
  %i.n = load i32, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.p = load i32, ptr %i.o, align 4
  %i.q = lshr i32 %i.n, 1
  %i.r = and i32 %i.q, 1
  %sext.i = add nsw i32 %i.r, -1
  %.0.in.i = xor i32 %sext.i, %i.p
  %.0.i = zext i32 %.0.in.i to i64
  %i.s = load ptr, ptr %i.g, align 8
  tail call void @ptimer_set_limit(ptr noundef %i.s, i64 noundef %.0.i, i32 noundef 1) #4
  %i.t = load ptr, ptr %i.g, align 8
  tail call void @ptimer_run(ptr noundef %i.t, i32 noundef 1) #4
  %i.u = load ptr, ptr %i.g, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.u) #4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.h
  store i32 %i.a, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %i.x = getelementptr i8, ptr %0, i64 1096
  %.val.i = load i8, ptr %i.x, align 8            ; 2 uses
  %.not.i = icmp eq i8 %.val.i, 2
  br i1 %.not.i, label %timer_update_irq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.y = zext i8 %.val.i to i64
  %i.z = sub nsw i64 2, %i.y                      ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 16            ; 9 uses
  %wide.trip.count.i = and i64 %i.z, 4294967295   ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.z, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 368
  %i.ar = load i32, ptr %i.aj, align 8
  %i.as = load i32, ptr %i.ak, align 8
  %i.at = load i32, ptr %i.al, align 8
  %i.au = load i32, ptr %i.am, align 8
  %i.av = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = load i32, ptr %i.an, align 8
  %i.ba = load i32, ptr %i.ao, align 8
  %i.bb = load i32, ptr %i.ap, align 8
  %i.bc = load i32, ptr %i.aq, align 8
  %i.bd = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 1
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 2
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 3
  %i.bh = and <4 x i32> %i.ay, splat (i32 320)
  %i.bi = and <4 x i32> %i.bg, splat (i32 320)
  %i.bj = icmp eq <4 x i32> %i.bh, splat (i32 320)
  %i.bk = icmp eq <4 x i32> %i.bi, splat (i32 320)
  %i.bl = zext <4 x i1> %i.bj to <4 x i32>
  %i.bm = zext <4 x i1> %i.bk to <4 x i32>
  %i.bn = or <4 x i32> %vec.phi, %i.bl            ; 2 uses
  %i.bo = or <4 x i32> %vec.phi23, %i.bm          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %timer_update_irq.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.011.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.011.i = phi i32 [ %i.bx, %scalar.ph ], [ %.011.i.ph, %scalar.ph.preheader ]
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = and i32 %i.bt, 320
  %i.bv = icmp eq i32 %i.bu, 320
  %i.bw = zext i1 %i.bv to i32
  %i.bx = or i32 %.011.i, %i.bw                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %timer_update_irq.exit, label %scalar.ph, !llvm.loop !14

timer_update_irq.exit:                            ; preds = %scalar.ph, %middle.block, %bb.e
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.bq, %middle.block ], [ %i.bx, %scalar.ph ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bz = load ptr, ptr %i.by, align 16
  tail call void @qemu_set_irq(ptr noundef %i.bz, i32 noundef %.0.lcssa.i) #4
  ret void
}

declare i64 @ptimer_get_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7, !8, !9}
!12 = distinct !{!12, !7, !9, !8}
!13 = distinct !{!13, !7, !8, !9}
!14 = distinct !{!14, !7, !9, !8}
end_hunk_0
