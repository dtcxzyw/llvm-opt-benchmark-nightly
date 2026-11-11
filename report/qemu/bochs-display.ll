Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bochs-display?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
begin_hunk_0_@bochs_display_realize:bb.a
  %i.w = load i8, ptr %i.v, align 8, !range !7, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4208 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4160
  tail call void @qemu_edid_generate(ptr noundef nonnull %i.y, i64 noundef 256, ptr noundef nonnull %i.z) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3872 ; 2 uses
  tail call void @qemu_edid_region_io(ptr noundef nonnull %i.aa, ptr noundef %0, ptr noundef nonnull %i.y, i64 noundef 256) #9
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.r, i64 noundef 0, ptr noundef nonnull %i.aa) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.ac = tail call ptr @qdev_get_parent_bus(ptr noundef %i.ab) #9
  %i.ad = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ac, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 289, ptr noundef nonnull @__func__.PCI_BUS) #9
  %i.ae = tail call zeroext i1 @pci_bus_is_express(ptr noundef %i.ad) #9
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i32 @pcie_endpoint_cap_init(ptr noundef %0, i8 noundef zeroext -128) #9
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.7, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__.bochs_display_realize) #10
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, -5
  store i32 %i.aj, ptr %i.ah, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  tail call void @memory_region_set_log(ptr noundef nonnull %i.m, i1 noundef zeroext true, i32 noundef 0) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bochs_display_exit(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 60, ptr noundef nonnull @__func__.BOCHS_DISPLAY) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2768
  %i.c = load ptr, ptr %i.b, align 16
  tail call void @qemu_graphic_console_close(ptr noundef %i.c) #9
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @qemu_graphic_console_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @qemu_edid_generate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_edid_region_io(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @pci_bus_is_express(ptr noundef) local_unnamed_addr #1

declare i32 @pcie_endpoint_cap_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @memory_region_set_log(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @bochs_display_update(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.BochsDisplayMode, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.b = load i16, ptr %i.a, align 2
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bochs_display_get_mode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4470
  %i.f = load i16, ptr %i.e, align 2
  switch i16 %i.f, label %bochs_display_get_mode.exit.thread [
    i16 16, label %bb.d
    i16 32, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4484
  %i.h = load i8, ptr %i.g, align 4, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.i, i32 537397384, i32 537004168
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ 268567909, %bb.b ] ; 2 uses
  %.sink.i = phi i32 [ 4, %bb.c ], [ 2, %bb.b ]   ; 3 uses
  store i32 %i.k, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sink.i, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4466
  %i.n = load i16, ptr %i.m, align 2              ; 3 uses
  %i.o = zext i16 %i.n to i32                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4468
  %i.r = load i16, ptr %i.q, align 2              ; 4 uses
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4476
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call i16 @llvm.umax.i16(i16 %i.n, i16 %i.v)
  %spec.select.i = zext i16 %i.w to i32
  %i.x = mul nuw nsw i32 %.sink.i, %spec.select.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.x, ptr %i.y, align 8
  %i.z = zext nneg i32 %i.x to i64                ; 3 uses
  %i.aa = zext i16 %i.r to i64
  %i.ab = mul nuw nsw i64 %i.z, %i.aa             ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i64
  %i.ag = zext nneg i32 %.sink.i to i64
  %i.ah = mul nuw nsw i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4482
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, %i.z
  %i.am = add nuw nsw i64 %i.al, %i.ah            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = icmp ult i16 %i.n, 64
  %i.ap = icmp ult i16 %i.r, 64
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %bochs_display_get_mode.exit.thread, label %bochs_display_get_mode.exit

bochs_display_get_mode.exit:                      ; preds = %bb.d
  %i.aq = add nuw nsw i64 %i.am, %i.ab
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.as = load i64, ptr %i.ar, align 16
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bochs_display_get_mode.exit.thread, label %bb.e

bb.e:                                             ; preds = %bochs_display_get_mode.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4488 ; 2 uses
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.au, ptr noundef nonnull dereferenceable(40) %1, i64 40)
  %.not38.not = icmp eq i32 %bcmp, 0
  br i1 %.not38.not, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.aw = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.av) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.am
  %i.ay = tail call ptr @qemu_create_displaysurface_from(i32 noundef %i.o, i32 noundef %i.s, i32 noundef %i.k, i32 noundef %i.x, ptr noundef %i.ax) #9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 16
  tail call void @qemu_console_set_surface(ptr noundef %i.ba, ptr noundef %i.ay) #9
  %i.bb = load ptr, ptr %i.az, align 16
  tail call void @qemu_console_update_full(ptr noundef %i.bb) #9
  br label %bochs_display_get_mode.exit.thread

.lr.ph:                                           ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2784 ; 2 uses
  %i.bd = tail call ptr @memory_region_snapshot_and_clear_dirty(ptr noundef nonnull %i.bc, i64 noundef %i.am, i64 noundef %i.ab, i32 noundef 0) #9 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %wide.trip.count = zext i16 %i.r to i64         ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.be, %.backedge.backedge ] ; 3 uses
  %.042 = phi i32 [ -1, %.lr.ph ], [ %.042.be, %.backedge.backedge ] ; 2 uses
  %i.bf = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.bg = mul i32 %i.x, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.am, %i.bh
  %i.bj = tail call zeroext i1 @memory_region_snapshot_get_dirty(ptr noundef nonnull %i.bc, ptr noundef %i.bd, i64 noundef %i.bi, i64 noundef %i.z) #9 ; 2 uses
  %i.bk = icmp slt i32 %.042, 0
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  %spec.select = select i1 %or.cond, i32 %i.bf, i32 %.042 ; 7 uses
  %2 = icmp slt i32 %spec.select, 0
  %or.cond3.not = select i1 %i.bj, i1 true, i1 %2
  br i1 %or.cond3.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %.backedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.g, %.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.g ], [ %indvars.iv.next46, %.thread ]
  %.042.be = phi i32 [ %spec.select, %bb.g ], [ -1, %.thread ]
  br label %.backedge, !llvm.loop !9

