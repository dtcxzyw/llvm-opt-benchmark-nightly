Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/eepro100?download=true
inline.NumInlined: 162
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@e100_nic_realize:bb.a
  store i8 %i.u, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16150 ; 2 uses
  %i.x = load i8, ptr %i.w, align 2               ; 2 uses
  %i.y = or i8 %i.x, 48
  store i8 %i.y, ptr %i.w, align 2
  %i.z = icmp ne i8 %i.q, 80
  %i.aa = and i8 %i.x, 4
  %.not.i = icmp eq i8 %i.aa, 0
  %or.cond.i = select i1 %i.z, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.sink.split.i, label %bb.b

.sink.split.i:                                    ; preds = %bb.a
  store i16 64, ptr %i.s, align 16
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 30
  %i.ac = load i8, ptr %i.ab, align 2, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %e100_pci_reset.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = call i32 @pci_pm_init(ptr noundef nonnull %0, i8 noundef zeroext -36, ptr noundef nonnull %i.a) #10
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.d, label %e100_pci_reset.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 222
  store i16 32289, ptr %i.ag, align 1
  br label %e100_pci_reset.exit

e100_pci_reset.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %e100_pci_reset.exit
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %i.ah) #10
  br label %bb.g

bb.f:                                             ; preds = %e100_pci_reset.exit
  %i.ai = call ptr @eeprom93xx_new(ptr noundef nonnull %0, i16 noundef zeroext 64) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 11896
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2784 ; 2 uses
  call void @memory_region_init_io(ptr noundef nonnull %i.ak, ptr noundef nonnull %0, ptr noundef nonnull @eepro100_ops, ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i64 noundef 4096) #10
  call void @pci_register_bar(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 8, ptr noundef nonnull %i.ak) #10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  call void @memory_region_init_io(ptr noundef nonnull %i.al, ptr noundef nonnull %0, ptr noundef nonnull @eepro100_ops, ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i64 noundef 64) #10
  call void @pci_register_bar(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 1, ptr noundef nonnull %i.al) #10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  call void @memory_region_init_io(ptr noundef nonnull %i.am, ptr noundef nonnull %0, ptr noundef nonnull @eepro100_ops, ptr noundef nonnull %0, ptr noundef nonnull @.str.40, i64 noundef 131072) #10
  call void @pci_register_bar(ptr noundef nonnull %0, i32 noundef 2, i8 noundef zeroext 0, ptr noundef nonnull %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3608 ; 3 uses
  call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.an) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i64 0, ptr %i.ao, align 16
  call fastcc void @nic_selective_reset(ptr noundef nonnull %0)
  %i.ap = call ptr @object_get_typename(ptr noundef nonnull %0) #10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.at = call ptr @qemu_new_nic(ptr noundef nonnull @net_eepro100_info, ptr noundef nonnull %i.an, ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %0) #10 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  store ptr %i.at, ptr %i.au, align 16
  %i.av = call ptr @qemu_get_queue(ptr noundef %i.at) #10
  call void @qemu_format_nic_info_str(ptr noundef %i.av, ptr noundef nonnull %i.an) #10
  call void @qemu_register_reset(ptr noundef nonnull @nic_reset, ptr noundef nonnull %0) #10
  %i.aw = call dereferenceable_or_null(112) ptr @g_memdup(ptr noundef nonnull @vmstate_eepro100, i32 noundef 112) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16168 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.au, align 16
  %i.az = call ptr @qemu_get_queue(ptr noundef %i.ay) #10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.ax, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 1888, ptr noundef nonnull @__func__.e100_nic_realize) #10
  %i.be = load ptr, ptr %i.ax, align 8
  %i.bf = call i32 @vmstate_register_with_alias_id(ptr noundef %i.bd, i32 noundef -1, ptr noundef %i.be, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef null) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pci_nic_uninit(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 1827, ptr noundef nonnull @__func__.pci_nic_uninit) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @vmstate_unregister(ptr noundef %i.a, ptr noundef %i.c, ptr noundef %0) #10
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @eeprom93xx_free(ptr noundef %0, ptr noundef %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.h = load ptr, ptr %i.g, align 16
  tail call void @qemu_del_nic(ptr noundef %i.h) #10
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @eeprom93xx_new(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @nic_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i64 0, ptr %i.a, align 1
  tail call fastcc void @nic_selective_reset(ptr noundef %0)
  ret void
}

declare ptr @qemu_new_nic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

declare void @qemu_register_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1)
declare ptr @g_memdup(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pci_pm_init(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @eepro100_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i32 %2, label %bb.ae [
    i32 1, label %bb.b
    i32 2, label %bb.l
    i32 4, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %i.b = icmp ult i32 %i.a, 4096
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %1, 4095
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12048
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i8 [ %i.f, %bb.c ], [ 0, %bb.b ]    ; 7 uses
  switch i32 %i.a, label %bb.k [
    i32 0, label %eepro100_read1.exit
    i32 1, label %eepro100_read1.exit
    i32 2, label %eepro100_read1.exit
    i32 3, label %eepro100_read1.exit
    i32 11, label %eepro100_read1.exit
    i32 14, label %bb.e
    i32 16, label %bb.g
    i32 17, label %bb.g
    i32 18, label %bb.g
    i32 19, label %bb.g
    i32 27, label %bb.i
    i32 28, label %eepro100_read1.exit
    i32 29, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12062 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 1
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %eepro100_read_eeprom.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg2) #12
  unreachable

eepro100_read_eeprom.exit.i:                      ; preds = %bb.e
  %.val.i.i.i = load i16, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i16 @eeprom93xx_read(ptr noundef %i.k) #10
  %.not.i.i = icmp eq i16 %i.l, 0
  %i.m = and i16 %.val.i.i.i, 247
  %masksel.i.i = select i1 %.not.i.i, i16 0, i16 8
  %.0.i.i = or disjoint i16 %masksel.i.i, %i.m
  %i.n = trunc nuw i16 %.0.i.i to i8
  br label %eepro100_read1.exit

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12064 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %.not.i.i8.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i8.i, label %eepro100_read_mdi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

eepro100_read_mdi.exit.i:                         ; preds = %bb.g
  %.val.i.i9.i = load i32, ptr %i.o, align 1
  %i.r = or i32 %.val.i.i9.i, 268435456
  %i.s = shl nuw nsw i32 %i.a, 3
  %i.t = and i32 %i.s, 24
  %i.u = lshr i32 %i.r, %i.t
  %i.v = trunc i32 %i.u to i8
  br label %eepro100_read1.exit

bb.i:                                             ; preds = %bb.d
  br label %eepro100_read1.exit

bb.j:                                             ; preds = %bb.d
  br label %eepro100_read1.exit

bb.k:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @stderr, align 8
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.45) #10 ; 0 uses
  br label %eepro100_read1.exit

eepro100_read1.exit:                              ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %eepro100_read_eeprom.exit.i, %eepro100_read_mdi.exit.i, %bb.i, %bb.j, %bb.k
  %.1.i = phi i8 [ %.0.i, %bb.k ], [ %i.n, %eepro100_read_eeprom.exit.i ], [ %i.v, %eepro100_read_mdi.exit.i ], [ 0, %bb.i ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ 7, %bb.j ]
  %i.y = zext i8 %.1.i to i64
  br label %bb.af

bb.l:                                             ; preds = %bb.a
  %i.z = trunc i64 %1 to i32                      ; 3 uses
  %i.aa = icmp ult i32 %i.z, 4095
  br i1 %i.aa, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12048
  %i.ac = and i64 %1, 4095
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %.not.i.i18 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i18, label %e100_read_reg2.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg2) #12
  unreachable

e100_read_reg2.exit.i:                            ; preds = %bb.m
  %.val.i.i = load i16, ptr %i.ad, align 1
  br label %bb.o

bb.o:                                             ; preds = %e100_read_reg2.exit.i, %bb.l
  %.0.i8 = phi i16 [ %.val.i.i, %e100_read_reg2.exit.i ], [ 0, %bb.l ] ; 3 uses
  switch i32 %i.z, label %bb.t [
    i32 0, label %eepro100_read2.exit
    i32 2, label %eepro100_read2.exit
    i32 14, label %bb.p
    i32 16, label %bb.r
    i32 18, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12062 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i.i.i13 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i13, label %eepro100_read_eeprom.exit.i14, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg2) #12
  unreachable

eepro100_read_eeprom.exit.i14:                    ; preds = %bb.p
  %.val.i.i.i15 = load i16, ptr %i.ag, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call zeroext i16 @eeprom93xx_read(ptr noundef %i.ak) #10
  %.not.i7.i = icmp eq i16 %i.al, 0
  %i.am = and i16 %.val.i.i.i15, -9
  %masksel.i.i16 = select i1 %.not.i7.i, i16 0, i16 8
  %.0.i.i17 = or disjoint i16 %masksel.i.i16, %i.am
  br label %eepro100_read2.exit

bb.r:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12064 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 3
  %.not.i.i8.i9 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i8.i9, label %eepro100_read_mdi.exit.i10, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

eepro100_read_mdi.exit.i10:                       ; preds = %bb.r
  %.val.i.i9.i11 = load i32, ptr %i.an, align 1
  %i.aq = or i32 %.val.i.i9.i11, 268435456
  %i.ar = shl nuw nsw i32 %i.z, 3
  %i.as = and i32 %i.ar, 24
  %i.at = lshr i32 %i.aq, %i.as
  %i.au = trunc i32 %i.at to i16
  br label %eepro100_read2.exit

bb.t:                                             ; preds = %bb.o
  %i.av = load ptr, ptr @stderr, align 8
  %i.aw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.av, i32 noundef 1, ptr noundef nonnull @.str.48) #10 ; 0 uses
  br label %eepro100_read2.exit

