Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-zbee-zcl-general?download=true
inline.NumInlined: 111
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_zcl_gp_attr_data:bb.a
  br i1 %i.m, label %bb.c, label %dissect_zbee_zcl_gp_sink_table.exit

bb.c:                                             ; preds = %.preheader.i
  %i.n = zext i8 %.017.i to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = call fastcc i32 @dissect_zbee_zcl_gp_sink_table_entry(ptr noundef %2, ptr noundef %i.g, ptr noundef nonnull %i.b, i32 noundef %i.o)
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %i.b, align 4              ; 3 uses
  %i.r = sub i32 %i.q, %i.l
  %i.s = trunc i32 %i.r to i16
  %i.t = add i16 %.018.i, %i.s
  %i.u = add i8 %.017.i, 1
  br i1 %.not.i, label %dissect_zbee_zcl_gp_sink_table.exit, label %.preheader.i

dissect_zbee_zcl_gp_sink_table.exit:              ; preds = %.preheader.i, %bb.c, %bb.b
  %.020.i = phi i32 [ %i.j, %bb.b ], [ %i.q, %bb.c ], [ %i.l, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %.020.i, ptr %3, align 4
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.v = load i32, ptr %3, align 4                ; 2 uses
  %i.w = load i32, ptr @hf_zbee_zcl_gp_attr_gps_communication_mode, align 4
  %i.x = load i32, ptr @ett_zbee_zcl_gp_attr_gps_communication_mode, align 4
  %i.y = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.x, ptr noundef @dissect_zbee_zcl_gp_attr_gps_communication_mode.n_fields, i32 noundef 0) ; 0 uses
  %i.z = add i32 %i.v, 1
  store i32 %i.z, ptr %3, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %3, align 4               ; 2 uses
  %i.ab = load i32, ptr @hf_zbee_zcl_gp_attr_gps_comm_exit_mode, align 4
  %i.ac = load i32, ptr @ett_zbee_zcl_gp_attr_gps_comm_exit_mode, align 4
  %i.ad = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef @dissect_zbee_zcl_gp_attr_gps_comm_exit_mode.n_fields, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %i.aa, 1
  store i32 %i.ae, ptr %3, align 4
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.af = load i32, ptr %3, align 4               ; 2 uses
  %i.ag = load i32, ptr @hf_zbee_zcl_gp_attr_gps_secur_lvl, align 4
  %i.ah = load i32, ptr @ett_zbee_zcl_gp_attr_gps_secur_lvl, align 4
  %i.ai = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef @dissect_zbee_zcl_gp_attr_gps_secur_lvl.n_fields, i32 noundef 0) ; 0 uses
  %i.aj = add i32 %i.af, 1
  store i32 %i.aj, ptr %3, align 4
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %3, align 4               ; 2 uses
  %i.al = load i32, ptr @hf_zbee_zcl_gp_attr_gps_func, align 4
  %i.am = load i32, ptr @ett_zbee_zcl_gp_attr_gps_func, align 4
  %i.an = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.am, ptr noundef @dissect_zbee_zcl_gp_attr_gps_functionality.n_fields, i32 noundef -2147483648) ; 0 uses
  %i.ao = add i32 %i.ak, 3
  store i32 %i.ao, ptr %3, align 4
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %3, align 4               ; 2 uses
  %i.aq = load i32, ptr @hf_zbee_zcl_gp_attr_gps_active_func, align 4
  %i.ar = load i32, ptr @ett_zbee_zcl_gp_attr_gps_active_func, align 4
  %i.as = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef @dissect_zbee_zcl_gp_attr_gps_active_functionality.n_fields, i32 noundef -2147483648) ; 0 uses
  %i.at = add i32 %i.ap, 3
  store i32 %i.at, ptr %3, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.au = load i32, ptr %3, align 4               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = tail call zeroext i16 @tvb_get_uint16(ptr noundef %2, i32 noundef %i.au, i32 noundef -2147483648) ; 3 uses
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = load i32, ptr @ett_zbee_gp_proxy_tbl, align 4
  %i.ay = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %2, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ax, ptr noundef null, ptr noundef @.str.1778, i32 noundef %i.aw) ; 2 uses
  %i.az = load i32, ptr @hf_zbee_gp_proxy_tbl_length, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.az, ptr noundef %2, i32 noundef %i.au, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bb = add i32 %i.au, 2                        ; 3 uses
  store i32 %i.bb, ptr %i.a, align 4
  %i.bc = icmp eq i16 %i.av, 0
  br i1 %i.bc, label %dissect_zbee_zcl_gp_proxy_table.exit, label %.preheader.i42