.thread:                                          ; preds = %.backedge
  %i.bl = load ptr, ptr %i.be, align 16
  %i.bm = sub i32 %i.bf, %spec.select
  tail call void @qemu_console_update(ptr noundef %i.bl, i32 noundef 0, i32 noundef %spec.select, i32 noundef %i.o, i32 noundef %i.bm) #9
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not47 = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond.not47, label %._crit_edge.thread, label %.backedge.backedge

._crit_edge:                                      ; preds = %bb.g
  %i.bn = icmp sgt i32 %spec.select, -1
  br i1 %i.bn, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.bp = load ptr, ptr %i.bo, align 16
  %i.bq = sub nsw i32 %i.s, %spec.select
  tail call void @qemu_console_update(ptr noundef %i.bp, i32 noundef 0, i32 noundef %spec.select, i32 noundef %i.o, i32 noundef %i.bq) #9
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread, %bb.h, %._crit_edge
  tail call void @g_free(ptr noundef %i.bd) #9
  br label %bochs_display_get_mode.exit.thread

bochs_display_get_mode.exit.thread:               ; preds = %bb.d, %bb.b, %bb.a, %bb.f, %._crit_edge.thread, %bochs_display_get_mode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @memory_region_get_ram_ptr(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_create_displaysurface_from(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_console_set_surface(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_console_update_full(ptr noundef) local_unnamed_addr #1

declare ptr @memory_region_snapshot_and_clear_dirty(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_snapshot_get_dirty(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_console_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i64 -1, 281474976710656) i64 @bochs_display_vbe_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #5 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = trunc i64 %i.a to i32
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.e
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.d = load i64, ptr %i.c, align 16
  %i.e = lshr i64 %i.d, 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, 4294967295                 ; 2 uses
  %i.g = icmp samesign ugt i64 %i.f, 9
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.0 = phi i64 [ 45253, %bb.a ], [ %i.k, %bb.d ], [ %i.e, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @bochs_display_vbe_write(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #6 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = and i64 %i.a, 4294967295                 ; 2 uses
  %i.c = icmp samesign ugt i64 %i.b, 9
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.b
  store i16 %i.d, ptr %i.f, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i64 0, 3200171711) i64 @bochs_display_qext_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #5 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.d
    i64 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4484
  %i.b = load i8, ptr %i.a, align 4, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, i64 3200171710, i64 505290270
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.c ], [ %i.d, %bb.b ], [ 8, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @bochs_display_qext_write(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #6 {
bb.a:
  %cond = icmp eq i64 %1, 4
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i64 %2, label %bb.d [
    i64 3200171710, label %.sink.split
    i64 505290270, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4484
  store i8 %.sink, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare void @qemu_graphic_console_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
