Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_ast27x0?download=true
inline.NumInlined: 140
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@aspeed_soc_ast2700_dram_init:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  tail call void @memory_region_init(ptr noundef nonnull %i.h, ptr noundef %i.b, ptr noundef nonnull @.str.120, i64 noundef %i.f) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.h, i64 noundef 0, ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2624
  %i.l = load ptr, ptr %i.i, align 16
  tail call void @address_space_init(ptr noundef nonnull %i.k, ptr noundef %i.l, ptr noundef nonnull @.str.92) #9
  %i.m = icmp ult i64 %i.f, %i.g
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 947072 ; 2 uses
  %i.o = sub nuw i64 %i.g, %i.f
  tail call void @memory_region_init_io(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull @aspeed_ram_capacity_ops, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.121, i64 noundef %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 608
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.u, %i.f
  tail call void @memory_region_add_subregion(ptr noundef %i.q, i64 noundef %i.v, ptr noundef nonnull %i.n) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 608
  %i.ab = load i64, ptr %i.aa, align 8
  tail call void @memory_region_add_subregion(ptr noundef %i.x, i64 noundef %i.ab, ptr noundef nonnull %i.h) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @ASPEED_WDT_GET_CLASS(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef 18, ptr noundef nonnull @__func__.ASPEED_WDT_GET_CLASS) #9
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @ASPEED_I2C_GET_CLASS(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef 35, ptr noundef nonnull @__func__.ASPEED_I2C_GET_CLASS) #9
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @aspeed_soc_ast2700_get_irq_index(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 255) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81, i32 noundef 157, ptr noundef nonnull @__func__.ASPEED27X0_SOC) #9
  %i.b = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.81, i32 noundef 124, ptr noundef nonnull @__func__.ASPEED_SOC_GET_CLASS) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  switch i32 %i.h, label %bb.d [
    i32 192, label %bb.e
    i32 193, label %bb.b
    i32 194, label %.fold.split
    i32 195, label %.fold.split43
    i32 196, label %.fold.split44
    i32 197, label %.fold.split45
    i32 198, label %bb.c
    i32 199, label %.fold.split46
    i32 200, label %.fold.split47
    i32 201, label %.fold.split48
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.6, i32 noundef 299, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_soc_ast2700_get_irq_index) #10
  unreachable

.fold.split:                                      ; preds = %bb.a
  br label %bb.e

.fold.split43:                                    ; preds = %bb.a
  br label %bb.e

.fold.split44:                                    ; preds = %bb.a
  br label %bb.e

.fold.split45:                                    ; preds = %bb.a
  br label %bb.e

.fold.split46:                                    ; preds = %bb.a
  br label %bb.e

.fold.split47:                                    ; preds = %bb.a
  br label %bb.e

.fold.split48:                                    ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 318, ptr noundef nonnull @__func__.aspeed_soc_ast2700_get_irq_index, ptr noundef null) #10
  unreachable

