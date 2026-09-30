Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/arm_gicv3_redist?download=true
inline.NumInlined: 149
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gicv3_redist_process_vlpi:bb.a
  br i1 %or.cond.i, label %gicv3_redist_process_lpi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 4503599627304960
  %.val.i = load ptr, ptr %0, align 8
  %i.ar = tail call fastcc zeroext i1 @set_pending_table_bit(ptr %.val.i, i64 noundef %i.aq, i32 noundef %3, i1 noundef zeroext true)
  br i1 %i.ar, label %bb.n, label %gicv3_redist_process_lpi.exit

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.af, align 8
  %i.at = and i64 %i.as, 4503599627366400
  %i.au = load ptr, ptr %0, align 8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1320
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, 64
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 660
  tail call fastcc void @update_for_one_lpi(ptr %i.au, i32 noundef %3, i64 noundef %i.at, i1 noundef zeroext %i.ay, ptr noundef nonnull %i.az)
  tail call void @gicv3_redist_update(ptr noundef nonnull %0) #7
  br label %gicv3_redist_process_lpi.exit

gicv3_redist_process_lpi.exit:                    ; preds = %bb.f, %gicv3_redist_update_vlpi.exit, %bb.l, %bb.m, %bb.n, %bb.j, %bb.k, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_mov_vlpi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call fastcc zeroext i1 @set_pending_table_bit(ptr %.val, i64 noundef %1, i32 noundef %4, i1 noundef zeroext false)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 184
  %.val12 = load i64, ptr %i.b, align 8           ; 2 uses
  %.not.i = icmp slt i64 %.val12, 0
  %i.c = and i64 %.val12, 4503599627304960
  %i.d = icmp eq i64 %1, %i.c
  %.0.i = and i1 %.not.i, %i.d
  br i1 %.0.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %4, %i.f
  br i1 %i.g, label %gicv3_redist_update_vlpi.exit, label %bb.d

