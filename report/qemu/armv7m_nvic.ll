Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/armv7m_nvic?download=true
inline.NumInlined: 258
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@armv7m_nvic_get_ready_status:exc_is_banked.exit
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.az = icmp eq i32 %1, 3
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = icmp sgt i32 %i.au, -1
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %or.cond3 = and i1 %2, %i.b
  %i.bb = zext nneg i32 %1 to i64
  %.v.v = select i1 %or.cond3, i64 3888, i64 816
  %.v = getelementptr inbounds nuw i8, ptr %0, i64 %.v.v
  %i.bc = getelementptr inbounds nuw [6 x i8], ptr %.v, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i8, ptr %i.bd, align 2
  %.not24 = icmp eq i8 %i.be, 0
  br i1 %.not24, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load i16, ptr %i.bc, align 2            ; 2 uses
  %i.bg = sext i16 %i.bf to i32                   ; 2 uses
  %i.bh = icmp slt i16 %i.bf, 0
  br i1 %i.bh, label %exc_group_prio.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3984
  %i.bj = zext i1 %2 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add i32 %i.bl, 1
  %i.bn = shl nsw i32 -1, %i.bm
  %i.bo = and i32 %i.bn, %i.bg                    ; 3 uses
  br i1 %2, label %exc_group_prio.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 20244
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 16384
  %.not.i25 = icmp eq i32 %i.br, 0
  br i1 %.not.i25, label %exc_group_prio.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = lshr i32 %i.bo, 1
  %i.bt = add nuw nsw i32 %i.bs, 128
  br label %exc_group_prio.exit

