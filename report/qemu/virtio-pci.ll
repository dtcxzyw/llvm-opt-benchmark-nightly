inline.NumInlined: 283
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@virtio_pci_vector_unmask:bb.a

.loopexit:                                        ; preds = %bb.v, %virtio_pci_one_vector_mask.exit, %._crit_edge, %bb.h
  %.051 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.h ], [ %.048, %virtio_pci_one_vector_mask.exit ], [ %.048, %bb.v ]
  ret i32 %.051
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_vector_mask(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184      ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.e = trunc i32 %1 to i16
  %i.f = tail call ptr @virtio_vector_first_queue(ptr noundef %i.d, i16 noundef zeroext %i.e) #13 ; 2 uses
  %.not33 = icmp eq ptr %i.f, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %virtio_bus_get_device.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34096
  %i.h = getelementptr i8, ptr %0, i64 34088
  %i.i = zext i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %virtio_pci_one_vector_mask.exit
  %.034 = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %virtio_pci_one_vector_mask.exit ] ; 3 uses
  %i.j = tail call zeroext i16 @virtio_get_queue_index(ptr noundef nonnull %.034) #13
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = tail call ptr @virtio_queue_get_guest_notifier(ptr noundef nonnull %.034) #13
  %i.m = tail call i32 @virtio_queue_get_num(ptr noundef %i.d, i32 noundef %i.k) #13
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.g, align 16
  %i.o = icmp sgt i32 %i.n, %i.k
  br i1 %i.o, label %bb.e, label %virtio_pci_one_vector_mask.exit

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %virtio_bus_get_device.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  br label %virtio_bus_get_device.exit.i

virtio_bus_get_device.exit.i:                     ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ %i.q, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.s = tail call ptr @object_get_class(ptr noundef %i.r) #13
  %i.t = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.s, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 481
  %i.v = load i8, ptr %i.u, align 1, !range !8, !noundef !7
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %virtio_bus_get_device.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i26 = icmp eq ptr %i.y, null
  br i1 %.not.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.y(ptr noundef nonnull %i.r, i32 noundef range(i32 -1, 65536) %i.k, i1 noundef zeroext true) #13, !inline_history !16
  br label %virtio_pci_one_vector_mask.exit

bb.i:                                             ; preds = %bb.g, %virtio_bus_get_device.exit.i
  %.val9.i = load ptr, ptr %i.h, align 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val9.i, i64 %i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = tail call i32 @accel_irqchip_remove_irqfd_notifier_gsi(ptr noundef %i.l, i32 noundef %i.ab) #13
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %virtio_pci_one_vector_mask.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.5, i32 noundef 909, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_virtio_pci_irqfd_release) #14
  unreachable

virtio_pci_one_vector_mask.exit:                  ; preds = %bb.i, %bb.h, %bb.d
  %i.ae = tail call ptr @virtio_vector_next_queue(ptr noundef nonnull %.034) #13 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !18

._crit_edge:                                      ; preds = %virtio_pci_one_vector_mask.exit, %bb.c, %virtio_bus_get_device.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp eq i32 %1, %i.ah
  br i1 %i.ai, label %bb.k, label %virtio_pci_one_vector_mask.exit32

bb.k:                                             ; preds = %._crit_edge
  %i.aj = tail call ptr @virtio_config_get_guest_notifier(ptr noundef nonnull %i.d) #13
  %.val.i27 = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not.i.i28 = icmp eq ptr %.val.i27, null
  br i1 %.not.i.i28, label %virtio_bus_get_device.exit.i29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i27, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  br label %virtio_bus_get_device.exit.i29

virtio_bus_get_device.exit.i29:                   ; preds = %bb.l, %bb.k
  %i.am = phi ptr [ %i.al, %bb.l ], [ null, %bb.k ] ; 3 uses
  %i.an = tail call ptr @object_get_class(ptr noundef %i.am) #13
  %i.ao = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.an, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 481
  %i.aq = load i8, ptr %i.ap, align 1, !range !8, !noundef !7
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %virtio_bus_get_device.exit.i29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 312
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.at(ptr noundef nonnull %i.am, i32 noundef -1, i1 noundef zeroext true) #13, !inline_history !16
  br label %virtio_pci_one_vector_mask.exit32

bb.o:                                             ; preds = %bb.m, %virtio_bus_get_device.exit.i29
  %i.au = getelementptr i8, ptr %0, i64 34088
  %.val9.i30 = load ptr, ptr %i.au, align 8
  %i.av = zext nneg i32 %1 to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.val9.i30, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = tail call i32 @accel_irqchip_remove_irqfd_notifier_gsi(ptr noundef %i.aj, i32 noundef %i.ay) #13
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %virtio_pci_one_vector_mask.exit32, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.5, i32 noundef 909, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_virtio_pci_irqfd_release) #14
  unreachable