.preheader.i42:                                   ; preds = %bb.i, %bb.j
  %i.bd = phi i32 [ %i.bi, %bb.j ], [ %i.bb, %bb.i ] ; 2 uses
  %.018.i43 = phi i16 [ %i.bl, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.017.i44 = phi i8 [ %i.bm, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.be = icmp ult i16 %.018.i43, %i.av
  br i1 %i.be, label %bb.j, label %dissect_zbee_zcl_gp_proxy_table.exit

bb.j:                                             ; preds = %.preheader.i42
  %i.bf = zext i8 %.017.i44 to i32
  %i.bg = add nuw nsw i32 %i.bf, 1
  %i.bh = call fastcc i32 @dissect_zbee_zcl_gp_proxy_table_entry(ptr noundef %2, ptr noundef %i.ay, ptr noundef nonnull %i.a, i32 noundef %i.bg)
  %.not.i46 = icmp eq i32 %i.bh, 0
  %i.bi = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bj = sub i32 %i.bi, %i.bd
  %i.bk = trunc i32 %i.bj to i16
  %i.bl = add i16 %.018.i43, %i.bk
  %i.bm = add i8 %.017.i44, 1
  br i1 %.not.i46, label %dissect_zbee_zcl_gp_proxy_table.exit, label %.preheader.i42

dissect_zbee_zcl_gp_proxy_table.exit:             ; preds = %.preheader.i42, %bb.j, %bb.i
  %.020.i45 = phi i32 [ %i.bb, %bb.i ], [ %i.bi, %bb.j ], [ %i.bd, %.preheader.i42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %.020.i45, ptr %3, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.bn = load i32, ptr %3, align 4               ; 2 uses
  %i.bo = load i32, ptr @hf_zbee_zcl_gp_attr_gpp_func, align 4
  %i.bp = load i32, ptr @ett_zbee_zcl_gp_attr_gpp_func, align 4
  %i.bq = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.bn, i32 noundef %i.bo, i32 noundef %i.bp, ptr noundef @dissect_zbee_zcl_gp_attr_gpp_functionality.n_fields, i32 noundef -2147483648) ; 0 uses
  %i.br = add i32 %i.bn, 3
  store i32 %i.br, ptr %3, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.bs = load i32, ptr %3, align 4               ; 2 uses
  %i.bt = load i32, ptr @hf_zbee_zcl_gp_attr_gpp_active_func, align 4
  %i.bu = load i32, ptr @ett_zbee_zcl_gp_attr_gpp_active_func, align 4
  %i.bv = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef %i.bu, ptr noundef @dissect_zbee_zcl_gp_attr_gpp_active_functionality.n_fields, i32 noundef -2147483648) ; 0 uses
  %i.bw = add i32 %i.bs, 3
  store i32 %i.bw, ptr %3, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @dissect_zcl_attr_data(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef %3, i32 noundef %5, i1 noundef zeroext %6)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %dissect_zbee_zcl_gp_proxy_table.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %dissect_zbee_zcl_gp_sink_table.exit
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_zbee_zcl_touchlink() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.1179, ptr noundef @.str.1180, ptr noundef @.str.1181) ; 2 uses
  store i32 %i.a, ptr @proto_zbee_zcl_touchlink, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_zbee_zcl_touchlink.hf, i32 noundef 50)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_zbee_zcl_touchlink.ett, i32 noundef 9)
  %i.b = load i32, ptr @proto_zbee_zcl_touchlink, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_zbee_zcl_touchlink.ei, i32 noundef 1)
  %i.d = tail call ptr @g_hash_table_new(ptr noundef @zcl_touchlink_comissioning_hash, ptr noundef @zcl_touchlink_comissioning_equal)
  store ptr %i.d, ptr @zcl_touchlink_commissioning_map, align 8
  %i.e = load i32, ptr @proto_zbee_zcl_touchlink, align 4
  %i.f = tail call ptr @register_dissector(ptr noundef @.str.1181, ptr noundef @dissect_zbee_zcl_touchlink, i32 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @zcl_touchlink_comissioning_hash(ptr nofree noundef readonly captures(address_is_null) %0) #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @zcl_touchlink_comissioning_equal(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4
  %i.d = load i32, ptr %1, align 4
  %i.e = icmp eq i32 %i.c, %i.d
  %. = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zbee_zcl_touchlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 9 uses
  %i.g = alloca [16 x i8], align 16               ; 10 uses
  %i.h = alloca ptr, align 8                      ; 10 uses
  %i.i = alloca [16 x i8], align 16               ; 7 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca [16 x i8], align 16               ; 8 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = icmp eq ptr %3, null
  br i1 %i.o, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %3, i64 7
  %i.q = load i8, ptr %i.p, align 1               ; 4 uses
  %i.r = getelementptr i8, ptr %3, i64 1          ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !7
  %i.t = icmp eq i8 %i.s, 0                       ; 2 uses
  %zbee_zcl_touchlink_rx_cmd_names.zbee_zcl_touchlink_tx_cmd_names = select i1 %i.t, ptr @zbee_zcl_touchlink_rx_cmd_names, ptr @zbee_zcl_touchlink_tx_cmd_names
  %hf_zbee_zcl_touchlink_rx_cmd_id.val = load i32, ptr @hf_zbee_zcl_touchlink_rx_cmd_id, align 4
  %hf_zbee_zcl_touchlink_tx_cmd_id.val = load i32, ptr @hf_zbee_zcl_touchlink_tx_cmd_id, align 4
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext i8 %i.q to i32
  %i.x = tail call ptr @val_to_str_const(i32 noundef %i.w, ptr noundef nonnull %zbee_zcl_touchlink_rx_cmd_names.zbee_zcl_touchlink_tx_cmd_names, ptr noundef @.str.1207)
  %i.y = getelementptr i8, ptr %3, i64 6
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = zext i8 %i.z to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.v, i32 noundef 25, ptr noundef @.str.1206, ptr noundef %i.x, i32 noundef %i.aa)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.058 = select i1 %i.t, i32 %hf_zbee_zcl_touchlink_rx_cmd_id.val, i32 %hf_zbee_zcl_touchlink_tx_cmd_id.val
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %.058, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4
  %i.ac = icmp ult i8 %i.q, 64
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr @hf_zbee_zcl_touchlink_transaction_id, align 4
  %i.ae = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0193 = phi i32 [ 5, %bb.e ], [ 1, %bb.d ]     ; 89 uses
  %i.af = load ptr, ptr @zcl_touchlink_commissioning_map, align 8
  %i.ag = call ptr @g_hash_table_lookup(ptr noundef %i.af, ptr noundef nonnull %i.n) ; 2 uses
  %.not62 = icmp eq ptr %i.ag, null
  br i1 %.not62, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = call ptr @wmem_file_scope()
  %i.ai = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.ah, i64 noundef 8) #11 ; 4 uses
  %i.aj = load i32, ptr %i.n, align 4
  store i32 %i.aj, ptr %i.ai, align 4
  %i.ak = load ptr, ptr @zcl_touchlink_commissioning_map, align 8
  %i.al = call i32 @g_hash_table_insert(ptr noundef %i.ak, ptr noundef %i.ai, ptr noundef %i.ai) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.056 = phi ptr [ %i.ag, %bb.f ], [ %i.ai, %bb.g ] ; 5 uses
  %i.am = load i8, ptr %i.r, align 1, !range !6, !noundef !7
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %bb.h
  switch i8 %i.q, label %dissect_zcl_touchlink_scan_response.exit [
    i8 0, label %bb.j
    i8 6, label %bb.k
    i8 66, label %bb.ag
    i8 16, label %bb.l
    i8 18, label %bb.m
    i8 20, label %bb.m
    i8 22, label %bb.af
    i8 2, label %bb.ag
    i8 65, label %bb.ag
  ]

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr @hf_zbee_zcl_touchlink_zbee, align 4
  %i.ap = load i32, ptr @ett_zbee_zcl_touchlink_zbee, align 4
  %i.aq = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %.0193, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef @dissect_zcl_touchlink_scan_request.zbee_info_flags, i32 noundef -2147483648) ; 0 uses
  %i.ar = add nuw nsw i32 %.0193, 1
  %i.as = load i32, ptr @hf_zbee_zcl_touchlink_info, align 4
  %i.at = load i32, ptr @ett_zbee_zcl_touchlink_info, align 4
  %i.au = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, ptr noundef @dissect_zcl_touchlink_scan_request.zll_info_flags, i32 noundef -2147483648) ; 0 uses
  %i.av = or disjoint i32 %.0193, 2
  br label %dissect_zcl_touchlink_scan_response.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = load i32, ptr @hf_zbee_zcl_touchlink_ident_duration, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %.0193, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ay = or disjoint i32 %.0193, 2
  br label %dissect_zcl_touchlink_scan_response.exit