exc_group_prio.exit:                              ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i26 = phi i32 [ %i.bg, %bb.v ], [ %i.bo, %bb.w ], [ %i.bt, %bb.y ], [ %i.bo, %bb.x ]
  %i.bu = icmp slt i32 %.0.i26, %i.au
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %exc_group_prio.exit, %bb.t
  %.0 = phi i1 [ %i.ba, %bb.t ], [ false, %bb.u ], [ %i.bu, %exc_group_prio.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_armv7m_nvic_register_types() #2 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @armv7m_nvic_register_types, i32 noundef 4) #11
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @armv7m_nvic_register_types() #2 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @armv7m_nvic_info) #11 ; 0 uses
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #5

declare void @qemu_cpu_kick(ptr noundef) local_unnamed_addr #5

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @armv7m_nvic_instance_init(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11 ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.30, i32 noundef 19, ptr noundef nonnull @__func__.NVIC) #11 ; 2 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4808
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4816
  tail call void @qdev_init_gpio_out_named(ptr noundef %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.25, i32 noundef 1) #11
  tail call void @qdev_init_gpio_in_named_with_opaque(ptr noundef %i.a, ptr noundef nonnull @nvic_systick_trigger, ptr noundef %i.a, ptr noundef nonnull @.str.26, i32 noundef 2) #11
  tail call void @qdev_init_gpio_in_named_with_opaque(ptr noundef %i.a, ptr noundef nonnull @nvic_nmi_trigger, ptr noundef %i.a, ptr noundef nonnull @.str.27, i32 noundef 1) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @armv7m_nvic_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_nvic, ptr %i.b, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @props_nvic, i64 noundef 2) #11
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @armv7m_nvic_reset) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @armv7m_nvic_realize, ptr %i.c, align 8
  ret void
}

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @qdev_init_gpio_out_named(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @nvic_systick_trigger(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne i32 %1, 0
  tail call fastcc void @do_armv7m_nvic_set_pending(ptr noundef %0, i32 noundef 15, i1 noundef zeroext %i.a, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @nvic_nmi_trigger(ptr nofree noundef captures(none) %0, i32 %1, i32 noundef %2) #2 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_nvic_set_nmi_level.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_NVIC_SET_NMI_LEVEL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_nvic_set_nmi_level.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_nvic_set_nmi_level.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i32 noundef %2) #11
  br label %trace_nvic_set_nmi_level.exit

trace_nvic_set_nmi_level.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_nvic_set_nmi_level.exit
  tail call fastcc void @do_armv7m_nvic_set_pending(ptr noundef %0, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %trace_nvic_set_nmi_level.exit
  ret void
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @qdev_init_gpio_in_named_with_opaque(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @armv7m_nvic_reset(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.30, i32 noundef 19, ptr noundef nonnull @__func__.NVIC) #11 ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3072) %i.b, i8 noundef 0, i64 noundef 3072, i1 noundef false) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.c, i8 noundef 0, i64 noundef 96, i1 noundef false) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3984
  store i32 0, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3988
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 828
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 830
  store i8 1, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 884
  store i8 1, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 902
  store i8 1, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 908
  store i8 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 890
  store i8 0, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16496
  %i.o = getelementptr i8, ptr %i.m, i64 95424    ; 3 uses
  %.val37 = load i64, ptr %i.o, align 16
  %1 = and i64 %.val37, 16777216
  %.not = icmp eq i64 %1, 0
  %2 = select i1 %.not, i16 -3, i16 -4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 822
  store i16 %2, ptr %i.p, align 2
  store i16 -2, ptr %i.f, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 834
  store i16 -1, ptr %i.q, align 2
  %.val36 = load i64, ptr %i.o, align 16
  %i.r = and i64 %.val36, 8589934592
  %.not34.a = icmp eq i64 %i.r, 0
  br i1 %.not34.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3906
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3908
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3956
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3974
  store i8 1, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3980
  store i8 1, ptr %i.w, align 4
  store i16 -1, ptr %i.s, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 836
  store i8 %.sink, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4516
  store i32 256, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4508
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4512
  store i8 0, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4520
  store i32 256, ptr %i.ab, align 8
  %.val = load i64, ptr %i.o, align 16
  %i.ac = and i64 %.val, 8589934592
  %.not35 = icmp eq i64 %i.ac, 0
  br i1 %.not35, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %i.a, i64 4009
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(496) %scevgep, i8 1, i64 496, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 3993
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ad, i8 noundef 0, i64 noundef 512, i1 noundef false) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.d
  %i.ae = load i8, ptr @tcg_allowed, align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  tail call void @arm_rebuild_hflags(ptr noundef nonnull %i.n) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @armv7m_nvic_realize(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.30, i32 noundef 19, ptr noundef nonnull @__func__.NVIC) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 95424
  %.val32 = load i64, ptr %i.d, align 16
  %i.e = and i64 %.val32, 128
  %.not28 = icmp eq i64 %i.e, 0
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2722, ptr noundef nonnull @__func__.armv7m_nvic_realize, ptr noundef nonnull @.str.54) #11
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4800 ; 3 uses
  %i.g = load i32, ptr %i.f, align 16             ; 3 uses
  %i.h = icmp ugt i32 %i.g, 496
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2727, ptr noundef nonnull @__func__.armv7m_nvic_realize, ptr noundef nonnull @.str.55, i32 noundef %i.g) #11
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @qdev_init_gpio_in(ptr noundef %0, ptr noundef nonnull @set_irq_level, i32 noundef %i.g) #11
  %i.i = load i32, ptr %i.f, align 16
  %i.j = add i32 %i.i, 16
  store i32 %i.j, ptr %i.f, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3992 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8               ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 95424
  %.val31 = load i64, ptr %i.o, align 16
  %2 = and i64 %.val31, 8
  %.not30 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = select i1 %.not30, i8 2, i8 8
  store i8 %i.p, ptr %i.k, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %3 = zext i8 %i.l to i32                        ; 2 uses
  %4 = select i1 %.not30, i32 2, i32 3            ; 2 uses
  %i.q = icmp samesign ugt i32 %4, %3
  %i.r = icmp ugt i8 %i.l, 8
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.h
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2749, ptr noundef nonnull @__func__.armv7m_nvic_realize, ptr noundef nonnull @.str.56, i32 noundef %3, i32 noundef %4) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4528 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull @nvic_sysreg_ops, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.57, i64 noundef 4096) #11
  %i.t = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #11
  tail call void @sysbus_init_mmio(ptr noundef %i.t, ptr noundef nonnull %i.s) #11
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i, %bb.e, %bb.c
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @nvic_post_load(ptr nofree noundef captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 95424
  %.val = load i64, ptr %i.c, align 16
  %2 = and i64 %.val, 16777216
  %.not = icmp eq i64 %2, 0
  %3 = select i1 %.not, i32 -3, i32 -4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 822
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %.not13.a = icmp eq i32 %3, %i.g
  br i1 %.not13.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.i = load i16, ptr %i.h, align 4
  %.not14.a = icmp eq i16 %i.i, -2
  br i1 %.not14.a, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 834
  %i.k = load i16, ptr %i.j, align 2
  %.not15 = icmp eq i16 %i.k, -1
  br i1 %.not15, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4800
  %i.m = load i32, ptr %i.l, align 16             ; 2 uses
  %i.n = icmp ugt i32 %i.m, 4
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.m to i64
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [6 x i8], ptr %i.d, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp ugt i16 %i.p, 255
  br i1 %i.q, label %.loopexit, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  tail call fastcc void @nvic_recompute_state(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b, %bb.c, %._crit_edge
  %.012 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @nvic_security_post_load(ptr nofree noundef readonly captures(none) %0, i32 %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3906
  %i.b = load i16, ptr %i.a, align 2
  switch i16 %i.b, label %.loopexit [
    i16 -1, label %bb.b
    i16 -3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3912
  %i.d = load i16, ptr %i.c, align 2
  %i.e = icmp ugt i16 %i.d, 255
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3918
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp ugt i16 %i.g, 255
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3924
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp ugt i16 %i.j, 255
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3930
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp ugt i16 %i.m, 255
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp ugt i16 %i.p, 255
  br i1 %i.q, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3942
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp ugt i16 %i.s, 255
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3948
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp ugt i16 %i.v, 255
  br i1 %i.w, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3954
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp ugt i16 %i.y, 255
  br i1 %i.z, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = icmp ugt i16 %i.ab, 255
  br i1 %i.ac, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3966
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp ugt i16 %i.ae, 255
  br i1 %i.af, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3972
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = icmp ugt i16 %i.ah, 255
  br i1 %i.ai, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3978
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = icmp ugt i16 %i.ak, 255
  %spec.select = zext i1 %i.al to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.c ], [ %spec.select, %bb.m ], [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.e ], [ 1, %bb.l ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.k ]
  ret i32 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i1 @nvic_security_needed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 95424
  %.val = load i64, ptr %i.c, align 16
  %i.d = and i64 %.val, 8589934592
  %i.e = icmp ne i64 %i.d, 0
  ret i1 %i.e
}

declare void @arm_rebuild_hflags(ptr noundef) local_unnamed_addr #5

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @qdev_init_gpio_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @set_irq_level(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = add nuw nsw i32 %1, 16                   ; 4 uses
  %i.b = icmp ult i32 %1, 2147483632
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4800
  %i.d = load i32, ptr %i.c, align 16
  %i.e = icmp ult i32 %i.a, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 973, ptr noundef nonnull @__PRETTY_FUNCTION__.set_irq_level) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %trace_nvic_set_irq_level.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.g = load i16, ptr @_TRACE_NVIC_SET_IRQ_LEVEL_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.g, 0
  br i1 %.not2.i, label %trace_nvic_set_irq_level.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not3.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i, label %trace_nvic_set_irq_level.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, i32 noundef range(i32 16, -2147483648) %i.a, i32 noundef %2) #11
  br label %trace_nvic_set_irq_level.exit

trace_nvic_set_irq_level.exit:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.j = zext nneg i32 %i.a to i64
  %i.k = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 821 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %.not = icmp eq i32 %2, %i.n
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %trace_nvic_set_irq_level.exit
  %i.o = trunc i32 %2 to i8
  store i8 %i.o, ptr %i.l, align 1
end_hunk_0
