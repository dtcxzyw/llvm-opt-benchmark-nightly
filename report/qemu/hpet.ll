Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hpet?download=true
inline.NumInlined: 129
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_qemu_init_hpet_register_types:bb.a

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @hpet_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @hpet_device_info) #7 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @hpet_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 50, ptr noundef nonnull @__func__.HPET) #7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  tail call void @qemu_mutex_init(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 3 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull @hpet_ram_ops, ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef 1024) #7
  tail call void @memory_region_enable_lockless_io(ptr noundef nonnull %i.e) #7
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.e) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @hpet_device_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @hpet_realize, ptr %i.b, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @hpet_reset) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_hpet, ptr %i.c, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @hpet_device_properties, i64 noundef 3) #7
  ret void
}

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_enable_lockless_io(ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @hpet_ram_read(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %.tr = trunc i64 %1 to i32
  %i.a = shl i32 %.tr, 3
  %i.b = and i32 %i.a, 32                         ; 7 uses
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_hpet_ram_read.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_HPET_RAM_READ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.d, 0
  br i1 %.not1.i, label %trace_hpet_ram_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %trace_hpet_ram_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, i64 noundef %1) #7
  br label %trace_hpet_ram_read.exit

trace_hpet_ram_read.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = and i64 %1, -5                           ; 2 uses
  %i.h = icmp eq i64 %i.g, 240
  br i1 %i.h, label %.preheader, label %bb.m

.preheader:                                       ; preds = %trace_hpet_ram_read.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 3360
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3376
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.h
  %i.m = load atomic i32, ptr %i.i monotonic, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  fence acquire
  %i.n = and i32 %i.m, -2
  %.val = load i64, ptr %i.j, align 16
  %i.o = and i64 %.val, 1
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.l, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.r = load i64, ptr %i.k, align 16
  %i.s = add i64 %i.r, %i.q
  %i.t = udiv i64 %i.s, 10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.039 = phi i64 [ %i.p, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !13
  fence acquire
  %i.u = load atomic i32, ptr %i.i monotonic, align 8
  %.not59 = icmp eq i32 %i.u, %i.n
  br i1 %.not59, label %bb.i, label %bb.e, !llvm.loop !10

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.v, 0
  br i1 %.not.i45, label %trace_hpet_ram_read_reading_counter.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.w = load i16, ptr @_TRACE_HPET_RAM_READ_READING_COUNTER_DSTATE, align 2
  %.not2.i46 = icmp eq i16 %i.w, 0
  br i1 %.not2.i46, label %trace_hpet_ram_read_reading_counter.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not3.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i, label %trace_hpet_ram_read_reading_counter.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i32 noundef 0, i64 noundef %.039) #7
  br label %trace_hpet_ram_read_reading_counter.exit

trace_hpet_ram_read_reading_counter.exit:         ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.z = zext nneg i32 %i.b to i64
  %i.aa = lshr i64 %.039, %i.z
  br label %bb.ai

bb.m:                                             ; preds = %trace_hpet_ram_read.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ac = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.ac(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.8, i32 noundef 56) #7, !inline_history !0
  %i.ad = icmp ult i64 %1, 256
  br i1 %i.ad, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %trunc = trunc nuw i64 %i.g to i8
  switch i8 %trunc, label %bb.r [
    i8 0, label %bb.o
    i8 16, label %bb.p
    i8 32, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = zext nneg i32 %i.b to i64
  %i.ah = lshr i64 %i.af, %i.ag
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.aj = load i64, ptr %i.ai, align 16
  %i.ak = zext nneg i32 %i.b to i64
  %i.al = lshr i64 %i.aj, %i.ak
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.q:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.b to i64
  %i.ap = lshr i64 %i.an, %i.ao
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.r:                                             ; preds = %bb.n
  %i.aq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i47 = icmp eq i32 %i.aq, 0
  br i1 %.not.i47, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.ar = load i16, ptr @_TRACE_HPET_RAM_READ_INVALID_DSTATE, align 2
  %.not1.i48 = icmp eq i16 %i.ar, 0
  br i1 %.not1.i48, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not2.i49 = icmp eq i32 %i.at, 0
  br i1 %.not2.i49, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9) #7
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.v:                                             ; preds = %bb.m
  %i.au = add i64 %1, 7936
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %3 = trunc i64 %i.av to i32
  %4 = and i32 %3, 255                            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.ax = load i8, ptr %i.aw, align 16
  %5 = zext i8 %i.ax to i32
  %.not = icmp samesign ult i32 %4, %5
  br i1 %.not, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i50 = icmp eq i32 %i.ay, 0
  br i1 %.not.i50, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.az = load i16, ptr @_TRACE_HPET_TIMER_ID_OUT_OF_RANGE_DSTATE, align 2
  %.not1.i51 = icmp eq i16 %i.az, 0
  br i1 %.not1.i51, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not2.i52 = icmp eq i32 %i.bb, 0
  br i1 %.not2.i52, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i32 noundef %4) #7
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.aa:                                            ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.bd = and i64 %i.av, 255
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.bc, i64 %i.bd ; 3 uses
  %i.bf = and i64 %1, 27
  switch i64 %i.bf, label %bb.ae [
    i64 0, label %bb.ab
    i64 8, label %bb.ac
    i64 16, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = zext nneg i32 %i.b to i64
  %i.bj = lshr i64 %i.bh, %i.bi
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = zext nneg i32 %i.b to i64
  %i.bn = lshr i64 %i.bl, %i.bm
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = zext nneg i32 %i.b to i64
  %i.br = lshr i64 %i.bp, %i.bq
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.ae:                                            ; preds = %bb.aa
  %i.bs = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i53 = icmp eq i32 %i.bs, 0
  br i1 %.not.i53, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.af, !prof !8

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i16, ptr @_TRACE_HPET_RAM_READ_INVALID_DSTATE, align 2
  %.not1.i54 = icmp eq i16 %i.bt, 0
  br i1 %.not1.i54, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = load i32, ptr @qemu_loglevel, align 4
  %i.bv = and i32 %i.bu, 32768
  %.not2.i55 = icmp eq i32 %i.bv, 0
  br i1 %.not2.i55, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9) #7
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.y, %bb.x, %bb.w, %bb.ac, %bb.ab, %bb.z, %bb.ad, %bb.r, %bb.s, %bb.t, %bb.u, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.q, %bb.p, %bb.o
  %.1 = phi i64 [ 0, %bb.r ], [ %i.ah, %bb.o ], [ %i.al, %bb.p ], [ %i.ap, %bb.q ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ %i.bn, %bb.ac ], [ %i.bj, %bb.ab ], [ 0, %bb.z ], [ %i.br, %bb.ad ]
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.8, i32 noundef 56) #7
  br label %bb.ai