bb.l:                                             ; preds = %bb.i
  %i.az = load i32, ptr @hf_zbee_zcl_touchlink_ext_panid, align 4
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.az, ptr noundef %0, i32 noundef %.0193, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.bb = or disjoint i32 %.0193, 8
  %i.bc = load i32, ptr @hf_zbee_zcl_touchlink_key_index, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.be = add nuw nsw i32 %.0193, 9
  %i.bf = load i32, ptr @hf_zbee_zcl_touchlink_key, align 4
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.be, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.bh = add nuw nsw i32 %.0193, 25
  %i.bi = load i32, ptr @hf_zbee_zcl_touchlink_channel, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bk = or disjoint i32 %.0193, 26
  %i.bl = load i32, ptr @hf_zbee_zcl_touchlink_panid, align 4
  %i.bm = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bk, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bn = add nuw nsw i32 %.0193, 28
  %i.bo = load i32, ptr @hf_zbee_zcl_touchlink_nwk_addr, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bn, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bq = add nuw nsw i32 %.0193, 30
  %i.br = load i32, ptr @hf_zbee_zcl_touchlink_group_begin, align 4
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bt = or disjoint i32 %.0193, 32
  %i.bu = load i32, ptr @hf_zbee_zcl_touchlink_group_end, align 4
  %i.bv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bw = or disjoint i32 %.0193, 34
  %i.bx = load i32, ptr @hf_zbee_zcl_touchlink_addr_range_begin, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.bw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bz = add nuw nsw i32 %.0193, 36
  %i.ca = load i32, ptr @hf_zbee_zcl_touchlink_addr_range_end, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cc = add nuw nsw i32 %.0193, 38
  %i.cd = load i32, ptr @hf_zbee_zcl_touchlink_group_range_begin, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cc, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cf = or disjoint i32 %.0193, 40
  %i.cg = load i32, ptr @hf_zbee_zcl_touchlink_group_range_end, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ci = or disjoint i32 %.0193, 42
  %i.cj = load i32, ptr @hf_zbee_zcl_touchlink_init_eui64, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.ci, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.cl = or disjoint i32 %.0193, 50
  %i.cm = load i32, ptr @hf_zbee_zcl_touchlink_init_addr, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.co = add nuw nsw i32 %.0193, 52
  br label %dissect_zcl_touchlink_scan_response.exit

