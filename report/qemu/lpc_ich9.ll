Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/lpc_ich9?download=true
inline.NumInlined: 103
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ich9_lpc_machine_ready:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 130 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call zeroext i1 @memory_region_present(ptr noundef %i.b, i64 noundef 760) #9
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 130 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = or i8 %i.k, 2
  store i8 %i.l, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call zeroext i1 @memory_region_present(ptr noundef %i.b, i64 noundef 888) #9
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 130 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = or i8 %i.o, 4
  store i8 %i.p, ptr %i.n, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = tail call zeroext i1 @memory_region_present(ptr noundef %i.b, i64 noundef 1010) #9
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 130 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = or i8 %i.s, 8
  store i8 %i.t, ptr %i.r, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @qemu_add_machine_init_done_notifier(ptr noundef) local_unnamed_addr #1

declare ptr @pci_address_space_io(ptr noundef) local_unnamed_addr #1

declare void @isa_bus_register_input_irqs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @i8257_dma_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @qdev_prop_set_int32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @qdev_realize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @object_property_get_uint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @isa_connect_gpio_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @pci_bus_irqs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ich9_lpc_set_irq(ptr noundef %0, i32 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.23, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__.ich9_lpc_set_irq) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 8
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.23, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__.ich9_lpc_set_irq) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = or disjoint i32 %1, 16                   ; 2 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.e = tail call ptr @qdev_get_parent_bus(ptr noundef %i.d) #9
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 289, ptr noundef nonnull @__func__.PCI_BUS) #9
  %i.g = tail call i32 @pci_bus_get_irq_level(ptr noundef %i.f, i32 noundef %1) #9 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10404
  %i.i = load i8, ptr %i.h, align 4
  %i.j = zext i8 %i.i to i32
  %i.k = icmp eq i32 %i.c, %i.j
  br i1 %i.k, label %bb.f, label %ich9_lpc_update_apic.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.m = load i32, ptr %i.l, align 16
  %i.n = or i32 %i.m, %i.g
  br label %ich9_lpc_update_apic.exit

ich9_lpc_update_apic.exit:                        ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.n, %bb.f ], [ %i.g, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 27416
  %i.p = zext nneg i32 %i.c to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @qemu_set_irq(ptr noundef %i.r, i32 noundef %.0.i) #9
  %switch = icmp samesign ult i32 %1, 4
  %spec.select = select i1 %switch, i64 96, i64 100
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 %spec.select
  %storemerge.in.in.i = load i8, ptr %i.w, align 1
  %i.x = and i8 %storemerge.in.in.i, 15
  %storemerge8.i = zext nneg i8 %i.x to i32
  tail call fastcc void @ich9_lpc_update_pic(ptr noundef nonnull %0, i32 noundef %storemerge8.i)
  ret void
}

declare void @pci_bus_map_irqs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 256) i32 @ich9_lpc_map_irq(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @qdev_get_parent_bus(ptr noundef %0) #9
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 289, ptr noundef nonnull @__func__.PCI_BUS) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 19, ptr noundef nonnull @__func__.ICH9_LPC_DEVICE) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2768
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load i32, ptr %i.g, align 16
  %i.i = lshr i32 %i.h, 3
  %i.j = and i32 %i.i, 31
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.k
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  ret i32 %i.p
}

declare void @pci_bus_set_route_irq_fn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 98784247809) i64 @ich9_route_intx_pin_to_irq(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.23, i32 noundef 298, ptr noundef nonnull @__PRETTY_FUNCTION__.ich9_route_intx_pin_to_irq) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 8
  br i1 %i.b, label %ich9_lpc_pic_irq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.23, i32 noundef 299, ptr noundef nonnull @__PRETTY_FUNCTION__.ich9_route_intx_pin_to_irq) #10
  unreachable

