inline.NumInlined: 32
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@type_register_static_array
declare void @type_register_static_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_ethlite_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 83, ptr noundef nonnull @__func__.XILINX_ETHLITE) #4 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.c) #4
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  tail call void @sysbus_init_mmio(ptr noundef %i.d, ptr noundef nonnull %i.e) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_ethlite_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @xilinx_ethlite_realize, ptr %i.b, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @xilinx_ethlite_reset) #4
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @xilinx_ethlite_properties, i64 noundef 5) #4
  ret void
}

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_ethlite_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 83, ptr noundef nonnull @__func__.XILINX_ETHLITE) #4 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 321, ptr noundef nonnull @__func__.xilinx_ethlite_realize, ptr noundef nonnull @.str.7) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 12 uses
  tail call void @memory_region_init(ptr noundef nonnull %i.f, ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 8192) #4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9344 ; 5 uses
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.g, i64 noundef 1120, ptr noundef nonnull @.str.9) #4
  %i.h = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @qdev_prop_set_string(ptr noundef %i.h, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #4
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.j = tail call i64 @memory_region_size(ptr noundef nonnull %i.f) #4
  tail call void @qdev_prop_set_uint64(ptr noundef %i.i, ptr noundef nonnull @.str.11, i64 noundef %i.j) #4
  %i.k = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.l = tail call zeroext i1 @sysbus_realize(ptr noundef %i.k, ptr noundef nonnull @error_fatal) #4 ; 0 uses
  %i.m = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.n = tail call ptr @sysbus_mmio_get_region(ptr noundef %i.m, i32 noundef 0) #4
  tail call void @memory_region_add_subregion_overlap(ptr noundef nonnull %i.f, i64 noundef 0, ptr noundef %i.n, i32 noundef -1) #4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 10464 ; 5 uses
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.o, i64 noundef 1120, ptr noundef nonnull @.str.9) #4
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @qdev_prop_set_string(ptr noundef %i.p, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #4
  %i.q = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @qdev_prop_set_uint64(ptr noundef %i.q, ptr noundef nonnull @.str.11, i64 noundef 16) #4
  %i.r = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.s = tail call zeroext i1 @sysbus_realize(ptr noundef %i.r, ptr noundef nonnull @error_fatal) #4 ; 0 uses
  %i.t = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.u = tail call ptr @sysbus_mmio_get_region(ptr noundef %i.t, i32 noundef 0) #4
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 2020, ptr noundef %i.u) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 11584 ; 2 uses
  %i.w = zext i1 %i.e to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr @eth_porttx_ops, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr @eth_portrx_ops, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 12128 ; 2 uses
  %i.aa = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.z, ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef 2020, ptr noundef nonnull @error_abort) #4 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 0, ptr noundef nonnull %i.z) #4
  tail call void @memory_region_init_io(ptr noundef nonnull %i.v, ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16, i64 noundef 12) #4
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 2036, ptr noundef nonnull %i.v) #4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12400 ; 2 uses
  %i.ac = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.ab, ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef 2020, ptr noundef nonnull @error_abort) #4 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 4096, ptr noundef nonnull %i.ab) #4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 11856 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.ad, ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.20, i64 noundef 4) #4
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 6140, ptr noundef nonnull %i.ad) #4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12688 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 13232 ; 2 uses
  %i.ag = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.af, ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef 2020, ptr noundef nonnull @error_abort) #4 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 2048, ptr noundef nonnull %i.af) #4
  tail call void @memory_region_init_io(ptr noundef nonnull %i.ae, ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, i64 noundef 12) #4
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 4084, ptr noundef nonnull %i.ae) #4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 13504 ; 2 uses
  %i.ai = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.ah, ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef 2020, ptr noundef nonnull @error_abort) #4 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 6144, ptr noundef nonnull %i.ah) #4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12960 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.aj, ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19, i64 noundef 4) #4
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.f, i64 noundef 8188, ptr noundef nonnull %i.aj) #4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 3 uses
  tail call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.ak) #4
  %i.al = tail call ptr @object_get_typename(ptr noundef %0) #4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = tail call ptr @qemu_new_nic(ptr noundef nonnull @net_xilinx_ethlite_info, ptr noundef nonnull %i.ak, ptr noundef %i.al, ptr noundef %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = tail call ptr @qemu_get_queue(ptr noundef %i.ap) #4
  tail call void @qemu_format_nic_info_str(ptr noundef %i.ar, ptr noundef nonnull %i.ak) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_ethlite_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 83, ptr noundef nonnull @__func__.XILINX_ETHLITE) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  store i32 0, ptr %i.b, align 16
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @memory_region_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @object_initialize_child_internal(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_uint64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @memory_region_size(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @sysbus_realize(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion_overlap(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @sysbus_mmio_get_region(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_new_nic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @port_tx_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = icmp ult i64 %1, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 144, ptr noundef nonnull @__func__.port_tx_read, ptr noundef null) #5
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %switch.idx.mult = and i64 %1, 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %switch.idx.mult
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12672
  %.0 = load i32, ptr %i.c, align 4
  %i.d = zext i32 %.0 to i64
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @port_tx_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = lshr i32 %i.a, 11
  %i.c = and i32 %i.b, 1                          ; 5 uses
  %i.d = lshr i64 %1, 2
  switch i64 %i.d, label %bb.p [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %2 to i32
  %i.f = zext nneg i32 %i.c to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = trunc i64 %2 to i32
  %i.h = zext nneg i32 %i.c to i64
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.i = and i64 %2, 3
  switch i64 %i.i, label %.eth_pulse_irq.exit_crit_edge [
    i64 1, label %bb.e
    i64 3, label %bb.m
  ]

.eth_pulse_irq.exit_crit_edge:                    ; preds = %bb.d
  %.pre = zext nneg i32 %i.c to i64
  br label %eth_pulse_irq.exit

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.c to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw [1104 x i8], ptr %0, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12672
  %i.m = load i32, ptr %i.l, align 16             ; 3 uses
  %i.n = icmp ugt i32 %i.m, 2019
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = zext i32 %i.m to i64
  %i.p = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %trace_ethlite_pkt_tx_size_too_big.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.q = load i16, ptr @_TRACE_ETHLITE_PKT_TX_SIZE_TOO_BIG_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.q, 0
  br i1 %.not1.i, label %trace_ethlite_pkt_tx_size_too_big.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 32768
  %.not2.i = icmp eq i32 %i.s, 0
  br i1 %.not2.i, label %trace_ethlite_pkt_tx_size_too_big.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i64 noundef range(i64 2020, 4294967296) %i.o) #4
  br label %trace_ethlite_pkt_tx_size_too_big.exit

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @qemu_get_queue(ptr noundef %i.u) #4
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12128
  %i.x = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.w) #4
  %i.y = tail call i64 @qemu_send_packet(ptr noundef %i.v, ptr noundef %i.x, i32 noundef %i.m) #4 ; 0 uses
  br label %trace_ethlite_pkt_tx_size_too_big.exit

trace_ethlite_pkt_tx_size_too_big.exit:           ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 12680
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 8
  %.not31 = icmp eq i32 %i.ab, 0
  br i1 %.not31, label %eth_pulse_irq.exit, label %bb.k

bb.k:                                             ; preds = %trace_ethlite_pkt_tx_size_too_big.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12676
  %i.ad = load i32, ptr %i.ac, align 4
  %.not.i32 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i32, label %eth_pulse_irq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.af = load ptr, ptr %i.ae, align 16           ; 2 uses
  tail call void @qemu_set_irq(ptr noundef %i.af, i32 noundef 1) #4
  tail call void @qemu_set_irq(ptr noundef %i.af, i32 noundef 0) #4
  br label %eth_pulse_irq.exit

bb.m:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ah = zext nneg i32 %i.c to i64               ; 4 uses
  %i.ai = getelementptr inbounds nuw [1104 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12128
  %i.ak = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.aj) #4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ag, ptr noundef nonnull align 1 dereferenceable(6) %i.ak, i64 noundef 6, i1 noundef false) #4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12680
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 8
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %eth_pulse_irq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12676
  %i.ap = load i32, ptr %i.ao, align 4
  %.not.i33 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i33, label %eth_pulse_irq.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ar = load ptr, ptr %i.aq, align 16           ; 2 uses
  tail call void @qemu_set_irq(ptr noundef %i.ar, i32 noundef 1) #4
  tail call void @qemu_set_irq(ptr noundef %i.ar, i32 noundef 0) #4
  br label %eth_pulse_irq.exit

eth_pulse_irq.exit:                               ; preds = %.eth_pulse_irq.exit_crit_edge, %bb.o, %bb.n, %bb.l, %bb.k, %trace_ethlite_pkt_tx_size_too_big.exit, %bb.m
  %.pre-phi = phi i64 [ %.pre, %.eth_pulse_irq.exit_crit_edge ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %i.j, %bb.l ], [ %i.j, %bb.k ], [ %i.j, %trace_ethlite_pkt_tx_size_too_big.exit ], [ %i.ah, %bb.m ]
  %i.as = trunc i64 %2 to i32
  %i.at = and i32 %i.as, -4
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 190, ptr noundef nonnull @__func__.port_tx_write, ptr noundef null) #5
  unreachable

bb.q:                                             ; preds = %eth_pulse_irq.exit, %bb.c, %bb.b
  %.pre-phi.sink = phi i64 [ %.pre-phi, %eth_pulse_irq.exit ], [ %i.h, %bb.c ], [ %i.f, %bb.b ]
  %.sink37 = phi i64 [ 12680, %eth_pulse_irq.exit ], [ 12676, %bb.c ], [ 12672, %bb.b ]
  %.sink = phi i32 [ %i.at, %eth_pulse_irq.exit ], [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %4 = getelementptr inbounds nuw [1104 x i8], ptr %0, i64 %.pre-phi.sink
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %.sink37
  store i32 %.sink, ptr %5, align 4
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @qemu_send_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare ptr @memory_region_get_ram_ptr(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @port_rx_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %cond = icmp ult i64 %1, 4
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12684
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 222, ptr noundef nonnull @__func__.port_rx_read, ptr noundef null) #5
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @port_rx_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %cond = icmp ult i64 %1, 4
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %2, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @qemu_get_queue(ptr noundef %i.c) #4
  tail call void @qemu_flush_queued_packets(ptr noundef %i.d) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = trunc i64 %2 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12684
  store i32 %i.e, ptr %i.f, align 4
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 242, ptr noundef nonnull @__func__.port_rx_write, ptr noundef null) #5
  unreachable
}

declare void @qemu_flush_queued_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @eth_rx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9328 ; 3 uses
  %i.c = load i32, ptr %i.b, align 16
  %i.d = load i8, ptr %1, align 1
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 2 uses
  %i.f = load i32, ptr %i.e, align 1
  %i.g = load i32, ptr %1, align 1
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i16, ptr %i.i, align 1
  %i.l = load i16, ptr %i.j, align 1
  %i.m = zext i16 %i.k to i32
  %i.n = zext i16 %i.l to i32
  %i.o = xor i32 %i.m, %i.n
  %i.p = or i32 %i.h, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.c, label %trace_ethlite_pkt_lost.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = zext i32 %i.c to i64
  %i.t = getelementptr inbounds nuw [1104 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12684 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = and i32 %i.v, 1
  %.not26 = icmp eq i32 %i.w, 0
  br i1 %.not26, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %trace_ethlite_pkt_lost.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.y = load i16, ptr @_TRACE_ETHLITE_PKT_LOST_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.y, 0
  br i1 %.not1.i, label %trace_ethlite_pkt_lost.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not2.i = icmp eq i32 %i.aa, 0
  br i1 %.not2.i, label %trace_ethlite_pkt_lost.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i32 noundef %i.v) #4
  br label %trace_ethlite_pkt_lost.exit

bb.h:                                             ; preds = %bb.c
  %i.ab = icmp ugt i64 %2, 2019
  br i1 %i.ab, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i28 = icmp eq i32 %i.ac, 0
  br i1 %.not.i28, label %trace_ethlite_pkt_lost.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ad = load i16, ptr @_TRACE_ETHLITE_PKT_SIZE_TOO_BIG_DSTATE, align 2
  %.not1.i29 = icmp eq i16 %i.ad, 0
  br i1 %.not1.i29, label %trace_ethlite_pkt_lost.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not2.i30 = icmp eq i32 %i.af, 0
  br i1 %.not2.i30, label %trace_ethlite_pkt_lost.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i64 noundef range(i64 2020, 0) %2) #4
  br label %trace_ethlite_pkt_lost.exit

