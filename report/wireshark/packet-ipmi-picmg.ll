Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipmi-picmg?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
begin_hunk_0_@rq0d:bb.a
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ipmi_picmg_0d_start, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs0d(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_0d_recordid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq0e(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.896, ptr noundef nonnull @.str.876) ; 0 uses
  %i.d = load i32, ptr @ett_ipmi_picmg_link_info, align 4
  %i.e = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %i.d, ptr noundef nonnull @parse_link_info_state.link_info, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_ipmi_picmg_linkinfo_state, align 4
  %i.g = zext i8 %i.b to i32                      ; 3 uses
  %i.h = call ptr @val_to_str_const(i32 noundef %i.g, ptr noundef nonnull @rq0e.state_vals, ptr noundef nonnull @.str.646)
  %i.i = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull @.str.897, ptr noundef nonnull @.str.876, ptr noundef %i.h, i32 noundef %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq0f(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_picmg_0f_chan, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef nonnull @rq0f.chan, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ipmi_picmg_1a_flags, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs0f(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.896, ptr noundef nonnull @.str.900) ; 0 uses
  %i.h = load i32, ptr @ett_ipmi_picmg_link_info, align 4
  %i.i = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef %i.h, ptr noundef nonnull @parse_link_info_state.link_info, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_ipmi_picmg_linkinfo_state, align 4
  %i.k = zext i8 %i.f to i32                      ; 3 uses
  %i.l = call ptr @val_to_str_const(i32 noundef %i.k, ptr noundef nonnull @rs0f.state_vals, ptr noundef nonnull @.str.646)
  %i.m = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.k, ptr noundef nonnull @.str.897, ptr noundef nonnull @.str.900, ptr noundef %i.l, i32 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = call i32 @tvb_captured_length(ptr noundef %0)
  %i.o = icmp ugt i32 %i.n, 5
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.q = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.896, ptr noundef nonnull @.str.901) ; 0 uses
  %i.r = load i32, ptr @ett_ipmi_picmg_link_info, align 4
  %i.s = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef %i.r, ptr noundef nonnull @parse_link_info_state.link_info, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_ipmi_picmg_linkinfo_state, align 4
  %i.u = zext i8 %i.p to i32                      ; 3 uses
  %i.v = call ptr @val_to_str_const(i32 noundef %i.u, ptr noundef nonnull @rs0f.state_vals, ptr noundef nonnull @.str.646)
  %i.w = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef %i.u, ptr noundef nonnull @.str.897, ptr noundef nonnull @.str.901, ptr noundef %i.v, i32 noundef %i.u) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = call i32 @tvb_captured_length(ptr noundef %0)
  %i.y = icmp ugt i32 %i.x, 10
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.aa = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.b, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.896, ptr noundef nonnull @.str.902) ; 0 uses
  %i.ab = load i32, ptr @ett_ipmi_picmg_link_info, align 4
  %i.ac = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef %i.ab, ptr noundef nonnull @parse_link_info_state.link_info, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_ipmi_picmg_linkinfo_state, align 4
  %i.ae = zext i8 %i.z to i32                     ; 3 uses
  %i.af = call ptr @val_to_str_const(i32 noundef %i.ae, ptr noundef nonnull @rs0f.state_vals, ptr noundef nonnull @.str.646)
  %i.ag = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef %i.ae, ptr noundef nonnull @.str.897, ptr noundef nonnull @.str.902, ptr noundef %i.af, i32 noundef %i.ae) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ai = icmp ugt i32 %i.ah, 15
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ak = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.896, ptr noundef nonnull @.str.903) ; 0 uses
  %i.al = load i32, ptr @ett_ipmi_picmg_link_info, align 4
  %i.am = call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %i.al, ptr noundef nonnull @parse_link_info_state.link_info, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_ipmi_picmg_linkinfo_state, align 4
  %i.ao = zext i8 %i.aj to i32                    ; 3 uses
  %i.ap = call ptr @val_to_str_const(i32 noundef %i.ao, ptr noundef nonnull @rs0f.state_vals, ptr noundef nonnull @.str.646)
  %i.aq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.an, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef %i.ao, ptr noundef nonnull @.str.897, ptr noundef nonnull @.str.903, ptr noundef %i.ap, i32 noundef %i.ao) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq10(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_10_fruid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs10(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_10_nslots, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_10_ipmc_loc, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq11(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.b = load i32, ptr @hf_ipmi_picmg_11_fruid, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.d = load i32, ptr @hf_ipmi_picmg_11_power_level, align 4
  %i.e = zext i8 %i.a to i32                      ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @val_to_str(ptr noundef %i.g, i32 noundef %i.e, ptr noundef nonnull @rq11.plvl_vals, ptr noundef nonnull @.str.906)
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull @.str.905, ptr noundef %i.h) ; 0 uses
  %i.j = load i32, ptr @hf_ipmi_picmg_11_set_to_desired, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq12(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_12_fruid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_12_pwr_type, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs12(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_picmg_12_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef nonnull @rs12.byte1, i32 noundef -2147483648, i32 noundef 4) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_12_delay, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.f = load i32, ptr @hf_ipmi_picmg_12_pwr_mult, align 4
  %i.g = zext i8 %i.e to i32                      ; 2 uses
  %i.h = udiv i8 %i.e, 10
  %.zext = zext nneg i8 %i.h to i32
  %i.i = urem i8 %i.e, 10
  %.zext30 = zext nneg i8 %i.i to i32
  %i.j = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull @.str.907, i32 noundef %.zext, i32 noundef %.zext30) ; 0 uses
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = add i32 %i.k, -3
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 20)
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.032 = phi i32 [ %i.u, %.lr.ph ], [ 1, %bb.a ] ; 4 uses
  %i.m = add nuw nsw i32 %.032, 2                 ; 2 uses
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.m)
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = mul nuw nsw i32 %i.o, %i.g               ; 2 uses
  %i.q = load i32, ptr @hf_ipmi_picmg_12_pwr_draw, align 4
  %.lhs.trunc = trunc nuw i32 %i.p to i16
  %i.r = udiv i16 %.lhs.trunc, 10
  %.zext33 = zext nneg i16 %i.r to i32
  %.lhs.trunc34 = trunc nuw i32 %i.p to i16
  %i.s = urem i16 %.lhs.trunc34, 10
  %.zext35 = zext nneg i16 %i.s to i32
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef %i.o, ptr noundef nonnull @.str.908, i32 noundef %.032, i32 noundef %.zext33, i32 noundef %.zext35, i32 noundef %i.o) ; 0 uses
  %i.u = add nuw nsw i32 %.032, 1
  %exitcond = icmp eq i32 %.032, %3
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !6
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq13(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ipmi_picmg_13_fruid, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq14(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_14_fruid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs14(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_14_speed_min, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_14_speed_max, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_picmg_14_speed_norm, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @ett_ipmi_picmg_14_prop, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.909, ptr noundef nonnull @.str.593, i32 noundef %i.g, ptr noundef nonnull @rs14.prop, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq15(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.b = load i32, ptr @hf_ipmi_picmg_15_fruid, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.d = load i32, ptr @hf_ipmi_picmg_15_fan_level, align 4
  %i.e = zext i8 %i.a to i32                      ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @val_to_str(ptr noundef %i.g, i32 noundef %i.e, ptr noundef nonnull @fan_level_vals, ptr noundef nonnull @.str.910)
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull @.str.905, ptr noundef %i.h) ; 0 uses
  %i.j = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.k = icmp ugt i32 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_ipmi_picmg_15_local_enable, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq16(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_16_fruid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs16(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_ipmi_picmg_16_override_level, align 4
  %i.c = zext i8 %i.a to i32                      ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @val_to_str(ptr noundef %i.e, i32 noundef %i.c, ptr noundef nonnull @fan_level_vals, ptr noundef nonnull @.str.910)
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.905, ptr noundef %i.f) ; 0 uses
  %i.h = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @hf_ipmi_picmg_16_local_level, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.m = icmp ugt i32 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @hf_ipmi_picmg_16_local_enable, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq17(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = zext i8 %i.a to i32                      ; 4 uses
  %i.c = tail call ptr @ipmi_get_hdr(ptr noundef %1) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 4
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 32                      ; 2 uses
  %i.h = select i1 %i.g, i32 256, i32 0
  %i.i = or disjoint i32 %i.h, %i.b
  tail call void @ipmi_set_data(ptr noundef %1, i32 noundef 0, i32 noundef %i.i)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @hf_ipmi_picmg_17_cmd, align 4
  %i.k = select i1 %i.g, ptr @rq17.vals_17_cmd_toshmm, ptr @rq17.vals_17_cmd_fromshmm
  %i.l = tail call ptr @val_to_str_const(i32 noundef %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull @.str.646)
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef nonnull %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.b, ptr noundef nonnull @.str.892, ptr noundef %i.l, i32 noundef %i.b) ; 0 uses
  %i.n = load i32, ptr @hf_ipmi_picmg_17_resid, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs17(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call zeroext i1 @ipmi_get_data(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_ipmi_picmg_17_status, align 4
  %i.d = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.f = load i32, ptr %i.a, align 4
  %i.g = shl i32 %i.f, 8
  %i.h = zext i8 %i.e to i32                      ; 3 uses
  %i.i = or disjoint i32 %i.g, %i.h               ; 2 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.j = load i32, ptr @hf_ipmi_picmg_17_status, align 4
  %i.k = call ptr @val_to_str_const(i32 noundef %i.i, ptr noundef nonnull @rs17.response_vals, ptr noundef nonnull @.str.646)
  %i.l = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.h, ptr noundef nonnull @.str.892, ptr noundef %i.k, i32 noundef %i.h) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq18(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_18_li_key_type, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_18_li_key, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs18(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_18_link_num, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_18_sensor_num, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq19(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_picmg_linkinfo_amc_chan, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_picmg_linkinfo, align 4
  %i.d = load i32, ptr @ett_ipmi_picmg_link_info, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @parse_amc_link_info_state.amc_link_info, i32 noundef -2147483648) ; 0 uses
  %i.f = load i32, ptr @hf_ipmi_picmg_linkinfo_state, align 4
  %i.g = load i32, ptr @ett_ipmi_picmg_link_state, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 4, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull @parse_amc_link_info_state.amc_link_state, i32 noundef -2147483648) ; 0 uses
end_hunk_0