bb.m:                                             ; preds = %bb.i, %bb.i
  %i.cp = load i32, ptr @hf_zbee_zcl_touchlink_ext_panid, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cp, ptr noundef %0, i32 noundef %.0193, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.cr = or disjoint i32 %.0193, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.cs = load i32, ptr @hf_zbee_zcl_touchlink_key_index, align 4
  %i.ct = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.cr, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.cu = add nuw nsw i32 %.0193, 9               ; 4 uses
  %i.cv = load i32, ptr @hf_zbee_zcl_touchlink_key, align 4
  %i.cw = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.cu, i32 noundef 16, i32 noundef 0) ; 2 uses
  %i.cx = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.cu, i32 noundef 16) ; 2 uses
  %i.cy = add nuw nsw i32 %.0193, 25              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.cz = load i32, ptr %i.d, align 4             ; 2 uses
  switch i32 %i.cz, label %bb.ab [
    i32 4, label %bb.n
    i32 15, label %bb.p
    i32 0, label %bb.x
  ]

bb.n:                                             ; preds = %bb.m
  %i.da = call zeroext i1 @zbee_sec_get_key_from_keyring(ptr noundef @.str.1809, ptr noundef nonnull %i.e)
  br i1 %i.da, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cw, ptr noundef @ei_zbee_zcl_touchlink_no_key, ptr noundef @.str.1810) ; 0 uses
  br label %bb.ac