ich9_lpc_pic_irq.exit:                            ; preds = %bb.c
  %switch = icmp samesign ult i32 %1, 4
  %spec.select = select i1 %switch, i64 96, i64 100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 %spec.select
  %storemerge.in.in.i = load i8, ptr %i.g, align 1 ; 2 uses
  %i.h = and i8 %storemerge.in.in.i, 15
  %storemerge8.i = zext nneg i8 %i.h to i32
  %i.i = or disjoint i32 %1, 16
  %.not8 = icmp slt i8 %storemerge.in.in.i, 0
  %.sroa.4.0 = select i1 %.not8, i32 %i.i, i32 %storemerge8.i
  %.sroa.4.0.insert.ext = zext nneg i32 %.sroa.4.0 to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  ret i64 %.sroa.4.0.insert.shift
}

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @ich9_cc_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
ich9_cc_addr_len.exit:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.b = and i64 %1, 16383                        ; 4 uses
  %i.c = zext i32 %2 to i64
  %i.d = add nuw nsw i64 %i.b, %i.c
  %i.e = icmp samesign ugt i64 %i.d, 16383
  %i.f = trunc nuw nsw i64 %i.b to i32
  %i.g = sub nuw nsw i32 16384, %i.f
  %.0 = select i1 %i.e, i32 %i.g, i32 %2          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10406
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.j = zext i32 %.0 to i64
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, i64 noundef range(i64 0, 4294967296) %i.j, i64 noundef 4) #9, !alias.scope !23 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %trace_ich9_cc_read.exit, label %bb.a, !prof !10

bb.a:                                             ; preds = %ich9_cc_addr_len.exit
  %i.o = load i16, ptr @_TRACE_ICH9_CC_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.o, 0
  br i1 %.not3.i, label %trace_ich9_cc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %trace_ich9_cc_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i64 noundef %i.b, i64 noundef range(i64 0, 4294967296) %i.m, i32 noundef %.0) #9
  %.pre = load i32, ptr %i.a, align 4
  %.pre7 = zext i32 %.pre to i64
  br label %trace_ich9_cc_read.exit

trace_ich9_cc_read.exit:                          ; preds = %ich9_cc_addr_len.exit, %bb.a, %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.m, %ich9_cc_addr_len.exit ], [ %i.m, %bb.a ], [ %i.m, %bb.b ], [ %.pre7, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.pre-phi
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ich9_cc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_ich9_cc_write.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_ICH9_CC_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.c, 0
  br i1 %.not3.i, label %trace_ich9_cc_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %trace_ich9_cc_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, i64 noundef %1, i64 noundef %2, i32 noundef %3) #9
  br label %trace_ich9_cc_write.exit

