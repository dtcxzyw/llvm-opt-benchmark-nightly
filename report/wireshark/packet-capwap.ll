Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-capwap?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@proto_reg_handoff_capwap:bb.a
bb.a:
  %i.a = load i32, ptr @proto_capwap_control, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.851, i32 noundef %i.a)
  store ptr %i.b, ptr @dtls_handle, align 8
  %i.c = load i32, ptr @proto_capwap_data, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.851, i32 noundef %i.c) ; 0 uses
  %i.e = load i32, ptr @proto_capwap_data, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.852, i32 noundef %i.e)
  store ptr %i.f, ptr @ieee8023_handle, align 8
  %i.g = load i32, ptr @proto_capwap_data, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.853, i32 noundef %i.g)
  store ptr %i.h, ptr @ieee80211_handle, align 8
  %i.i = load i32, ptr @proto_capwap_data, align 4
  %i.j = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.854, i32 noundef %i.i)
  store ptr %i.j, ptr @ieee80211_bsfc_handle, align 8
  %i.k = load ptr, ptr @capwap_control_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.855, i32 noundef 5246, ptr noundef %i.k)
  %i.l = load ptr, ptr @capwap_data_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.855, i32 noundef 5247, ptr noundef %i.l)
  %i.m = tail call ptr @prefs_get_range_value(ptr noundef nonnull @.str.841, ptr noundef nonnull @.str.855)
  store ptr %i.m, ptr @global_capwap_data_udp_ports, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_get_range_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 1, 5) i32 @dissect_capwap_preamble(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_capwap_preamble, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr @ett_capwap_preamble, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 3 uses
  %i.e = load i32, ptr @hf_capwap_preamble_version, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_capwap_preamble_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.j = and i8 %i.i, 15                          ; 2 uses
  store i8 %i.j, ptr %2, align 1
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_capwap_preamble_reserved, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 4, %bb.b ], [ 1, %bb.a ]        ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.b, i32 noundef %.0)
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 1020) i32 @dissect_capwap_header(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 5) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr nofree noundef captures(none) initializes((0, 1)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = shl nuw nsw i32 %2, 3                    ; 3 uses
  %i.c = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.b, i32 noundef 5)
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 2                  ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 4 uses
  %i.g = load i32, ptr @hf_capwap_header, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %2, i32 noundef %i.f, i32 noundef 0)
  %i.i = load i32, ptr @ett_capwap_header, align 4
  %i.j = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i) ; 15 uses
  %i.k = load i32, ptr @hf_capwap_header_hlen, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.1129, i32 noundef %i.e)
  %i.m = load i32, ptr @hf_capwap_header_rid, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.m, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_capwap_header_wbid, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.o, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.q = add nuw nsw i32 %i.b, 10
  %i.r = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.q, i32 noundef 5)
  store i8 %i.r, ptr %5, align 1
  %i.s = add nuw nsw i32 %i.b, 15                 ; 2 uses
  %i.t = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.s, i32 noundef 9, i32 noundef 0)
  %i.u = zext i16 %i.t to i32                     ; 5 uses
  %i.v = load i32, ptr @hf_capwap_header_flags, align 4
  %i.w = load i32, ptr @ett_capwap_header_flags, align 4
  %i.x = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.j, ptr noundef %0, i32 noundef %2, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull @dissect_capwap_header.header_flags, i32 noundef 0) ; 0 uses
  %i.y = and i32 %i.u, 128
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %6, align 1
  %i.ab = and i32 %i.u, 64
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %7, align 1
  %i.ae = and i32 %i.u, 8
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @col_append_str(ptr noundef %i.ag, i32 noundef 25, ptr noundef nonnull @.str.1130)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.s, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ %i.ah, %bb.c ], [ -1, %bb.b ]
  store i8 %storemerge, ptr %4, align 1
  %i.ai = load i32, ptr @hf_capwap_header_fragment_id, align 4
  %i.aj = add nuw nsw i32 %2, 3                   ; 2 uses
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.al = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aj)
  %i.am = zext i16 %i.al to i32
  store i32 %i.am, ptr %8, align 4
  %i.an = load i32, ptr @hf_capwap_header_fragment_offset, align 4
  %i.ao = add nuw nsw i32 %2, 5                   ; 2 uses
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.ao, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aq = shl nuw nsw i32 %i.ao, 3
  %i.ar = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.aq, i32 noundef 13, i32 noundef 0)
  %i.as = zext i16 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 3
  store i32 %i.at, ptr %9, align 4
  %i.au = load i32, ptr @hf_capwap_header_reserved, align 4
  %i.av = add nuw nsw i32 %2, 6
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.av, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = and i32 %i.u, 16
  %.not151 = icmp eq i32 %i.ax, 0
  br i1 %.not151, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = add nuw nsw i32 %2, 7                   ; 2 uses
  %i.az = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ay) ; 2 uses
  %i.ba = load i32, ptr @hf_capwap_header_mac_length, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bc = zext i8 %i.az to i32                    ; 2 uses
  %i.bd = or disjoint i32 %2, 8
  switch i8 %i.az, label %bb.g [
    i8 6, label %bb.h
    i8 8, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %hf_capwap_header_mac_eui64.sink = phi ptr [ @hf_capwap_header_mac_eui64, %bb.f ], [ @hf_capwap_header_mac_data, %bb.g ], [ @hf_capwap_header_mac_eui48, %bb.e ]
  %.sink160 = phi i32 [ 8, %bb.f ], [ %i.bc, %bb.g ], [ 6, %bb.e ]
  %i.be = load i32, ptr %hf_capwap_header_mac_eui64.sink, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef %.sink160, i32 noundef 0) ; 0 uses
  %i.bg = add nuw nsw i32 %i.bc, 8                ; 3 uses
  %i.bh = add nuw nsw i32 %i.bg, %2               ; 2 uses
  %i.bi = sub nsw i32 0, %i.bh
  %i.bj = and i32 %i.bi, 3                        ; 3 uses
  %.not152 = icmp eq i32 %i.bj, 0
  br i1 %.not152, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr @hf_capwap_header_padding, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  %i.bm = add nuw nsw i32 %i.bj, %i.bg
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d
  %.0145 = phi i32 [ %i.bm, %bb.i ], [ %i.bg, %bb.h ], [ 7, %bb.d ] ; 3 uses
  %i.bn = and i32 %i.u, 32
  %.not153 = icmp eq i32 %i.bn, 0
  br i1 %.not153, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = add nuw nsw i32 %.0145, %2
  %i.bp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bo)
  %i.bq = load i8, ptr @global_capwap_draft_8_cisco, align 1, !range !6, !noundef !7 ; 2 uses
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = zext nneg i8 %i.bq to i32
  %spec.select = add nuw nsw i32 %.0145, %i.bs    ; 2 uses
  %spec.select156 = select i1 %i.br, i8 4, i8 %i.bp
  %i.bt = load i32, ptr @hf_capwap_header_wireless_length, align 4
  %i.bu = add nuw nsw i32 %spec.select, %2
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bw = add nuw nsw i32 %spec.select, 1         ; 2 uses
  %i.bx = load i32, ptr @hf_capwap_header_wireless_data, align 4
  %i.by = add nuw nsw i32 %i.bw, %2               ; 8 uses
  %i.bz = zext i8 %spec.select156 to i32          ; 2 uses
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef 0) ; 0 uses
  %i.cb = load i8, ptr %5, align 1
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %bb.l, label %dissect_capwap_data_message_bindings_ieee80211.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr i8, ptr %3, i64 292
  %.val = load i32, ptr %i.cd, align 4
  %i.ce = load ptr, ptr @global_capwap_data_udp_ports, align 8
  %i.cf = tail call zeroext i1 @value_is_in_range(ptr noundef %i.ce, i32 noundef %.val)
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.cg = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_fi, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.by, i32 noundef 4, i32 noundef 0)
  %i.ci = load i32, ptr @ett_capwap_data_message_bindings_ieee80211, align 4
  %i.cj = tail call ptr @proto_item_add_subtree(ptr noundef %i.ch, i32 noundef %i.ci) ; 3 uses
  %i.ck = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_fi_rssi, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.by, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_fi_snr, align 4
  %i.cn = add nuw nsw i32 %i.by, 1
  %i.co = tail call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cp = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_fi_data_rate, align 4
  %i.cq = add nuw nsw i32 %i.by, 2
  %i.cr = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.cj, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.cq, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.cs = load i16, ptr %i.a, align 2
  %i.ct = uitofp i16 %i.cs to float
  %i.cu = fdiv float %i.ct, 1.000000e+01
  %i.cv = fpext float %i.cu to double
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cr, ptr noundef nonnull @.str.1132, double noundef %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %dissect_capwap_data_message_bindings_ieee80211.exit