bb.m:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 12400
  %i.ah = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.ag) #4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ah, ptr noundef nonnull align 1 %1, i64 noundef range(i64 0, 2020) %2, i1 noundef false) #4
  %i.ai = load i32, ptr %i.u, align 4             ; 2 uses
  %i.aj = or i32 %i.ai, 1
  store i32 %i.aj, ptr %i.u, align 4
  %i.ak = and i32 %i.ai, 8
  %.not27 = icmp eq i32 %i.ak, 0
  br i1 %.not27, label %eth_pulse_irq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12676
  %i.am = load i32, ptr %i.al, align 4
  %.not.i31 = icmp sgt i32 %i.am, -1
  br i1 %.not.i31, label %eth_pulse_irq.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ao = load ptr, ptr %i.an, align 16           ; 2 uses
  tail call void @qemu_set_irq(ptr noundef %i.ao, i32 noundef 1) #4
  tail call void @qemu_set_irq(ptr noundef %i.ao, i32 noundef 0) #4
  br label %eth_pulse_irq.exit

eth_pulse_irq.exit:                               ; preds = %bb.o, %bb.n, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 9324
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = load i32, ptr %i.b, align 16
  %i.as = xor i32 %i.ar, %i.aq
  store i32 %i.as, ptr %i.b, align 16
  br label %trace_ethlite_pkt_lost.exit

trace_ethlite_pkt_lost.exit:                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %eth_pulse_irq.exit
  %.0 = phi i64 [ %2, %bb.b ], [ -1, %bb.g ], [ %2, %eth_pulse_irq.exit ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @eth_can_rx(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  %i.c = load i32, ptr %i.b, align 16
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [1104 x i8], ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12684
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  ret i1 %.not
}

declare ptr @qemu_get_nic_opaque(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

end_hunk_0