eepro100_read2.exit:                              ; preds = %bb.o, %bb.o, %eepro100_read_eeprom.exit.i14, %eepro100_read_mdi.exit.i10, %bb.t
  %.1.i12 = phi i16 [ %.0.i8, %bb.t ], [ %.0.i8, %bb.o ], [ %.0.i8, %bb.o ], [ %.0.i.i17, %eepro100_read_eeprom.exit.i14 ], [ %i.au, %eepro100_read_mdi.exit.i10 ]
  %i.ax = zext i16 %.1.i12 to i64
  br label %bb.af

bb.u:                                             ; preds = %bb.a
  %i.ay = trunc i64 %1 to i32                     ; 2 uses
  %i.az = icmp ult i32 %i.ay, 4093
  br i1 %i.az, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12048
  %i.bb = and i64 %1, 4095
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 3
  %.not.i.i30 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i30, label %e100_read_reg4.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

e100_read_reg4.exit.i:                            ; preds = %bb.v
  %.val.i.i31 = load i32, ptr %i.bc, align 1
  br label %bb.x

bb.x:                                             ; preds = %e100_read_reg4.exit.i, %bb.u
  %.0.i19 = phi i32 [ %.val.i.i31, %e100_read_reg4.exit.i ], [ 0, %bb.u ] ; 3 uses
  switch i32 %i.ay, label %bb.ad [
    i32 0, label %eepro100_read4.exit
    i32 4, label %eepro100_read4.exit
    i32 8, label %bb.y
    i32 12, label %bb.z
    i32 16, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  br label %eepro100_read4.exit

bb.z:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12062 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, 1
  %.not.i.i.i24 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i24, label %eepro100_read_eeprom.exit.i25, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg2) #12
  unreachable

eepro100_read_eeprom.exit.i25:                    ; preds = %bb.z
  %.val.i.i.i26 = load i16, ptr %i.bf, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call zeroext i16 @eeprom93xx_read(ptr noundef %i.bj) #10
  %.not.i7.i27 = icmp eq i16 %i.bk, 0
  %i.bl = and i16 %.val.i.i.i26, -9
  %masksel.i.i28 = select i1 %.not.i7.i27, i16 0, i16 8
  %.0.i.i29 = or disjoint i16 %masksel.i.i28, %i.bl
  %i.bm = zext i16 %.0.i.i29 to i32
  br label %eepro100_read4.exit

bb.ab:                                            ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12064 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, 3
  %.not.i.i8.i20 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i8.i20, label %eepro100_read_mdi.exit.i21, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

eepro100_read_mdi.exit.i21:                       ; preds = %bb.ab
  %.val.i.i9.i22 = load i32, ptr %i.bn, align 1
  %i.bq = or i32 %.val.i.i9.i22, 268435456
  br label %eepro100_read4.exit

bb.ad:                                            ; preds = %bb.x
  %i.br = load ptr, ptr @stderr, align 8
  %i.bs = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.br, i32 noundef 1, ptr noundef nonnull @.str.49) #10 ; 0 uses
  br label %eepro100_read4.exit