bb.n:                                             ; preds = %bb.l
  %i.cw = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_dest_wlan, align 4
  %i.cx = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.by, i32 noundef 4, i32 noundef 0)
  %i.cy = load i32, ptr @ett_capwap_data_message_bindings_ieee80211, align 4
  %i.cz = tail call ptr @proto_item_add_subtree(ptr noundef %i.cx, i32 noundef %i.cy) ; 2 uses
  %i.da = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_dw_wlan_id_bitmap, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef %i.cz, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.by, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dc = load i32, ptr @hf_capwap_header_wireless_data_ieee80211_dw_reserved, align 4
  %i.dd = add nuw nsw i32 %i.by, 2
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %i.cz, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.dd, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_capwap_data_message_bindings_ieee80211.exit

dissect_capwap_data_message_bindings_ieee80211.exit: ; preds = %bb.n, %bb.m, %bb.k
  %i.df = add nuw nsw i32 %i.bw, %i.bz            ; 3 uses
  %i.dg = add nuw nsw i32 %i.df, %2               ; 2 uses
  %i.dh = sub nsw i32 0, %i.dg
  %i.di = and i32 %i.dh, 3                        ; 3 uses
  %.not154 = icmp eq i32 %i.di, 0
  br i1 %.not154, label %bb.p, label %bb.o

