Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pcie?download=true
inline.NumInlined: 244
inline.NumDeleted: 51
begin_hunk_0_@pcie_cap_slot_push_attention_button:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 26 ; 2 uses
  %.val.i.i = load i16, ptr %i.g, align 1         ; 2 uses
  %i.h = or i16 %.val.i.i, 1
  store i16 %i.h, ptr %i.g, align 1
  %i.i = and i16 %.val.i.i, 1
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.b, label %pcie_cap_slot_event.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @hotplug_event_notify(ptr noundef nonnull %0)
  br label %pcie_cap_slot_event.exit

pcie_cap_slot_event.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pcie_cap_slot_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.b = load i8, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i8 %i.b to i64                      ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %.val.i = load i16, ptr %i.g, align 1
  %i.h = or i16 %.val.i, 256
  store i16 %i.h, ptr %i.g, align 1
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  %.val.i35 = load i32, ptr %i.k, align 1
  %i.l = and i32 %.val.i35, -524288
  store i32 %i.l, ptr %i.k, align 1
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 7634
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32
  %i.s = shl i32 %i.r, 19
  %.val.i36 = load i32, ptr %i.o, align 1
  %i.t = or i32 %i.s, %.val.i36
  %i.u = or i32 %i.t, 131097
  store i32 %i.u, ptr %i.o, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 7645
  %i.w = load i8, ptr %i.v, align 1, !range !8, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7646
  %i.z = load i8, ptr %i.y, align 2, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load i32, ptr %i.ac, align 8
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20 ; 2 uses
  %.val.i37 = load i32, ptr %i.ag, align 1
  %i.ah = or i32 %.val.i37, 96
  store i32 %i.ah, ptr %i.ag, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 128
  %.not34 = icmp eq i32 %i.ak, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  %.val.i38 = load i32, ptr %i.an, align 1
  %i.ao = or i32 %.val.i38, 2
  store i32 %i.ao, ptr %i.an, align 1
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %.val.i39 = load i16, ptr %i.ar, align 1
  %i.as = and i16 %.val.i39, -1025
  store i16 %i.as, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %.val.i40 = load i16, ptr %i.aw, align 1
  %i.ax = or i16 %.val.i40, 1024
  store i16 %i.ax, ptr %i.aw, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = load ptr, ptr %i.c, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %.val.i41 = load i16, ptr %i.ba, align 1
  %i.bb = and i16 %.val.i41, -961
  store i16 %i.bb, ptr %i.ba, align 1
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %.val.i42 = load i16, ptr %i.be, align 1
  %i.bf = or i16 %.val.i42, 960
  store i16 %i.bf, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %.val.i43 = load i16, ptr %i.bj, align 1
  %i.bk = or i16 %.val.i43, 1017
  store i16 %i.bk, ptr %i.bj, align 1
  %i.bl = load ptr, ptr %i.bg, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %.val.i44 = load i16, ptr %i.bn, align 1
  %i.bo = or i16 %.val.i44, 2048
  store i16 %i.bo, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bq = load ptr, ptr %i.bp, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 26 ; 2 uses
  %.val.i45 = load i16, ptr %i.bs, align 1
  %i.bt = or i16 %.val.i45, 25
  store i16 %i.bt, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bv = load ptr, ptr %i.bu, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 26 ; 2 uses
  %.val.i46 = load i16, ptr %i.bx, align 1
  %i.by = and i16 %.val.i46, -65
  store i16 %i.by, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2249
  store i8 0, ptr %i.bz, align 1
  %i.ca = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 55, ptr noundef nonnull @__func__.PCI_BRIDGE) #12
  %i.cb = tail call ptr @pci_bridge_get_sec_bus(ptr noundef %i.ca) #12
  %i.cc = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.cb, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #12
  tail call void @qbus_set_hotplug_handler(ptr noundef %i.cc, ptr noundef nonnull %0) #12
  ret void
}