eepro100_read4.exit:                              ; preds = %bb.x, %bb.x, %bb.y, %eepro100_read_eeprom.exit.i25, %eepro100_read_mdi.exit.i21, %bb.ad
  %.1.i23 = phi i32 [ %.0.i19, %bb.ad ], [ %.0.i19, %bb.x ], [ %.0.i19, %bb.x ], [ 0, %bb.y ], [ %i.bm, %eepro100_read_eeprom.exit.i25 ], [ %i.bq, %eepro100_read_mdi.exit.i21 ]
  %i.bt = zext i32 %.1.i23 to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.a
  tail call void @abort() #12
  unreachable

bb.af:                                            ; preds = %eepro100_read4.exit, %eepro100_read2.exit, %eepro100_read1.exit
  %.0 = phi i64 [ %i.y, %eepro100_read1.exit ], [ %i.ax, %eepro100_read2.exit ], [ %i.bt, %eepro100_read4.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @eepro100_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  switch i32 %3, label %bb.ar [
    i32 1, label %bb.b
    i32 2, label %bb.s
    i32 4, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = trunc i64 %2 to i8                       ; 4 uses
  %i.c = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.c, 4095
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12048
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 %i.b, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %i.a, label %bb.r [
    i32 0, label %eepro100_write1.exit
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %eepro100_write1.exit
    i32 5, label %eepro100_write1.exit
    i32 6, label %eepro100_write1.exit
    i32 7, label %eepro100_write1.exit
    i32 8, label %eepro100_write1.exit
    i32 9, label %eepro100_write1.exit
    i32 10, label %eepro100_write1.exit
    i32 11, label %bb.o
    i32 24, label %eepro100_write1.exit
    i32 25, label %eepro100_write1.exit
    i32 26, label %eepro100_write1.exit
    i32 27, label %eepro100_write1.exit
    i32 14, label %bb.p
    i32 16, label %eepro100_write1.exit
    i32 17, label %eepro100_write1.exit
    i32 18, label %eepro100_write1.exit
    i32 19, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12049 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = xor i8 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11824 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16
  %i.l = and i8 %i.k, %i.i                        ; 3 uses
  store i8 %i.l, ptr %i.j, align 16
  store i8 %i.l, ptr %i.g, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.f, label %eepro100_write1.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %eepro100_write1.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 0) #10
  store i8 0, ptr %i.n, align 1
  br label %eepro100_write1.exit

bb.h:                                             ; preds = %bb.d
  tail call fastcc void @eepro100_write_command(ptr noundef %0, i8 noundef zeroext %i.b)
  br label %eepro100_write1.exit

bb.i:                                             ; preds = %bb.d
  %i.p = and i8 %i.b, 2
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %.eepro100_swi_interrupt.exit_crit_edge.i, label %bb.j

.eepro100_swi_interrupt.exit_crit_edge.i:         ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 11825
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %eepro100_swi_interrupt.exit.i

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12051
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12049 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = or i8 %i.t, 4                            ; 2 uses
  store i8 %i.u, ptr %i.s, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store i8 %i.u, ptr %i.v, align 16
  %i.w = and i8 %i.r, 1
  %.not11.not.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.y, 0              ; 2 uses
  br i1 %.not11.not.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i.i.i, label %enable_interrupt.exit.sink.split.i.i.i, label %eepro100_swi_interrupt.exit.i

bb.l:                                             ; preds = %bb.j
  br i1 %.not.i.i.i.i, label %eepro100_swi_interrupt.exit.i, label %enable_interrupt.exit.sink.split.i.i.i

enable_interrupt.exit.sink.split.i.i.i:           ; preds = %bb.l, %bb.k
  %.sink14.i.i.i = phi i32 [ 1, %bb.k ], [ 0, %bb.l ]
  %.sink.i.i.i = phi i8 [ 1, %bb.k ], [ 0, %bb.l ] ; 2 uses
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %.sink14.i.i.i) #10
  store i8 %.sink.i.i.i, ptr %i.x, align 1
  br label %eepro100_swi_interrupt.exit.i

eepro100_swi_interrupt.exit.i:                    ; preds = %enable_interrupt.exit.sink.split.i.i.i, %bb.l, %bb.k, %.eepro100_swi_interrupt.exit_crit_edge.i
  %i.z = phi i8 [ %.pre.i, %.eepro100_swi_interrupt.exit_crit_edge.i ], [ %.sink.i.i.i, %enable_interrupt.exit.sink.split.i.i.i ], [ 0, %bb.l ], [ %i.y, %bb.k ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12051
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = xor i8 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12049
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store i8 %i.ae, ptr %i.af, align 16
  %i.ag = or i8 %i.ac, 15
  %i.ah = and i8 %i.ae, %i.ag
  %.not.i.i = icmp ne i8 %i.ah, 0
  %i.ai = and i8 %i.ab, 1
  %.not11.not.i.i = icmp eq i8 %i.ai, 0
  %or.cond.i.i = and i1 %.not11.not.i.i, %.not.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 11825
  %.not.i.i17.i = icmp eq i8 %i.z, 0              ; 2 uses
  br i1 %or.cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %eepro100_swi_interrupt.exit.i
  br i1 %.not.i.i17.i, label %enable_interrupt.exit.sink.split.i.i, label %eepro100_write1.exit

bb.n:                                             ; preds = %eepro100_swi_interrupt.exit.i
  br i1 %.not.i.i17.i, label %eepro100_write1.exit, label %enable_interrupt.exit.sink.split.i.i

enable_interrupt.exit.sink.split.i.i:             ; preds = %bb.n, %bb.m
  %.sink14.i.i = phi i32 [ 1, %bb.m ], [ 0, %bb.n ]
  %.sink.i.i = phi i8 [ 1, %bb.m ], [ 0, %bb.n ]
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %.sink14.i.i) #10
  store i8 %.sink.i.i, ptr %i.aj, align 1
  br label %eepro100_write1.exit

bb.o:                                             ; preds = %bb.d
  tail call fastcc void @eepro100_write_port(ptr noundef %0)
  br label %eepro100_write1.exit

bb.p:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = trunc i64 %2 to i32                     ; 2 uses
  %i.an = lshr i32 %i.am, 1
  %.lobit.i.i = and i32 %i.an, 1
  %i.ao = and i8 %i.b, 1
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = lshr i32 %i.am, 2
  %.lobit6.i.i = and i32 %i.aq, 1
  tail call void @eeprom93xx_write(ptr noundef %i.al, i32 noundef %.lobit.i.i, i32 noundef %i.ap, i32 noundef %.lobit6.i.i) #10
  br label %eepro100_write1.exit

bb.q:                                             ; preds = %bb.d
  tail call fastcc void @eepro100_write_mdi(ptr noundef %0)
  br label %eepro100_write1.exit

bb.r:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ar, i32 noundef 1, ptr noundef nonnull @.str.50) #10 ; 0 uses
  br label %eepro100_write1.exit

