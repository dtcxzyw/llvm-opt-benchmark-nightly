Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/erst?download=true
inline.NumInlined: 106
inline.NumDeleted: 32
begin_hunk_0_@llvm.lifetime.start.p0

declare ptr @g_array_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @pci_get_bar_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @acpi_table_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @build_append_int_noprefix(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_array_append_vals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @g_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @acpi_table_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_erst_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @erst_register_types, i32 noundef 4) #9
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @erst_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @erst_type_info) #9 ; 0 uses
  ret void
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare void @build_append_gas(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @erst_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #9 ; 7 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE_CLASS) #9 ; 5 uses
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_acpi_erst_class_init_in.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_ACPI_ERST_CLASS_INIT_IN_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.d, 0
  br i1 %.not1.i, label %trace_acpi_erst_class_init_in.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %trace_acpi_erst_class_init_in.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12) #9
  br label %trace_acpi_erst_class_init_in.exit

trace_acpi_erst_class_init_in.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @erst_realizefn, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 6966, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i16 18, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i16 255, ptr %i.k, align 2
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @erst_reset) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @erst_vmstate, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i8 1, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 131
  store i8 0, ptr %i.n, align 1
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @erst_properties, i64 noundef 2) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.9, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = or i64 %i.q, 128
  store i64 %i.r, ptr %i.p, align 8
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i15 = icmp eq i32 %i.s, 0
  br i1 %.not.i15, label %trace_acpi_erst_class_init_out.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %trace_acpi_erst_class_init_in.exit
  %i.t = load i16, ptr @_TRACE_ACPI_ERST_CLASS_INIT_OUT_DSTATE, align 2
  %.not1.i16 = icmp eq i16 %i.t, 0
  br i1 %.not1.i16, label %trace_acpi_erst_class_init_out.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not2.i17 = icmp eq i32 %i.v, 0
  br i1 %.not2.i17, label %trace_acpi_erst_class_init_out.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44) #9
  br label %trace_acpi_erst_class_init_out.exit

trace_acpi_erst_class_init_out.exit:              ; preds = %trace_acpi_erst_class_init_in.exit, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @erst_realizefn(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %2, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %1, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %2, ptr %1 ; 10 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 951, ptr noundef nonnull @__func__.erst_realizefn) #9 ; 10 uses
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_acpi_erst_realizefn_in.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_ACPI_ERST_REALIZEFN_IN_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_acpi_erst_realizefn_in.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_acpi_erst_realizefn_in.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17) #9
  br label %trace_acpi_erst_realizefn_in.exit

trace_acpi_erst_realizefn_in.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2768 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 16             ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_acpi_erst_realizefn_in.exit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 956, ptr noundef nonnull @__func__.erst_realizefn, ptr noundef nonnull @.str.13) #9
  br label %bb.z

bb.f:                                             ; preds = %trace_acpi_erst_realizefn_in.exit
  %i.k = tail call zeroext i1 @host_memory_backend_is_mapped(ptr noundef nonnull %i.j) #9
  %i.l = load ptr, ptr %i.i, align 16             ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @object_get_canonical_path_component(ptr noundef %i.l) #9
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 960, ptr noundef nonnull @__func__.erst_realizefn, ptr noundef nonnull @.str.14, ptr noundef %i.m) #9
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.n = tail call ptr @host_memory_backend_get_memory(ptr noundef %i.l) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2776 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.i, align 16
  %i.q = call i64 @object_property_get_int(ptr noundef %i.p, ptr noundef nonnull @.str.15, ptr noundef nonnull %spec.select) #9
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 2784 ; 4 uses
  store i32 %i.r, ptr %i.s, align 16
  %i.t = load ptr, ptr %spec.select, align 8
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = call ptr @memory_region_get_ram_ptr(ptr noundef %i.u) #9 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3376 ; 2 uses
  store ptr %i.v, ptr %i.w, align 16
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = and i64 %i.x, 7
  %.not.i39 = icmp eq i64 %i.y, 0
  br i1 %.not.i39, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__func__.check_erst_backend_storage, ptr noundef nonnull @.str.18) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.v, align 8              ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  %i.ab = icmp eq i64 %i.z, 5931051951143998021
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 5931051951143998021, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 2788 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i16 256, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  store i16 0, ptr %i.ag, align 2
  %i.ah = load i32, ptr %i.s, align 16
  %i.ai = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.aj = udiv i32 %i.ah, %i.ai
  %i.ak = shl i32 %i.aj, 3
  %i.al = add i32 %i.ai, 24
  %i.am = add i32 %i.al, %i.ak
  %.fr15.i.i = freeze i32 %i.am
  %i.an = add i32 %.fr15.i.i, -1                  ; 2 uses
  %i.ao = urem i32 %i.an, %i.ai
  %i.ap = sub nuw i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.ap, ptr %i.aq, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.ar = phi i1 [ %i.ab, %._crit_edge.i ], [ true, %bb.l ]
  %i.as = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ad, %bb.l ] ; 10 uses
  %i.at = icmp ugt i32 %i.as, 127
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.as)
  %i.av = icmp samesign ult i32 %i.au, 2
  %i.aw = icmp ugt i32 %i.as, 4095
  %or.cond3.i = and i1 %i.aw, %i.av
  br i1 %or.cond3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @__func__.check_erst_backend_storage, ptr noundef nonnull @.str.19, i32 noundef %i.as) #9
  br label %check_erst_backend_storage.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.ar, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = urem i32 %i.ay, %i.as
  %i.ba = udiv i32 %i.ay, %i.as
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = icmp eq i16 %i.bd, 256
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 453, ptr noundef nonnull @__func__.check_erst_backend_storage, ptr noundef nonnull @.str.20) #9
  br label %check_erst_backend_storage.exit

