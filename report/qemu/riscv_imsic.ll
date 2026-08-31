Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/riscv_imsic?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0_@riscv_imsic_create:bb.a
  %or.cond = icmp ult i32 %i.f, 64
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 509, ptr noundef nonnull @__PRETTY_FUNCTION__.riscv_imsic_create) #8
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.g = icmp ugt i32 %4, 62
  br i1 %i.g, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.riscv_imsic_create) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.h = icmp ult i32 %4, 2048
  br i1 %i.h, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.riscv_imsic_create) #8
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.i = and i32 %4, 63
  %i.j = icmp eq i32 %i.i, 63
  br i1 %i.j, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 513, ptr noundef nonnull @__PRETTY_FUNCTION__.riscv_imsic_create) #8
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @qdev_prop_set_bit(ptr noundef %i.a, ptr noundef nonnull @.str.8, i1 noundef zeroext %2) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.a, ptr noundef nonnull @.str.9, i32 noundef %1) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.a, ptr noundef nonnull @.str.10, i32 noundef %3) #7
  %i.k = add nuw nsw i32 %4, 1
  tail call void @qdev_prop_set_uint32(ptr noundef %i.a, ptr noundef nonnull @.str.11, i32 noundef %i.k) #7
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.m = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.l, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.n = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  tail call void @sysbus_mmio_map(ptr noundef %i.n, i32 noundef 0, i64 noundef %0) #7
  %i.o = select i1 %2, i32 11, i32 9
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.q = tail call ptr @qdev_get_gpio_in(ptr noundef %i.p, i32 noundef %i.o) #7
  tail call void @qdev_connect_gpio_out_named(ptr noundef %i.a, ptr noundef null, i32 noundef 0, ptr noundef %i.q) #7
  %exitcond.peel.not = icmp eq i32 %3, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.n, %.peel.next
  %.035 = phi i32 [ %i.u, %.peel.next ], [ 1, %bb.n ] ; 3 uses
  %i.r = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.s = add i32 %.035, 63
  %i.t = tail call ptr @qdev_get_gpio_in(ptr noundef %i.r, i32 noundef %i.s) #7
  tail call void @qdev_connect_gpio_out_named(ptr noundef %i.a, ptr noundef null, i32 noundef %.035, ptr noundef %i.t) #7
  %i.u = add nuw i32 %.035, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %3
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !7

._crit_edge:                                      ; preds = %.peel.next, %bb.n
  ret ptr %i.a
}

declare ptr @qdev_new(ptr noundef) local_unnamed_addr #1

declare ptr @cpu_by_arch_id(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @qdev_prop_set_bit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @qdev_prop_set_uint32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @sysbus_realize_and_unref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_mmio_map(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @riscv_imsic_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #7 ; 3 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 22, ptr noundef nonnull @__func__.RESETTABLE_CLASS) #7
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @riscv_imsic_properties, i64 noundef 4) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @riscv_imsic_realize, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @riscv_imsic_reset_enter, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_riscv_imsic, ptr %i.e, align 8
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @riscv_imsic_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, i32 noundef 28, ptr noundef nonnull @__func__.RISCV_IMSIC) #7 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1124 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @cpu_by_arch_id(i64 noundef %i.d) #7
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 64, ptr noundef nonnull @__func__.RISCV_CPU) #7 ; 3 uses
  %i.g = load i32, ptr %i.b, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @cpu_by_arch_id(i64 noundef %i.h) #7 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 4 uses
  %i.k = load i8, ptr %i.j, align 16, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i64 2048, i64 512
  %i.n = tail call i32 @riscv_cpu_claim_interrupts(ptr noundef %i.f, i64 noundef %i.m) #7
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.j, align 16, !range !10, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = select i1 %i.q, ptr @.str.20, ptr @.str.21
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 401, ptr noundef nonnull @__func__.riscv_imsic_realize, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.r) #7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.i, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias ptr @g_malloc(i64 noundef %i.v) #9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load i32, ptr %i.s, align 8
  tail call void @qdev_init_gpio_out(ptr noundef %0, ptr noundef %i.w, i32 noundef %i.y) #7
  %i.z = load i32, ptr %i.s, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1132
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = mul i32 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 16
  %i.ae = zext i32 %i.z to i64
  %i.af = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ae, i64 noundef 4) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load i32, ptr %i.s, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ai, i64 noundef 4) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store ptr %i.aj, ptr %i.ak, align 16
  %i.al = load i32, ptr %i.ad, align 16
  %i.am = zext i32 %i.al to i64
  %i.an = tail call noalias ptr @g_malloc0_n(i64 noundef %i.am, i64 noundef 4) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 12
  tail call void @memory_region_init_io(ptr noundef nonnull %i.ap, ptr noundef %0, ptr noundef nonnull @riscv_imsic_ops, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef %i.as) #7
  %i.at = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  tail call void @sysbus_init_mmio(ptr noundef %i.at, ptr noundef nonnull %i.ap) #7
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = load i8, ptr %i.j, align 16, !range !10, !noundef !11
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 32245
  store i8 1, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.s, align 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = add i8 %i.ay, -1                        ; 2 uses
  %i.ba = getelementptr i8, ptr %i.i, i64 21460
  %.val.i = load i32, ptr %i.ba, align 4
  %i.bb = and i32 %.val.i, 128
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = icmp ugt i8 %i.az, 63
  %or.cond.i = or i1 %i.bd, %i.bc
  br i1 %or.cond.i, label %riscv_cpu_set_geilen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 21537
  store i8 %i.az, ptr %i.be, align 1
  br label %riscv_cpu_set_geilen.exit