bb.s:                                             ; preds = %bb.a
  %i.at = trunc i64 %1 to i32                     ; 2 uses
  %i.au = trunc i64 %2 to i16                     ; 2 uses
  %i.av = add i32 %i.at, -1
  %or.cond.i10 = icmp ult i32 %i.av, 4094
  br i1 %or.cond.i10, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12048
  %i.ax = and i64 %1, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 1
  %.not.i.i19 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i19, label %e100_write_reg2.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef 351, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_write_reg2) #12
  unreachable

e100_write_reg2.exit.i:                           ; preds = %bb.t
  store i16 %i.au, ptr %i.ay, align 1
  br label %bb.v

bb.v:                                             ; preds = %e100_write_reg2.exit.i, %bb.s
  switch i32 %i.at, label %bb.ai [
    i32 0, label %bb.w
    i32 2, label %bb.z
    i32 4, label %eepro100_write1.exit
    i32 6, label %eepro100_write1.exit
    i32 8, label %eepro100_write1.exit
    i32 10, label %bb.af
    i32 14, label %bb.ag
    i32 16, label %eepro100_write1.exit
    i32 18, label %bb.ah
  ]

bb.w:                                             ; preds = %bb.v
  %i.bb = lshr i64 %2, 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12049
  %i.be = xor i8 %i.bc, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 11824 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 16
  %i.bh = and i8 %i.bg, %i.be                     ; 3 uses
  store i8 %i.bh, ptr %i.bf, align 16
  store i8 %i.bh, ptr %i.bd, align 1
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.x, label %eepro100_write1.exit

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %.not.i.i.i18 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i18, label %eepro100_write1.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 0) #10
  store i8 0, ptr %i.bj, align 1
  br label %eepro100_write1.exit

bb.z:                                             ; preds = %bb.v
  %i.bl = trunc i64 %2 to i8
  tail call fastcc void @eepro100_write_command(ptr noundef %0, i8 noundef zeroext %i.bl)
  %i.bm = lshr i64 %2, 8
  %i.bn = trunc i64 %i.bm to i8                   ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12051 ; 2 uses
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = and i8 %i.bn, 2
  %.not.i18.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i18.i, label %.eepro100_swi_interrupt.exit_crit_edge.i.i, label %bb.aa

.eepro100_swi_interrupt.exit_crit_edge.i.i:       ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 11825
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %eepro100_swi_interrupt.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12049 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = or i8 %i.br, 4                          ; 2 uses
  store i8 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store i8 %i.bs, ptr %i.bt, align 16
  %i.bu = and i8 %i.bn, 1
  %.not11.not.i.i.i.i = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0           ; 2 uses
  br i1 %.not11.not.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i.i.i.i.i, label %enable_interrupt.exit.sink.split.i.i.i.i, label %eepro100_swi_interrupt.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  br i1 %.not.i.i.i.i.i, label %eepro100_swi_interrupt.exit.i.i, label %enable_interrupt.exit.sink.split.i.i.i.i

enable_interrupt.exit.sink.split.i.i.i.i:         ; preds = %bb.ac, %bb.ab
  %.sink14.i.i.i.i = phi i32 [ 1, %bb.ab ], [ 0, %bb.ac ]
  %.sink.i.i.i.i = phi i8 [ 1, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %.sink14.i.i.i.i) #10
  store i8 %.sink.i.i.i.i, ptr %i.bv, align 1
  %.pre.i13 = load i8, ptr %i.bo, align 1
  br label %eepro100_swi_interrupt.exit.i.i

eepro100_swi_interrupt.exit.i.i:                  ; preds = %enable_interrupt.exit.sink.split.i.i.i.i, %bb.ac, %bb.ab, %.eepro100_swi_interrupt.exit_crit_edge.i.i
  %i.bx = phi i8 [ %i.bn, %.eepro100_swi_interrupt.exit_crit_edge.i.i ], [ %.pre.i13, %enable_interrupt.exit.sink.split.i.i.i.i ], [ %i.bn, %bb.ac ], [ %i.bn, %bb.ab ] ; 2 uses
  %i.by = phi i8 [ %.pre.i.i, %.eepro100_swi_interrupt.exit_crit_edge.i.i ], [ %.sink.i.i.i.i, %enable_interrupt.exit.sink.split.i.i.i.i ], [ 0, %bb.ac ], [ %i.bw, %bb.ab ]
  %i.bz = xor i8 %i.bx, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12049
  %i.cb = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store i8 %i.cb, ptr %i.cc, align 16
  %i.cd = or i8 %i.bz, 15
  %i.ce = and i8 %i.cb, %i.cd
  %.not.i.i19.i = icmp ne i8 %i.ce, 0
  %i.cf = and i8 %i.bx, 1
  %.not11.not.i.i.i14 = icmp eq i8 %i.cf, 0
  %or.cond.i.i.i = and i1 %.not11.not.i.i.i14, %.not.i.i19.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 11825
  %.not.i.i17.i.i = icmp eq i8 %i.by, 0           ; 2 uses
  br i1 %or.cond.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %eepro100_swi_interrupt.exit.i.i
  br i1 %.not.i.i17.i.i, label %enable_interrupt.exit.sink.split.i.i.i15, label %eepro100_write1.exit

bb.ae:                                            ; preds = %eepro100_swi_interrupt.exit.i.i
  br i1 %.not.i.i17.i.i, label %eepro100_write1.exit, label %enable_interrupt.exit.sink.split.i.i.i15

enable_interrupt.exit.sink.split.i.i.i15:         ; preds = %bb.ae, %bb.ad
  %.sink14.i.i.i16 = phi i32 [ 1, %bb.ad ], [ 0, %bb.ae ]
  %.sink.i.i.i17 = phi i8 [ 1, %bb.ad ], [ 0, %bb.ae ]
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %.sink14.i.i.i16) #10
  store i8 %.sink.i.i.i17, ptr %i.cg, align 1
  br label %eepro100_write1.exit

bb.af:                                            ; preds = %bb.v
  tail call fastcc void @eepro100_write_port(ptr noundef %0)
  br label %eepro100_write1.exit

bb.ag:                                            ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = trunc i64 %2 to i32                     ; 2 uses
  %i.ck = lshr i32 %i.cj, 1
  %.lobit.i.i11 = and i32 %i.ck, 1
  %i.cl = and i16 %i.au, 1
  %i.cm = zext nneg i16 %i.cl to i32
  %i.cn = lshr i32 %i.cj, 2
  %.lobit6.i.i12 = and i32 %i.cn, 1
  tail call void @eeprom93xx_write(ptr noundef %i.ci, i32 noundef %.lobit.i.i11, i32 noundef %i.cm, i32 noundef %.lobit6.i.i12) #10
  br label %eepro100_write1.exit

