Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ppi?download=true
inline.NumInlined: 37
inline.NumDeleted: 9
begin_hunk_0_@dissect_ppi:bb.a

bb.dp:                                            ; preds = %bb.dm, %bb.dn, %bb.do
  %.1317 = phi i32 [ %i.tm, %bb.do ], [ %.0316382, %bb.dn ], [ %.0316382, %bb.dm ] ; 2 uses
  %.2 = load ptr, ptr %.2383, align 8             ; 2 uses
  %.not344 = icmp eq ptr %.2, null
  br i1 %.not344, label %._crit_edge386, label %bb.dm, !llvm.loop !9

._crit_edge386:                                   ; preds = %bb.dp, %bb.dl
  %.0316.lcssa = phi i32 [ 0, %bb.dl ], [ %.1317, %bb.dp ]
  %i.tw = load i32, ptr @hf_ampdu_count, align 4
  %i.tx = call ptr @proto_tree_add_uint(ptr noundef %.0324426, i32 noundef %i.tw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0316.lcssa) ; 0 uses
  store i8 0, ptr %i.rl, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %.thread424, %bb.di
  %i.ty = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.0321.lcssa416)
  %i.tz = load ptr, ptr %i.e, align 8
  call void @col_set_str(ptr noundef %i.tz, i32 noundef 35, ptr noundef nonnull @.str.312)
  %i.ua = load ptr, ptr %i.e, align 8
  call void @col_set_str(ptr noundef %i.ua, i32 noundef 25, ptr noundef nonnull @.str.313)
  %i.ub = call i32 @call_data_dissector(ptr noundef %i.ty, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %._crit_edge386
  %i.uc = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.dt

bb.ds:                                            ; preds = %bb.cv, %.thread
  %i.ud = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.0321.lcssa416)
  %i.ue = load i32, ptr %i.b, align 4
  %i.uf = icmp eq i32 %i.ue, 105                  ; 2 uses
  %. = select i1 %i.uf, ptr %4, ptr %i.b
  %ieee80211_radio_handle.val = load ptr, ptr @ieee80211_radio_handle, align 8
  %pcap_pktdata_handle.val = load ptr, ptr @pcap_pktdata_handle, align 8
  %i.ug = select i1 %i.uf, ptr %ieee80211_radio_handle.val, ptr %pcap_pktdata_handle.val
  %i.uh = call i32 @call_dissector_with_data(ptr noundef %i.ug, ptr noundef %i.ud, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.) ; 0 uses
  %i.ui = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.cx
  %.0326 = phi i32 [ %.0321.lcssa416, %bb.cx ], [ %i.uc, %bb.dr ], [ %i.ui, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0326
}