gicv3_redist_update_vlpi.exit:                    ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = and i64 %i.i, 4503599627366400
  %i.k = trunc i64 %i.i to i32
  %i.l = and i32 %i.k, 31
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.j, i32 noundef %i.l, i1 noundef zeroext true, ptr noundef nonnull %i.e)
  tail call void @gicv3_cpuif_virt_irq_fiq_update(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %gicv3_redist_update_vlpi.exit, %bb.c, %bb.b
  tail call void @gicv3_redist_process_vlpi(ptr noundef %2, i32 noundef %4, i64 noundef %3, i32 noundef %5, i32 noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_vinvall(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp slt i64 %.val, 0
  %i.b = and i64 %.val, 4503599627304960
  %i.c = icmp eq i64 %1, %i.b
  %.0.i = and i1 %.not.i, %i.c
  br i1 %.0.i, label %gicv3_redist_update_vlpi.exit, label %bb.b

gicv3_redist_update_vlpi.exit:                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 4503599627366400
  %i.g = trunc i64 %i.e to i32
  %i.h = and i32 %i.g, 31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.f, i32 noundef %i.h, i1 noundef zeroext true, ptr noundef nonnull %i.i)
  tail call void @gicv3_cpuif_virt_irq_fiq_update(ptr noundef nonnull %0) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %gicv3_redist_update_vlpi.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_inv_vlpi(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp slt i64 %.val.i, 0
  %i.b = and i64 %.val.i, 4503599627304960
  %i.c = icmp eq i64 %2, %i.b
  %.0.i.i = and i1 %.not.i.i, %i.c
  br i1 %.0.i.i, label %gicv3_redist_update_vlpi.exit.i, label %gicv3_redist_vinvall.exit

gicv3_redist_update_vlpi.exit.i:                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 4503599627366400
  %i.g = trunc i64 %i.e to i32
  %i.h = and i32 %i.g, 31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %i.f, i32 noundef %i.h, i1 noundef zeroext true, ptr noundef nonnull %i.i)
  tail call void @gicv3_cpuif_virt_irq_fiq_update(ptr noundef nonnull %0) #7
  br label %gicv3_redist_vinvall.exit

gicv3_redist_vinvall.exit:                        ; preds = %bb.a, %gicv3_redist_update_vlpi.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_set_irq(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %or.cond.i = icmp ugt i32 %1, 31
  br i1 %or.cond.i, label %bb.b, label %extract32.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.extract32) #6
  unreachable

extract32.exit:                                   ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i32 %i.b, %1
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %extract32.exit
  %i.f = getelementptr i8, ptr %0, i64 72
  %.val = load i64, ptr %i.f, align 8
  %i.g = lshr i64 %.val, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i17 = icmp eq i32 %i.i, 0
  br i1 %.not.i17, label %deposit32.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr @_TRACE_GICV3_REDIST_SET_IRQ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.j, 0
  br i1 %.not3.i, label %deposit32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %deposit32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef %i.h, i32 noundef %1, i32 noundef %2) #7
  %.pre = load i32, ptr %i.a, align 8
  br label %deposit32.exit

deposit32.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.m = phi i32 [ %.pre, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %i.n = shl nuw i32 1, %1                        ; 3 uses
  %i.o = xor i32 %i.n, -1
  %i.p = and i32 %i.m, %i.o
  %i.q = and i32 %2, 1
  %i.r = shl nuw i32 %i.q, %1
  %i.s = or i32 %i.p, %i.r
  store i32 %i.s, ptr %i.a, align 8
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %extract32.exit21

extract32.exit21:                                 ; preds = %deposit32.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, %i.n
  %.not16 = icmp eq i32 %i.v, 0
  br i1 %.not16, label %bb.g, label %deposit32.exit23

deposit32.exit23:                                 ; preds = %extract32.exit21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = or i32 %i.x, %i.n
  store i32 %i.y, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %extract32.exit21, %deposit32.exit23, %deposit32.exit
  tail call void @gicv3_redist_update(ptr noundef nonnull %0) #7
  br label %bb.h

bb.h:                                             ; preds = %extract32.exit, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_send_sgi(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = icmp slt i32 %2, 32                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.c, label %extract32.exit17.i

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.extract32) #6
  unreachable

extract32.exit17.i:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8
  %i.f = shl nuw i32 1, %2
  %i.g = and i32 %i.e, %i.f
  %.not19.i = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, %2
  br i1 %.not19.i, label %bb.e, label %gicv3_irq_group.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1332
  %i.l = lshr i32 %2, 5
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %2, 31                           ; 2 uses
  %i.q = lshr i32 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1460
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4
  %i.u = lshr i32 %i.t, %i.p
  %i.v = trunc i32 %i.q to i1
  br i1 %i.v, label %gicv3_irq_group.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %extract32.exit17.i
  %.018.in.i = phi i32 [ %i.j, %extract32.exit17.i ], [ %i.u, %bb.d ]
  %.018.i = and i32 %.018.in.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 64
  %.not.i = icmp eq i32 %i.y, 0
  %.0..i = select i1 %.not.i, i32 %.018.i, i32 0
  br label %gicv3_irq_group.exit

gicv3_irq_group.exit:                             ; preds = %extract32.exit17.i, %bb.d, %bb.e
  %.013.i = phi i32 [ 2, %bb.d ], [ %.0..i, %bb.e ], [ 2, %extract32.exit17.i ] ; 3 uses
  %i.z = icmp eq i32 %1, 1
  %i.aa = icmp eq i32 %.013.i, 0                  ; 2 uses
  %or.cond = and i1 %i.z, %i.aa
  %.not27 = icmp eq i32 %1, %.013.i
  %.not = or i1 %.not27, %or.cond
  br i1 %.not, label %bb.f, label %bb.o

bb.f:                                             ; preds = %gicv3_irq_group.exit
  br i1 %3, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 64
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp samesign ult i32 %2, 16
  br i1 %i.ae, label %gicr_ns_access.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 34, ptr noundef nonnull @__PRETTY_FUNCTION__.gicr_ns_access) #6
  unreachable

gicr_ns_access.exit:                              ; preds = %bb.h
  %i.af = shl nuw nsw i32 %2, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, %i.af
  %i.aj = and i32 %i.ai, 3                        ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond3 = select i1 %i.aa, i1 %i.ak, i1 false
  br i1 %or.cond3, label %bb.o, label %bb.j

bb.j:                                             ; preds = %gicr_ns_access.exit
  %i.al = icmp eq i32 %.013.i, 1
  %i.am = icmp samesign ult i32 %i.aj, 2
  %or.cond5 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond5, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.g, %bb.f
  %i.an = getelementptr i8, ptr %0, i64 72
  %.val = load i64, ptr %i.an, align 8
  %i.ao = lshr i64 %.val, 32
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i29 = icmp eq i32 %i.aq, 0
  br i1 %.not.i29, label %trace_gicv3_redist_send_sgi.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %.critedge
  %i.ar = load i16, ptr @_TRACE_GICV3_REDIST_SEND_SGI_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.ar, 0
  br i1 %.not2.i, label %trace_gicv3_redist_send_sgi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not3.i = icmp eq i32 %i.at, 0
  br i1 %.not3.i, label %trace_gicv3_redist_send_sgi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, i32 noundef %i.ap, i32 noundef %2) #7
  br label %trace_gicv3_redist_send_sgi.exit