bb.ah:                                            ; preds = %bb.v
  tail call fastcc void @eepro100_write_mdi(ptr noundef %0)
  br label %eepro100_write1.exit

bb.ai:                                            ; preds = %bb.v
  %i.co = load ptr, ptr @stderr, align 8
  %i.cp = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.co, i32 noundef 1, ptr noundef nonnull @.str.62) #10 ; 0 uses
  br label %eepro100_write1.exit

bb.aj:                                            ; preds = %bb.a
  %i.cq = trunc i64 %1 to i32                     ; 2 uses
  %i.cr = trunc i64 %2 to i32                     ; 4 uses
  %i.cs = icmp ult i32 %i.cq, 4093
  br i1 %i.cs, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 12048
  %i.cu = and i64 %1, 4095
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 3
  %.not.i.i22 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i22, label %e100_write_reg4.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 359, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_write_reg4) #12
  unreachable

e100_write_reg4.exit.i:                           ; preds = %bb.ak
  store i32 %i.cr, ptr %i.cv, align 1
  br label %bb.am

bb.am:                                            ; preds = %e100_write_reg4.exit.i, %bb.aj
  switch i32 %i.cq, label %bb.aq [
    i32 4, label %eepro100_write1.exit
    i32 8, label %bb.an
    i32 12, label %bb.ao
    i32 16, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @eepro100_write_port(ptr noundef %0)
  br label %eepro100_write1.exit

bb.ao:                                            ; preds = %bb.am
  %i.cy = lshr i32 %i.cr, 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = lshr i32 %i.cr, 17
  %.lobit.i.i20 = and i32 %i.db, 1
  %i.dc = and i32 %i.cy, 1
  %i.dd = lshr i32 %i.cr, 18
  %.lobit6.i.i21 = and i32 %i.dd, 1
  tail call void @eeprom93xx_write(ptr noundef %i.da, i32 noundef %.lobit.i.i20, i32 noundef %i.dc, i32 noundef %.lobit6.i.i21) #10
  br label %eepro100_write1.exit

bb.ap:                                            ; preds = %bb.am
  tail call fastcc void @eepro100_write_mdi(ptr noundef %0)
  br label %eepro100_write1.exit

bb.aq:                                            ; preds = %bb.am
  %i.de = load ptr, ptr @stderr, align 8
  %i.df = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.de, i32 noundef 1, ptr noundef nonnull @.str.63) #10 ; 0 uses
  br label %eepro100_write1.exit

bb.ar:                                            ; preds = %bb.a
  tail call void @abort() #12
  unreachable

eepro100_write1.exit:                             ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ai, %bb.ah, %bb.ag, %bb.af, %enable_interrupt.exit.sink.split.i.i.i15, %bb.ae, %bb.ad, %bb.y, %bb.x, %bb.w, %bb.v, %bb.v, %bb.v, %bb.v, %bb.r, %bb.q, %bb.p, %bb.o, %enable_interrupt.exit.sink.split.i.i, %bb.n, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i16 @eeprom93xx_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @eepro100_write_command(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = and i8 %1, 15
  switch i8 %i.c, label %bb.i [
    i8 0, label %eepro100_ru_command.exit
    i8 1, label %e100_read_reg4.exit.i
    i8 2, label %bb.b
    i8 4, label %bb.c
    i8 6, label %bb.g
  ]

e100_read_reg4.exit.i:                            ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 12048      ; 2 uses
  %.val13.i = load i8, ptr %i.d, align 16
  %i.e = and i8 %.val13.i, -61
  %i.f = or disjoint i8 %i.e, 16
  store i8 %i.f, ptr %i.d, align 16
  %i.g = getelementptr i8, ptr %0, i64 12052
  %.val.i.i = load i32, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11920
  store i32 %.val.i.i, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = tail call ptr @qemu_get_queue(ptr noundef %i.j) #10
  tail call void @qemu_flush_queued_packets(ptr noundef %i.k) #10
  br label %eepro100_ru_command.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 12048      ; 2 uses
  %.val12.i = load i8, ptr %i.l, align 16
  %i.m = and i8 %.val12.i, -61
  %i.n = or disjoint i8 %i.m, 16
  store i8 %i.n, ptr %i.l, align 16
  br label %eepro100_ru_command.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 12048      ; 3 uses
  %.val.i = load i8, ptr %i.o, align 16           ; 4 uses
  %i.p = and i8 %.val.i, 60
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %bb.d, label %eepro100_rnr_interrupt.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12051
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = xor i8 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12049 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = or i8 %i.v, 16                           ; 3 uses
  store i8 %i.w, ptr %i.u, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store i8 %i.w, ptr %i.x, align 16
  %i.y = or i8 %i.t, 15
  %i.z = and i8 %i.w, %i.y
  %.not.i.i.i = icmp ne i8 %i.z, 0
  %i.aa = and i8 %i.s, 1
  %.not11.not.i.i.i = icmp eq i8 %i.aa, 0
  %or.cond.i.i.i = and i1 %.not11.not.i.i.i, %.not.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0             ; 2 uses
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i, label %enable_interrupt.exit.sink.split.i.i.i, label %eepro100_rnr_interrupt.exit.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i, label %eepro100_rnr_interrupt.exit.i, label %enable_interrupt.exit.sink.split.i.i.i

enable_interrupt.exit.sink.split.i.i.i:           ; preds = %bb.f, %bb.e
  %.sink14.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.f ]
  %.sink.i.i.i = phi i8 [ 1, %bb.e ], [ 0, %bb.f ]
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %.sink14.i.i.i) #10
  store i8 %.sink.i.i.i, ptr %i.ab, align 1
  %.pre.i = load i8, ptr %i.o, align 16
  br label %eepro100_rnr_interrupt.exit.i

eepro100_rnr_interrupt.exit.i:                    ; preds = %enable_interrupt.exit.sink.split.i.i.i, %bb.f, %bb.e, %bb.c
  %i.ad = phi i8 [ %.pre.i, %enable_interrupt.exit.sink.split.i.i.i ], [ %.val.i, %bb.f ], [ %.val.i, %bb.e ], [ %.val.i, %bb.c ]
  %i.ae = and i8 %i.ad, -61
  store i8 %i.ae, ptr %i.o, align 16
  br label %eepro100_ru_command.exit

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12052 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 3
  %.not.i14.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i14.i, label %e100_read_reg4.exit16.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