; Function Attrs: null_pointer_is_valid
declare void @register_capture_dissector_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ppi() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_ppi, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.268, i32 noundef %i.a)
  store ptr %i.b, ptr @ieee80211_radio_handle, align 8
  %i.c = load i32, ptr @proto_ppi, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.269, i32 noundef %i.c)
  store ptr %i.d, ptr @pcap_pktdata_handle, align 8
  %i.e = load i32, ptr @proto_ppi, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.270, i32 noundef %i.e)
  store ptr %i.f, ptr @ppi_gps_handle, align 8
  %i.g = load i32, ptr @proto_ppi, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.271, i32 noundef %i.g)
  store ptr %i.h, ptr @ppi_vector_handle, align 8
  %i.i = load i32, ptr @proto_ppi, align 4
  %i.j = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.272, i32 noundef %i.i)
  store ptr %i.j, ptr @ppi_sensor_handle, align 8
  %i.k = load i32, ptr @proto_ppi, align 4
  %i.l = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.273, i32 noundef %i.k)
  store ptr %i.l, ptr @ppi_antenna_handle, align 8
  %i.m = load i32, ptr @proto_ppi, align 4
  %i.n = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.274, i32 noundef %i.m)
  store ptr %i.n, ptr @ppi_fnet_handle, align 8
  %i.o = load ptr, ptr @ppi_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.275, i32 noundef 97, ptr noundef %i.o)
  %i.p = load i32, ptr @proto_ppi, align 4
  %i.q = tail call ptr @create_capture_dissector_handle(ptr noundef nonnull @capture_ppi, i32 noundef %i.p)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.275, i32 noundef 97, ptr noundef %i.q)
  %i.r = tail call i32 @proto_get_id_by_filter_name(ptr noundef nonnull @.str.276)
  store i32 %i.r, ptr @proto_aggregate, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @create_capture_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @capture_ppi(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %.val = load i16, ptr %i.a, align 1             ; 2 uses
  %i.b = zext i16 %.val to i32                    ; 2 uses
  %i.c = icmp ult i16 %.val, 8
  %.not = icmp ult i32 %2, %i.b
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1
  %i.f = tail call zeroext i1 @try_capture_dissector(ptr noundef nonnull @.str.264, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.b, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_id_by_filter_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_80211n_mac(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 4, 65540) %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef captures(none) initializes((8, 12)) %8) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %8, i64 8
  store i32 7, ptr %i.a, align 8
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @ett_dot11n_mac, align 4
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.322) ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 416
  %.val = load ptr, ptr %i.d, align 8
  %i.e = tail call ptr @ptvcursor_new(ptr noundef %.val, ptr noundef %i.c, ptr noundef %0, i32 noundef %3) ; 4 uses
  %i.f = load i32, ptr @hf_ppi_field_type, align 4
  %i.g = tail call ptr @ptvcursor_add(ptr noundef %i.e, i32 noundef %i.f, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.h = load i32, ptr @hf_ppi_field_len, align 4
  %i.i = tail call ptr @ptvcursor_add(ptr noundef %i.e, i32 noundef %i.h, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.j = tail call i32 @ptvcursor_current_offset(ptr noundef %i.e)
  tail call void @ptvcursor_free(ptr noundef %i.e)
  %i.k = add nsw i32 %4, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.066 = phi i32 [ %i.j, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %.058 = phi i32 [ %i.k, %bb.b ], [ %4, %bb.a ]  ; 3 uses
  %.0 = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]    ; 2 uses
  %.not = icmp eq i32 %.058, 12
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0, ptr noundef %1, ptr noundef nonnull @ei_ppi_invalid_length, ptr noundef %0, i32 noundef %.066, i32 noundef %.058, ptr noundef nonnull @.str.314, i32 noundef %.058) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @ptvcursor_new(ptr noundef %i.n, ptr noundef %.0, ptr noundef %0, i32 noundef %.066) ; 15 uses
  %i.p = tail call i32 @ptvcursor_current_offset(ptr noundef %i.o)
  %i.q = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.p) ; 7 uses
  store i32 %i.q, ptr %6, align 4
  %i.r = getelementptr i8, ptr %8, i64 12         ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = or i8 %i.s, 14
  store i8 %i.t, ptr %i.r, align 4
  %i.u = lshr i32 %i.q, 1
  %.lobit = and i32 %i.u, 1
  %i.v = getelementptr i8, ptr %8, i64 16
  store i32 %.lobit, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %8, i64 20         ; 2 uses
  %9 = lshr i32 %i.q, 2
  %10 = trunc i32 %9 to i8
  %i.x = and i8 %10, 1
  %i.y = load i8, ptr %i.w, align 4
  %i.z = and i8 %i.y, -4
  %11 = trunc i32 %i.q to i8
  %i.aa = shl i8 %11, 1
  %i.ab = and i8 %i.aa, 2
  %i.ac = or disjoint i8 %i.ab, %i.x
  %i.ad = or disjoint i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.w, align 4
  %i.ae = and i32 %i.q, 16
  %.not60 = icmp eq i32 %i.ae, 0                  ; 2 uses
  br i1 %.not60, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %8, i64 32        ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = or i16 %i.ag, 1024
  store i16 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr i8, ptr %8, i64 56        ; 2 uses
  %i.aj = lshr i32 %i.q, 5
  %.lobit67 = and i32 %i.aj, 1
  %spec.select = xor i32 %.lobit67, 1             ; 2 uses
  store i32 %spec.select, ptr %i.ai, align 8
  %i.ak = and i32 %i.q, 64
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = or disjoint i32 %spec.select, 2
  store i32 %i.al, ptr %i.ai, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.am = load i32, ptr @hf_80211n_mac_flags, align 4
  %i.an = load i32, ptr @ett_dot11n_mac_flags, align 4
  %i.ao = tail call ptr @ptvcursor_add_with_subtree(ptr noundef %i.o, i32 noundef %i.am, i32 noundef 4, i32 noundef -2147483648, i32 noundef %i.an) ; 0 uses
  %i.ap = load i32, ptr @hf_80211n_mac_flags_greenfield, align 4
  %i.aq = tail call ptr @ptvcursor_add_no_advance(ptr noundef %i.o, i32 noundef %i.ap, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ar = load i32, ptr @hf_80211n_mac_flags_ht20_40, align 4
  %i.as = tail call ptr @ptvcursor_add_no_advance(ptr noundef %i.o, i32 noundef %i.ar, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.at = load i32, ptr @hf_80211n_mac_flags_rx_guard_interval, align 4
  %i.au = tail call ptr @ptvcursor_add_no_advance(ptr noundef %i.o, i32 noundef %i.at, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.av = load i32, ptr @hf_80211n_mac_flags_duplicate_rx, align 4
  %i.aw = tail call ptr @ptvcursor_add_no_advance(ptr noundef %i.o, i32 noundef %i.av, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ax = load i32, ptr @hf_80211n_mac_flags_aggregate, align 4
  %i.ay = tail call ptr @ptvcursor_add_no_advance(ptr noundef %i.o, i32 noundef %i.ax, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.az = load i32, ptr @hf_80211n_mac_flags_more_aggregates, align 4
  %i.ba = tail call ptr @ptvcursor_add_no_advance(ptr noundef %i.o, i32 noundef %i.az, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bb = load i32, ptr @hf_80211n_mac_flags_delimiter_crc_after, align 4
  %i.bc = tail call ptr @ptvcursor_add(ptr noundef %i.o, i32 noundef %i.bb, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  tail call void @ptvcursor_pop_subtree(ptr noundef %i.o)
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call i32 @ptvcursor_current_offset(ptr noundef %i.o)
  %i.be = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.bd) ; 2 uses
  store i32 %i.be, ptr %7, align 4
  %i.bf = getelementptr i8, ptr %8, i64 60
  store i32 %i.be, ptr %i.bf, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = load i32, ptr @hf_80211n_mac_ampdu_id, align 4
  %i.bh = tail call ptr @ptvcursor_add(ptr noundef %i.o, i32 noundef %i.bg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bi = load i32, ptr @hf_80211n_mac_num_delimiters, align 4
  %i.bj = tail call ptr @ptvcursor_add(ptr noundef %i.o, i32 noundef %i.bi, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr @hf_80211n_mac_reserved, align 4
  %i.bl = tail call ptr @ptvcursor_add(ptr noundef %i.o, i32 noundef %i.bk, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ptvcursor_free(ptr noundef %i.o)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_letoh64(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_add_with_subtree(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_add_no_advance(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ptvcursor_pop_subtree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ptvcursor_current_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ptvcursor_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_tvbuff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_mhz_to_chan(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ieee80211_mhz_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare signext i8 @tvb_get_int8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ptvcursor_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @try_capture_dissector(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
end_hunk_0