trace_ich9_cc_write.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = and i64 %1, 16383                        ; 3 uses
  %i.g = zext i32 %3 to i64
  %i.h = add nuw nsw i64 %i.f, %i.g
  %i.i = icmp samesign ugt i64 %i.h, 16383
  %i.j = trunc nuw nsw i64 %i.f to i32
  %i.k = sub nuw nsw i32 16384, %i.j
  %.0 = select i1 %i.i, i32 %i.k, i32 %3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10406
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.n = zext i32 %.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.m, ptr noundef nonnull align 8 %i.a, i64 noundef range(i64 0, 4294967296) %i.n, i1 noundef false) #9
  %i.o = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.p = tail call ptr @qdev_get_parent_bus(ptr noundef %i.o) #9
  %i.q = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.p, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 289, ptr noundef nonnull @__func__.PCI_BUS) #9
  tail call void @pci_bus_fire_intx_routing_notifier(ptr noundef %i.q) #9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 23030
  %.val.i = load i16, ptr %i.s, align 1           ; 3 uses
  %i.t = trunc i16 %.val.i to i8                  ; 2 uses
  %i.u = and i8 %i.t, 7
  store i8 %i.u, ptr %i.r, align 1
  %i.v = lshr i8 %i.t, 4
  %i.w = and i8 %i.v, 7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2869
  store i8 %i.w, ptr %i.x, align 1
  %i.y = lshr i16 %.val.i, 8
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = and i8 %i.z, 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2870
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i16 %.val.i, 12
  %i.ad = trunc nuw nsw i16 %i.ac to i8
  %i.ae = and i8 %i.ad, 7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2871
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 23026
  %.val.1.i = load i16, ptr %i.ah, align 1        ; 3 uses
  %i.ai = trunc i16 %.val.1.i to i8               ; 2 uses
  %i.aj = and i8 %i.ai, 7
  store i8 %i.aj, ptr %i.ag, align 1
  %i.ak = lshr i8 %i.ai, 4
  %i.al = and i8 %i.ak, 7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2873
  store i8 %i.al, ptr %i.am, align 1
  %i.an = lshr i16 %.val.1.i, 8
  %i.ao = trunc nuw i16 %i.an to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2874
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = lshr i16 %.val.1.i, 12
  %i.as = trunc nuw nsw i16 %i.ar to i8
  %i.at = and i8 %i.as, 7
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2875
  store i8 %i.at, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2876
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 23022
  %.val.2.i = load i16, ptr %i.aw, align 1        ; 3 uses
  %i.ax = trunc i16 %.val.2.i to i8               ; 2 uses
  %i.ay = and i8 %i.ax, 7
  store i8 %i.ay, ptr %i.av, align 1
  %i.az = lshr i8 %i.ax, 4
  %i.ba = and i8 %i.az, 7
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2877
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = lshr i16 %.val.2.i, 8
  %i.bd = trunc nuw i16 %i.bc to i8
  %i.be = and i8 %i.bd, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2878
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = lshr i16 %.val.2.i, 12
  %i.bh = trunc nuw nsw i16 %i.bg to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2879
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 23020
  %.val.3.i = load i16, ptr %i.bl, align 1        ; 3 uses
  %i.bm = trunc i16 %.val.3.i to i8               ; 2 uses
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bo = lshr i8 %i.bm, 4
  %i.bp = and i8 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2881
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = lshr i16 %.val.3.i, 8
  %i.bs = trunc nuw i16 %i.br to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2882
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = lshr i16 %.val.3.i, 12
  %i.bw = trunc nuw nsw i16 %i.bv to i8
  %i.bx = and i8 %i.bw, 7
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2883
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2884
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 23018
  %.val.4.i = load i16, ptr %i.ca, align 1        ; 3 uses
  %i.cb = trunc i16 %.val.4.i to i8               ; 2 uses
  %i.cc = and i8 %i.cb, 7
  store i8 %i.cc, ptr %i.bz, align 1
  %i.cd = lshr i8 %i.cb, 4
  %i.ce = and i8 %i.cd, 7
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2885
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = lshr i16 %.val.4.i, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  %i.ci = and i8 %i.ch, 7
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2886
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = lshr i16 %.val.4.i, 12
  %i.cl = trunc nuw nsw i16 %i.ck to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2887
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2892
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 23014
  %.val.6.i = load i16, ptr %i.cp, align 1        ; 3 uses
  %i.cq = trunc i16 %.val.6.i to i8               ; 2 uses
  %i.cr = and i8 %i.cq, 7
  store i8 %i.cr, ptr %i.co, align 1
  %i.cs = lshr i8 %i.cq, 4
  %i.ct = and i8 %i.cs, 7
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2893
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = lshr i16 %.val.6.i, 8
  %i.cw = trunc nuw i16 %i.cv to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2894
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = lshr i16 %.val.6.i, 12
  %i.da = trunc nuw nsw i16 %i.cz to i8
  %i.db = and i8 %i.da, 7
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2895
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2888
  store <4 x i8> <i8 4, i8 5, i8 6, i8 7>, ptr %i.dd, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @pci_bus_fire_intx_routing_notifier(ptr noundef) local_unnamed_addr #1

