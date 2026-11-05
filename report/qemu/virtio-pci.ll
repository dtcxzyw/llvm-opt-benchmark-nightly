Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio-pci?download=true
inline.NumInlined: 283
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@virtio_pci_save_config:bb.a

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @virtio_pci_load_config(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = tail call i32 @pci_device_load(ptr noundef nonnull %0, ptr noundef %1) #13 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %virtio_bus_get_device.exit
  tail call void @msix_unuse_all_vectors(ptr noundef nonnull %0) #13
  tail call void @msix_load(ptr noundef nonnull %0, ptr noundef %1) #13
  %i.f = tail call i32 @msix_present(ptr noundef nonnull %0) #13
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @qemu_get_be16(ptr noundef %1) #13 ; 2 uses
  %i.h = trunc i32 %i.g to i16                    ; 2 uses
  %.not18 = icmp eq i16 %i.h, -1
  br i1 %.not18, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.g, 65535                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5388
  %i.k = load i32, ptr %i.j, align 4
  %.not19 = icmp ugt i32 %i.k, %i.i
  br i1 %.not19, label %bb.f, label %bb.g

.thread:                                          ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i16 -1, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i16 %i.h, ptr %i.m, align 8
  tail call void @msix_vector_use(ptr noundef nonnull %0, i32 noundef %i.i) #13
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e, %virtio_bus_get_device.exit
  %.0 = phi i32 [ -22, %bb.e ], [ %i.e, %virtio_bus_get_device.exit ], [ 0, %bb.f ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_save_queue(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = tail call i32 @msix_present(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %virtio_bus_get_device.exit
  %i.f = tail call zeroext i16 @virtio_queue_vector(ptr noundef %i.d, i32 noundef %1) #13
  %i.g = zext i16 %i.f to i32
  tail call void @qemu_put_be16(ptr noundef %2, i32 noundef %i.g) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %virtio_bus_get_device.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @virtio_pci_load_queue(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = tail call i32 @msix_present(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %virtio_bus_get_device.exit
  %i.f = tail call i32 @qemu_get_be16(ptr noundef %2) #13 ; 2 uses
  %i.g = trunc i32 %i.f to i16                    ; 2 uses
  %.not10 = icmp eq i16 %i.g, -1
  br i1 %.not10, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.f, 65535                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5388
  %i.j = load i32, ptr %i.i, align 4
  %.not11 = icmp ugt i32 %i.j, %i.h
  br i1 %.not11, label %bb.e, label %bb.f

.thread:                                          ; preds = %bb.c, %virtio_bus_get_device.exit
  tail call void @virtio_queue_set_vector(ptr noundef %i.d, i32 noundef %1, i16 noundef zeroext -1) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @virtio_queue_set_vector(ptr noundef %i.d, i32 noundef %1, i16 noundef zeroext %i.g) #13
  tail call void @msix_vector_use(ptr noundef nonnull %0, i32 noundef %i.h) #13
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  %.0 = phi i32 [ -22, %bb.d ], [ 0, %bb.e ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_save_extra_state(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @vmstate_save_state(ptr noundef %1, ptr noundef nonnull @vmstate_virtio_pci, ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) #13
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @virtio_pci_load_extra_state(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @vmstate_load_state(ptr noundef %1, ptr noundef nonnull @vmstate_virtio_pci, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef zeroext i1 @virtio_pci_has_extra_state(ptr nofree readnone captures(none) %0) #7 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @virtio_pci_query_guest_notifiers(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @msix_enabled(ptr noundef %0) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pci_irq_disabled(ptr noundef %0) #13
  %i.c = icmp ne i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @virtio_pci_set_guest_notifiers(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184      ; 7 uses
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %3 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]   ; 4 uses
  %4 = tail call ptr @object_get_class(ptr noundef %3) #13
  %5 = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %4, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13 ; 2 uses
  %6 = tail call i32 @msix_enabled(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %virtio_bus_get_device.exit.a

virtio_bus_get_device.exit.a:                     ; preds = %virtio_bus_get_device.exit
  %i.d = load i8, ptr @mshv_allowed, align 1, !range !10, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @kvm_msi_via_irqfd_allowed, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br label %7

7:                                                ; preds = %virtio_bus_get_device.exit.a, %virtio_bus_get_device.exit
  %8 = phi i1 [ false, %virtio_bus_get_device.exit ], [ %i.h, %virtio_bus_get_device.exit.a ] ; 5 uses
  %9 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024) ; 7 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 34096 ; 2 uses
  br i1 %2, label %.critedge, label %bb.c

bb.c:                                             ; preds = %7
  %i.i = load i32, ptr %10, align 16              ; 2 uses
  %.not89 = icmp eq i32 %i.i, 0
  br i1 %.not89, label %bb.as, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %9, %i.i
  br i1 %i.j, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.5, i32 noundef 1263, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_pci_set_guest_notifiers) #14
  unreachable

.critedge:                                        ; preds = %7
  store i32 %9, ptr %10, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34088 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not90 = icmp eq ptr %i.l, null
  br i1 %.not90, label %bb.f, label %bb.k

.critedge.thread:                                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34088 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not90125 = icmp eq ptr %i.n, null
  br i1 %.not90125, label %bb.f, label %.thread

bb.f:                                             ; preds = %.critedge.thread, %.critedge
  %i.o = phi ptr [ %i.m, %.critedge.thread ], [ %i.k, %.critedge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 481
  %i.q = load i8, ptr %i.p, align 1, !range !10, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, null
  %or.cond = or i1 %2, %i.u
  br i1 %or.cond, label %bb.k, label %.thread

.thread:                                          ; preds = %.critedge.thread, %bb.g
  %i.v = phi ptr [ %i.o, %bb.g ], [ %i.m, %.critedge.thread ] ; 5 uses
  tail call void @msix_unset_vector_notifiers(ptr noundef nonnull %0) #13
  %i.w = load ptr, ptr %i.v, align 8
  %.not91 = icmp eq ptr %i.w, null
  br i1 %.not91, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %virtio_bus_get_device.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  br label %virtio_bus_get_device.exit.i

virtio_bus_get_device.exit.i:                     ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %i.y, %bb.i ], [ null, %bb.h ]
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph.i, label %kvm_virtio_pci_vector_vq_release.exit

.lr.ph.i:                                         ; preds = %virtio_bus_get_device.exit.i, %bb.j
  %.07.i = phi i32 [ %i.ac, %bb.j ], [ 0, %virtio_bus_get_device.exit.i ] ; 3 uses
  %i.ab = tail call i32 @virtio_queue_get_num(ptr noundef %i.z, i32 noundef %.07.i) #13
  %.not.i93 = icmp eq i32 %i.ab, 0
  br i1 %.not.i93, label %kvm_virtio_pci_vector_vq_release.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  tail call fastcc void @kvm_virtio_pci_vector_release_one(ptr noundef nonnull %0, i32 noundef %.07.i)
  %i.ac = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ac, %9
  br i1 %exitcond.not.i, label %kvm_virtio_pci_vector_vq_release.exit, label %.lr.ph.i, !llvm.loop !0

kvm_virtio_pci_vector_vq_release.exit:            ; preds = %.lr.ph.i, %bb.j, %virtio_bus_get_device.exit.i
  tail call fastcc void @kvm_virtio_pci_vector_release_one(ptr noundef nonnull %0, i32 noundef -1)
  %i.ad = load ptr, ptr %i.v, align 8
  tail call void @g_free(ptr noundef %i.ad) #13
  store ptr null, ptr %i.v, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %.thread, %kvm_virtio_pci_vector_vq_release.exit, %bb.g, %bb.f
  %i.ae = phi ptr [ %i.v, %.thread ], [ %i.v, %kvm_virtio_pci_vector_vq_release.exit ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.k, %.critedge ] ; 3 uses
  %i.af = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ag = xor i1 %2, true
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.s
  %.080148 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.s ] ; 6 uses
  %i.ah = tail call i32 @virtio_queue_get_num(ptr noundef %3, i32 noundef %.080148) #13
  %.not92 = icmp eq i32 %i.ah, 0
  br i1 %.not92, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i94 = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not.i.i95 = icmp eq ptr %.val.i94, null
  br i1 %.not.i.i95, label %virtio_bus_get_device.exit.i96, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i94, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %virtio_bus_get_device.exit.i96

virtio_bus_get_device.exit.i96:                   ; preds = %bb.n, %bb.m
  %i.ak = phi ptr [ %i.aj, %bb.n ], [ null, %bb.m ] ; 4 uses
  %i.al = tail call ptr @object_get_class(ptr noundef %i.ak) #13
  %i.am = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.al, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %i.an = tail call i32 @virtio_set_guest_notifier(ptr noundef %i.ak, i32 noundef %.080148, i1 noundef zeroext %2, i1 noundef zeroext %8) #13 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %virtio_pci_set_guest_notifier.exit, label %bb.o

bb.o:                                             ; preds = %virtio_bus_get_device.exit.i96
  %i.ap = tail call i32 @msix_enabled(ptr noundef nonnull %0) #13
  %.not.i97 = icmp eq i32 %i.ap, 0
  br i1 %.not.i97, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 481
  %i.ar = load i8, ptr %i.aq, align 1, !range !10, !noundef !9
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 312
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.au, null
  br i1 %.not18.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void %i.au(ptr noundef nonnull %i.ak, i32 noundef %.080148, i1 noundef zeroext %i.ag) #13, !inline_history !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.av = add nuw nsw i32 %.080148, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %9
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.s, %bb.l, %bb.k
  %.080.lcssa = phi i32 [ 0, %bb.k ], [ %.080148, %bb.l ], [ %9, %bb.s ] ; 5 uses
  %.val.i98 = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not.i.i99 = icmp eq ptr %.val.i98, null
  br i1 %.not.i.i99, label %virtio_bus_get_device.exit.i100, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i98, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %virtio_bus_get_device.exit.i100

virtio_bus_get_device.exit.i100:                  ; preds = %bb.t, %._crit_edge
  %i.ay = phi ptr [ %i.ax, %bb.t ], [ null, %._crit_edge ] ; 4 uses
  %i.az = tail call ptr @object_get_class(ptr noundef %i.ay) #13
  %i.ba = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.az, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %i.bb = tail call i32 @virtio_set_guest_notifier(ptr noundef %i.ay, i32 noundef -1, i1 noundef zeroext %2, i1 noundef zeroext %8) #13 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %virtio_pci_set_guest_notifier.exit104, label %bb.u

bb.u:                                             ; preds = %virtio_bus_get_device.exit.i100
  %i.bd = tail call i32 @msix_enabled(ptr noundef nonnull %0) #13
  %.not.i101 = icmp eq i32 %i.bd, 0
  br i1 %.not.i101, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 481
  %i.bf = load i8, ptr %i.be, align 1, !range !10, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not18.i103 = icmp eq ptr %i.bi, null
  br i1 %.not18.i103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = xor i1 %2, true
  tail call void %i.bi(ptr noundef nonnull %i.ay, i32 noundef -1, i1 noundef zeroext %i.bj) #13, !inline_history !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  br i1 %8, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 481
  %i.bl = load i8, ptr %i.bk, align 1, !range !10, !noundef !9
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp ne ptr %i.bo, null
  %or.cond4 = and i1 %2, %i.bp
  br i1 %or.cond4, label %.thread132, label %bb.as

bb.ab:                                            ; preds = %bb.y
  br i1 %2, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %i.bq = tail call i32 @msix_nr_vectors_allocated(ptr noundef nonnull %0) #13
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = tail call noalias ptr @g_malloc0(i64 noundef %i.bs) #15
  store ptr %i.bt, ptr %i.ae, align 8
  %.val.i105 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not.i.i106 = icmp eq ptr %.val.i105, null
  br i1 %.not.i.i106, label %virtio_bus_get_device.exit.i107, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i105, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %virtio_bus_get_device.exit.i107

virtio_bus_get_device.exit.i107:                  ; preds = %bb.ad, %bb.ac
  %i.bw = phi ptr [ %i.bv, %bb.ad ], [ null, %bb.ac ]
  br i1 %i.af, label %.lr.ph.i108, label %.thread139

.lr.ph.i108:                                      ; preds = %virtio_bus_get_device.exit.i107, %bb.ae
  %.0911.i = phi i32 [ %i.bz, %bb.ae ], [ 0, %virtio_bus_get_device.exit.i107 ] ; 3 uses
  %i.bx = tail call i32 @virtio_queue_get_num(ptr noundef %i.bw, i32 noundef %.0911.i) #13
  %.not.i109 = icmp eq i32 %i.bx, 0
  br i1 %.not.i109, label %virtio_pci_set_guest_notifier.exit104, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i108
  %i.by = tail call fastcc i32 @kvm_virtio_pci_vector_use_one(ptr noundef nonnull %0, i32 noundef %.0911.i) ; 2 uses
  %i.bz = add nuw nsw i32 %.0911.i, 1             ; 2 uses
  %exitcond.not.i110 = icmp eq i32 %i.bz, %9
  br i1 %exitcond.not.i110, label %kvm_virtio_pci_vector_vq_use.exit, label %.lr.ph.i108, !llvm.loop !16

kvm_virtio_pci_vector_vq_use.exit:                ; preds = %bb.ae
  %i.ca = icmp slt i32 %i.by, 0
  br i1 %i.ca, label %virtio_pci_set_guest_notifier.exit104, label %bb.af

bb.af:                                            ; preds = %kvm_virtio_pci_vector_vq_use.exit
  %i.cb = tail call fastcc range(i32 -2147483648, 1) i32 @kvm_virtio_pci_vector_use_one(ptr noundef nonnull %0, i32 noundef -1) ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread140, label %bb.ag

.thread139:                                       ; preds = %virtio_bus_get_device.exit.i107
  %i.cd = tail call fastcc range(i32 -2147483648, 1) i32 @kvm_virtio_pci_vector_use_one(ptr noundef nonnull %0, i32 noundef -1) ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.thread140, label %.thread142

bb.ag:                                            ; preds = %bb.af
  %i.cf = tail call i32 @msix_set_vector_notifiers(ptr noundef nonnull %0, ptr noundef nonnull @virtio_pci_vector_unmask, ptr noundef nonnull @virtio_pci_vector_mask, ptr noundef nonnull @virtio_pci_vector_poll) #13 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.thread136, label %bb.as

.thread142:                                       ; preds = %.thread139
  %i.ch = tail call i32 @msix_set_vector_notifiers(ptr noundef nonnull %0, ptr noundef nonnull @virtio_pci_vector_unmask, ptr noundef nonnull @virtio_pci_vector_mask, ptr noundef nonnull @virtio_pci_vector_poll) #13 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.thread136, label %bb.as

.thread132:                                       ; preds = %bb.aa
  %i.cj = tail call i32 @msix_set_vector_notifiers(ptr noundef nonnull %0, ptr noundef nonnull @virtio_pci_vector_unmask, ptr noundef nonnull @virtio_pci_vector_mask, ptr noundef nonnull @virtio_pci_vector_poll) #13 ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %virtio_pci_set_guest_notifier.exit104, label %bb.as

.thread136:                                       ; preds = %bb.ag, %.thread142
  %i.cl = phi i32 [ %i.ch, %.thread142 ], [ %i.cf, %bb.ag ]
  tail call fastcc void @kvm_virtio_pci_vector_vq_release(ptr noundef nonnull %0, i32 noundef %9)
  br label %.thread140

.thread140:                                       ; preds = %bb.af, %.thread139, %.thread136
  %.081138 = phi i32 [ %i.cl, %.thread136 ], [ %i.cd, %.thread139 ], [ %i.cb, %bb.af ]
  tail call fastcc void @kvm_virtio_pci_vector_release_one(ptr noundef nonnull %0, i32 noundef -1)
  br label %virtio_pci_set_guest_notifier.exit104

virtio_pci_set_guest_notifier.exit104:            ; preds = %.lr.ph.i108, %.thread132, %virtio_bus_get_device.exit.i100, %.thread140, %kvm_virtio_pci_vector_vq_use.exit
  %.182 = phi i32 [ %i.cj, %.thread132 ], [ %i.by, %kvm_virtio_pci_vector_vq_use.exit ], [ %.081138, %.thread140 ], [ %i.bb, %virtio_bus_get_device.exit.i100 ], [ -1, %.lr.ph.i108 ] ; 5 uses
  %i.cm = xor i1 %2, true
  %.val.i111 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not.i.i112 = icmp eq ptr %.val.i111, null
  br i1 %.not.i.i112, label %virtio_bus_get_device.exit.i113, label %bb.ah

bb.ah:                                            ; preds = %virtio_pci_set_guest_notifier.exit104
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i111, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  br label %virtio_bus_get_device.exit.i113

virtio_bus_get_device.exit.i113:                  ; preds = %bb.ah, %virtio_pci_set_guest_notifier.exit104
  %i.cp = phi ptr [ %i.co, %bb.ah ], [ null, %virtio_pci_set_guest_notifier.exit104 ] ; 4 uses
  %i.cq = tail call ptr @object_get_class(ptr noundef %i.cp) #13
  %i.cr = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.cq, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %i.cs = tail call i32 @virtio_set_guest_notifier(ptr noundef %i.cp, i32 noundef -1, i1 noundef zeroext %i.cm, i1 noundef zeroext %8) #13
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %virtio_pci_set_guest_notifier.exit, label %bb.ai

bb.ai:                                            ; preds = %virtio_bus_get_device.exit.i113
  %i.cu = tail call i32 @msix_enabled(ptr noundef nonnull %0) #13
  %.not.i114 = icmp eq i32 %i.cu, 0
  br i1 %.not.i114, label %bb.aj, label %virtio_pci_set_guest_notifier.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 481
  %i.cw = load i8, ptr %i.cv, align 1, !range !10, !noundef !9
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ak, label %virtio_pci_set_guest_notifier.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not18.i116 = icmp eq ptr %i.cz, null
  br i1 %.not18.i116, label %virtio_pci_set_guest_notifier.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void %i.cz(ptr noundef nonnull %i.cp, i32 noundef -1, i1 noundef zeroext %2) #13, !inline_history !14
  br label %virtio_pci_set_guest_notifier.exit

virtio_pci_set_guest_notifier.exit:               ; preds = %virtio_bus_get_device.exit.i96, %bb.al, %bb.ak, %bb.aj, %bb.ai, %virtio_bus_get_device.exit.i113
  %.080146 = phi i32 [ %.080.lcssa, %bb.al ], [ %.080.lcssa, %virtio_bus_get_device.exit.i113 ], [ %.080.lcssa, %bb.ai ], [ %.080.lcssa, %bb.aj ], [ %.080.lcssa, %bb.ak ], [ %.080148, %virtio_bus_get_device.exit.i96 ]
  %.2 = phi i32 [ %.182, %bb.al ], [ %.182, %virtio_bus_get_device.exit.i113 ], [ %.182, %bb.ai ], [ %.182, %bb.aj ], [ %.182, %bb.ak ], [ %i.an, %virtio_bus_get_device.exit.i96 ]
  br i1 %2, label %.preheader, label %bb.am

.preheader:                                       ; preds = %virtio_pci_set_guest_notifier.exit
  %i.da = add i32 %.080146, -1                    ; 2 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %.lr.ph151, label %._crit_edge152

bb.am:                                            ; preds = %virtio_pci_set_guest_notifier.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.5, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_pci_set_guest_notifiers) #14
  unreachable

.lr.ph151:                                        ; preds = %.preheader, %virtio_pci_set_guest_notifier.exit124
  %i.dc = phi i32 [ %i.dq, %virtio_pci_set_guest_notifier.exit124 ], [ %i.da, %.preheader ] ; 4 uses
  %.val.i118 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not.i.i119 = icmp eq ptr %.val.i118, null
  br i1 %.not.i.i119, label %virtio_bus_get_device.exit.i120, label %bb.an

bb.an:                                            ; preds = %.lr.ph151
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i118, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  br label %virtio_bus_get_device.exit.i120

virtio_bus_get_device.exit.i120:                  ; preds = %bb.an, %.lr.ph151
  %i.df = phi ptr [ %i.de, %bb.an ], [ null, %.lr.ph151 ] ; 4 uses
  %i.dg = tail call ptr @object_get_class(ptr noundef %i.df) #13
  %i.dh = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.dg, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %i.di = tail call i32 @virtio_set_guest_notifier(ptr noundef %i.df, i32 noundef %i.dc, i1 noundef zeroext false, i1 noundef zeroext %8) #13
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %virtio_pci_set_guest_notifier.exit124, label %bb.ao

bb.ao:                                            ; preds = %virtio_bus_get_device.exit.i120
  %i.dk = tail call i32 @msix_enabled(ptr noundef nonnull %0) #13
  %.not.i121 = icmp eq i32 %i.dk, 0
  br i1 %.not.i121, label %bb.ap, label %virtio_pci_set_guest_notifier.exit124

bb.ap:                                            ; preds = %bb.ao
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 481
  %i.dm = load i8, ptr %i.dl, align 1, !range !10, !noundef !9
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.aq, label %virtio_pci_set_guest_notifier.exit124

bb.aq:                                            ; preds = %bb.ap
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 312
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not18.i123 = icmp eq ptr %i.dp, null
  br i1 %.not18.i123, label %virtio_pci_set_guest_notifier.exit124, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void %i.dp(ptr noundef nonnull %i.df, i32 noundef %i.dc, i1 noundef zeroext true) #13, !inline_history !14
  br label %virtio_pci_set_guest_notifier.exit124

virtio_pci_set_guest_notifier.exit124:            ; preds = %virtio_bus_get_device.exit.i120, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.dq = add nsw i32 %i.dc, -1
  %i.dr = icmp sgt i32 %i.dc, 0
  br i1 %i.dr, label %.lr.ph151, label %._crit_edge152, !llvm.loop !17

._crit_edge152:                                   ; preds = %virtio_pci_set_guest_notifier.exit124, %.preheader
  %i.ds = load ptr, ptr %i.ae, align 8
  tail call void @g_free(ptr noundef %i.ds) #13
  store ptr null, ptr %i.ae, align 8
  br label %bb.as

bb.as:                                            ; preds = %.thread142, %.thread132, %bb.z, %bb.aa, %bb.ab, %bb.ag, %bb.c, %._crit_edge152
  %.0 = phi i32 [ %.2, %._crit_edge152 ], [ 0, %bb.c ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %.thread132 ], [ 0, %.thread142 ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @virtio_pci_set_host_notifier_mr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1023
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 5372
  %.val = load i8, ptr %i.b, align 4, !range !10, !noundef !9
  %i.c = trunc nuw i8 %.val to i1
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 5368       ; 2 uses
  %.val15 = load i32, ptr %i.d, align 8
  %i.e = and i32 %.val15, 8
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not.i, i64 4, i64 4096
  %i.g = tail call i64 @memory_region_size(ptr noundef %2) #13
  %.not = icmp eq i64 %i.g, %i.f
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val14 = load i32, ptr %i.d, align 8
  %i.h = and i32 %.val14, 8
  %.not.i16 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i16, i32 2, i32 12
  %i.j = shl i32 %1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3904
  %i.l = sext i32 %i.j to i64
  tail call void @memory_region_add_subregion_overlap(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef %2, i32 noundef 1) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3904
  tail call void @memory_region_del_subregion(ptr noundef nonnull %i.m, ptr noundef %2) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_vmstate_change(ptr noundef %0, i1 noundef zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34104 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 34184
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  br i1 %1, label %bb.c, label %bb.h

bb.c:                                             ; preds = %virtio_bus_get_device.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, 2
  %.not9 = icmp eq i8 %i.k, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 4
  %.not10 = icmp eq i32 %i.q, 0
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = or disjoint i32 %i.p, 4
  tail call void @pci_default_write_config(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %i.r, i32 noundef 1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.s = tail call i32 @virtio_bus_start_ioeventfd(ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %virtio_bus_get_device.exit
  tail call void @virtio_bus_stop_ioeventfd(ptr noundef nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_pre_plugged(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
virtio_bus_get_device.exit:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 87, ptr noundef nonnull @__func__.VIRTIO_PCI) #13 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 34184
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 5372
  %.val5 = load i8, ptr %i.e, align 4, !range !10, !noundef !9
  %i.f = trunc nuw i8 %.val5 to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.h = select i1 %i.f, i64 1073741824, i64 5368709120
  %i.i = or i64 %i.h, %.pre
  store i64 %i.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_device_plugged(ptr noundef %0, ptr noundef %1) #0 {
virtio_bus_get_device.exit:
  %.sroa.7 = alloca { i8, [2 x i8] }, align 8     ; 4 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 87, ptr noundef nonnull @__func__.VIRTIO_PCI) #13 ; 72 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 34104 ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 5376
  %.val111 = load i32, ptr %i.c, align 16
  %i.d = icmp eq i32 %.val111, 2                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5368 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr i8, ptr %i.a, i64 34184
  %.val = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 4294967296
  %.not120 = icmp eq i64 %i.m, 0
  %i.n = getelementptr i8, ptr %i.a, i64 5372     ; 2 uses
  br i1 %.not120, label %bb.a, label %virtio_bus_get_device.exit._crit_edge

virtio_bus_get_device.exit._crit_edge:            ; preds = %virtio_bus_get_device.exit
  %.val109.pre = load i8, ptr %i.n, align 4, !range !10
  %i.o = trunc nuw i8 %.val109.pre to i1
  br label %bb.c

bb.a:                                             ; preds = %virtio_bus_get_device.exit
  store i8 1, ptr %i.n, align 4
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 2022, ptr noundef nonnull @__func__.virtio_pci_device_plugged, ptr noundef nonnull @.str.50) #13
end_hunk_0