e100_read_reg4.exit16.i:                          ; preds = %bb.g
  %.val.i15.i = load i32, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11916
  store i32 %.val.i15.i, ptr %i.ai, align 4
  br label %eepro100_ru_command.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr @stderr, align 8
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aj, i32 noundef 1, ptr noundef nonnull @.str.51) #10 ; 0 uses
  br label %eepro100_ru_command.exit

eepro100_ru_command.exit:                         ; preds = %bb.a, %e100_read_reg4.exit.i, %bb.b, %eepro100_rnr_interrupt.exit.i, %e100_read_reg4.exit16.i, %bb.i
  %i.al = lshr i8 %1, 4
  switch i8 %i.al, label %bb.s [
    i8 0, label %eepro100_cu_command.exit
    i8 1, label %e100_read_reg4.exit.i7
    i8 2, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.q
    i8 10, label %bb.r
  ]

e100_read_reg4.exit.i7:                           ; preds = %eepro100_ru_command.exit
  %i.am = getelementptr i8, ptr %0, i64 12048     ; 2 uses
  %.val31.i = load i8, ptr %i.am, align 16
  %i.an = and i8 %.val31.i, 63
  %i.ao = or disjoint i8 %i.an, -128
  store i8 %i.ao, ptr %i.am, align 16
  %i.ap = getelementptr i8, ptr %0, i64 12052
  %.val.i.i8 = load i32, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11912
  store i32 %.val.i.i8, ptr %i.aq, align 8
  tail call fastcc void @action_command(ptr noundef nonnull %0)
  br label %eepro100_cu_command.exit

bb.j:                                             ; preds = %eepro100_ru_command.exit
  %i.ar = getelementptr i8, ptr %0, i64 12048     ; 2 uses
  %.val30.i = load i8, ptr %i.ar, align 16
  %i.as = and i8 %.val30.i, 63
  %i.at = or disjoint i8 %i.as, -128
  store i8 %i.at, ptr %i.ar, align 16
  tail call fastcc void @action_command(ptr noundef nonnull %0)
  br label %eepro100_cu_command.exit

bb.k:                                             ; preds = %eepro100_ru_command.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12052 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 3
  %.not.i32.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i32.i, label %e100_read_reg4.exit34.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

e100_read_reg4.exit34.i:                          ; preds = %bb.k
  %.val.i33.i = load i32, ptr %i.au, align 1      ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 11924 ; 2 uses
  store i32 %.val.i33.i, ptr %i.ax, align 4
  %i.ay = and i32 %.val.i33.i, 3
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %eepro100_cu_command.exit, label %bb.m

bb.m:                                             ; preds = %e100_read_reg4.exit34.i
  %i.az = and i32 %.val.i33.i, -4
  store i32 %i.az, ptr %i.ax, align 4
  br label %eepro100_cu_command.exit

bb.n:                                             ; preds = %eepro100_ru_command.exit
  tail call fastcc void @dump_statistics(ptr noundef %0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 11924
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16176
  %i.bd = load i16, ptr %i.bc, align 16
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 40965, ptr %i.b, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.bi = call i32 @address_space_rw(ptr noundef nonnull %i.bh, i64 noundef range(i64 0, 4294967296) %i.bg, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 65536) 4, i1 noundef zeroext true) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %eepro100_cu_command.exit

bb.o:                                             ; preds = %eepro100_ru_command.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12052 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 3
  %.not.i35.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i35.i, label %e100_read_reg4.exit37.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

e100_read_reg4.exit37.i:                          ; preds = %bb.o
  %.val.i36.i = load i32, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 11908
  store i32 %.val.i36.i, ptr %i.bm, align 4
  br label %eepro100_cu_command.exit

bb.q:                                             ; preds = %eepro100_ru_command.exit
  tail call fastcc void @dump_statistics(ptr noundef %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11924
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16176
  %i.bq = load i16, ptr %i.bp, align 16
  %i.br = zext i16 %i.bq to i32
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 40967, ptr %i.a, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.bv = call i32 @address_space_rw(ptr noundef nonnull %i.bu, i64 noundef range(i64 0, 4294967296) %i.bt, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 65536) 4, i1 noundef zeroext true) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11948
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.bw, i8 noundef 0, i64 noundef 96, i1 noundef false) #10
  br label %eepro100_cu_command.exit

bb.r:                                             ; preds = %eepro100_ru_command.exit
  %i.bx = load ptr, ptr @stderr, align 8
  %i.by = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bx, i32 noundef 1, ptr noundef nonnull @.str.52) #10 ; 0 uses
  br label %eepro100_cu_command.exit

bb.s:                                             ; preds = %eepro100_ru_command.exit
  %i.bz = load ptr, ptr @stderr, align 8
  %i.ca = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull @.str.53) #10 ; 0 uses
  br label %eepro100_cu_command.exit

