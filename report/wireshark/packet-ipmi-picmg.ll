Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipmi-picmg?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
begin_hunk_0_@rq2b:bb.a
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs2b(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_2b_alarm_state, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq2c(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_clock_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_clock_cfg, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_clock_setting, align 4
  %i.f = load i32, ptr @ett_ipmi_picmg_clock_setting, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef %i.e, i32 noundef %i.f, ptr noundef @amc_clock_setting, i32 noundef -2147483648) ; 0 uses
  %i.h = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.i = icmp ugt i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @hf_ipmi_picmg_clock_family, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.l = load i32, ptr @hf_ipmi_picmg_clock_accuracy, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.n = load i32, ptr @hf_ipmi_picmg_clock_frequency, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 5, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.q = icmp ugt i32 %i.p, 9
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr @hf_ipmi_picmg_clock_resource, align 4
  %i.s = load i32, ptr @ett_ipmi_picmg_clock_res, align 4
  %i.t = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 9, i32 noundef %i.r, i32 noundef %i.s, ptr noundef @amc_clock_resource, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq2d(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_clock_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ipmi_picmg_clock_resource, align 4
  %i.f = load i32, ptr @ett_ipmi_picmg_clock_res, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.e, i32 noundef %i.f, ptr noundef @amc_clock_resource, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs2d(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_clock_setting, align 4
  %i.b = load i32, ptr @ett_ipmi_picmg_clock_setting, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, i32 noundef %i.b, ptr noundef @amc_clock_setting, i32 noundef -2147483648) ; 0 uses
  %i.d = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ipmi_picmg_clock_cfg, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.h = load i32, ptr @hf_ipmi_picmg_clock_family, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.j = load i32, ptr @hf_ipmi_picmg_clock_accuracy, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.l = load i32, ptr @hf_ipmi_picmg_clock_frequency, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs2e(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_2e_version, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @ett_ipmi_picmg_2e_byte2, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef @.str.941, ptr noundef @.str.593, i32 noundef %i.c, ptr noundef @rs2e.byte2, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_2e_upgrade_tout, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ipmi_picmg_2e_selftest_tout, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.i = load i32, ptr @hf_ipmi_picmg_2e_rollback_tout, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr @hf_ipmi_picmg_2e_inaccessibility_tout, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @ett_ipmi_picmg_XX_compbits, align 4
  %i.n = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef @.str.942, ptr noundef @.str.593, i32 noundef %i.m, ptr noundef @add_component_bits.compbits, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq2f(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  tail call void @ipmi_set_data(ptr noundef %1, i32 noundef 0, i32 noundef %i.b)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i8 %i.a, 5
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i8 %i.a to i64
  %i.e = getelementptr [16 x i8], ptr @compprops, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i8 %i.a, -65
  %.str.591..str.646 = select i1 %i.h, ptr @.str.591, ptr @.str.646
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %.str.591..str.646, %bb.d ]
  %i.i = load i32, ptr @hf_ipmi_picmg_2f_comp_id, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr @hf_ipmi_picmg_2f_comp_prop, align 4
  %i.l = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef nonnull %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.b, ptr noundef @.str.892, ptr noundef %.0, i32 noundef %i.b) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs2f(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call zeroext i1 @ipmi_get_data(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_ipmi_picmg_2f_prop_data, align 4
  %i.d = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4              ; 5 uses
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr [16 x i8], ptr @compprops, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i32 %i.e, 191
  %.str.591..str.646 = select i1 %i.k, ptr @.str.591, ptr @.str.646
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %.str.591..str.646, %bb.e ]
  %i.l = load i32, ptr @hf_ipmi_picmg_2f_comp_prop, align 4
  %i.m = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.e, ptr noundef @.str.892, ptr noundef %.0, i32 noundef %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.o, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %i.o, i64 28       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = or i32 %i.q, 2
  store i32 %i.r, ptr %i.p, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.f, %bb.g, %bb.h
  %i.s = load i32, ptr %i.a, align 4              ; 2 uses
  %i.t = icmp ult i32 %i.s, 5
  br i1 %i.t, label %3, label %bb.j

3:                                                ; preds = %proto_item_set_generated.exit
  switch i32 %i.s, label %default.unreachable21 [
    i32 0, label %call.0
    i32 1, label %call.1
    i32 2, label %call.2
    i32 3, label %call.3
    i32 4, label %bb.i
  ], !prof !10

default.unreachable21:                            ; preds = %3
  unreachable

call.0:                                           ; preds = %3
  %4 = load i32, ptr @ett_ipmi_picmg_prop00_byte1, align 4
  %5 = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.950, ptr noundef @.str.593, i32 noundef %4, ptr noundef @prop_00.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.k

call.1:                                           ; preds = %3
  %6 = load i32, ptr @ett_ipmi_picmg_prop01_byte1, align 4
  %7 = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %6, ptr noundef @parse_version.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %8 = load i32, ptr @hf_ipmi_picmg_prop01_fw_minor, align 4
  %9 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %8, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %10 = load i32, ptr @hf_ipmi_picmg_prop01_fw_aux, align 4
  %11 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %10, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.k

call.2:                                           ; preds = %3
  %12 = call i32 @tvb_captured_length(ptr noundef %0)
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %12, i32 12)
  %13 = load i32, ptr @hf_ipmi_picmg_prop02_desc, align 4
  %14 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %spec.store.select.i, i32 noundef 0) ; 0 uses
  br label %bb.k

call.3:                                           ; preds = %3
  %15 = load i32, ptr @ett_ipmi_picmg_prop01_byte1, align 4
  %16 = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %15, ptr noundef @parse_version.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %17 = load i32, ptr @hf_ipmi_picmg_prop01_fw_minor, align 4
  %18 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %17, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %19 = load i32, ptr @hf_ipmi_picmg_prop01_fw_aux, align 4
  %20 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %19, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %3
  %21 = load i32, ptr @ett_ipmi_picmg_prop01_byte1, align 4
  %22 = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %21, ptr noundef @parse_version.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %23 = load i32, ptr @hf_ipmi_picmg_prop01_fw_minor, align 4
  %24 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %23, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %25 = load i32, ptr @hf_ipmi_picmg_prop01_fw_aux, align 4
  %26 = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %25, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %proto_item_set_generated.exit
  %i.u = load i32, ptr @hf_ipmi_picmg_2f_prop_data, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %call.0, %call.1, %call.2, %call.3, %bb.i, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq31(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_picmg_XX_compbits, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.957, ptr noundef @.str.593, i32 noundef %i.a, ptr noundef @add_component_bits.compbits, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_31_action, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq32(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_32_block, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_32_data, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs32(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ipmi_picmg_32_sec_offs, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.d = load i32, ptr @hf_ipmi_picmg_32_sec_len, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq33(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_33_comp_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_33_img_len, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs34(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = tail call ptr @ipmi_getnetfn(i32 noundef 44, ptr noundef @rs34.sig)
  %i.c = zext i8 %i.a to i32                      ; 3 uses
  %i.d = tail call ptr @ipmi_getcmd(ptr noundef %i.b, i32 noundef %i.c) ; 2 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_34_cmd, align 4
  %i.f = getelementptr i8, ptr %i.d, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.c, ptr noundef @.str.892, ptr noundef %i.g, i32 noundef %i.c) ; 0 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.j = load i32, ptr @hf_ipmi_picmg_34_ccode, align 4
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = tail call ptr @ipmi_get_completion_code(i8 noundef zeroext %i.i, ptr noundef %i.d)
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.k, ptr noundef @.str.892, ptr noundef %i.l, i32 noundef %i.k) ; 0 uses
  %i.n = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.o = icmp ugt i32 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @ett_ipmi_picmg_34_byte3, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.p, ptr noundef @rs34.byte3, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq35(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ipmi_picmg_35_rollback_override, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs36(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_36_result, align 4
  %i.f = tail call ptr @val_to_str_const(i32 noundef %i.b, ptr noundef @vals_36_result, ptr noundef @.str.968)
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.b, ptr noundef @.str.892, ptr noundef %i.f, i32 noundef %i.b) ; 0 uses
  switch i8 %i.a, label %bb.e [
    i8 -1, label %bb.b
    i8 85, label %bb.b
    i8 87, label %bb.c
    i8 96, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = load i32, ptr @hf_ipmi_picmg_36_fail, align 4
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.d, ptr noundef @.str.969, i32 noundef %i.d) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr @hf_ipmi_picmg_36_fail, align 4
  %i.k = load i32, ptr @ett_ipmi_picmg_36_byte2, align 4
  %i.l = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.j, i32 noundef %i.k, ptr noundef @rs36.byte2, i32 noundef -2147483648) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = load i32, ptr @ett_ipmi_picmg_XX_compbits, align 4
  %i.n = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef @.str.970, ptr noundef @.str.593, i32 noundef %i.m, ptr noundef @add_component_bits.compbits, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = load i32, ptr @hf_ipmi_picmg_36_fail, align 4
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.d, ptr noundef @.str.971, i32 noundef %i.d) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs37(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @ipmi_get_ccode(ptr noundef %1)
  switch i8 %i.a, label %bb.d [
    i8 0, label %bb.e
    i8 -128, label %bb.b
    i8 -127, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.978, %bb.d ], [ @.str.977, %bb.c ], [ @.str.976, %bb.b ], [ @.str.975, %bb.a ]
  %i.b = load i32, ptr @ett_ipmi_picmg_XX_compbits, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %.0, ptr noundef @.str.593, i32 noundef %i.b, ptr noundef @add_component_bits.compbits, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.d = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr @ett_ipmi_picmg_37_byte2, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.f, ptr noundef @rs37.byte2, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq3e(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs3e(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_rev, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  switch i8 %i.e, label %bb.g [
    i8 2, label %bb.b
    i8 3, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ipmi_picmg_hpm2_mask, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.h = tail call i32 @tvb_captured_length(ptr noundef %0)
end_hunk_0
begin_hunk_1_@rs3e:bb.a
  %i.n = icmp ugt i32 %i.m, 5
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @hf_ipmi_picmg_hpm_oem_start, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_ipmi_picmg_hpm_oem_rev, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.a, %bb.f
  %hf_ipmi_picmg_hpm_oem_start.sink = phi ptr [ @hf_ipmi_picmg_hpm2_sol_oem_start, %bb.f ], [ @hf_ipmi_picmg_hpm_oem_start, %bb.a ]
  %.sink26 = phi i32 [ 7, %bb.f ], [ 2, %bb.a ]
  %hf_ipmi_picmg_hpm_oem_rev.sink = phi ptr [ @hf_ipmi_picmg_hpm2_sol_oem_rev, %bb.f ], [ @hf_ipmi_picmg_hpm_oem_rev, %bb.a ]
  %.sink25 = phi i32 [ 8, %bb.f ], [ 3, %bb.a ]
  %i.u = load i32, ptr %hf_ipmi_picmg_hpm_oem_start.sink, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %.sink26, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.w = load i32, ptr %hf_ipmi_picmg_hpm_oem_rev.sink, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %.sink25, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a, %bb.f
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq3f(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_cred_hnd, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_func_sel, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ipmi_picmg_hpm_ipmi_rev, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %.not20 = icmp eq i8 %i.h, 0
  %hf_ipmi_picmg_hpm_auth_type.val = load i32, ptr @hf_ipmi_picmg_hpm_auth_type, align 4
  %hf_ipmi_picmg_hpm_cipher_id.val = load i32, ptr @hf_ipmi_picmg_hpm_cipher_id, align 4
  %i.i = select i1 %.not20, i32 %hf_ipmi_picmg_hpm_auth_type.val, i32 %hf_ipmi_picmg_hpm_cipher_id.val
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr @hf_ipmi_picmg_hpm_priv_level, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @hf_ipmi_picmg_hpm_chn_num, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.o = load i32, ptr @hf_ipmi_picmg_hpm_avail_time, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_ipmi_picmg_21_ipaddr, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 10, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs3f(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_cred_hnd, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_func_sel, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = load i32, ptr @hf_ipmi_picmg_hpm_avail_time, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = load i32, ptr @hf_ipmi_picmg_hpm_user_name, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 2, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.j = load i32, ptr @hf_ipmi_picmg_hpm_user_pwd, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 2, i32 noundef 10, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.l = load i32, ptr @hf_ipmi_picmg_hpm_bmc_key, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 2, i32 noundef 10, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq40(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_01_rs_ipmbaddr, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_01_rs_fruid, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.f = icmp ugt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_ipmi_picmg_hpm_operation, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs40(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_chn_num, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_ssn_hnd, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_hpm_ssn_hnd, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ipmi_picmg_hpm_ssn_hnd, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs41(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_power_draw, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_base_channels, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_hpm_fabric_channels, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.h = icmp ugt i32 %i.g, 5
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @hf_ipmi_picmg_hpm_update_channels, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = icmp ugt i32 %i.k, 6
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_ipmi_picmg_hpm_cross_channels, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs42(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_power_draw, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_num_chn_desc, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.e to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = mul nuw nsw i32 %indvars.iv, 5           ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 2
  %i.h = load i32, ptr @hf_ipmi_picmg_linkinfo_dev, align 4
  %i.i = load i32, ptr @ett_ipmi_picmg_link_dev, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, ptr noundef @rs42.amc_resource_type, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr @hf_ipmi_picmg_hpm_chn_mask, align 4
  %i.l = add nuw nsw i32 %i.f, 3
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq43(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_ext_mgmt_state, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_polling_period, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs44(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_ext_mgmt_state, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq45(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_auth_pwr_state, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs46(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_hpm_auth_pwr_state, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_hpm_amc_pwr_state, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq47(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg47_port, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg47_flags, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs47(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg47_assignment, align 4
  %i.b = load i32, ptr @ett_ipmi_picmg_47_byte1, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, i32 noundef %i.b, ptr noundef @rs47.byte1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq48(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_01_rs_ipmbaddr, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ipmi_picmg48_sub_fru_type, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.h = icmp ugt i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @hf_ipmi_picmg48_sub_fru_id, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs48(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg48_ip_source, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @ipmi_add_typelen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @parse_led_state(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 1, 5) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3)
  %i.b = load i32, ptr @hf_ipmi_picmg_led_function, align 4
  %i.c = zext i8 %i.a to i32                      ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @val_to_str(ptr noundef %i.e, i32 noundef %i.c, ptr noundef @parse_led_state.funcs, ptr noundef @.str.882)
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef @.str.881, ptr noundef %4, ptr noundef %i.f, i32 noundef %i.c) ; 0 uses
  %i.h = add nuw nsw i32 %3, 1                    ; 2 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.h)
  %i.j = load i32, ptr @hf_ipmi_picmg_led_on_duration, align 4
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef %i.k, ptr noundef @.str.883, ptr noundef %4, i32 noundef %i.k) ; 0 uses
  %i.m = add nuw nsw i32 %3, 2                    ; 2 uses
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.m)
  %i.o = and i8 %i.n, 15
  %i.p = load i32, ptr @ett_ipmi_picmg_led_color, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %0, ptr noundef %2, i32 noundef %i.m, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.p, ptr noundef @parse_led_state.color, i32 noundef -2147483648, i32 noundef 0)
  %i.r = zext nneg i8 %i.o to i32
  %i.s = tail call ptr @val_to_str_const(i32 noundef %i.r, ptr noundef @led_color_vals, ptr noundef @.str.646)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.q, ptr noundef @.str.884, ptr noundef %4, ptr noundef %i.s)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @parse_ipmb_state(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = icmp eq i8 %i.b, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 255, ptr noundef @.str.888) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i8 %i.b, 1                          ; 3 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i8 %i.b, -64
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = zext nneg i8 %i.f to i32
  %i.i = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef @.str.890, i32 noundef %i.h) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi ptr [ %i.a, %bb.e ], [ @.str.889, %bb.c ], [ @.str.646, %bb.d ] ; 2 uses
  %i.j = and i32 %i.c, 1
  %.not30 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not30, ptr @.str.126, ptr @.str.128
  %i.l = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef %i.c, ptr noundef @.str.891, ptr noundef nonnull %.0, ptr noundef nonnull %i.k)
  %i.m = call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %6) ; 2 uses
  %i.n = zext nneg i8 %i.f to i32
  %i.o = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.m, i32 noundef %4, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef %i.c, ptr noundef @.str.892, ptr noundef nonnull %.0, i32 noundef %i.n) ; 0 uses
  %i.p = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %5, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ipmi_get_hdr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @ipmi_set_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ipmi_get_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @ipmi_add_timestamp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @prop_00(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_picmg_prop00_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.950, ptr noundef @.str.593, i32 noundef %i.a, ptr noundef @prop_00.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @parse_version(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_picmg_prop01_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @parse_version.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_prop01_fw_minor, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_prop01_fw_aux, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @prop_02(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.a, i32 12)
  %i.b = load i32, ptr @hf_ipmi_picmg_prop02_desc, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef %spec.store.select, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @ipmi_getcmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ipmi_getnetfn(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ipmi_get_completion_code(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @ipmi_get_ccode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{!"unknown", !"jump-table-to-switch"}
!11 = distinct !{!11, !6}
end_hunk_1
