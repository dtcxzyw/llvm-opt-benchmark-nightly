inline.NumInlined: 222
inline.NumDeleted: 74
begin_hunk_0_@virtio_scsi_device_realize:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 704 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.i = load ptr, ptr %i.h, align 8
  call void @scsi_bus_init_named(ptr noundef nonnull %i.g, i64 noundef 144, ptr noundef %0, ptr noundef nonnull @virtio_scsi_scsi_info, ptr noundef %i.i) #13
  %i.j = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.9, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #13
  call void @qbus_set_hotplug_handler(ptr noundef %i.j, ptr noundef %0) #13
  call void @virtio_scsi_dataplane_setup(ptr noundef nonnull %i.c, ptr noundef %1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_device_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #13 ; 4 uses
  tail call void @virtio_scsi_dataplane_cleanup(ptr noundef %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.9, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #13
  tail call void @qbus_set_hotplug_handler(ptr noundef %i.c, ptr noundef null) #13
  tail call void @virtio_scsi_common_unrealize(ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 856
  tail call void @qemu_mutex_destroy(ptr noundef nonnull %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  tail call void @qemu_mutex_destroy(ptr noundef nonnull %i.e) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_set_config(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 29, ptr noundef nonnull @__func__.VIRTIO_SCSI_COMMON) #13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %.val.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i.i, 4294967296
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %bb.b, label %virtio_ldl_p.exit.thread37

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  switch i8 %i.f, label %virtio_ldl_p.exit [
    i8 0, label %bb.c
    i8 2, label %virtio_ldl_p.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

virtio_ldl_p.exit:                                ; preds = %bb.b
  %.val3.i = load i32, ptr %i.b, align 1          ; 2 uses
  %i.g = icmp ugt i32 %.val3.i, 65535
  br i1 %i.g, label %bb.e, label %.thread

virtio_ldl_p.exit.thread37:                       ; preds = %bb.a
  %.val3.i38 = load i32, ptr %i.b, align 1        ; 2 uses
  %i.h = icmp ugt i32 %.val3.i38, 65535
  br i1 %i.h, label %bb.e, label %.thread39

.thread39:                                        ; preds = %virtio_ldl_p.exit.thread37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val3.i16 = load i32, ptr %i.i, align 1
  %i.j = icmp ugt i32 %.val3.i16, 255
  br i1 %i.j, label %bb.e, label %virtio_ldl_p.exit26

virtio_ldl_p.exit.thread:                         ; preds = %bb.b
  %.val.i = load i32, ptr %i.b, align 1           ; 2 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.val.i)
  %i.l = icmp ugt i32 %i.k, 65535
  br i1 %i.l, label %bb.e, label %.thread.thread

.thread.thread:                                   ; preds = %virtio_ldl_p.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val.i18 = load i32, ptr %i.m, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.val.i18)
  %i.o = icmp ugt i32 %i.n, 255
  br i1 %i.o, label %bb.e, label %.thread36.thread

.thread:                                          ; preds = %virtio_ldl_p.exit
  %cond = icmp eq i8 %i.f, 0
  br i1 %cond, label %bb.d, label %virtio_ldl_p.exit19.thread40

bb.d:                                             ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

virtio_ldl_p.exit19.thread40:                     ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val3.i1641 = load i32, ptr %i.p, align 1
  %i.q = icmp ugt i32 %.val3.i1641, 255
  br i1 %i.q, label %bb.e, label %virtio_ldl_p.exit26

bb.e:                                             ; preds = %virtio_ldl_p.exit19.thread40, %virtio_ldl_p.exit.thread37, %.thread.thread, %virtio_ldl_p.exit.thread, %.thread39, %virtio_ldl_p.exit
  tail call void (ptr, ptr, ...) @virtio_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #13
  br label %bb.i

.thread36.thread:                                 ; preds = %.thread.thread
  %i.r = tail call i32 @llvm.bswap.i32(i32 %.val.i)
  br label %virtio_ldl_p.exit26

virtio_ldl_p.exit26:                              ; preds = %virtio_ldl_p.exit19.thread40, %.thread39, %.thread36.thread
  %i.s = phi ptr [ %i.m, %.thread36.thread ], [ %i.i, %.thread39 ], [ %i.p, %virtio_ldl_p.exit19.thread40 ] ; 2 uses
  %.0.i24 = phi i32 [ %i.r, %.thread36.thread ], [ %.val3.i38, %.thread39 ], [ %.val3.i, %virtio_ldl_p.exit19.thread40 ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store i32 %.0.i24, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 676
  %.val.i.i27 = load i64, ptr %i.c, align 8
  %i.v = and i64 %.val.i.i27, 4294967296
  %.not.i.i.i28 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i28, label %bb.f, label %virtio_vdev_is_big_endian.exit.thread.i29

bb.f:                                             ; preds = %virtio_ldl_p.exit26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.x = load i8, ptr %i.w, align 8
  switch i8 %i.x, label %virtio_vdev_is_big_endian.exit.thread.i29 [
    i8 0, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val.i32 = load i32, ptr %i.s, align 1
  %i.y = tail call i32 @llvm.bswap.i32(i32 %.val.i32)
  br label %virtio_ldl_p.exit33

virtio_vdev_is_big_endian.exit.thread.i29:        ; preds = %bb.f, %virtio_ldl_p.exit26
  %.val3.i30 = load i32, ptr %i.s, align 1
  br label %virtio_ldl_p.exit33

virtio_ldl_p.exit33:                              ; preds = %bb.h, %virtio_vdev_is_big_endian.exit.thread.i29
  %.0.i31 = phi i32 [ %i.y, %bb.h ], [ %.val3.i30, %virtio_vdev_is_big_endian.exit.thread.i29 ]
  store atomic i32 %.0.i31, ptr %i.u monotonic, align 4
  br label %bb.i

bb.i:                                             ; preds = %virtio_ldl_p.exit33, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @virtio_scsi_get_features(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 972
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = or i64 %1, %i.d
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #13 ; 7 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 29, ptr noundef nonnull @__func__.VIRTIO_SCSI_COMMON) #13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 968 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str, i32 noundef 1017, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_scsi_reset) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @qemu_in_main_thread() #13
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_scsi_flush_defer_tmf_to_aio_context) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.c, align 8, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %qemu_lockable_auto_unlock.exit.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str, i32 noundef 411, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_scsi_flush_defer_tmf_to_aio_context) #15
  unreachable

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %2, align 8
  tail call void @aio_wait_bh_oneshot(ptr noundef %i.m, ptr noundef nonnull @dummy_bh, ptr noundef null) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.i, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %bb.g, label %qemu_lockable_auto_unlock.exit.us, !llvm.loop !12

qemu_lockable_auto_unlock.exit.us:                ; preds = %bb.g, %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 848 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i32 1 seq_cst, align 8 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.t = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.9, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #13
  tail call void @bus_cold_reset(ptr noundef %i.t) #13
  %i.u = atomicrmw sub ptr %i.q, i32 1 seq_cst, align 8 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  store i32 96, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 676
  store i32 32, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 856 ; 2 uses
  %i.y = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.y(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.38, i32 noundef 56) #13, !inline_history !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 904
  store i8 0, ptr %i.z, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.38, i32 noundef 56) #13
  ret void
}

declare i32 @virtio_scsi_dataplane_start(ptr noundef) #2

declare void @virtio_scsi_dataplane_stop(ptr noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_pre_hotplug(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 68, ptr noundef nonnull @__func__.SCSI_DEVICE) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 645
  store i8 1, ptr %i.b, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_hotplug(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.VirtIOSCSIEventInfo, align 4 ; 7 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #13 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 68, ptr noundef nonnull @__func__.SCSI_DEVICE) #13 ; 3 uses
  %i.h = tail call ptr @qemu_get_aio_context() #13
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 971
  %i.j = load i8, ptr %i.i, align 1, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 @blk_set_aio_context(ptr noundef %i.m, ptr noundef %i.f, ptr noundef null) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr i8, ptr %i.a, i64 184
  %.val = load i64, ptr %i.o, align 8
  %i.p = and i64 %.val, 2
  %.not13 = icmp eq i64 %i.p, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 1, ptr %3, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.t = load i32, ptr %i.s, align 8
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 596
  %i.w = load i32, ptr %i.v, align 4
  store i32 %i.w, ptr %i.u, align 4
  call fastcc void @virtio_scsi_push_event(ptr noundef nonnull %i.b, ptr noundef %3)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.0.copyload = load i24, ptr @sense_code_REPORTED_LUNS_CHANGED, align 1
  tail call void @scsi_bus_set_ua(ptr noundef nonnull %i.x, i24 %.0.copyload) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_hotunplug(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.VirtIOSCSIEventInfo, align 4 ; 7 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #13 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #13 ; 3 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 68, ptr noundef nonnull @__func__.SCSI_DEVICE) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 1, ptr %3, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.g = load i32, ptr %i.f, align 8
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 596
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %i.h, align 4
  tail call void @qdev_simple_device_unplug_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @qemu_get_aio_context() #13
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @qemu_get_aio_context() #13
  %i.s = tail call i32 @blk_set_aio_context(ptr noundef %i.q, ptr noundef %i.r, ptr noundef null) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr i8, ptr %i.a, i64 184
  %.val = load i64, ptr %i.t, align 8
  %i.u = and i64 %.val, 2
  %.not13 = icmp eq i64 %i.u, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @virtio_scsi_push_event(ptr noundef nonnull %i.b, ptr noundef %3)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.0.copyload = load i24, ptr @sense_code_REPORTED_LUNS_CHANGED, align 1
  tail call void @scsi_bus_set_ua(ptr noundef nonnull %i.v, i24 %.0.copyload) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_scsi_handle_ctrl(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %virtio_scsi_defer_to_dataplane.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @qemu_get_aio_context() #13
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %virtio_scsi_defer_to_dataplane.exit.thread, label %virtio_scsi_defer_to_dataplane.exit

virtio_scsi_defer_to_dataplane.exit:              ; preds = %bb.b
  %i.j = tail call i32 @virtio_device_start_ioeventfd(ptr noundef nonnull %0) #13 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 971
  %i.l = load i8, ptr %i.k, align 1, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %virtio_scsi_defer_to_dataplane.exit.thread, label %virtio_scsi_handle_ctrl_vq.exit

virtio_scsi_defer_to_dataplane.exit.thread:       ; preds = %bb.b, %bb.a, %virtio_scsi_defer_to_dataplane.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 9 uses
  %i.o = tail call fastcc ptr @virtio_scsi_pop_req(ptr noundef nonnull %0, ptr noundef %1, i64 noundef 0, ptr noundef nonnull %i.n) ; 2 uses
  %.not7.i = icmp eq ptr %i.o, null
  br i1 %.not7.i, label %virtio_scsi_handle_ctrl_vq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %virtio_scsi_defer_to_dataplane.exit.thread
  %i.p = getelementptr i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.c

bb.c:                                             ; preds = %virtio_scsi_handle_ctrl_req.exit.i, %.lr.ph.i
  %i.w = phi ptr [ %i.o, %.lr.ph.i ], [ %i.jr, %virtio_scsi_handle_ctrl_req.exit.i ] ; 51 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@virtio_scsi_handle_ctrl:bb.a
  store i8 10, ptr %i.bt, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.090176.us.i.i.i, i64 400
  %.090.us.i.i.i = load ptr, ptr %i.ea, align 8   ; 2 uses
  %.not114.us.i.i.i = icmp eq ptr %.090.us.i.i.i, null
  br i1 %.not114.us.i.i.i, label %qemu_lockable_auto_unlock.exit.us.i.i.i, label %.lr.ph178.us.i.i.i, !llvm.loop !19

qemu_lockable_auto_unlock.exit.us.i.i.i:          ; preds = %bb.ac, %.split180.us.i.i.i
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.dr, ptr noundef nonnull @.str.38, i32 noundef 56) #13
  br label %.thread63.i.i

.split182.us.i.i.i:                               ; preds = %.lr.ph178.us.i.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str, i32 noundef 514, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_scsi_do_tmf) #15
  unreachable

bb.ad:                                            ; preds = %trace_virtio_scsi_tmf_req.exit.i.i.i
  %.not108.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not108.i.i.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 596
  %i.ec = load i32, ptr %i.eb, align 4
  %.val124.i.i.i = load i8, ptr %i.ce, align 2
  %.val125.i.i.i = load i8, ptr %i.cf, align 1
  %i.ed = zext i8 %.val124.i.i.i to i32
  %i.ee = shl nuw nsw i32 %i.ed, 8
  %i.ef = zext i8 %.val125.i.i.i to i32
  %.masked.i140.i.i.i = and i32 %i.ee, 16128
  %i.eg = or disjoint i32 %.masked.i140.i.i.i, %i.ef
  %.not109.i.i.i = icmp eq i32 %i.ec, %i.eg
  br i1 %.not109.i.i.i, label %bb.af, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i

bb.af:                                            ; preds = %bb.ae
  %i.eh = atomicrmw add ptr %i.u, i32 1 seq_cst, align 8 ; 0 uses
  call void @device_cold_reset(ptr noundef nonnull %.0.i.i.i.i) #13
  %i.ei = atomicrmw sub ptr %i.u, i32 1 seq_cst, align 8 ; 0 uses
  br label %.thread63.i.i

bb.ag:                                            ; preds = %trace_virtio_scsi_tmf_req.exit.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.w, i64 221
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = zext i8 %i.ek to i32
  %i.em = atomicrmw add ptr %i.u, i32 1 seq_cst, align 8 ; 0 uses
  %i.en = call ptr @get_ptr_rcu_reader() #13      ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4
  %.not.i141.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not.i141.i.i.i, label %bb.ah, label %rcu_read_lock.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.er = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.es = and i64 %i.er, 4294967295
  store atomic i64 %i.es, ptr %i.en monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !20
  fence seq_cst
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %bb.ah, %bb.ag
  %i.et = load atomic ptr, ptr %i.v monotonic, align 8 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !21
  %.not107170.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not107170.i.i.i, label %._crit_edge173.i.i.i, label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i, %bb.ak
  %.092171.i.i.i = phi ptr [ %i.fe, %bb.ak ], [ %i.et, %rcu_read_lock.exit.i.i.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.092171.i.i.i, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call ptr @object_dynamic_cast_assert(ptr noundef %i.ev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 68, ptr noundef nonnull @__func__.SCSI_DEVICE) #13 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 592
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph172.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 160
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = icmp eq i32 %i.fb, %i.el
  br i1 %i.fc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @device_cold_reset(ptr noundef nonnull %i.ew) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.lr.ph172.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.092171.i.i.i, i64 32
  %i.fe = load atomic ptr, ptr %i.fd monotonic, align 8 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !22
  %.not107.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not107.i.i.i, label %._crit_edge173.i.i.i, label %.lr.ph172.i.i.i, !llvm.loop !23

._crit_edge173.i.i.i:                             ; preds = %bb.ak, %rcu_read_lock.exit.i.i.i
  %i.ff = call ptr @get_ptr_rcu_reader() #13      ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4            ; 2 uses
  %.not.i142.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i142.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge173.i.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #15
  unreachable

bb.am:                                            ; preds = %._crit_edge173.i.i.i
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4
  %.not8.i.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not8.i.i.i.i, label %bb.an, label %rcu_read_unlock.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  store atomic i64 0, ptr %i.ff release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !24
  fence seq_cst
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fk = load atomic i8, ptr %i.fj monotonic, align 8, !range !10, !noundef !11
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ao, label %rcu_read_unlock.exit.i.i.i, !prof !25

bb.ao:                                            ; preds = %bb.an
  store atomic i8 0, ptr %i.fj monotonic, align 8
  call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #13
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %bb.ao, %bb.an, %bb.am
  %i.fm = atomicrmw sub ptr %i.u, i32 1 seq_cst, align 8 ; 0 uses
  br label %.thread63.i.i

bb.ap:                                            ; preds = %trace_virtio_scsi_tmf_req.exit.i.i.i, %trace_virtio_scsi_tmf_req.exit.i.i.i
  %i.fn = call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #13 ; 6 uses
  %.not104.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not104.i.i.i, label %virtio_scsi_tmf_dec_remaining.exit.i.i.jt3.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 596
  %i.fp = load i32, ptr %i.fo, align 4
  %.val122.i.i.i = load i8, ptr %i.ce, align 2
  %.val123.i.i.i = load i8, ptr %i.cf, align 1
  %i.fq = zext i8 %.val122.i.i.i to i32
  %i.fr = shl nuw nsw i32 %i.fq, 8
  %i.fs = zext i8 %.val123.i.i.i to i32
  %.masked.i143.i.i.i = and i32 %i.fr, 16128
  %i.ft = or disjoint i32 %.masked.i143.i.i.i, %i.fs
  %.not105.i.i.i = icmp eq i32 %i.fp, %i.ft
  br i1 %.not105.i.i.i, label %bb.ar, label %virtio_scsi_tmf_dec_remaining.exit.i.i.jt4.i

bb.ar:                                            ; preds = %bb.aq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.w, i64 168 ; 3 uses
  %i.fv = atomicrmw add ptr %i.fu, i32 1 seq_cst, align 8 ; 0 uses
  %i.fw = load i32, ptr %i.s, align 8
  %.not183.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not183.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ax, %bb.ar
  %i.fx = atomicrmw sub ptr %i.fu, i32 1 seq_cst, align 8
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.as, label %virtio_scsi_tmf_dec_remaining.exit.i.i.jt2.i

bb.as:                                            ; preds = %._crit_edge.i.i.i
  %.val.i144.i.i.i = load i8, ptr %i.ce, align 2
  %.val7.i.i.i.i = load i8, ptr %i.cf, align 1
  %i.fz = zext i8 %.val.i144.i.i.i to i32
  %i.ga = shl nuw nsw i32 %i.fz, 8
  %i.gb = zext i8 %.val7.i.i.i.i to i32
  %.masked.i.i145.i.i.i = and i32 %i.ga, 16128
  %i.gc = or disjoint i32 %.masked.i.i145.i.i.i, %i.gb
  %i.gd = load i64, ptr %i.ck, align 4
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = load i8, ptr %i.bt, align 4
  %i.gg = zext i8 %i.gf to i32
  %i.gh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i146.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i146.i.i.i, label %trace_virtio_scsi_tmf_resp.exit.i.i.i.i, label %bb.at, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.gi = load i16, ptr @_TRACE_VIRTIO_SCSI_TMF_RESP_DSTATE, align 2
  %.not3.i.i.i.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not3.i.i.i.i.i, label %trace_virtio_scsi_tmf_resp.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = load i32, ptr @qemu_loglevel, align 4
  %i.gk = and i32 %i.gj, 32768
  %.not4.i.i.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not4.i.i.i.i.i, label %trace_virtio_scsi_tmf_resp.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 16384) %i.gc, i32 noundef %i.ge, i32 noundef range(i32 0, 256) %i.gg) #13
  br label %trace_virtio_scsi_tmf_resp.exit.i.i.i.i

trace_virtio_scsi_tmf_resp.exit.i.i.i.i:          ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.gl = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 912
  call fastcc void @virtio_scsi_complete_req(ptr noundef nonnull %i.w, ptr noundef nonnull %i.gn)
  br label %virtio_scsi_tmf_dec_remaining.exit.i.i.jt2.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.ax
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ax ], [ 0, %bb.ar ] ; 2 uses
  %i.go = load ptr, ptr %i.t, align 8
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gp = load ptr, ptr %3, align 8               ; 2 uses
  %i.gq = call i32 @g_hash_table_add(ptr noundef %i.fn, ptr noundef %i.gp) #13
  %.not106.i.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not106.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.gr = atomicrmw add ptr %i.fu, i32 1 seq_cst, align 8 ; 0 uses
  call void @aio_bh_schedule_oneshot_full(ptr noundef %i.gp, ptr noundef nonnull @virtio_scsi_do_tmf_aio_context, ptr noundef nonnull %i.w, ptr noundef nonnull @.str.36) #13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gs = load i32, ptr %i.s, align 8
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.gt
  br i1 %i.gu, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !26

virtio_scsi_tmf_dec_remaining.exit.i.i.jt2.i:     ; preds = %trace_virtio_scsi_tmf_resp.exit.i.i.i.i, %._crit_edge.i.i.i
  %.not.i.i147.i.i.jt2.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i147.i.i.jt2.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread.i, label %bb.ay

virtio_scsi_tmf_dec_remaining.exit.i.i.jt4.i:     ; preds = %bb.aq
  %.not.i.i147.i.i.jt4.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i147.i.i.jt4.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.sink.split.i

virtio_scsi_tmf_dec_remaining.exit.i.i.jt3.i:     ; preds = %bb.ap
  %.not.i.i147.i.i.jt3.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i147.i.i.jt3.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.sink.split.i

bb.ay:                                            ; preds = %virtio_scsi_tmf_dec_remaining.exit.i.i.jt2.i
  call void @g_hash_table_unref(ptr noundef nonnull %i.fn) #13
  br label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread.i

bb.az:                                            ; preds = %trace_virtio_scsi_tmf_req.exit.i.i.i
  %.not.i43.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i43.i.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 596
  %i.gw = load i32, ptr %i.gv, align 4
  %.val120.i.i.i = load i8, ptr %i.ce, align 2
  %.val121.i.i.i = load i8, ptr %i.cf, align 1
  %i.gx = zext i8 %.val120.i.i.i to i32
  %i.gy = shl nuw nsw i32 %i.gx, 8
  %i.gz = zext i8 %.val121.i.i.i to i32
  %.masked.i148.i.i.i = and i32 %i.gy, 16128
  %i.ha = or disjoint i32 %.masked.i148.i.i.i, %i.gz
  %.not100.i.i.i = icmp eq i32 %i.gw, %i.ha
  br i1 %.not100.i.i.i, label %.split.us.i.i.i, label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i

.split.us.i.i.i:                                  ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 528 ; 2 uses
  %i.hc = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.hc(ptr noundef nonnull %i.hb, ptr noundef nonnull @.str.38, i32 noundef 56) #13, !inline_history !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 576
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not102.us.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not102.us.i.i.i, label %qemu_lockable_auto_unlock.exit159.us.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.split.us.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8
  %.not103.us.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not103.us.i.i.i, label %.split168.us.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 10, ptr %i.bt, align 4
  br label %qemu_lockable_auto_unlock.exit159.us.i.i.i

qemu_lockable_auto_unlock.exit159.us.i.i.i:       ; preds = %bb.bc, %.split.us.i.i.i
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.hb, ptr noundef nonnull @.str.38, i32 noundef 56) #13
  br label %.thread63.i.i

.split168.us.i.i.i:                               ; preds = %bb.bb
  call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str, i32 noundef 597, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_scsi_do_tmf) #15
  unreachable