bb.p:                                             ; preds = %bb.n, %bb.m
  %.0102.ph.i = phi ptr [ @dissect_zcl_touchlink_network_join_request.Touchlink_Certification_Key, %bb.m ], [ %i.e, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.dc = load i32, ptr %.056, align 4
  %i.dd = call i32 @llvm.bswap.i32(i32 %i.dc)     ; 2 uses
  store i32 %i.dd, ptr %i.g, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.dd, ptr %i.de, align 4
  %i.df = getelementptr i8, ptr %.056, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %4 = call i32 @llvm.bswap.i32(i32 %i.dg)        ; 2 uses
  store i32 %4, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %4, ptr %i.di, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.dj = call i32 @gcry_cipher_open(ptr noundef nonnull %i.h, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not107.i = icmp eq i32 %i.dj, 0
  %i.dk = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %.not107.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.dl = call i32 @gcry_cipher_setkey(ptr noundef %i.dk, ptr noundef nonnull %.0102.ph.i, i64 noundef 16)
  %.not108.i = icmp eq i32 %i.dl, 0
  br i1 %.not108.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %i.h, align 8
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.dn = load ptr, ptr %i.h, align 8
  %i.do = call i32 @gcry_cipher_encrypt(ptr noundef %i.dn, ptr noundef nonnull %i.i, i64 noundef 16, ptr noundef nonnull %i.g, i64 noundef 16)
  %.not109.i = icmp eq i32 %i.do, 0
  br i1 %.not109.i, label %bb.t, label %.critedge117.i

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.dq = call i32 @gcry_cipher_open(ptr noundef nonnull %i.j, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not110.i = icmp eq i32 %i.dq, 0
  %i.dr = load ptr, ptr %i.j, align 8             ; 2 uses
  br i1 %.not110.i, label %bb.u, label %.critedge119.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.ds = call i32 @gcry_cipher_setkey(ptr noundef %i.dr, ptr noundef nonnull %i.i, i64 noundef 16)
  %.not111.i = icmp eq i32 %i.ds, 0
  %i.dt = load ptr, ptr %i.j, align 8             ; 2 uses
  br i1 %.not111.i, label %bb.v, label %.critedge119.sink.split.i

bb.v:                                             ; preds = %bb.u
  %i.du = call i32 @gcry_cipher_decrypt(ptr noundef %i.dt, ptr noundef nonnull %i.f, i64 noundef 16, ptr noundef %i.cx, i64 noundef 16)
  %.not112.i = icmp eq i32 %i.du, 0
  br i1 %.not112.i, label %bb.w, label %.critedge119.i

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr %i.j, align 8
  call void @gcry_cipher_close(ptr noundef %i.dv)
  %i.dw = load i32, ptr @hf_zbee_zcl_touchlink_network_key, align 4
  %i.dx = call ptr @proto_tree_add_bytes(ptr noundef %2, i32 noundef %i.dw, ptr noundef %0, i32 noundef %i.cu, i32 noundef 16, ptr noundef nonnull %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.ac

bb.x:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  store <4 x i8> <i8 80, i8 104, i8 76, i8 105>, ptr %i.k, align 16
  %i.dy = load i32, ptr %.056, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ea = call i32 @llvm.bswap.i32(i32 %i.dy)
  store i32 %i.ea, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store <4 x i8> <i8 67, i8 76, i8 83, i8 78>, ptr %i.eb, align 8
  %i.ec = getelementptr i8, ptr %.056, i64 4
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %5 = call i32 @llvm.bswap.i32(i32 %i.ed)
  store i32 %5, ptr %i.ee, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.ef = call i32 @gcry_cipher_open(ptr noundef nonnull %i.l, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not.i = icmp eq i32 %i.ef, 0
  %i.eg = load ptr, ptr %i.l, align 8             ; 2 uses
  br i1 %.not.i, label %bb.y, label %.critedge115.sink.split.i

bb.y:                                             ; preds = %bb.x
  %i.eh = call i32 @gcry_cipher_setkey(ptr noundef %i.eg, ptr noundef nonnull %i.k, i64 noundef 16)
  %.not104.i = icmp eq i32 %i.eh, 0
  %i.ei = load ptr, ptr %i.l, align 8             ; 2 uses
  br i1 %.not104.i, label %bb.z, label %.critedge115.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.ej = call i32 @gcry_cipher_decrypt(ptr noundef %i.ei, ptr noundef nonnull %i.f, i64 noundef 16, ptr noundef %i.cx, i64 noundef 16)
  %.not105.i = icmp eq i32 %i.ej, 0
  br i1 %.not105.i, label %bb.aa, label %.critedge115.i

bb.aa:                                            ; preds = %bb.z
  %i.ek = load ptr, ptr %i.l, align 8
  call void @gcry_cipher_close(ptr noundef %i.ek)
  %i.el = load i32, ptr @hf_zbee_zcl_touchlink_network_key, align 4
  %i.em = call ptr @proto_tree_add_bytes(ptr noundef %2, i32 noundef %i.el, ptr noundef %0, i32 noundef %i.cu, i32 noundef 16, ptr noundef nonnull %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m
  %i.en = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cw, ptr noundef @ei_zbee_zcl_touchlink_no_key, ptr noundef @.str.1811, i32 noundef %i.cz) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.w, %bb.o
  %.4.i = phi ptr [ %i.f, %bb.w ], [ null, %bb.o ], [ %i.f, %bb.aa ], [ null, %bb.ab ] ; 2 uses
  %i.eo = load i32, ptr @hf_zbee_zcl_touchlink_nwk_update_id, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eq = or disjoint i32 %.0193, 26
  %i.er = load i32, ptr @hf_zbee_zcl_touchlink_channel, align 4
  %i.es = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.eq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.et = add nuw nsw i32 %.0193, 27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.eu = load i32, ptr @hf_zbee_zcl_touchlink_panid, align 4
  %i.ev = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.et, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.m) ; 0 uses
  %i.ew = add nuw nsw i32 %.0193, 29
  %.not113.i = icmp eq ptr %.4.i, null
  br i1 %.not113.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = load i32, ptr %i.m, align 4
  call void @zbee_sec_add_key_to_keyring_panid(ptr noundef %1, ptr noundef nonnull %.4.i, i32 noundef %i.ex)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = load i32, ptr @hf_zbee_zcl_touchlink_nwk_addr, align 4
  %i.ez = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.ew, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fa = add nuw nsw i32 %.0193, 31
  %i.fb = load i32, ptr @hf_zbee_zcl_touchlink_group_begin, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.fa, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fd = add nuw nsw i32 %.0193, 33
  %i.fe = load i32, ptr @hf_zbee_zcl_touchlink_group_end, align 4
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fe, ptr noundef %0, i32 noundef %i.fd, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fg = add nuw nsw i32 %.0193, 35
  %i.fh = load i32, ptr @hf_zbee_zcl_touchlink_addr_range_begin, align 4
  %i.fi = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.fg, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fj = add nuw nsw i32 %.0193, 37
  %i.fk = load i32, ptr @hf_zbee_zcl_touchlink_addr_range_end, align 4
  %i.fl = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fk, ptr noundef %0, i32 noundef %i.fj, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fm = add nuw nsw i32 %.0193, 39
  %i.fn = load i32, ptr @hf_zbee_zcl_touchlink_group_range_begin, align 4
  %i.fo = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.fm, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fp = add nuw nsw i32 %.0193, 41
  %i.fq = load i32, ptr @hf_zbee_zcl_touchlink_group_range_end, align 4
  %i.fr = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fq, ptr noundef %0, i32 noundef %i.fp, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fs = add nuw nsw i32 %.0193, 43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %dissect_zcl_touchlink_network_join_request.exit

.critedge.i:                                      ; preds = %bb.r, %bb.p
  %.sink.i = phi ptr [ %i.dm, %bb.r ], [ %i.dk, %bb.p ]
  call void @gcry_cipher_close(ptr noundef %.sink.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %dissect_zcl_touchlink_network_join_request.exit

.critedge115.sink.split.i:                        ; preds = %bb.y, %bb.x
  %.sink123.i = phi ptr [ %i.eg, %bb.x ], [ %i.ei, %bb.y ]
  call void @gcry_cipher_close(ptr noundef %.sink123.i)
  br label %.critedge115.i

.critedge115.i:                                   ; preds = %.critedge115.sink.split.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %dissect_zcl_touchlink_network_join_request.exit

.critedge117.i:                                   ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %dissect_zcl_touchlink_network_join_request.exit

.critedge119.sink.split.i:                        ; preds = %bb.u, %bb.t
  %.sink124.i = phi ptr [ %i.dr, %bb.t ], [ %i.dt, %bb.u ]
  call void @gcry_cipher_close(ptr noundef %.sink124.i)
  br label %.critedge119.i

.critedge119.i:                                   ; preds = %.critedge119.sink.split.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %dissect_zcl_touchlink_network_join_request.exit

dissect_zcl_touchlink_network_join_request.exit:  ; preds = %bb.ae, %.critedge.i, %.critedge115.i, %.critedge117.i, %.critedge119.i
  %.2 = phi i32 [ %i.fs, %bb.ae ], [ %i.cy, %.critedge119.i ], [ %i.cy, %.critedge117.i ], [ %i.cy, %.critedge.i ], [ %i.cy, %.critedge115.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %dissect_zcl_touchlink_scan_response.exit

bb.af:                                            ; preds = %bb.i
  %i.ft = load i32, ptr @hf_zbee_zcl_touchlink_ext_panid, align 4
  %i.fu = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ft, ptr noundef %0, i32 noundef %.0193, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.fv = or disjoint i32 %.0193, 8
  %i.fw = load i32, ptr @hf_zbee_zcl_touchlink_nwk_update_id, align 4
  %i.fx = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fw, ptr noundef %0, i32 noundef %i.fv, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fy = add nuw nsw i32 %.0193, 9
  %i.fz = load i32, ptr @hf_zbee_zcl_touchlink_channel, align 4
  %i.ga = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fz, ptr noundef %0, i32 noundef %i.fy, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gb = or disjoint i32 %.0193, 10
  %i.gc = load i32, ptr @hf_zbee_zcl_touchlink_panid, align 4
  %i.gd = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gc, ptr noundef %0, i32 noundef %i.gb, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ge = add nuw nsw i32 %.0193, 12
  %i.gf = load i32, ptr @hf_zbee_zcl_touchlink_nwk_addr, align 4
  %i.gg = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gf, ptr noundef %0, i32 noundef %i.ge, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.gh = add nuw nsw i32 %.0193, 14
  br label %dissect_zcl_touchlink_scan_response.exit

bb.ag:                                            ; preds = %bb.i, %bb.i, %bb.i
  %i.gi = load i32, ptr @hf_zbee_zcl_touchlink_start_index, align 4
  %i.gj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gi, ptr noundef %0, i32 noundef %.0193, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gk = add nuw nsw i32 %.0193, 1
  br label %dissect_zcl_touchlink_scan_response.exit

bb.ah:                                            ; preds = %bb.h
  switch i8 %i.q, label %dissect_zcl_touchlink_scan_response.exit [
    i8 1, label %bb.ai
    i8 17, label %bb.ak
    i8 19, label %bb.al
    i8 21, label %bb.al
    i8 3, label %bb.am
    i8 64, label %bb.an
    i8 65, label %bb.ao
    i8 66, label %bb.ap
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gl = load i32, ptr @hf_zbee_zcl_touchlink_rssi_correction, align 4
  %i.gm = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gl, ptr noundef %0, i32 noundef %.0193, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gn = add nuw nsw i32 %.0193, 1
  %i.go = load i32, ptr @hf_zbee_zcl_touchlink_zbee, align 4
  %i.gp = load i32, ptr @ett_zbee_zcl_touchlink_zbee, align 4
  %i.gq = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.gn, i32 noundef %i.go, i32 noundef %i.gp, ptr noundef @dissect_zcl_touchlink_scan_response.zbee_info_flags, i32 noundef -2147483648) ; 0 uses
  %i.gr = or disjoint i32 %.0193, 2
  %i.gs = load i32, ptr @hf_zbee_zcl_touchlink_info, align 4
  %i.gt = load i32, ptr @ett_zbee_zcl_touchlink_info, align 4
  %i.gu = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, ptr noundef @dissect_zcl_touchlink_scan_response.zll_info_flags, i32 noundef -2147483648) ; 0 uses
  %i.gv = add nuw nsw i32 %.0193, 3
  %i.gw = load i32, ptr @hf_zbee_zcl_touchlink_key_bitmask, align 4
  %i.gx = load i32, ptr @ett_zbee_zcl_touchlink_keybits, align 4
  %i.gy = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %i.gx, ptr noundef @dissect_zcl_touchlink_scan_response.zll_keybit_flags, i32 noundef -2147483648) ; 0 uses
  %i.gz = add nuw nsw i32 %.0193, 5
  %i.ha = load i32, ptr @hf_zbee_zcl_touchlink_response_id, align 4
  %i.hb = getelementptr i8, ptr %.056, i64 4
  %i.hc = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ha, ptr noundef %0, i32 noundef %i.gz, i32 noundef 4, i32 noundef -2147483648, ptr noundef %i.hb) ; 0 uses
  %i.hd = add nuw nsw i32 %.0193, 9
  %i.he = load i32, ptr @hf_zbee_zcl_touchlink_ext_panid, align 4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hd, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.hg = add nuw nsw i32 %.0193, 17
  %i.hh = load i32, ptr @hf_zbee_zcl_touchlink_nwk_update_id, align 4
  %i.hi = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hh, ptr noundef %0, i32 noundef %i.hg, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hj = or disjoint i32 %.0193, 18
  %i.hk = load i32, ptr @hf_zbee_zcl_touchlink_channel, align 4
  %i.hl = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hk, ptr noundef %0, i32 noundef %i.hj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hm = add nuw nsw i32 %.0193, 19
  %i.hn = load i32, ptr @hf_zbee_zcl_touchlink_panid, align 4
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hn, ptr noundef %0, i32 noundef %i.hm, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hp = add nuw nsw i32 %.0193, 21
  %i.hq = load i32, ptr @hf_zbee_zcl_touchlink_nwk_addr, align 4
  %i.hr = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hq, ptr noundef %0, i32 noundef %i.hp, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hs = add nuw nsw i32 %.0193, 23              ; 2 uses
  %i.ht = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hs)
  %i.hu = load i32, ptr @hf_zbee_zcl_touchlink_sub_devices, align 4
  %i.hv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hu, ptr noundef %0, i32 noundef %i.hs, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hw = or disjoint i32 %.0193, 24
  %i.hx = load i32, ptr @hf_zbee_zcl_touchlink_total_groups, align 4
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.hw, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hz = add nuw nsw i32 %.0193, 25              ; 2 uses
  %i.ia = icmp eq i8 %i.ht, 1
  br i1 %i.ia, label %bb.aj, label %dissect_zcl_touchlink_scan_response.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ib = load i32, ptr @hf_zbee_zcl_touchlink_endpoint, align 4
end_hunk_0