virtio_pci_one_vector_mask.exit32:                ; preds = %bb.o, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_pci_vector_poll(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184      ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #13
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34096 ; 2 uses
  %i.h = load i32, ptr %i.g, align 16
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %virtio_pci_get_notifier.exit.thread

.lr.ph:                                           ; preds = %virtio_bus_get_device.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34088
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.064 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bb.k ] ; 5 uses
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %virtio_bus_get_device.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  br label %virtio_bus_get_device.exit.i

virtio_bus_get_device.exit.i:                     ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.o = load ptr, ptr %i.j, align 8
  %.not.i39 = icmp eq ptr %i.o, null
  br i1 %.not.i39, label %bb.e, label %bb.f

bb.e:                                             ; preds = %virtio_bus_get_device.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 4
  %.not18.i = icmp eq i8 %i.r, 0
  br i1 %.not18.i, label %bb.f, label %virtio_pci_get_notifier.exit.thread

bb.f:                                             ; preds = %bb.e, %virtio_bus_get_device.exit.i
  %i.s = tail call i32 @virtio_queue_get_num(ptr noundef %i.n, i32 noundef %.064) #13
  %.not19.i = icmp eq i32 %i.s, 0
  br i1 %.not19.i, label %virtio_pci_get_notifier.exit.thread, label %virtio_pci_get_notifier.exit

virtio_pci_get_notifier.exit:                     ; preds = %bb.f
  %i.t = tail call zeroext i16 @virtio_queue_vector(ptr noundef %i.n, i32 noundef %.064) #13
  %i.u = tail call ptr @virtio_get_queue(ptr noundef %i.n, i32 noundef %.064) #13
  %i.v = tail call ptr @virtio_queue_get_guest_notifier(ptr noundef %i.u) #13
  %.256 = zext i16 %i.t to i32                    ; 4 uses
  %i.w = icmp ule i32 %1, %.256
  %.not = icmp ugt i32 %2, %.256
  %or.cond = and i1 %i.w, %.not
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %virtio_pci_get_notifier.exit
  %i.x = tail call zeroext i1 @msix_is_masked(ptr noundef nonnull %0, i32 noundef %.256) #13
  br i1 %i.x, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.y, null
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call zeroext i1 %i.y(ptr noundef %i.d, i32 noundef %.064) #13
  br i1 %i.z, label %.sink.split, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call i32 @event_notifier_test_and_clear(ptr noundef %i.v) #13
  %.not34 = icmp eq i32 %i.aa, 0
  br i1 %.not34, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  tail call void @msix_set_pending(ptr noundef nonnull %0, i32 noundef %.256) #13
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.j, %virtio_pci_get_notifier.exit, %bb.g
  %i.ab = add nuw nsw i32 %.064, 1                ; 2 uses
  %i.ac = load i32, ptr %i.g, align 16
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %virtio_pci_get_notifier.exit.thread, !llvm.loop !19

virtio_pci_get_notifier.exit.thread:              ; preds = %bb.k, %bb.f, %bb.e, %virtio_bus_get_device.exit
  %.val.i40 = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not.i.i41 = icmp eq ptr %.val.i40, null
  br i1 %.not.i.i41, label %virtio_bus_get_device.exit.i42, label %bb.l

bb.l:                                             ; preds = %virtio_pci_get_notifier.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i40, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  br label %virtio_bus_get_device.exit.i42