bb.e:                                             ; preds = %.fold.split46, %.fold.split47, %.fold.split48, %.fold.split, %.fold.split43, %.fold.split44, %.fold.split45, %bb.a, %bb.c
  %.lcssa.ph.sink60 = phi ptr [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 120), %.fold.split45 ], [ @ast2700_gic_intcmap, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 96), %.fold.split44 ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 48), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 72), %.fold.split43 ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 192), %.fold.split47 ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 168), %.fold.split46 ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 216), %.fold.split48 ], [ getelementptr inbounds nuw (i8, ptr @ast2700_gic_intcmap, i64 144), %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.lcssa.ph.sink60, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa.ph.sink60, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa.ph.sink60, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [3808 x i8], ptr %i.a, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 913208
  %i.q = sext i32 %i.k to i64
  %i.r = getelementptr inbounds [216 x i8], ptr %i.p, i64 %i.q
  %i.s = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.r, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.f
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.v, %2
  %i.x = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef %i.w) #9
  ret ptr %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @aspeed_soc_ast2700_pcie_realize(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.81, i32 noundef 124, ptr noundef nonnull @__func__.ASPEED_SOC) #9 ; 7 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #9
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.81, i32 noundef 124, ptr noundef nonnull @__func__.ASPEED_SOC_GET_CLASS) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 309168
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 270480
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1808
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 8 uses
  %i.n = getelementptr inbounds nuw [1104 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.o = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.p = call zeroext i1 @sysbus_realize(ptr noundef %i.o, ptr noundef %1) #9
  br i1 %i.p, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = shl i64 %indvars.iv, 32
  %sext = add i64 %i.t, 261993005056
  %i.u = ashr exact i64 %sext, 29
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  call void @aspeed_mmio_map(ptr noundef %i.q, ptr noundef %i.r, i32 noundef 0, i64 noundef %i.w) #9
  %i.x = getelementptr inbounds nuw [12896 x i8], ptr %i.k, i64 %indvars.iv ; 5 uses
  %i.y = load ptr, ptr %i.j, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 608
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.91, i64 noundef %i.aa, ptr noundef nonnull @error_abort) #9 ; 0 uses
  %i.ac = load ptr, ptr %i.l, align 16
  %i.ad = call zeroext i1 @object_property_set_link(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.92, ptr noundef %i.ac, ptr noundef nonnull @error_abort) #9 ; 0 uses
  %i.ae = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.af = call zeroext i1 @sysbus_realize(ptr noundef %i.ae, ptr noundef %1) #9
  br i1 %i.af, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.i, align 8
  %i.ah = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %i.aj, 58                       ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  call void @aspeed_mmio_map(ptr noundef %i.ag, ptr noundef %i.ah, i32 noundef 0, i64 noundef %i.an) #9
  %i.ao = call fastcc ptr @aspeed_soc_ast2700_get_irq(ptr noundef nonnull %i.b, i32 noundef %i.ak)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 1120 ; 3 uses
  %i.aq = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  call void @sysbus_connect_irq(ptr noundef %i.aq, i32 noundef 0, ptr noundef %i.ao) #9
  %i.ar = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.as = call ptr @sysbus_mmio_get_region(ptr noundef %i.ar, i32 noundef 1) #9
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.130, i32 noundef %i.at) #9 ; 0 uses
  %i.av = getelementptr inbounds nuw [272 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8
  %2 = shl i64 %indvars.iv, 32
  %sext54 = add i64 %2, 274877906944
  %3 = ashr exact i64 %sext54, 32                 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %3
  %i.ay = load i64, ptr %i.ax, align 8
  call void @memory_region_init_alias(ptr noundef nonnull %i.av, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a, ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 536870912) #9
  %i.az = load ptr, ptr %i.i, align 8
  %i.ba = load ptr, ptr %i.j, align 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %3
  %i.bc = load i64, ptr %i.bb, align 8
  call void @memory_region_add_subregion(ptr noundef %i.az, i64 noundef %i.bc, ptr noundef nonnull %i.av) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.e, align 8
  %i.be = sext i32 %i.bd to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %.lcssa
}

declare void @qdev_prop_set_uint8(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @sysbus_mmio_map(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @aspeed_mmio_map_unimplemented(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare ptr @qlist_new() local_unnamed_addr #1

declare void @qlist_append_int(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qdev_prop_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @object_property_get_uint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @address_space_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @aspeed_ram_capacity_read(ptr nofree readnone captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 2048
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.aspeed_ram_capacity_read, i64 noundef %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_ram_capacity_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.81, i32 noundef 124, ptr noundef nonnull @__func__.ASPEED_SOC) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 138512
  %i.d = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.25, ptr noundef nonnull @error_abort) #9 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.6, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_ram_capacity_write) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2624
  %i.f = urem i64 %1, %i.d                        ; 2 uses
  %i.g = trunc i64 %2 to i32
  call void @address_space_stl_le(ptr noundef nonnull %i.e, i64 noundef %i.f, i32 noundef %i.g, i64 4294967296, ptr noundef nonnull %i.a) #9
  %i.h = load i32, ptr %i.a, align 4
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 2048
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %bb.f, label %bb.e, !prof !38

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.aspeed_ram_capacity_write, i64 noundef %i.f, i64 noundef %2) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @address_space_stl_le(ptr noundef, i64 noundef, i32 noundef, i64, ptr noundef) local_unnamed_addr #1

declare ptr @sysbus_mmio_get_region(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
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
!7 = !{!"auto-init"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