bb.bd:                                            ; preds = %trace_virtio_scsi_tmf_req.exit.i.i.i
  store i8 11, ptr %i.bt, align 4
  br label %.thread63.i.i

bb.be:                                            ; preds = %virtio_tswap32s.exit.i.i
  %or.cond.i.i = icmp ult i32 %i.au, 3
  br i1 %or.cond.i.i, label %bb.bf, label %trace_virtio_scsi_tmf_resp.exit.i.i

bb.bf:                                            ; preds = %bb.be
  %i.hh = call fastcc i32 @virtio_scsi_parse_req(ptr noundef nonnull %i.w, i32 noundef 16, i32 noundef 5)
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call ptr @object_dynamic_cast_assert(ptr noundef %i.hk, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #13
  call void (ptr, ptr, ...) @virtio_error(ptr noundef %i.hl, ptr noundef nonnull @.str.31) #13
  %i.hm = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.hm(ptr noundef nonnull %i.n, ptr noundef nonnull @.str, i32 noundef 137) #13, !inline_history !15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8
  call void @virtqueue_detach_element(ptr noundef %i.ho, ptr noundef nonnull %i.w, i32 noundef 0) #13
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.n, ptr noundef nonnull @.str, i32 noundef 143) #13
  %i.hp = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.hp) #13
  %i.hq = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @qemu_sglist_destroy(ptr noundef nonnull %i.hq) #13
  call void @g_free(ptr noundef nonnull %i.w) #13
  br label %virtio_scsi_handle_ctrl_req.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.hr = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #13 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.w, i64 224 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8            ; 3 uses
  %i.hu = getelementptr i8, ptr %i.hr, i64 184
  %.val.i.i.i.i = load i64, ptr %i.hu, align 8
  %i.hv = and i64 %.val.i.i.i.i, 4294967296
  %.not.i.i.i50.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i50.i.i, label %bb.bi, label %virtio_tswap32.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 480
  %i.hx = load i8, ptr %i.hw, align 8
  %.fr.i.i.i = freeze i8 %i.hx                    ; 2 uses
  %.not.i.i51.i.i = icmp eq i8 %.fr.i.i.i, 0
  br i1 %.not.i.i51.i.i, label %bb.bj, label %virtio_vdev_is_big_endian.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