bb.ai:                                            ; preds = %glib_autoptr_cleanup_QemuLockable.exit, %trace_hpet_ram_read_reading_counter.exit
  %.2 = phi i64 [ %i.aa, %trace_hpet_ram_read_reading_counter.exit ], [ %.1, %glib_autoptr_cleanup_QemuLockable.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @hpet_ram_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.tr = trunc i64 %1 to i32
  %i.a = shl i32 %.tr, 3
  %i.b = and i32 %i.a, 32                         ; 9 uses
  %i.c = shl i32 %3, 3                            ; 5 uses
  %i.d = sub nuw nsw i32 64, %i.b                 ; 3 uses
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.d) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.g = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.g(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.8, i32 noundef 56) #7, !inline_history !0
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_hpet_ram_write.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_HPET_RAM_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.i, 0
  br i1 %.not2.i, label %trace_hpet_ram_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not3.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i, label %trace_hpet_ram_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i64 noundef %1, i64 noundef %2) #7
  br label %trace_hpet_ram_write.exit

trace_hpet_ram_write.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = icmp ult i64 %1, 256
  br i1 %i.l, label %bb.e, label %bb.ai

bb.e:                                             ; preds = %trace_hpet_ram_write.exit
  %i.m = trunc nuw i64 %1 to i8
  %trunc = and i8 %i.m, -5
  %i.n = add i8 %trunc, 16                        ; 2 uses
  %i.o = tail call i8 @llvm.fshl.i8(i8 %i.n, i8 %i.n, i8 4)
  switch i8 %i.o, label %bb.ae [
    i8 1, label %glib_autoptr_cleanup_QemuLockable.exit
    i8 2, label %bb.f
    i8 3, label %bb.v
    i8 0, label %bb.z
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.q = load i64, ptr %i.p, align 16             ; 5 uses
  %i.r = icmp eq i32 %i.c, 0
  br i1 %i.r, label %bb.g, label %deposit64.exit

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #8
  unreachable

deposit64.exit:                                   ; preds = %bb.f
  %i.s = sub nuw nsw i32 64, %i.e
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t                        ; 2 uses
  %i.v = zext nneg i32 %i.b to i64                ; 2 uses
  %i.w = shl i64 %i.u, %i.v
  %i.x = xor i64 %i.w, -1
  %i.y = and i64 %i.q, %i.x
  %i.z = and i64 %i.u, %2
  %i.aa = shl i64 %i.z, %i.v
  %i.ab = or i64 %i.y, %i.aa                      ; 4 uses
  %i.ac = and i64 %i.ab, 3
  %i.ad = and i64 %i.q, -4
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = add i32 %i.ag, 1
  store atomic i32 %i.ah, ptr %i.af monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !17
  fence release
  store i64 %i.ae, ptr %i.p, align 16
  %i.ai = and i64 %i.q, 1
  %.not.i169 = icmp eq i64 %i.ai, 0
  %i.aj = trunc i64 %i.ab to i1
  %i.ak = and i1 %.not.i169, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.m

bb.h:                                             ; preds = %deposit64.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.am = load i64, ptr %i.al, align 16
  %i.an = mul i64 %i.am, 10
  %i.ao = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %i.ap, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 16
  %.not234 = icmp eq i8 %i.as, 0
  br i1 %.not234, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3368
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph231, %bb.l
  %indvars.iv240 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next241, %bb.l ] ; 3 uses
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.at, i64 %indvars.iv240 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %.val162 = load i64, ptr %i.aw, align 8
  %i.ax = and i64 %.val162, 4
  %.not158 = icmp eq i64 %i.ax, 0
  br i1 %.not158, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i64, ptr %i.au, align 8
  %i.az = trunc nuw nsw i64 %indvars.iv240 to i32
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = sext i32 %i.ba to i64
  %i.bc = and i64 %i.ay, %i.bb
  %.not159 = icmp eq i64 %i.bc, 0
  br i1 %.not159, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @update_irq(ptr noundef nonnull %i.av, i32 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  tail call fastcc void @hpet_set_timer(ptr noundef nonnull %i.av)
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.bd = load i8, ptr %i.ar, align 16
  %i.be = zext i8 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next241, %i.be
  br i1 %i.bf, label %bb.i, label %.loopexit, !llvm.loop !14

bb.m:                                             ; preds = %deposit64.exit
  %i.bg = and i64 %i.ab, 1
  %.not.i170 = trunc i64 %i.q to i1
  %.not4.i = icmp eq i64 %i.bg, 0
end_hunk_0