declare void @acpi_pm1_cnt_update(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1
end_hunk_0
begin_hunk_1_@smi_features_ok_callback:bb.a
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 27088
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 27072
  %i.f = load i64, ptr %i.e, align 16
  %i.g = xor i64 %i.f, -1
  %i.h = and i64 %i.d, %i.g
  %.not8 = icmp eq i64 %i.h, 0
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.d, 6                          ; 2 uses
  %i.j = and i64 %i.d, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = icmp ne i64 %i.i, 0
  %or.cond = and i1 %i.k, %i.l
  %i.m = icmp eq i64 %i.i, 4
  %or.cond9 = or i1 %i.m, %or.cond
  br i1 %or.cond9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 27104
  store i64 %i.d, ptr %i.n, align 16
  store i8 1, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ich9_lpc_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  tail call fastcc void @ich9_lpc_pmbase_sci_update(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %.val.i = load i32, ptr %i.c, align 1           ; 2 uses
  %i.d = and i32 %.val.i, 1
  %.not5.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i, label %ich9_lpc_rcba_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @get_system_memory() #9
  %i.f = and i32 %.val.i, -16384
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 27120
  tail call void @memory_region_add_subregion_overlap(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull %i.h, i32 noundef 1) #9
  %.pre = load ptr, ptr %i.a, align 8
  br label %ich9_lpc_rcba_update.exit

ich9_lpc_rcba_update.exit:                        ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %.val12.i = load i16, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10368
  %i.m = load i8, ptr %i.l, align 16, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %ich9_lpc_rcba_update.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.p = load i32, ptr %i.o, align 16
  %i.q = and i32 %i.p, 64
  %i.r = icmp ne i32 %i.q, 0
  tail call void @ich9_pm_update_swsmi_timer(ptr noundef nonnull %i.k, i1 noundef zeroext %i.r) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ich9_lpc_rcba_update.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10369
  %i.t = load i8, ptr %i.s, align 1, !range !7, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.w = load i32, ptr %i.v, align 16
  %i.x = and i32 %i.w, 16384
  %i.y = icmp ne i32 %i.x, 0
  tail call void @ich9_pm_update_periodic_timer(ptr noundef nonnull %i.k, i1 noundef zeroext %i.y) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = and i16 %.val12.i, 16
  %.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i, label %ich9_lpc_pmcon_update.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160 ; 2 uses
  %.val.i4 = load i16, ptr %i.ac, align 1
  %i.ad = and i16 %.val.i4, -17
  store i16 %i.ad, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5972 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -2
  store i32 %i.ag, ptr %i.ae, align 4
  br label %ich9_lpc_pmcon_update.exit

ich9_lpc_pmcon_update.exit:                       ; preds = %bb.f, %bb.g
  ret i32 0
}

declare void @ich9_pm_update_swsmi_timer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @ich9_pm_update_periodic_timer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @ich9_rst_cnt_needed(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26790
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @ich9_smi_feat_needed(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 27088
  %i.b = tail call zeroext i1 @buffer_is_zero_ool(ptr noundef nonnull %i.a, i64 noundef 8) #9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 27096
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp ne i8 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

declare zeroext i1 @buffer_is_zero_ool(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @pci_default_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @acpi_send_gpe_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @qdev_get_child_bus(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @aml_scope(ptr noundef, ...) local_unnamed_addr #1

declare void @aml_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @aml_operation_region(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @aml_int(i64 noundef) local_unnamed_addr #1

declare ptr @aml_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @aml_named_field(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @aml_reserved_field(i32 noundef) local_unnamed_addr #1

declare void @qbus_build_aml(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 2153432913}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{i64 2153438514}
!15 = !{i64 2153442738}
!20 = distinct !{!20, i1 false, !"memcpy.inline"}
!21 = distinct !{!21, !20, !"memcpy.inline: argument 0"}
!22 = distinct !{!22, !20, !"memcpy.inline: argument 1"}
!23 = !{!21, !22}
end_hunk_1