virtio_vdev_is_big_endian.exit.i.i.i:             ; preds = %bb.bi
  %i.hy = icmp eq i8 %.fr.i.i.i, 2
  %i.hz = call i32 @llvm.bswap.i32(i32 %i.ht)
  %spec.select.i.i.i = select i1 %i.hy, i32 %i.hz, i32 %i.ht
  br label %virtio_tswap32.exit.i.i

virtio_tswap32.exit.i.i:                          ; preds = %virtio_vdev_is_big_endian.exit.i.i.i, %bb.bh
  %i.ia = phi i32 [ %i.ht, %bb.bh ], [ %spec.select.i.i.i, %virtio_vdev_is_big_endian.exit.i.i.i ] ; 2 uses
  store i32 %i.ia, ptr %i.hs, align 8
  %i.ib = getelementptr i8, ptr %i.w, i64 218
  %.val37.i.i = load i8, ptr %i.ib, align 2
  %i.ic = getelementptr i8, ptr %i.w, i64 219
  %.val38.i.i = load i8, ptr %i.ic, align 1
  %i.id = zext i8 %.val37.i.i to i32
  %i.ie = shl nuw nsw i32 %i.id, 8
  %i.if = zext i8 %.val38.i.i to i32
  %.masked.i.i.i = and i32 %i.ie, 16128
  %i.ig = or disjoint i32 %.masked.i.i.i, %i.if
  %i.ih = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i52.i.i, label %trace_virtio_scsi_an_req.exit.i.i, label %bb.bk, !prof !16