bb.u:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.s, align 16            ; 3 uses
  %i.bj = urem i32 %i.bi, %i.as
  %i.bk = udiv i32 %i.bi, %i.as
  %.not37.i = icmp ne i32 %i.bj, 0
  %i.bl = icmp ugt i32 %i.as, %i.bi
  %or.cond.i = or i1 %i.bl, %.not37.i
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 461, ptr noundef nonnull @__func__.check_erst_backend_storage, ptr noundef nonnull @.str.21, i32 noundef %i.as) #9
  br label %check_erst_backend_storage.exit

bb.w:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 3384
  store i32 %i.ba, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 3388
  store i32 %i.bk, ptr %i.bn, align 4
  br label %check_erst_backend_storage.exit

check_erst_backend_storage.exit:                  ; preds = %bb.o, %bb.t, %bb.v, %bb.w
  %i.bo = load ptr, ptr %spec.select, align 8
  %.not36 = icmp eq ptr %i.bo, null
  br i1 %.not36, label %bb.x, label %bb.z

bb.x:                                             ; preds = %check_erst_backend_storage.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 2800 ; 2 uses
  call void @memory_region_init_io(ptr noundef nonnull %i.bp, ptr noundef %0, ptr noundef nonnull @erst_reg_ops, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.6, i64 noundef 16) #9
  call void @pci_register_bar(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %i.bp) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 3072 ; 2 uses
  %i.br = load ptr, ptr %i.w, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.bq, ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %i.bu, ptr noundef nonnull %spec.select) #9 ; 0 uses
  %i.bw = load ptr, ptr %spec.select, align 8
  %.not37 = icmp eq ptr %i.bw, null
  br i1 %.not37, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @pci_register_bar(ptr noundef %0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.bq) #9
  %i.bx = load ptr, ptr %i.o, align 8
  call void @vmstate_register_ram_global(ptr noundef %i.bx) #9
  %i.by = load i32, ptr %i.s, align 16
  call fastcc void @trace_acpi_erst_realizefn_out(i32 noundef %i.by)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %check_erst_backend_storage.exit, %bb.h, %bb.y, %bb.g, %bb.e
  %.val = load ptr, ptr %2, align 8
  %.val38 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val38, ptr noundef %.val) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @erst_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1001, ptr noundef nonnull @__func__.erst_reset) #9 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3376 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16             ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 1
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %trace_acpi_erst_reset_in.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr @_TRACE_ACPI_ERST_RESET_IN_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.g, 0
  br i1 %.not1.i, label %trace_acpi_erst_reset_in.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not2.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i, label %trace_acpi_erst_reset_in.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i32 noundef %i.e) #9
  %.pre = load ptr, ptr %i.b, align 16
  %.pre13 = load i32, ptr @trace_events_enabled_count, align 4
  %i.j = icmp eq i32 %.pre13, 0
  br label %trace_acpi_erst_reset_in.exit

trace_acpi_erst_reset_in.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not.i10 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.j, %bb.d ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  store i8 0, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3345
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3346
  store i8 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3368
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3348
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3384
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3392
  store i32 %i.r, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.u = load i32, ptr %i.t, align 1
  br i1 %.not.i10, label %trace_acpi_erst_reset_out.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %trace_acpi_erst_reset_in.exit
  %i.v = load i16, ptr @_TRACE_ACPI_ERST_RESET_OUT_DSTATE, align 2
  %.not1.i11 = icmp eq i16 %i.v, 0
  br i1 %.not1.i11, label %trace_acpi_erst_reset_out.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not2.i12 = icmp eq i32 %i.x, 0
  br i1 %.not2.i12, label %trace_acpi_erst_reset_out.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef %i.u) #9
  br label %trace_acpi_erst_reset_out.exit

trace_acpi_erst_reset_out.exit:                   ; preds = %trace_acpi_erst_reset_in.exit, %bb.e, %bb.f, %bb.g
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @host_memory_backend_is_mapped(ptr noundef) local_unnamed_addr #2

declare ptr @object_get_canonical_path_component(ptr noundef) local_unnamed_addr #2

declare ptr @host_memory_backend_get_memory(ptr noundef) local_unnamed_addr #2

declare i64 @object_property_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @vmstate_register_ram_global(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_acpi_erst_realizefn_out(i32 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_ACPI_ERST_REALIZEFN_OUT_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, i32 noundef %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @memory_region_get_ram_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @erst_reg_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i64 %1, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.c
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i32 %2, 8                        ; 2 uses
end_hunk_0