virtio_bus_get_device.exit.i42:                   ; preds = %bb.l, %virtio_pci_get_notifier.exit.thread
  %i.ag = phi ptr [ %i.af, %bb.l ], [ null, %virtio_pci_get_notifier.exit.thread ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 34088
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i43 = icmp eq ptr %i.ai, null
  br i1 %.not.i43, label %bb.m, label %bb.n

bb.m:                                             ; preds = %virtio_bus_get_device.exit.i42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, 4
  %.not18.i45 = icmp eq i8 %i.al, 0
  br i1 %.not18.i45, label %bb.n, label %virtio_pci_get_notifier.exit46.thread

bb.n:                                             ; preds = %bb.m, %virtio_bus_get_device.exit.i42
  %i.am = tail call ptr @virtio_config_get_guest_notifier(ptr noundef %i.ag) #13
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = zext i16 %i.ao to i32                   ; 4 uses
  %i.aq = icmp ule i32 %1, %i.ap
  %.not35 = icmp ugt i32 %2, %i.ap
  %or.cond38 = and i1 %i.aq, %.not35
  br i1 %or.cond38, label %bb.o, label %virtio_pci_get_notifier.exit46.thread

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call zeroext i1 @msix_is_masked(ptr noundef nonnull %0, i32 noundef %i.ap) #13
  br i1 %i.ar, label %bb.p, label %virtio_pci_get_notifier.exit46.thread

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not36 = icmp eq ptr %i.at, null
  br i1 %.not36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = tail call zeroext i1 %i.at(ptr noundef %i.d, i32 noundef -1) #13
  br i1 %i.au, label %virtio_pci_get_notifier.exit46.thread.sink.split, label %virtio_pci_get_notifier.exit46.thread

bb.r:                                             ; preds = %bb.p
  %i.av = tail call i32 @event_notifier_test_and_clear(ptr noundef %i.am) #13
  %.not37 = icmp eq i32 %i.av, 0
  br i1 %.not37, label %virtio_pci_get_notifier.exit46.thread, label %virtio_pci_get_notifier.exit46.thread.sink.split

virtio_pci_get_notifier.exit46.thread.sink.split: ; preds = %bb.r, %bb.q
  tail call void @msix_set_pending(ptr noundef nonnull %0, i32 noundef %i.ap) #13
  br label %virtio_pci_get_notifier.exit46.thread

virtio_pci_get_notifier.exit46.thread:            ; preds = %virtio_pci_get_notifier.exit46.thread.sink.split, %bb.m, %bb.q, %bb.r, %bb.n, %bb.o
  ret void
}

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @kvm_virtio_pci_vector_release_one(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 34184      ; 2 uses
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %virtio_bus_get_device.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  br label %virtio_bus_get_device.exit

virtio_bus_get_device.exit:                       ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #13
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #13
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %virtio_bus_get_device.exit.i, label %bb.c

bb.c:                                             ; preds = %virtio_bus_get_device.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  br label %virtio_bus_get_device.exit.i

virtio_bus_get_device.exit.i:                     ; preds = %bb.c, %virtio_bus_get_device.exit
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %virtio_bus_get_device.exit ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34088 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i13 = icmp eq ptr %i.k, null
  br i1 %.not.i13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %virtio_bus_get_device.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 4
  %.not18.i = icmp eq i8 %i.n, 0
  br i1 %.not18.i, label %bb.e, label %kvm_virtio_pci_vq_vector_release.exit

bb.e:                                             ; preds = %bb.d, %virtio_bus_get_device.exit.i
  %i.o = icmp eq i32 %1, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @virtio_config_get_guest_notifier(ptr noundef %i.i) #13
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.r = load i16, ptr %i.q, align 8
  br label %virtio_pci_get_notifier.exit

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i32 @virtio_queue_get_num(ptr noundef %i.i, i32 noundef %1) #13
  %.not19.i = icmp eq i32 %i.s, 0
  br i1 %.not19.i, label %kvm_virtio_pci_vq_vector_release.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call zeroext i16 @virtio_queue_vector(ptr noundef %i.i, i32 noundef %1) #13
  %i.u = tail call ptr @virtio_get_queue(ptr noundef %i.i, i32 noundef %1) #13
  %i.v = tail call ptr @virtio_queue_get_guest_notifier(ptr noundef %i.u) #13
  br label %virtio_pci_get_notifier.exit

virtio_pci_get_notifier.exit:                     ; preds = %bb.h, %bb.f
  %.016.in = phi i16 [ %i.r, %bb.f ], [ %i.t, %bb.h ] ; 3 uses
  %.0 = phi ptr [ %i.p, %bb.f ], [ %i.v, %bb.h ]
  %.016 = zext i16 %.016.in to i32
  %i.w = tail call i32 @msix_nr_vectors_allocated(ptr noundef nonnull %0) #13
  %.not = icmp ugt i32 %i.w, %.016
  br i1 %.not, label %bb.i, label %kvm_virtio_pci_vq_vector_release.exit

bb.i:                                             ; preds = %virtio_pci_get_notifier.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 481
  %i.y = load i8, ptr %i.x, align 1, !range !8, !noundef !7
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %kvm_virtio_pci_irqfd_release.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not10 = icmp eq ptr %i.ab, null
  br i1 %.not10, label %kvm_virtio_pci_irqfd_release.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val11 = load ptr, ptr %i.j, align 8
  %i.ac = zext i16 %.016.in to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.val11, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = tail call i32 @accel_irqchip_remove_irqfd_notifier_gsi(ptr noundef %.0, i32 noundef %i.af) #13
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %kvm_virtio_pci_irqfd_release.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.5, i32 noundef 909, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_virtio_pci_irqfd_release) #14
  unreachable

end_hunk_0