bb.bk:                                            ; preds = %virtio_tswap32.exit.i.i
  %i.ii = load i16, ptr @_TRACE_VIRTIO_SCSI_AN_REQ_DSTATE, align 2
  %.not2.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not2.i.i.i, label %trace_virtio_scsi_an_req.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ij = load i32, ptr @qemu_loglevel, align 4
  %i.ik = and i32 %i.ij, 32768
  %.not3.i.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not3.i.i.i, label %trace_virtio_scsi_an_req.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.43, i32 noundef range(i32 0, 16384) %i.ig, i32 noundef %i.ia) #13
  br label %trace_virtio_scsi_an_req.exit.i.i

trace_virtio_scsi_an_req.exit.i.i:                ; preds = %bb.bm, %bb.bl, %bb.bk, %virtio_tswap32.exit.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.w, i64 196
  store i32 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  store i8 0, ptr %i.im, align 8
  br label %.thread.i.i

.thread63.i.i:                                    ; preds = %bb.bd, %qemu_lockable_auto_unlock.exit159.us.i.i.i, %rcu_read_unlock.exit.i.i.i, %bb.af, %qemu_lockable_auto_unlock.exit.us.i.i.i, %find_aio_context_for_tmf_tag.exit.i.i.i, %find_aio_context_for_tmf_tag.exit.thread.i.i.i
  call void @object_unref(ptr noundef %.0.i.i.i.i) #13
  br label %.thread.i.i

glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.sink.split.i: ; preds = %virtio_scsi_tmf_dec_remaining.exit.i.i.jt3.i, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt4.i
  %.sink.i.ph.i = phi i8 [ 12, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt4.i ], [ 3, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt3.i ]
  call void @g_hash_table_unref(ptr noundef nonnull %i.fn) #13
  br label %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i

glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i: ; preds = %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.sink.split.i, %bb.ba, %bb.az, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt3.i, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt4.i, %bb.ae, %bb.ad, %bb.z, %bb.y, %bb.t, %bb.s
  %.sink.i.i = phi i8 [ 12, %bb.t ], [ 12, %bb.ba ], [ 12, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt4.i ], [ 12, %bb.ae ], [ 12, %bb.z ], [ 3, %bb.az ], [ 3, %bb.ad ], [ 3, %bb.y ], [ 3, %bb.s ], [ 3, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt3.i ], [ %.sink.i.ph.i, %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.sink.split.i ]
  store i8 %.sink.i.i, ptr %i.bt, align 4
  call void @object_unref(ptr noundef %.0.i.i.i.i) #13
  br label %.thread.i.i

glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread.i: ; preds = %bb.ay, %virtio_scsi_tmf_dec_remaining.exit.i.i.jt2.i
  call void @object_unref(ptr noundef nonnull %.0.i.i.i.i) #13
  br label %virtio_scsi_handle_ctrl_req.exit.i

.thread.i.i:                                      ; preds = %glib_autoptr_cleanup_GHashTable.exit.i.i.jt2.thread21.i, %.thread63.i.i, %trace_virtio_scsi_an_req.exit.i.i
  %.pr.i.i = load i32, ptr %i.a, align 4          ; 2 uses
  %i.in = icmp eq i32 %.pr.i.i, 0
  br i1 %i.in, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %.thread.i.i
  %i.io = getelementptr i8, ptr %i.w, i64 222
  %.val35.i.i = load i8, ptr %i.io, align 2
  %i.ip = getelementptr i8, ptr %i.w, i64 223
end_hunk_1