bb.g:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32244
  store i8 1, ptr %i.bf, align 4
  br label %riscv_cpu_set_geilen.exit

riscv_cpu_set_geilen.exit:                        ; preds = %bb.f, %bb.e, %bb.g
  %i.bg = load i8, ptr %i.j, align 16, !range !10, !noundef !11
  %i.bh = trunc nuw i8 %i.bg to i1
  %2 = getelementptr inbounds nuw i8, ptr %i.i, i64 31784
  %3 = select i1 %i.bh, i64 3, i64 1              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3
  store ptr @riscv_imsic_rmw, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 31816
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %3
  store ptr %i.a, ptr %i.bk, align 8
  br label %bb.h

bb.h:                                             ; preds = %riscv_cpu_set_geilen.exit, %bb.c
  store i8 1, ptr @msi_nonbroken, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @riscv_imsic_reset_enter(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, i32 noundef 28, ptr noundef nonnull @__func__.RISCV_IMSIC) #7 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.c, i8 noundef 0, i64 noundef range(i64 0, 17179869181) %i.g, i1 noundef false) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = load i32, ptr %i.d, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.i, i8 noundef 0, i64 noundef range(i64 0, 17179869181) %i.l, i1 noundef false) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  %i.n = load i32, ptr %i.m, align 16
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.d, align 8
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = sext i32 %.014 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, -3
  store i32 %i.v, ptr %i.t, align 4
  %i.w = add nuw i32 %.014, 1                     ; 2 uses
  %i.x = load i32, ptr %i.m, align 16
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %.preheader, !llvm.loop !12

bb.c:                                             ; preds = %.lr.ph16, %bb.c
  %.115 = phi i32 [ 0, %.lr.ph16 ], [ %i.ad, %bb.c ] ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = sext i32 %.115 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ac, i32 noundef 0) #7
  %i.ad = add nuw i32 %.115, 1                    ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @riscv_cpu_claim_interrupts(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

declare void @qdev_init_gpio_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @riscv_imsic_rmw(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %i.a, 3                          ; 3 uses
  %i.c = lshr i32 %1, 18                          ; 2 uses
  %i.d = and i32 %i.c, 1                          ; 2 uses
  %i.e = and i32 %1, 65535                        ; 3 uses
  %i.f = lshr i32 %1, 20
  %i.g = and i32 %i.f, 63                         ; 4 uses
  %i.h = lshr i32 %1, 24                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.j = load i8, ptr %i.i, align 16, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ne i32 %i.b, 3
  %i.m = trunc i32 %i.c to i1
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.m, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.b, 1
  br i1 %i.n, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not52 = icmp eq i32 %i.g, 0
  br i1 %.not52, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ult i32 %i.g, %i.p
  br i1 %i.q, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ] ; 5 uses
  %trunc = trunc i32 %1 to i16
  switch i16 %trunc, label %bb.m [
    i16 112, label %bb.h
    i16 114, label %bb.i
    i16 512, label %bb.j
    i16 128, label %bb.k
    i16 129, label %bb.k
    i16 130, label %bb.k
    i16 131, label %bb.k
    i16 132, label %bb.k
    i16 133, label %bb.k
    i16 134, label %bb.k
    i16 135, label %bb.k
    i16 136, label %bb.k
    i16 137, label %bb.k
    i16 138, label %bb.k
    i16 139, label %bb.k
    i16 140, label %bb.k
    i16 141, label %bb.k
    i16 142, label %bb.k
    i16 143, label %bb.k
    i16 144, label %bb.k
    i16 145, label %bb.k
    i16 146, label %bb.k
    i16 147, label %bb.k
    i16 148, label %bb.k
    i16 149, label %bb.k
    i16 150, label %bb.k
    i16 151, label %bb.k
    i16 152, label %bb.k
    i16 153, label %bb.k
    i16 154, label %bb.k
    i16 155, label %bb.k
    i16 156, label %bb.k
    i16 157, label %bb.k
    i16 158, label %bb.k
    i16 159, label %bb.k
    i16 160, label %bb.k
    i16 161, label %bb.k
    i16 162, label %bb.k
    i16 163, label %bb.k
    i16 164, label %bb.k
    i16 165, label %bb.k
    i16 166, label %bb.k
    i16 167, label %bb.k
    i16 168, label %bb.k
    i16 169, label %bb.k
    i16 170, label %bb.k
    i16 171, label %bb.k
    i16 172, label %bb.k
    i16 173, label %bb.k
    i16 174, label %bb.k
    i16 175, label %bb.k
    i16 176, label %bb.k
    i16 177, label %bb.k
    i16 178, label %bb.k
    i16 179, label %bb.k
    i16 180, label %bb.k
    i16 181, label %bb.k
    i16 182, label %bb.k
    i16 183, label %bb.k
    i16 184, label %bb.k
    i16 185, label %bb.k
    i16 186, label %bb.k
    i16 187, label %bb.k
end_hunk_0