bb.o:                                             ; preds = %dissect_capwap_data_message_bindings_ieee80211.exit
  %i.dj = load i32, ptr @hf_capwap_header_padding, align 4
  %i.dk = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.di, i32 noundef 0) ; 0 uses
  %i.dl = add nuw nsw i32 %i.di, %i.df
  br label %bb.p

bb.p:                                             ; preds = %dissect_capwap_data_message_bindings_ieee80211.exit, %bb.o, %bb.j
  %.2 = phi i32 [ %i.dl, %bb.o ], [ %i.df, %dissect_capwap_data_message_bindings_ieee80211.exit ], [ %.0145, %bb.j ] ; 2 uses
  %.not155 = icmp ne i32 %.2, %i.f
  %i.dm = load i8, ptr @global_capwap_draft_8_cisco, align 1, !range !6
  %i.dn = icmp eq i8 %i.dm, 0
  %or.cond = select i1 %.not155, i1 %i.dn, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.l, ptr noundef nonnull @ei_capwap_header_length_bad, ptr noundef nonnull @.str.1131, i32 noundef %.2, i32 noundef %i.f) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_capwap_control_header(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 1024) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_capwap_control_header, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 8, i32 noundef 0)
  %i.c = load i32, ptr @ett_capwap_control_header, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 4 uses
  %i.e = load i32, ptr @hf_capwap_control_header_msg_type, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef 0)
  %i.g = load i32, ptr @ett_capwap_control_header_msg, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 2 uses
  %i.i = load i32, ptr @hf_capwap_control_header_msg_type_enterprise_nbr, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_capwap_control_header_msg_type_enterprise_specific, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = getelementptr i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %3, i64 416
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  %i.r = tail call ptr @val_to_str(ptr noundef %i.p, i32 noundef %i.q, ptr noundef nonnull @message_type, ptr noundef nonnull @.str.1134)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.n, i32 noundef 25, ptr noundef nonnull @.str.1133, ptr noundef %i.r)
  %i.s = load i32, ptr @hf_capwap_control_header_seq_number, align 4
  %i.t = add nuw nsw i32 %2, 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_capwap_control_header_msg_element_length, align 4
  %i.w = add nuw nsw i32 %2, 5
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_capwap_control_header_flags, align 4
  %i.z = add nuw nsw i32 %2, 7
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_bits16(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @value_is_in_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 4, 65540) i32 @dissect_capwap_message_element_type(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 11 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %2) ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 3 uses
  %i.h = add i32 %2, 2                            ; 2 uses
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.h) ; 59 uses
  %i.j = zext i16 %i.i to i32                     ; 81 uses
  %i.k = load i32, ptr @hf_capwap_msg_element, align 4
  %i.l = add nuw nsw i32 %i.j, 4                  ; 2 uses
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.k, ptr noundef %0, i32 noundef %2, i32 noundef %i.l, i32 noundef 0) ; 4 uses
  %i.n = getelementptr i8, ptr %3, i64 416        ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @val_to_str(ptr noundef %i.o, i32 noundef %i.g, ptr noundef nonnull @message_element_type_vals, ptr noundef nonnull @.str.1136)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.m, ptr noundef nonnull @.str.1135, i32 noundef %i.g, i32 noundef %i.j, ptr noundef %i.p)
  %i.q = load i32, ptr @ett_capwap_message_element_type, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.q) ; 188 uses
  %i.s = load i32, ptr @hf_capwap_msg_element_type, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef 0)
  %i.u = load i32, ptr @hf_capwap_msg_element_length, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef 0) ; 58 uses
  %i.w = load i32, ptr @hf_capwap_msg_element_value, align 4
  %i.x = add i32 %2, 4                            ; 66 uses
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.j, i32 noundef 0) ; 0 uses
  switch i16 %i.f, label %bb.gq [
    i16 1, label %bb.b
    i16 2, label %bb.f
    i16 3, label %bb.j
    i16 4, label %bb.n
    i16 5, label %bb.q
    i16 6, label %bb.t
    i16 8, label %bb.w
    i16 10, label %bb.ad
    i16 11, label %bb.ag
    i16 12, label %bb.aj
    i16 16, label %bb.am
    i16 18, label %bb.ap
    i16 20, label %bb.av
    i16 23, label %bb.ay
    i16 25, label %bb.bb
    i16 28, label %bb.be
    i16 29, label %bb.bh
    i16 30, label %bb.bk
    i16 31, label %bb.bn
    i16 32, label %bb.bq
    i16 33, label %bb.bt
    i16 35, label %bb.bw
    i16 36, label %bb.bz
    i16 37, label %bb.cc
    i16 38, label %bb.ch
    i16 39, label %bb.co
    i16 40, label %bb.cu
    i16 41, label %bb.cx
    i16 44, label %bb.da
    i16 45, label %bb.dd
    i16 48, label %bb.dg
    i16 49, label %bb.dj
    i16 50, label %bb.dm
    i16 51, label %bb.dp
    i16 52, label %bb.ds
    i16 53, label %bb.dv
    i16 1024, label %bb.dy
    i16 1025, label %bb.ec
    i16 1026, label %bb.eg
    i16 1027, label %bb.ej
    i16 1028, label %bb.em
    i16 1029, label %bb.ep
    i16 1030, label %bb.es
    i16 1031, label %bb.ev
    i16 1032, label %bb.ey
    i16 1033, label %bb.fb
    i16 1034, label %bb.fe
    i16 1036, label %bb.fh
    i16 1037, label %bb.fk
    i16 1038, label %bb.fn
end_hunk_0