trace_gicv3_redist_send_sgi.exit:                 ; preds = %.critedge, %bb.k, %bb.l, %bb.m
  br i1 %i.b, label %deposit32.exit, label %bb.n

bb.n:                                             ; preds = %trace_gicv3_redist_send_sgi.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit32) #6
  unreachable

deposit32.exit:                                   ; preds = %trace_gicv3_redist_send_sgi.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = shl nuw i32 1, %2
  %i.ax = or i32 %i.av, %i.aw
  store i32 %i.ax, ptr %i.au, align 8
  tail call void @gicv3_redist_update(ptr noundef nonnull %0) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %gicr_ns_access.exit, %gicv3_irq_group.exit, %deposit32.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gicr_write_set_bitmap_reg(ptr noundef %0, i64 %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 1
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %mask_group.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1320
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 64
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %bb.c, label %mask_group.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, %3
  br label %mask_group.exit

mask_group.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  %i.i = load i32, ptr %2, align 4
  %i.j = or i32 %i.i, %.0.i
  store i32 %i.j, ptr %2, align 4
  tail call void @gicv3_redist_update(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gicr_write_clear_bitmap_reg(ptr noundef %0, i64 %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 1
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %mask_group.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1320
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 64
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %bb.c, label %mask_group.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, %3
  br label %mask_group.exit

mask_group.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  %i.i = xor i32 %.0.i, -1
  %i.j = load i32, ptr %2, align 4
  %i.k = and i32 %i.j, %i.i
  store i32 %i.k, ptr %2, align 4
  tail call void @gicv3_redist_update(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gicr_write_vpendbaser(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i64 %1, 0
  %i.d = and i64 %1, -1796936251320889472         ; 2 uses
  %i.e = and i64 %i.b, %1
  %or.cond.not = icmp sgt i64 %i.e, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %bb.j, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.gicr_write_vpendbaser) #7
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.h = or i64 %i.b, %1
  %or.cond3.not = icmp sgt i64 %i.h, -1
  br i1 %or.cond3.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.d, ptr %i.a, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  br i1 %i.c, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load i8, ptr %i.i, align 8
  %.not24 = icmp eq i8 %i.j, -1
  %i.k = select i1 %.not24, i64 0, i64 2305843009213693952
  %i.l = and i64 %1, 5120592776320192384
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i8 0, ptr %i.o, align 8
  br label %gicv3_redist_update_vlpi.exit

bb.i:                                             ; preds = %bb.g
  %i.p = and i64 %1, -4102779260534583424
  %i.q = or disjoint i64 %i.p, 2305843009213693952
  store i64 %i.q, ptr %i.a, align 8
  %i.r = and i64 %1, 4503599627304960
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = and i64 %i.t, 4503599627366400
  %i.v = trunc i64 %i.t to i32
  %i.w = and i32 %i.v, 31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %i.r, i64 noundef %i.u, i32 noundef %i.w, i1 noundef zeroext true, ptr noundef nonnull %i.x)
  br label %gicv3_redist_update_vlpi.exit

gicv3_redist_update_vlpi.exit:                    ; preds = %bb.h, %bb.i
  tail call void @gicv3_cpuif_virt_irq_fiq_update(ptr noundef nonnull %0) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.c, %gicv3_redist_update_vlpi.exit, %bb.f
  ret void
}

declare ptr @flatview_translate(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #3

declare ptr @qemu_map_ram_ptr(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @flatview_read_continue(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #3

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @memory_region_is_ram_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2150863159}
!12 = !{i64 2151256305}
!13 = !{i64 2150863973}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
end_hunk_0