eepro100_cu_command.exit:                         ; preds = %eepro100_ru_command.exit, %e100_read_reg4.exit.i7, %bb.j, %e100_read_reg4.exit34.i, %bb.m, %bb.n, %e100_read_reg4.exit37.i, %bb.q, %bb.r, %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12050
  store i8 0, ptr %i.cb, align 2
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @eepro100_write_port(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.eepro100_selftest_t, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12056 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 3
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %e100_read_reg4.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

e100_read_reg4.exit:                              ; preds = %bb.a
  %.val.i = load i32, ptr %i.a, align 1           ; 2 uses
  %i.d = and i32 %.val.i, 3
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %e100_read_reg4.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i64 0, ptr %i.e, align 1
  tail call fastcc void @nic_selective_reset(ptr noundef nonnull %0)
  br label %bb.g

bb.d:                                             ; preds = %e100_read_reg4.exit
  %i.f = and i32 %.val.i, -4
  store i64 0, ptr %1, align 8, !annotation !10
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.i = call i32 @address_space_rw(ptr noundef nonnull %i.h, i64 noundef range(i64 0, 4294967296) %i.g, i64 4294967296, ptr noundef nonnull %1, i64 noundef range(i64 0, 65536) 8, i1 noundef zeroext false) #10 ; 0 uses
  store i32 -1, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.j, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.k = call i32 @address_space_rw(ptr noundef nonnull %i.h, i64 noundef range(i64 0, 4294967312) %i.g, i64 4294967296, ptr noundef nonnull %1, i64 noundef range(i64 0, 65536) 8, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %e100_read_reg4.exit
  tail call fastcc void @nic_selective_reset(ptr noundef nonnull %0)
  br label %bb.g

default.unreachable:                              ; preds = %e100_read_reg4.exit
  unreachable

bb.f:                                             ; preds = %e100_read_reg4.exit
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull @.str.58) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @eepro100_write_mdi(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12064 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 3
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %e100_read_reg4.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__.e100_read_reg4) #12
  unreachable

e100_read_reg4.exit:                              ; preds = %bb.a
  %.val.i = load i32, ptr %i.a, align 1           ; 11 uses
  %i.d = lshr i32 %.val.i, 16                     ; 2 uses
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 31                          ; 6 uses
  %i.g = trunc i32 %.val.i to i16                 ; 6 uses
  %i.h = and i32 %.val.i, 65011712
  %.not = icmp eq i32 %i.h, 2097152
  br i1 %.not, label %bb.c, label %e100_write_reg4.exit

bb.c:                                             ; preds = %e100_read_reg4.exit
  %i.i = lshr i32 %.val.i, 26
  %i.j = and i32 %i.i, 3                          ; 2 uses
  %i.k = add nsw i32 %i.j, -3
  %or.cond = icmp ult i32 %i.k, -2
  br i1 %or.cond, label %e100_write_reg4.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.d, 31                         ; 3 uses
  %i.m = icmp samesign ugt i32 %i.l, 6
  br i1 %i.m, label %e100_write_reg4.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i32 %i.j, 1
  br i1 %i.n, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  switch i32 %i.l, label %bb.l [
    i32 0, label %bb.g
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %.val.i, 32768
  %.not51 = icmp eq i32 %i.o, 0
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11826 ; 2 uses
  store i16 12288, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11828
  store i16 30733, ptr %i.q, align 2
  %i.r = zext nneg i8 %i.f to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.u = and i16 %i.g, 32255
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @stderr, align 8
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.v, i32 noundef 1, ptr noundef nonnull @.str.60) #10 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.f, %bb.f
  %i.x = load ptr, ptr @stderr, align 8
  %i.y = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull @.str.61) #10 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @stderr, align 8
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull @.str.61) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.f, %bb.h, %bb.i, %bb.l, %bb.k, %bb.j
  %.0 = phi i16 [ %i.g, %bb.l ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.g, %bb.j ], [ %i.g, %bb.k ], [ %i.g, %bb.f ], [ %i.g, %bb.f ] ; 2 uses
  %i.ab = zext nneg i8 %i.f to i64                ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @eepro100_mdi_mask, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 11826
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, %i.ad
  %i.ai = xor i16 %i.ad, -1
  %i.aj = and i16 %.0, %i.ai
  %i.ak = or i16 %i.ah, %i.aj
  store i16 %i.ak, ptr %i.af, align 2
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  switch i32 %i.l, label %bb.t [
    i32 0, label %bb.o
    i32 1, label %bb.q
    i32 6, label %bb.s
    i32 5, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.al = and i32 %.val.i, 32768
  %.not50 = icmp eq i32 %i.al, 0
  br i1 %.not50, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 11826
  store i16 12288, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 11828
  store i16 30733, ptr %i.an, align 2
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 11826
  %i.ap = zext nneg i8 %i.f to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = or i16 %i.ar, 32
  store i16 %i.as, ptr %i.aq, align 2
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 11826
  %i.au = zext nneg i8 %i.f to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.au
  store i16 16894, ptr %i.av, align 2
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 11826
  %i.ax = zext nneg i8 %i.f to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ax
  store i16 1, ptr %i.ay, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.s, %bb.r, %bb.q, %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 11826
  %i.ba = zext nneg i8 %i.f to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.1 = phi i16 [ %.0, %bb.m ], [ %i.bc, %bb.t ]  ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12049 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = or i8 %i.be, 8                          ; 2 uses
  store i8 %i.bf, ptr %i.bd, align 1
  %i.bg = or i32 %.val.i, 268435456               ; 4 uses
  %i.bh = and i32 %.val.i, 536870912
  %.not52 = icmp eq i32 %i.bh, 0
  br i1 %.not52, label %e100_write_reg4.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12051
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store i8 %i.bf, ptr %i.bk, align 16
  %i.bl = and i8 %i.bj, 1
  %.not11.not.i.i = icmp eq i8 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %.not.i.i.i = icmp eq i8 %i.bn, 0               ; 2 uses
  br i1 %.not11.not.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i.i, label %enable_interrupt.exit.sink.split.i.i, label %e100_write_reg4.exit

bb.x:                                             ; preds = %bb.v
  br i1 %.not.i.i.i, label %e100_write_reg4.exit, label %enable_interrupt.exit.sink.split.i.i

enable_interrupt.exit.sink.split.i.i:             ; preds = %bb.x, %bb.w
  %.sink14.i.i = phi i32 [ 1, %bb.w ], [ 0, %bb.x ]
  %.sink.i.i = phi i8 [ 1, %bb.w ], [ 0, %bb.x ]
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %.sink14.i.i) #10
  store i8 %.sink.i.i, ptr %i.bm, align 1
  br label %e100_write_reg4.exit

e100_write_reg4.exit:                             ; preds = %bb.u, %e100_read_reg4.exit, %bb.c, %bb.d, %bb.w, %bb.x, %enable_interrupt.exit.sink.split.i.i
  %.047 = phi i32 [ %i.bg, %bb.u ], [ %.val.i, %e100_read_reg4.exit ], [ %.val.i, %bb.c ], [ %.val.i, %bb.d ], [ %i.bg, %bb.w ], [ %i.bg, %bb.x ], [ %i.bg, %enable_interrupt.exit.sink.split.i.i ]
  %.2 = phi i16 [ %.1, %bb.u ], [ 0, %e100_read_reg4.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.1, %bb.w ], [ %.1, %bb.x ], [ %.1, %enable_interrupt.exit.sink.split.i.i ]
  %i.bo = and i32 %.047, -65536
  %i.bp = zext i16 %.2 to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.a, align 1
  ret void
}