declare void @qbus_set_hotplug_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @pci_bridge_get_sec_bus(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pcie_cap_slot_reset(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 3 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.b, label %pcie_cap_get_type.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 334, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_cap_get_type) #11
  unreachable

pcie_cap_get_type.exit:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.val.i = load i16, ptr %i.h, align 1
  %i.i = and i16 %.val.i, 208
  %or.cond = icmp eq i16 %i.i, 64
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pcie_cap_get_type.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_cap_slot_reset) #11
  unreachable

bb.d:                                             ; preds = %pcie_cap_get_type.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  %.val.i20 = load i16, ptr %i.j, align 1
  %i.k = and i16 %.val.i20, -3066
  %i.l = or disjoint i16 %i.k, 960
  store i16 %i.l, ptr %i.j, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 128
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 55, ptr noundef nonnull @__func__.PCI_BRIDGE) #12
  %i.q = tail call ptr @pci_bridge_get_sec_bus(ptr noundef %i.p) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.s = load ptr, ptr %i.r, align 8
  %.not19 = icmp eq ptr %i.s, null                ; 2 uses
  %.val.i23 = load i16, ptr %i.j, align 1
  %i.t = and i16 %.val.i23, -1025
  %masksel = select i1 %.not19, i16 1024, i16 0
  %storemerge = or disjoint i16 %i.t, %masksel
  %i.u = select i1 %.not19, i16 768, i16 256
  %i.v = or i16 %i.u, %storemerge
  store i16 %i.v, ptr %i.j, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 26 ; 2 uses
  %.val.i25 = load i16, ptr %i.w, align 1
  %i.x = and i16 %.val.i25, -154
  store i16 %i.x, ptr %i.w, align 1
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load i8, ptr %i.d, align 8
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 55, ptr noundef nonnull @__func__.PCI_BRIDGE) #12
  %i.ad = tail call ptr @pci_bridge_get_sec_bus(ptr noundef %i.ac) #12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i26 = load i32, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.val8.i = load i16, ptr %i.af, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ag = and i32 %.val.i26, 2
  %.not.i27 = icmp eq i32 %i.ag, 0
  %i.ah = and i16 %.val8.i, 1024
  %i.ai = icmp eq i16 %i.ah, 0
  %narrow.i = select i1 %.not.i27, i1 true, i1 %i.ai
  %storemerge.i = zext i1 %narrow.i to i8
  store i8 %storemerge.i, ptr %i.a, align 1
  %i.aj = tail call i32 @pci_bus_num(ptr noundef %i.ad) #12
  call void @pci_for_each_device(ptr noundef %i.ad, i32 noundef %i.aj, ptr noundef nonnull @pcie_set_power_device, ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ak = load i8, ptr %i.d, align 8
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = zext i8 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val8.i28 = load i16, ptr %i.ao, align 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 26
  %.val.i29 = load i16, ptr %i.ap, align 1
  %i.aq = and i16 %.val8.i28, 32
  %.not.i30 = icmp ne i16 %i.aq, 0
  %i.ar = and i16 %.val8.i28, 25
  %i.as = and i16 %i.ar, %.val.i29
  %i.at = icmp ne i16 %i.as, 0
  %narrow.i31 = select i1 %.not.i30, i1 %i.at, i1 false
  %i.au = zext i1 %narrow.i31 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2249
  store i8 %i.au, ptr %i.av, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pcie_cap_slot_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.b = load i8, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i8 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val6 = load i16, ptr %i.g, align 1
  store i16 %.val6, ptr %1, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %.val = load i16, ptr %i.h, align 1
  store i16 %.val, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pcie_cap_slot_write_config(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i8 %i.c to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 26 ; 3 uses
  %.val = load i16, ptr %i.i, align 1             ; 4 uses
  %i.j = zext i32 %3 to i64                       ; 3 uses
  %i.k = sext i32 %5 to i64
  %i.l = add nuw nsw i32 %i.d, 26
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = add nsw i64 %i.n, %i.k                   ; 2 uses
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = icmp samesign uge i64 %i.p, %i.j
  %i.r = icmp uge i64 %i.o, %i.m
  %.not9.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %.not9.i, label %bb.b, label %hotplug_event_clear.exit

bb.b:                                             ; preds = %bb.a
  %i.s = and i16 %2, 31                           ; 2 uses
  %i.t = xor i16 %i.s, 31
  %i.u = zext nneg i16 %i.t to i32
  %i.v = and i32 %4, %i.u
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = and i16 %.val, -32
  %i.x = or disjoint i16 %i.w, %i.s               ; 2 uses
  store i16 %i.x, ptr %i.i, align 1
  %.pre = load i8, ptr %i.b, align 8
  %.pre70 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64       ; 2 uses
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %.pre70, i64 %.phi.trans.insert
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert71, i64 26
  %.val.i.i.pre = load i16, ptr %.phi.trans.insert72, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.phi.trans.insert, %bb.c ], [ %i.g, %bb.b ]
  %.val.i.i = phi i16 [ %.val.i.i.pre, %bb.c ], [ %.val, %bb.b ]
  %i.y = phi ptr [ %.pre70, %bb.c ], [ %i.f, %bb.b ]
  %.0 = phi i16 [ %i.x, %bb.c ], [ %.val, %bb.b ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val8.i.i = load i16, ptr %i.aa, align 1       ; 2 uses
  %i.ab = and i16 %.val8.i.i, 32
  %.not.i.i = icmp ne i16 %i.ab, 0
  %i.ac = and i16 %.val8.i.i, 25
  %i.ad = and i16 %i.ac, %.val.i.i
  %i.ae = icmp ne i16 %i.ad, 0
  %narrow.i.i = select i1 %.not.i.i, i1 %i.ae, i1 false
  %i.af = zext i1 %narrow.i.i to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2249 ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = tail call i32 @msix_enabled(ptr noundef nonnull %0) #12
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.e, label %hotplug_event_clear.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call zeroext i1 @msi_enabled(ptr noundef nonnull %0) #12
  br i1 %i.ai, label %hotplug_event_clear.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr i8, ptr %.val.i, i64 61
  %.val.val.i = load i8, ptr %i.aj, align 1
  %.not6.i = icmp eq i8 %.val.val.i, 0
  br i1 %.not6.i, label %hotplug_event_clear.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ag, align 1, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %hotplug_event_clear.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 0) #12
  br label %hotplug_event_clear.exit

hotplug_event_clear.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.1 = phi i16 [ %.val, %bb.a ], [ %.0, %bb.d ], [ %.0, %bb.e ], [ %.0, %bb.f ], [ %.0, %bb.g ], [ %.0, %bb.h ] ; 2 uses
  %i.am = add nuw nsw i32 %i.d, 24
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 1
  %i.ap = icmp samesign uge i64 %i.ao, %i.j
  %i.aq = icmp uge i64 %i.o, %i.an
  %.not9.i48 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %.not9.i48, label %bb.i, label %pcie_cap_slot_event.exit

bb.i:                                             ; preds = %hotplug_event_clear.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.val.i49 = load i16, ptr %i.ar, align 1        ; 2 uses
  %i.as = and i16 %.val.i49, -2049
  store i16 %i.as, ptr %i.ar, align 1
  %i.at = and i16 %.val.i49, 2048
  %.not40 = icmp eq i16 %i.at, 0
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = xor i16 %.1, 128                        ; 2 uses
  store i16 %i.au, ptr %i.i, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi i16 [ %i.au, %bb.j ], [ %.1, %bb.i ]  ; 2 uses
  %i.av = load i32, ptr @trace_events_enabled_count, align 4
  %.not41 = icmp eq i32 %i.av, 0
  br i1 %.not41, label %bb.o, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.aw = load i16, ptr @_TRACE_PCIE_CAP_SLOT_WRITE_CONFIG_DSTATE, align 2
  %.not42 = icmp eq i16 %i.aw, 0
  br i1 %.not42, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #12
  %i.ay = tail call fastcc ptr @pcie_cap_slot_find_child(ptr noundef nonnull %0)
  %i.az = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ay, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not43 = icmp eq ptr %i.az, null
  br i1 %.not43, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
end_hunk_0
