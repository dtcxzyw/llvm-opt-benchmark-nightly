Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sdhci?download=true
inline.NumInlined: 226
inline.NumDeleted: 54
begin_hunk_0_@sdhci_sysbus_init:bb.a
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #11 ; 2 uses
  tail call void @timer_init_full(ptr noundef %i.f, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @sdhci_data_transfer, ptr noundef %i.a) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3360
  store ptr %i.f, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  store ptr @sdhci_mmio_ops, ptr %i.h, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_sysbus_finalize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3352
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %timer_free.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @timer_del(ptr noundef nonnull %i.c) #10
  tail call void @g_free(ptr noundef nonnull %i.c) #10
  br label %timer_free.exit.i

timer_free.exit.i:                                ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3360
  %i.e = load ptr, ptr %i.d, align 16             ; 3 uses
  %.not.i4.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.i, label %sdhci_uninitfn.exit, label %bb.c

bb.c:                                             ; preds = %timer_free.exit.i
  tail call void @timer_del(ptr noundef nonnull %i.e) #10
  tail call void @g_free(ptr noundef nonnull %i.e) #10
  br label %sdhci_uninitfn.exit

sdhci_uninitfn.exit:                              ; preds = %timer_free.exit.i, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3480 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g) #10
  store ptr null, ptr %i.f, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_sysbus_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #10 ; 3 uses
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @sdhci_sysbus_properties, i64 noundef 7) #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @sdhci_sysbus_realize, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr @sdhci_sysbus_unrealize, ptr %i.c, align 8
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, 4
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr @sdhci_vmstate, ptr %i.h, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.d, ptr noundef nonnull @sdhci_poweron_reset) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @fsl_esdhc_be_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  store ptr @esdhc_mmio_be_ops, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3500
  store i32 16384, ptr %i.d, align 4
  tail call void @qdev_prop_set_uint8(ptr noundef %i.b, ptr noundef nonnull @.str.124, i8 noundef zeroext 2) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @fsl_esdhc_le_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  store ptr @esdhc_mmio_le_ops, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3500
  store i32 16384, ptr %i.d, align 4
  tail call void @qdev_prop_set_uint8(ptr noundef %i.b, ptr noundef nonnull @.str.124, i8 noundef zeroext 2) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_usdhc_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  store ptr @usdhc_mmio_ops, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3500
  store i32 16384, ptr %i.d, align 4
  tail call void @qdev_prop_set_uint8(ptr noundef %i.b, ptr noundef nonnull @.str.124, i8 noundef zeroext 3) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_s3c_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  store ptr @sdhci_s3c_mmio_ops, ptr %i.b, align 16
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_sysbus_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %2, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %1, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %2, ptr %1 ; 2 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 7 uses
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.134, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #10 ; 2 uses
  call void @sdhci_common_realize(ptr noundef %i.d, ptr noundef %spec.select)
  %i.f = load ptr, ptr %spec.select, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 3336
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3168 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 3328
  store ptr %i.i, ptr %i.j, align 16
  call void @address_space_init(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.133) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3328
  store ptr @address_space_memory, ptr %i.k, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 3368
  call void @sysbus_init_irq(ptr noundef %i.e, ptr noundef nonnull %i.l) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2896
  call void @sysbus_init_mmio(ptr noundef %i.e, ptr noundef nonnull %i.m) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.val = load ptr, ptr %2, align 8
  %.val21 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val21, ptr noundef %.val) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_sysbus_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3480 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #10
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3336
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3328
  %i.g = load ptr, ptr %i.f, align 16
  tail call void @address_space_destroy(ptr noundef %i.g) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @address_space_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @address_space_destroy(ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_uint8(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @esdhc_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 5 uses
  %i.b = add i64 %1, -36                          ; 2 uses
  %i.c = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 62)
  switch i64 %i.c, label %bb.b [
    i64 1, label %bb.c
    i64 0, label %bb.d
    i64 39, label %bb.e
    i64 15, label %bb.f
    i64 17, label %bb.f
    i64 18, label %bb.f
    i64 42, label %bb.f
    i64 9, label %bb.f
    i64 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.f = load i8, ptr %i.e, align 4               ; 3 uses
  %.tr = zext i8 %i.f to i64
  %i.g = shl nuw nsw i64 %.tr, 5
  %i.h = and i64 %i.g, 768
  %i.i = lshr i8 %i.f, 3
  %i.j = and i8 %i.i, 4
  %i.k = and i8 %i.f, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3414
  %3 = load i8, ptr %i.l, align 2
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 16
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 3415
  %7 = load i8, ptr %6, align 1
  %i.m = zext i8 %7 to i64
  %i.n = shl nuw nsw i64 %i.m, 24
  %spec.select27 = or disjoint i8 %i.j, %i.k
  %spec.select.a = zext nneg i8 %spec.select27 to i64
  %.1 = or disjoint i64 %i.h, %spec.select.a
  %i.o = or disjoint i64 %.1, %5
  %i.p = or disjoint i64 %i.o, %i.n
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = tail call i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.r = and i64 %i.q, 4294967287
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3416
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 2
  %.not = icmp eq i16 %i.u, 0
  %i.v = or i64 %i.q, 8
  %spec.select26 = select i1 %.not, i64 %i.r, i64 %i.v
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3448
  %i.x = load i16, ptr %i.w, align 8
  %i.y = zext i16 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.b
  %.023 = phi i64 [ %i.d, %bb.b ], [ %i.p, %bb.c ], [ 0, %bb.a ], [ %spec.select26, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i64 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @esdhc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 3 uses
  %i.b = add i64 %1, -4                           ; 2 uses
  %i.c = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 62)
  switch i64 %i.c, label %bb.g [
    i64 23, label %bb.h
    i64 25, label %bb.h
    i64 26, label %bb.h
    i64 50, label %bb.h
    i64 16, label %bb.h
    i64 47, label %bb.b
    i64 9, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3448
  store i16 %i.d, ptr %i.e, align 8
  %i.f = and i64 %2, 256
  %.not30 = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3408 ; 3 uses
  %i.h = load i32, ptr %i.g, align 16             ; 2 uses
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.h, -129
  store i32 %i.i, ptr %i.g, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.j = or i32 %i.h, 128
  store i32 %i.j, ptr %i.g, align 16
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = shl i64 %2, 3
  %i.l = and i64 %i.k, 32
  %i.m = lshr i64 %2, 5
  %i.n = and i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3413
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 8
  %.1 = and i64 %2, 4294901955
  %i.s = or disjoint i64 %.1, %i.l
  %i.t = or disjoint i64 %i.s, %i.n
  %i.u = or disjoint i64 %i.t, %i.r
  tail call void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %i.u, i32 noundef %3)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.v = or i64 %2, 28672
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.028 = phi i64 [ %2, %bb.a ], [ %i.v, %bb.f ]
  tail call void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %.028, i32 noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usdhc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 2 uses
  switch i64 %1, label %bb.d [
    i64 72, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %2 to i16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3388
  store i16 %i.b, ptr %i.c, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3388
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i64
  %i.g = or i64 %2, %i.f
  tail call void @sdhci_write(ptr noundef %0, i64 noundef 12, i64 noundef %i.g, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @esdhc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @sdhci_s3c_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i64 %1, label %bb.b [
    i64 128, label %bb.c
    i64 132, label %bb.c
    i64 140, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_s3c_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  switch i64 %1, label %bb.b [
    i64 128, label %bb.c
    i64 132, label %bb.c
    i64 140, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{i64 2152261025}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!14 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!15 = !{!"branch_weights", i32 1, i32 2147483647}
!16 = !{!"branch_weights", i32 0, i32 -2147483648}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
end_hunk_0