declare void @pci_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_flush_queued_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @action_command(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca [2600 x i8], align 16             ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i16, align 2                      ; 15 uses
  %i.e = alloca i16, align 2                      ; 9 uses
  %i.f = alloca [6 x i8], align 1                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11908
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11912 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11944 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11928 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11930
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11932
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11940
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16178
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16150
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 11943 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11948 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16144
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12051 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12049 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11824 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 11825 ; 5 uses
  br label %eepro100_cna_interrupt.exit

eepro100_cna_interrupt.exit:                      ; preds = %bb.u, %bb.a
  %.036 = phi i32 [ 16, %bb.a ], [ %i.al, %bb.u ] ; 2 uses
  %i.ab = load i32, ptr %i.g, align 4
  %i.ac = load i32, ptr %i.h, align 8
  %i.ad = add i32 %i.ac, %i.ab                    ; 2 uses
  store i32 %i.ad, ptr %i.i, align 8
  %i.ae = zext i32 %i.ad to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.af = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.ae, i64 4294967296, ptr noundef nonnull %i.j, i64 noundef range(i64 0, 65536) 16, i1 noundef zeroext false) #10 ; 0 uses
  %i.ag = load i16, ptr %i.l, align 2             ; 3 uses
  %i.ah = zext i16 %i.ag to i32                   ; 3 uses
  %.not = icmp sgt i16 %i.ag, -1
  %i.ai = and i32 %i.ah, 16384
  %.not37 = icmp eq i32 %i.ai, 0
  %i.aj = and i32 %i.ah, 8192
  %.not38 = icmp eq i32 %i.aj, 0
  %i.ak = and i32 %i.ah, 16
  %.not39 = icmp eq i32 %i.ak, 0
  %i.al = add nsw i32 %.036, -1
  %i.am = icmp eq i32 %.036, 0
  br i1 %i.am, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %eepro100_cna_interrupt.exit
  %i.an = load i32, ptr %i.m, align 4
  store i32 %i.an, ptr %i.h, align 8
  %i.ao = and i16 %i.ag, 7
  switch i16 %i.ao, label %default.unreachable61 [
    i16 0, label %set_multicast_list.exit
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %set_multicast_list.exit
    i16 7, label %bb.m
    i16 6, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr %i.i, align 8
  %i.aq = add i32 %i.ap, 8
  %i.ar = zext i32 %i.aq to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.as = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.ar, i64 4294967296, ptr noundef nonnull %i.w, i64 noundef range(i64 0, 65536) 6, i1 noundef zeroext false) #10 ; 0 uses
  br label %set_multicast_list.exit

bb.d:                                             ; preds = %bb.b
  %i.at = load i32, ptr %i.i, align 8
  %i.au = add i32 %i.at, 8
  %i.av = zext i32 %i.au to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.aw = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.av, i64 4294967296, ptr noundef nonnull %i.v, i64 noundef range(i64 0, 65536) 22, i1 noundef zeroext false) #10 ; 0 uses
  br label %set_multicast_list.exit

bb.e:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.n, align 8
  %i.ay = and i32 %i.ax, 16383                    ; 2 uses
  store i64 0, ptr %i.u, align 8
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %set_multicast_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.013.i = phi i32 [ %i.bp, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, i8 0, i64 6, i1 false), !annotation !10
  %i.az = load i32, ptr %i.i, align 8
  %i.ba = add nuw nsw i32 %.013.i, 10
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = zext i32 %i.bb to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.bd = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.bc, i64 4294967296, ptr noundef nonnull %i.f, i64 noundef range(i64 0, 65536) 6, i1 noundef zeroext false) #10 ; 0 uses
  %i.be = call i32 @net_crc32(ptr noundef nonnull %i.f, i32 noundef 6) #10 ; 2 uses
  %i.bf = lshr i32 %i.be, 2
  %i.bg = and i32 %i.bf, 7
  %i.bh = shl nuw nsw i32 1, %i.bg
  %i.bi = lshr i32 %i.be, 5
  %i.bj = and i32 %i.bi, 7
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = trunc nuw i32 %i.bh to i8
  %i.bo = or i8 %i.bm, %i.bn
  store i8 %i.bo, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  %i.bp = add nuw nsw i32 %.013.i, 6              ; 2 uses
  %i.bq = icmp samesign ult i32 %i.bp, %i.ay
  br i1 %i.bq, label %.lr.ph.i, label %set_multicast_list.exit, !llvm.loop !11

bb.f:                                             ; preds = %bb.b
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr @stderr, align 8
  %i.bs = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.br, i32 noundef 1, ptr noundef nonnull @.str.54) #10 ; 0 uses
  br label %set_multicast_list.exit

bb.h:                                             ; preds = %bb.f
  %i.bt = load i32, ptr %i.n, align 8             ; 2 uses
  %i.bu = load i16, ptr %i.o, align 4
  %i.bv = and i16 %i.bu, 16383                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2600) %i.b, i8 0, i64 2600, i1 false), !annotation !10
  %i.bw = load i32, ptr %i.i, align 8             ; 6 uses
  %i.bx = add i32 %i.bw, 16                       ; 2 uses
  %.not87.i = icmp eq i16 %i.bv, 0
  br i1 %.not87.i, label %._crit_edge.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.h
  %spec.store.select.i = call i16 @llvm.umin.i16(i16 %i.bv, i16 2600) ; 2 uses
  %i.by = zext nneg i16 %spec.store.select.i to i64
  %i.bz = zext i32 %i.bx to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.ca = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.bz, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 65536) %i.by, i1 noundef zeroext false) #10 ; 0 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.h
  %.0.lcssa.i = phi i16 [ 0, %bb.h ], [ %spec.store.select.i, %.lr.ph.i40 ] ; 5 uses
  %i.cb = icmp eq i32 %i.bt, -1
  br i1 %i.cb, label %tx_command.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i16 0, ptr %i.d, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i16 0, ptr %i.e, align 2, !annotation !10
  %i.cc = load i8, ptr %i.p, align 2, !range !7, !noundef !8
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.ce = load i8, ptr %i.q, align 2
  %i.cf = and i8 %i.ce, 16
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.j
  %i.ch = zext i32 %i.bx to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.ci = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.ch, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef range(i64 0, 65536) 4, i1 noundef zeroext false) #10 ; 0 uses
  %i.cj = add i32 %i.bw, 20
  %i.ck = zext i32 %i.cj to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.cl = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.ck, i64 4294967296, ptr noundef nonnull %i.d, i64 noundef range(i64 0, 65536) 2, i1 noundef zeroext false) #10 ; 0 uses
  %i.cm = add i32 %i.bw, 22
  %i.cn = zext i32 %i.cm to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.co = call i32 @address_space_rw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 4294967296) %i.cn, i64 4294967296, ptr noundef nonnull %i.e, i64 noundef range(i64 0, 65536) 2, i1 noundef zeroext false) #10 ; 0 uses
  %i.cp = load i16, ptr %i.d, align 2
  %i.cq = zext i16 %i.cp to i64
  %i.cr = zext nneg i16 %.0.lcssa.i to i64        ; 2 uses
  %i.cs = sub nuw nsw i64 2600, %i.cr
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cq) ; 2 uses
end_hunk_0
