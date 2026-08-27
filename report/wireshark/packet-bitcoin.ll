Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bitcoin?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
begin_hunk_0_@proto_reg_handoff_bitcoin:bb.a
  %i.a = load ptr, ptr @bitcoin_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.254, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_bitcoin, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.255, ptr noundef nonnull @dissect_bitcoin_heur, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.257, i32 noundef %i.b, i32 noundef 1)
  %i.c = load i32, ptr @proto_bitcoin, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_version, i32 noundef %i.c)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.258, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_bitcoin, align 4
  %i.f = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_addr, i32 noundef %i.e)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.259, ptr noundef %i.f)
  %i.g = load i32, ptr @proto_bitcoin, align 4
  %i.h = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_addrv2, i32 noundef %i.g)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, ptr noundef %i.h)
  %i.i = load i32, ptr @proto_bitcoin, align 4
  %i.j = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_inv, i32 noundef %i.i)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.261, ptr noundef %i.j)
  %i.k = load i32, ptr @proto_bitcoin, align 4
  %i.l = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_getdata, i32 noundef %i.k)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.262, ptr noundef %i.l)
  %i.m = load i32, ptr @proto_bitcoin, align 4
  %i.n = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_getblocks, i32 noundef %i.m)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.263, ptr noundef %i.n)
  %i.o = load i32, ptr @proto_bitcoin, align 4
  %i.p = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_getheaders, i32 noundef %i.o)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.264, ptr noundef %i.p)
  %i.q = load i32, ptr @proto_bitcoin, align 4
  %i.r = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_tx, i32 noundef %i.q)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.265, ptr noundef %i.r)
  %i.s = load i32, ptr @proto_bitcoin, align 4
  %i.t = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_block, i32 noundef %i.s)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.266, ptr noundef %i.t)
  %i.u = load i32, ptr @proto_bitcoin, align 4
  %i.v = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_ping, i32 noundef %i.u)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.267, ptr noundef %i.v)
  %i.w = load i32, ptr @proto_bitcoin, align 4
  %i.x = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_pong, i32 noundef %i.w)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.268, ptr noundef %i.x)
  %i.y = load i32, ptr @proto_bitcoin, align 4
  %i.z = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_notfound, i32 noundef %i.y)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.269, ptr noundef %i.z)
  %i.aa = load i32, ptr @proto_bitcoin, align 4
  %i.ab = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_reject, i32 noundef %i.aa)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.270, ptr noundef %i.ab)
  %i.ac = load i32, ptr @proto_bitcoin, align 4
  %i.ad = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_headers, i32 noundef %i.ac)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.271, ptr noundef %i.ad)
  %i.ae = load i32, ptr @proto_bitcoin, align 4
  %i.af = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_feefilter, i32 noundef %i.ae)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.272, ptr noundef %i.af)
  %i.ag = load i32, ptr @proto_bitcoin, align 4
  %i.ah = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_filterload, i32 noundef %i.ag)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.273, ptr noundef %i.ah)
  %i.ai = load i32, ptr @proto_bitcoin, align 4
  %i.aj = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_filteradd, i32 noundef %i.ai)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.274, ptr noundef %i.aj)
  %i.ak = load i32, ptr @proto_bitcoin, align 4
  %i.al = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_merkleblock, i32 noundef %i.ak)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.275, ptr noundef %i.al)
  %i.am = load i32, ptr @proto_bitcoin, align 4
  %i.an = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_sendcmpct, i32 noundef %i.am)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.276, ptr noundef %i.an)
  %i.ao = load i32, ptr @proto_bitcoin, align 4
  %i.ap = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_bitcoin_msg_empty, i32 noundef %i.ao) ; 11 uses
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.277, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.278, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.279, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.280, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.281, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.282, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.283, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.284, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.285, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.286, ptr noundef %i.ap)
  tail call void @dissector_add_string(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.287, ptr noundef %i.ap)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_bitcoin_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 4
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 0)
  switch i32 %i.c, label %bb.d [
    i32 -625623046, label %bb.c
    i32 -642466055, label %bb.c
    i32 675223068, label %bb.c
    i32 118034699, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.e = load ptr, ptr @bitcoin_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.d, ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @col_clear(ptr noundef %i.g, i32 noundef 25)
  %i.h = load i8, ptr @bitcoin_desegment, align 1, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.i, i32 noundef 24, ptr noundef nonnull @get_bitcoin_pdu_length, ptr noundef nonnull @dissect_bitcoin_tcp_pdu, ptr noundef %3)
  %i.j = tail call i32 @tvb_reported_length(ptr noundef %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_bitcoin_msg_version(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = load i32, ptr @hf_bitcoin_msg_version, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_bitcoin_msg, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 9 uses
  %i.g = load i32, ptr @hf_msg_version_version, align 4
  %i.h = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.i = load i32, ptr @hf_msg_version_services, align 4
  %i.j = load i32, ptr @ett_services, align 4
  %i.k = call ptr @proto_tree_add_bitmask(ptr noundef %i.f, ptr noundef %0, i32 noundef 4, i32 noundef %i.i, i32 noundef %i.j, ptr noundef nonnull @services_hf_flags, i32 noundef -2147483648) ; 0 uses
  %i.l = load i32, ptr @hf_msg_version_timestamp, align 4
  %i.m = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.l, ptr noundef %0, i32 noundef 12, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.n = load i32, ptr @hf_msg_version_addr_you, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.n, ptr noundef %0, i32 noundef 20, i32 noundef 26, i32 noundef 0)
  %i.p = load i32, ptr @ett_address, align 4
  %i.q = call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p) ; 3 uses
  %i.r = load i32, ptr @hf_address_services, align 4
  %i.s = load i32, ptr @ett_services, align 4
  %i.t = call ptr @proto_tree_add_bitmask(ptr noundef %i.q, ptr noundef %0, i32 noundef 20, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull @services_hf_flags, i32 noundef -2147483648) ; 0 uses
  %i.u = load i32, ptr @hf_address_address, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %0, i32 noundef 28, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_address_port, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.w, ptr noundef %0, i32 noundef 44, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr %i.a, align 4
  %i.z = icmp ugt i32 %i.y, 105
  br i1 %i.z, label %bb.b, label %.thread26

bb.b:                                             ; preds = %bb.a
  %i.aa = load i32, ptr @hf_msg_version_addr_me, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aa, ptr noundef %0, i32 noundef 46, i32 noundef 26, i32 noundef 0)
  %i.ac = load i32, ptr @ett_address, align 4
  %i.ad = call ptr @proto_item_add_subtree(ptr noundef %i.ab, i32 noundef %i.ac) ; 3 uses
  %i.ae = load i32, ptr @hf_address_services, align 4
  %i.af = load i32, ptr @ett_services, align 4
  %i.ag = call ptr @proto_tree_add_bitmask(ptr noundef %i.ad, ptr noundef %0, i32 noundef 46, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull @services_hf_flags, i32 noundef -2147483648) ; 0 uses
  %i.ah = load i32, ptr @hf_address_address, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ah, ptr noundef %0, i32 noundef 54, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_address_port, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.aj, ptr noundef %0, i32 noundef 70, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_msg_version_nonce, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.al, ptr noundef %0, i32 noundef 72, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  store i32 80, ptr %i.b, align 4
  %i.an = load i32, ptr @hf_msg_version_user_agent, align 4
  call fastcc void @create_string_tree(ptr noundef %i.f, i32 noundef %i.an, ptr noundef %0, ptr noundef nonnull %i.b)
  %.pr = load i32, ptr %i.a, align 4
  %i.ao = icmp ugt i32 %.pr, 208
  %.pre = load i32, ptr %i.b, align 4             ; 4 uses
  br i1 %i.ao, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr @hf_msg_version_start_height, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ap, ptr noundef %0, i32 noundef %.pre, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ar = add i32 %.pre, 4                        ; 2 uses
  %.pr25 = load i32, ptr %i.a, align 4
  %i.as = icmp ugt i32 %.pr25, 70001
  br i1 %i.as, label %bb.d, label %.thread26

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr @hf_msg_version_relay, align 4
  %i.au = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.av = add i32 %.pre, 5
  br label %.thread26

.thread26:                                        ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %i.aw = phi i32 [ 46, %bb.a ], [ %.pre, %bb.b ], [ %i.av, %bb.d ], [ %i.ar, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.aw
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 30, 10) i32 @dissect_bitcoin_msg_addr(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_addr, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.f = icmp ult i8 %i.e, -3
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = zext i8 %i.e to i64
  %i.h = load i32, ptr @hf_msg_addr_count8, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.k = zext i16 %i.j to i64
  %i.l = load i32, ptr @hf_msg_addr_count16, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 1)
  %i.o = zext i32 %i.n to i64
  %i.p = load i32, ptr @hf_msg_addr_count32, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 1)
  %i.s = load i32, ptr @hf_msg_addr_count64, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.s, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i31 = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.02529 = phi i32 [ 9, %bb.f ], [ 1, %bb.c ], [ 3, %bb.d ], [ 5, %bb.e ] ; 2 uses
  %.not42 = icmp eq i64 %.sink.i31, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.044 = phi i32 [ %i.ak, %.lr.ph ], [ %.02529, %add_varint_item.exit ] ; 6 uses
  %.02443 = phi i64 [ %i.al, %.lr.ph ], [ %.sink.i31, %add_varint_item.exit ]
  %i.u = load i32, ptr @hf_msg_addr_address, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.u, ptr noundef %0, i32 noundef %.044, i32 noundef 30, i32 noundef 0)
  %i.w = add nuw nsw i32 %.044, 4
  %i.x = load i32, ptr @ett_address, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.v, i32 noundef %i.x) ; 4 uses
  %i.z = load i32, ptr @hf_address_services, align 4
  %i.aa = load i32, ptr @ett_services, align 4
  %i.ab = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.y, ptr noundef %0, i32 noundef %i.w, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull @services_hf_flags, i32 noundef -2147483648) ; 0 uses
  %i.ac = add nuw nsw i32 %.044, 12
  %i.ad = load i32, ptr @hf_address_address, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.af = add nuw nsw i32 %.044, 28
  %i.ag = load i32, ptr @hf_address_port, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = load i32, ptr @hf_msg_addr_timestamp, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ai, ptr noundef %0, i32 noundef %.044, i32 noundef 4, i32 noundef -2147483630) ; 0 uses
  %i.ak = add nuw nsw i32 %.044, 30               ; 2 uses
  %i.al = add i64 %.02443, -1                     ; 2 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.02529, %add_varint_item.exit ], [ %i.ak, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_addrv2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load i32, ptr @hf_bitcoin_msg_addrv2, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_bitcoin_msg, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 5 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.g = icmp ult i8 %i.f, -3
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.f, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.h = zext i8 %i.f to i64
  %i.i = load i32, ptr @hf_msg_addrv2_count8, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.l = zext i16 %i.k to i64
  %i.m = load i32, ptr @hf_msg_addrv2_count16, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.m, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.o = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 1)
  %i.p = zext i32 %i.o to i64
  %i.q = load i32, ptr @hf_msg_addrv2_count32, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.q, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.s = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 1)
  %i.t = load i32, ptr @hf_msg_addrv2_count64, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i85 = phi i64 [ %i.s, %bb.f ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.07983 = phi i32 [ 9, %bb.f ], [ 1, %bb.c ], [ 3, %bb.d ], [ 5, %bb.e ] ; 2 uses
  %.not96 = icmp eq i64 %.sink.i85, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %bb.v
  %.098 = phi i32 [ %i.bp, %bb.v ], [ %.07983, %add_varint_item.exit ] ; 4 uses
  %.07897 = phi i64 [ %i.bq, %bb.v ], [ %.sink.i85, %add_varint_item.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.v = load i32, ptr @hf_msg_addrv2_item, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.v, ptr noundef %0, i32 noundef %.098, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.x = load i32, ptr @ett_addr_list, align 4
  %i.y = call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 9 uses
  %i.z = load i32, ptr @hf_msg_addrv2_timestamp, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef %.098, i32 noundef 4, i32 noundef -2147483630) ; 0 uses
  %i.ab = add i32 %.098, 4                        ; 3 uses
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ab) ; 3 uses
  %i.ad = icmp ult i8 %i.ac, -3
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ae = zext i8 %i.ac to i64
  br label %get_varint.exit62

bb.h:                                             ; preds = %.lr.ph
  %i.af = add i32 %.098, 5                        ; 3 uses
  switch i8 %i.ac, label %bb.k [
    i8 -3, label %bb.i
    i8 -2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ag = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.af)
  %i.ah = zext i16 %i.ag to i64
  br label %get_varint.exit62

bb.j:                                             ; preds = %bb.h
  %i.ai = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.aj = zext i32 %i.ai to i64
  br label %get_varint.exit62

bb.k:                                             ; preds = %bb.h
  %i.ak = call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.af)
  br label %get_varint.exit62

get_varint.exit62:                                ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.1 = phi i32 [ 1, %bb.g ], [ 9, %bb.k ], [ 3, %bb.i ], [ 5, %bb.j ] ; 2 uses
  %.sink.i61 = phi i64 [ %i.ae, %bb.g ], [ %i.ak, %bb.k ], [ %i.ah, %bb.i ], [ %i.aj, %bb.j ]
  %i.al = load i32, ptr @hf_msg_addrv2_services, align 4
  %i.am = load i32, ptr @ett_services, align 4
  %i.an = call ptr @proto_tree_add_bitmask_value(ptr noundef %i.y, ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.al, i32 noundef %i.am, ptr noundef nonnull @services_hf_flags, i64 noundef %.sink.i61)
  call void @proto_item_set_len(ptr noundef %i.an, i32 noundef %.1)
  %i.ao = add i32 %.1, %i.ab                      ; 3 uses
  %i.ap = load i32, ptr @hf_msg_addrv2_network, align 4
  %i.aq = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.y, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.ar = add i32 %i.ao, 1                        ; 2 uses
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ar) ; 3 uses
  %i.at = icmp ult i8 %i.as, -3
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %get_varint.exit62
  %i.au = zext i8 %i.as to i64
  br label %get_varint.exit64

bb.m:                                             ; preds = %get_varint.exit62
  %i.av = add i32 %i.ao, 2                        ; 3 uses
  switch i8 %i.as, label %bb.p [
    i8 -3, label %bb.n
    i8 -2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.aw = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.av)
  %i.ax = zext i16 %i.aw to i64
  br label %get_varint.exit64

bb.o:                                             ; preds = %bb.m
  %i.ay = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.av)
  %i.az = zext i32 %i.ay to i64
  br label %get_varint.exit64

bb.p:                                             ; preds = %bb.m
  %i.ba = call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.av)
  br label %get_varint.exit64

get_varint.exit64:                                ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.2 = phi i32 [ 1, %bb.l ], [ 9, %bb.p ], [ 3, %bb.n ], [ 5, %bb.o ]
  %.sink.i63 = phi i64 [ %i.au, %bb.l ], [ %i.ba, %bb.p ], [ %i.ax, %bb.n ], [ %i.az, %bb.o ] ; 3 uses
  %i.bb = add i32 %.2, %i.ar                      ; 6 uses
  %i.bc = load i8, ptr %i.a, align 1
  %i.bd = trunc i64 %.sink.i63 to i32             ; 8 uses
  switch i8 %i.bc, label %bb.u [
    i8 1, label %bb.q
    i8 2, label %bb.s
  ]

bb.q:                                             ; preds = %get_varint.exit64
  %i.be = load i32, ptr @hf_msg_addrv2_address_ipv4, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  %.not60 = icmp eq i64 %.sink.i63, 4
  br i1 %.not60, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = call ptr @proto_tree_add_expert(ptr noundef %i.y, ptr noundef %1, ptr noundef nonnull @ei_bitcoin_address_length, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bd) ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %get_varint.exit64
  %i.bh = load i32, ptr @hf_msg_addrv2_address_ipv6, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  %.not59 = icmp eq i64 %.sink.i63, 16
  br i1 %.not59, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = call ptr @proto_tree_add_expert(ptr noundef %i.y, ptr noundef %1, ptr noundef nonnull @ei_bitcoin_address_length, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bd) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %get_varint.exit64
  %i.bk = load i32, ptr @hf_msg_addrv2_address_other, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.r, %bb.u
  %.pre-phi = phi i32 [ 16, %bb.s ], [ %i.bd, %bb.t ], [ 4, %bb.q ], [ %i.bd, %bb.r ], [ %i.bd, %bb.u ]
  %i.bm = add i32 %i.bb, %.pre-phi                ; 2 uses
  %i.bn = load i32, ptr @hf_msg_addrv2_port, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %i.bm, 2                        ; 3 uses
  call void @proto_item_set_end(ptr noundef %i.w, ptr noundef %0, i32 noundef %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.bq = add i64 %.07897, -1                     ; 2 uses
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.v, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.07983, %add_varint_item.exit ], [ %i.bp, %bb.v ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 36, 10) i32 @dissect_bitcoin_msg_inv(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_inv, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.f = icmp ult i8 %i.e, -3
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = zext i8 %i.e to i64
  %i.h = load i32, ptr @hf_msg_inv_count8, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.k = zext i16 %i.j to i64
  %i.l = load i32, ptr @hf_msg_inv_count16, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 1)
  %i.o = zext i32 %i.n to i64
  %i.p = load i32, ptr @hf_msg_inv_count32, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 1)
  %i.s = load i32, ptr @hf_msg_inv_count64, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.s, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i31 = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.02529 = phi i32 [ 9, %bb.f ], [ 1, %bb.c ], [ 3, %bb.d ], [ 5, %bb.e ] ; 2 uses
  %.not42 = icmp eq i64 %.sink.i31, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.044 = phi i32 [ %i.ab, %.lr.ph ], [ %.02529, %add_varint_item.exit ] ; 4 uses
  %.02443 = phi i64 [ %i.ac, %.lr.ph ], [ %.sink.i31, %add_varint_item.exit ]
  %i.u = load i32, ptr @ett_inv_list, align 4
  %i.v = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.044, i32 noundef 36, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull @.str.320) ; 2 uses
  %i.w = load i32, ptr @hf_msg_inv_type, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.044, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.y = add nuw nsw i32 %.044, 4
  %i.z = load i32, ptr @hf_msg_inv_hash, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ab = add nuw nsw i32 %.044, 36               ; 2 uses
  %i.ac = add i64 %.02443, -1                     ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.02529, %add_varint_item.exit ], [ %i.ab, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 36, 10) i32 @dissect_bitcoin_msg_getdata(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_getdata, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.f = icmp ult i8 %i.e, -3
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = zext i8 %i.e to i64
  %i.h = load i32, ptr @hf_msg_getdata_count8, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.k = zext i16 %i.j to i64
  %i.l = load i32, ptr @hf_msg_getdata_count16, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 1)
  %i.o = zext i32 %i.n to i64
  %i.p = load i32, ptr @hf_msg_getdata_count32, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 1)
  %i.s = load i32, ptr @hf_msg_getdata_count64, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.s, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i31 = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.02529 = phi i32 [ 9, %bb.f ], [ 1, %bb.c ], [ 3, %bb.d ], [ 5, %bb.e ] ; 2 uses
  %.not42 = icmp eq i64 %.sink.i31, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.044 = phi i32 [ %i.ab, %.lr.ph ], [ %.02529, %add_varint_item.exit ] ; 4 uses
  %.02443 = phi i64 [ %i.ac, %.lr.ph ], [ %.sink.i31, %add_varint_item.exit ]
  %i.u = load i32, ptr @ett_getdata_list, align 4
  %i.v = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.044, i32 noundef 36, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull @.str.320) ; 2 uses
  %i.w = load i32, ptr @hf_msg_getdata_type, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.044, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.y = add nuw nsw i32 %.044, 4
  %i.z = load i32, ptr @hf_msg_getdata_hash, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ab = add nuw nsw i32 %.044, 36               ; 2 uses
  %i.ac = add i64 %.02443, -1                     ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.02529, %add_varint_item.exit ], [ %i.ab, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 64, 46) i32 @dissect_bitcoin_msg_getblocks(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_getblocks, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 7 uses
  %i.e = load i32, ptr @hf_msg_version_version, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.h = icmp ult i8 %i.g, -3
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.g to i64
  %i.j = load i32, ptr @hf_msg_getblocks_count8, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 5)
  %i.m = zext i16 %i.l to i64
  %i.n = load i32, ptr @hf_msg_getblocks_count16, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.p = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 5)
  %i.q = zext i32 %i.p to i64
  %i.r = load i32, ptr @hf_msg_getblocks_count32, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.r, ptr noundef %0, i32 noundef 5, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.t = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 5)
  %i.u = load i32, ptr @hf_msg_getblocks_count64, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.u, ptr noundef %0, i32 noundef 5, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i32 = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %.02630 = phi i32 [ 13, %bb.f ], [ 5, %bb.c ], [ 7, %bb.d ], [ 9, %bb.e ] ; 2 uses
  %.not43 = icmp eq i64 %.sink.i32, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.045 = phi i32 [ %i.y, %.lr.ph ], [ %.02630, %add_varint_item.exit ] ; 2 uses
  %.02544 = phi i64 [ %i.z, %.lr.ph ], [ %.sink.i32, %add_varint_item.exit ]
  %i.w = load i32, ptr @hf_msg_getblocks_start, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.w, ptr noundef %0, i32 noundef %.045, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.y = add nuw nsw i32 %.045, 32                ; 2 uses
  %i.z = add i64 %.02544, -1                      ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.02630, %add_varint_item.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.aa = load i32, ptr @hf_msg_getblocks_stop, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.aa, ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %.0.lcssa, 32
  ret i32 %i.ac
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 64, 46) i32 @dissect_bitcoin_msg_getheaders(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_getheaders, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 7 uses
  %i.e = load i32, ptr @hf_msg_headers_version, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.h = icmp ult i8 %i.g, -3
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.g to i64
  %i.j = load i32, ptr @hf_msg_getheaders_count8, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 5)
  %i.m = zext i16 %i.l to i64
  %i.n = load i32, ptr @hf_msg_getheaders_count16, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.p = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 5)
  %i.q = zext i32 %i.p to i64
  %i.r = load i32, ptr @hf_msg_getheaders_count32, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.r, ptr noundef %0, i32 noundef 5, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.t = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 5)
  %i.u = load i32, ptr @hf_msg_getheaders_count64, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.u, ptr noundef %0, i32 noundef 5, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i32 = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %.02630 = phi i32 [ 13, %bb.f ], [ 5, %bb.c ], [ 7, %bb.d ], [ 9, %bb.e ] ; 2 uses
  %.not43 = icmp eq i64 %.sink.i32, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.045 = phi i32 [ %i.y, %.lr.ph ], [ %.02630, %add_varint_item.exit ] ; 2 uses
  %.02544 = phi i64 [ %i.z, %.lr.ph ], [ %.sink.i32, %add_varint_item.exit ]
  %i.w = load i32, ptr @hf_msg_getheaders_start, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.w, ptr noundef %0, i32 noundef %.045, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.y = add nuw nsw i32 %.045, 32                ; 2 uses
  %i.z = add i64 %.02544, -1                      ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.02630, %add_varint_item.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.aa = load i32, ptr @hf_msg_getheaders_stop, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.aa, ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %.0.lcssa, 32
  ret i32 %i.ac
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_bitcoin_msg_tx_common(ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_block, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 11 uses
  %i.e = load i32, ptr @hf_msg_block_version, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_msg_block_prev_block, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.g, ptr noundef %0, i32 noundef 4, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_msg_block_merkle_root, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.i, ptr noundef %0, i32 noundef 36, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_msg_block_time, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef 68, i32 noundef 4, i32 noundef -2147483630) ; 0 uses
  %i.m = load i32, ptr @hf_msg_block_bits, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.m, ptr noundef %0, i32 noundef 72, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.o = load i32, ptr @hf_msg_block_nonce, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.o, ptr noundef %0, i32 noundef 76, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 80) ; 3 uses
  %i.r = icmp ult i8 %i.q, -3
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.q, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.s = zext i8 %i.q to i64
  %i.t = load i32, ptr @hf_msg_block_transactions8, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.t, ptr noundef %0, i32 noundef 80, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.v = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 81)
  %i.w = zext i16 %i.v to i64
  %i.x = load i32, ptr @hf_msg_block_transactions16, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.x, ptr noundef %0, i32 noundef 81, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.z = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 81)
  %i.aa = zext i32 %i.z to i64
  %i.ab = load i32, ptr @hf_msg_block_transactions32, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ab, ptr noundef %0, i32 noundef 81, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 81)
  %i.ae = load i32, ptr @hf_msg_block_transactions64, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ae, ptr noundef %0, i32 noundef 81, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i52 = phi i64 [ %i.ad, %bb.f ], [ %i.s, %bb.c ], [ %i.w, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.04650 = phi i32 [ 89, %bb.f ], [ 81, %bb.c ], [ 83, %bb.d ], [ 85, %bb.e ] ; 2 uses
  %.not = icmp eq i64 %.sink.i52, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.065 = phi i32 [ %i.ah, %.lr.ph ], [ %.04650, %add_varint_item.exit ]
  %.04164 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %add_varint_item.exit ]
  %.04563 = phi i64 [ %i.ai, %.lr.ph ], [ %.sink.i52, %add_varint_item.exit ]
  %i.ag = add nuw nsw i32 %.04164, 1              ; 2 uses
  %i.ah = tail call fastcc i32 @dissect_bitcoin_msg_tx_common(ptr noundef %0, i32 noundef %.065, ptr noundef %1, ptr noundef %i.d, i32 noundef %i.ag) ; 3 uses
  %i.ai = add i64 %.04563, -1                     ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = icmp ult i32 %i.ah, 2147483647
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.04650, %add_varint_item.exit ], [ %i.ah, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_ping(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_ping, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c)
  %i.e = load i32, ptr @hf_msg_ping_nonce, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  ret i32 8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_pong(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_pong, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c)
  %i.e = load i32, ptr @hf_msg_pong_nonce, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  ret i32 8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 36, 10) i32 @dissect_bitcoin_msg_notfound(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_notfound, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.f = icmp ult i8 %i.e, -3
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = zext i8 %i.e to i64
  %i.h = load i32, ptr @hf_msg_notfound_count8, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.k = zext i16 %i.j to i64
  %i.l = load i32, ptr @hf_msg_notfound_count16, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 1)
  %i.o = zext i32 %i.n to i64
  %i.p = load i32, ptr @hf_msg_notfound_count32, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 1)
  %i.s = load i32, ptr @hf_msg_notfound_count64, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.s, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i31 = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.02529 = phi i32 [ 9, %bb.f ], [ 1, %bb.c ], [ 3, %bb.d ], [ 5, %bb.e ] ; 2 uses
  %.not42 = icmp eq i64 %.sink.i31, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.044 = phi i32 [ %i.ab, %.lr.ph ], [ %.02529, %add_varint_item.exit ] ; 4 uses
  %.02443 = phi i64 [ %i.ac, %.lr.ph ], [ %.sink.i31, %add_varint_item.exit ]
  %i.u = load i32, ptr @ett_notfound_list, align 4
  %i.v = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.044, i32 noundef 36, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull @.str.320) ; 2 uses
  %i.w = load i32, ptr @hf_msg_notfound_type, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.044, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.y = add nuw nsw i32 %.044, 4
  %i.z = load i32, ptr @hf_msg_notfound_hash, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ab = add nuw nsw i32 %.044, 36               ; 2 uses
  %i.ac = add i64 %.02443, -1                     ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.02529, %add_varint_item.exit ], [ %i.ab, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_reject(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4
  %i.b = load i32, ptr @hf_bitcoin_msg_reject, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_bitcoin_msg, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 4 uses
  %i.f = load i32, ptr @hf_msg_reject_message, align 4
  call fastcc void @create_string_tree(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr @hf_msg_reject_ccode, align 4
  %i.h = load i32, ptr %i.a, align 4              ; 2 uses
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.j = add i32 %i.h, 1
  store i32 %i.j, ptr %i.a, align 4
  %i.k = load i32, ptr @hf_msg_reject_reason, align 4
  call fastcc void @create_string_tree(ptr noundef %i.e, i32 noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.l = load i32, ptr %i.a, align 4              ; 4 uses
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.l)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @hf_msg_reject_data, align 4
  %i.o = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.l)
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.l
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_headers(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_headers, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.f = icmp ult i8 %i.e, -3
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = zext i8 %i.e to i64
  %i.h = load i32, ptr @hf_msg_headers_count8, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.k = zext i16 %i.j to i64
  %i.l = load i32, ptr @hf_msg_headers_count16, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 1)
  %i.o = zext i32 %i.n to i64
  %i.p = load i32, ptr @hf_msg_headers_count32, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 1)
  %i.s = load i32, ptr @hf_msg_headers_count64, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.s, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i58 = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.05256 = phi i32 [ 9, %bb.f ], [ 1, %bb.c ], [ 3, %bb.d ], [ 5, %bb.e ] ; 2 uses
  %.not69 = icmp eq i64 %.sink.i58, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %get_varint.exit45
  %.071 = phi i32 [ %i.ay, %get_varint.exit45 ], [ %.05256, %add_varint_item.exit ] ; 9 uses
  %.05170 = phi i64 [ %i.ba, %get_varint.exit45 ], [ %.sink.i58, %add_varint_item.exit ]
  %i.u = load i32, ptr @ett_bitcoin_msg, align 4
  %i.v = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.071, i32 noundef -1, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull @.str.322) ; 8 uses
  %i.w = load i32, ptr @hf_msg_headers_version, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.071, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.y = add i32 %.071, 4
  %i.z = load i32, ptr @hf_msg_headers_prev_block, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %.071, 36
  %i.ac = load i32, ptr @hf_msg_headers_merkle_root, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %.071, 68
  %i.af = load i32, ptr @hf_msg_headers_time, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef -2147483630) ; 0 uses
  %i.ah = add i32 %.071, 72
  %i.ai = load i32, ptr @hf_msg_headers_bits, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ak = add i32 %.071, 76
  %i.al = load i32, ptr @hf_msg_headers_nonce, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.an = add i32 %.071, 80                       ; 3 uses
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.an) ; 2 uses
  %i.ap = icmp ult i8 %i.ao, -3
  br i1 %i.ap, label %get_varint.exit45, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aq = add i32 %.071, 81                       ; 3 uses
  switch i8 %i.ao, label %bb.j [
    i8 -3, label %bb.h
    i8 -2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.aq) ; 0 uses
  br label %get_varint.exit45

bb.i:                                             ; preds = %bb.g
  %i.as = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.aq) ; 0 uses
  br label %get_varint.exit45

bb.j:                                             ; preds = %bb.g
  %i.at = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.aq) ; 0 uses
  br label %get_varint.exit45

get_varint.exit45:                                ; preds = %.lr.ph, %bb.h, %bb.i, %bb.j
  %.1 = phi i32 [ 5, %bb.i ], [ 9, %bb.j ], [ 3, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.au = load i32, ptr @hf_msg_headers_count8, align 4
  %i.av = load i32, ptr @hf_msg_headers_count16, align 4
  %i.aw = load i32, ptr @hf_msg_headers_count32, align 4
  %i.ax = load i32, ptr @hf_msg_headers_count64, align 4
  tail call fastcc void @add_varint_item(ptr noundef %i.v, ptr noundef %0, i32 noundef %i.an, i32 noundef %.1, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax)
  %i.ay = add i32 %.1, %i.an                      ; 2 uses
  %i.az = or disjoint i32 %.1, 80
  tail call void @proto_item_set_len(ptr noundef %i.v, i32 noundef %i.az)
  %i.ba = add i64 %.05170, -1                     ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %get_varint.exit45, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.05256, %add_varint_item.exit ], [ %i.ay, %get_varint.exit45 ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_feefilter(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_feefilter, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c)
  %i.e = load i32, ptr @hf_msg_feefilter_value, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  ret i32 8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_filterload(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4
  %i.b = load i32, ptr @hf_bitcoin_msg_filterload, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_bitcoin_msg, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 4 uses
  %i.f = load i32, ptr @hf_msg_filterload_filter, align 4
  call fastcc void @create_data_tree(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr @hf_msg_filterload_nhashfunc, align 4
  %i.h = load i32, ptr %i.a, align 4              ; 4 uses
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.j = add i32 %i.h, 4
  %i.k = load i32, ptr @hf_msg_filterload_ntweak, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.m = add i32 %i.h, 8
  %i.n = load i32, ptr @hf_msg_filterload_nflags, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.p = add i32 %i.h, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.p
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_bitcoin_msg_filteradd(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4
  %i.b = load i32, ptr @hf_bitcoin_msg_filteradd, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_bitcoin_msg, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d)
  %i.f = load i32, ptr @hf_msg_filteradd_data, align 4
  call fastcc void @create_data_tree(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.g
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_merkleblock(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_merkleblock, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 12 uses
  %i.e = load i32, ptr @hf_msg_merkleblock_version, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_msg_merkleblock_prev_block, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.g, ptr noundef %0, i32 noundef 4, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_msg_merkleblock_merkle_root, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.i, ptr noundef %0, i32 noundef 36, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_msg_merkleblock_time, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef 68, i32 noundef 4, i32 noundef -2147483630) ; 0 uses
  %i.m = load i32, ptr @hf_msg_merkleblock_bits, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.m, ptr noundef %0, i32 noundef 72, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.o = load i32, ptr @hf_msg_merkleblock_nonce, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.o, ptr noundef %0, i32 noundef 76, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_msg_merkleblock_transactions, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.q, ptr noundef %0, i32 noundef 80, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 84) ; 3 uses
  %i.t = icmp ult i8 %i.s, -3
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.s, label %bb.f [
    i8 -3, label %bb.d
    i8 -2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.u = zext i8 %i.s to i64
  %i.v = load i32, ptr @ett_bitcoin_msg, align 4
  %i.w = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef 84, i32 noundef -1, i32 noundef %i.v, ptr noundef null, ptr noundef nonnull @.str.323) ; 2 uses
  %i.x = load i32, ptr @hf_msg_merkleblock_hashes_count8, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef 84, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 85)
  %i.aa = zext i16 %i.z to i64
  %i.ab = load i32, ptr @ett_bitcoin_msg, align 4
  %i.ac = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef 84, i32 noundef -1, i32 noundef %i.ab, ptr noundef null, ptr noundef nonnull @.str.323) ; 2 uses
  %i.ad = load i32, ptr @hf_msg_merkleblock_hashes_count16, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.ad, ptr noundef %0, i32 noundef 85, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.e:                                             ; preds = %bb.b
  %i.af = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 85)
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i32, ptr @ett_bitcoin_msg, align 4
  %i.ai = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef 84, i32 noundef -1, i32 noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.323) ; 2 uses
  %i.aj = load i32, ptr @hf_msg_merkleblock_hashes_count32, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef %0, i32 noundef 85, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

bb.f:                                             ; preds = %bb.b
  %i.al = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef 85)
  %i.am = load i32, ptr @ett_bitcoin_msg, align 4
  %i.an = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef 84, i32 noundef -1, i32 noundef %i.am, ptr noundef null, ptr noundef nonnull @.str.323) ; 2 uses
  %i.ao = load i32, ptr @hf_msg_merkleblock_hashes_count64, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.ao, ptr noundef %0, i32 noundef 85, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_varint_item.exit

add_varint_item.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.aq = phi ptr [ %i.an, %bb.f ], [ %i.w, %bb.c ], [ %i.ac, %bb.d ], [ %i.ai, %bb.e ]
  %.sink.i74 = phi i64 [ %i.al, %bb.f ], [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %.06872 = phi i32 [ 93, %bb.f ], [ 85, %bb.c ], [ 87, %bb.d ], [ 89, %bb.e ] ; 2 uses
  %.not85 = icmp eq i64 %.sink.i74, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_varint_item.exit, %.lr.ph
  %.087 = phi i32 [ %i.at, %.lr.ph ], [ %.06872, %add_varint_item.exit ] ; 2 uses
  %.06786 = phi i64 [ %i.au, %.lr.ph ], [ %.sink.i74, %add_varint_item.exit ]
  %i.ar = load i32, ptr @hf_msg_merkleblock_hashes_hash, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.aq, i32 noundef %i.ar, ptr noundef %0, i32 noundef %.087, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.at = add nuw nsw i32 %.087, 32               ; 2 uses
  %i.au = add i64 %.06786, -1                     ; 2 uses
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %add_varint_item.exit
  %.0.lcssa = phi i32 [ %.06872, %add_varint_item.exit ], [ %i.at, %.lr.ph ] ; 5 uses
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0.lcssa) ; 3 uses
  %i.aw = icmp ult i8 %i.av, -3
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ax = zext i8 %i.av to i64
  br label %get_varint.exit59

bb.h:                                             ; preds = %._crit_edge
  %i.ay = add i32 %.0.lcssa, 1                    ; 3 uses
  switch i8 %i.av, label %bb.k [
    i8 -3, label %bb.i
    i8 -2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.az = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.ay)
  %i.ba = zext i16 %i.az to i64
  br label %get_varint.exit59

bb.j:                                             ; preds = %bb.h
  %i.bb = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ay)
  %i.bc = zext i32 %i.bb to i64
  br label %get_varint.exit59

bb.k:                                             ; preds = %bb.h
  %i.bd = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.ay)
  br label %get_varint.exit59

get_varint.exit59:                                ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.1 = phi i32 [ 1, %bb.g ], [ 9, %bb.k ], [ 3, %bb.i ], [ 5, %bb.j ] ; 2 uses
  %.sink.i58 = phi i64 [ %i.ax, %bb.g ], [ %i.bd, %bb.k ], [ %i.ba, %bb.i ], [ %i.bc, %bb.j ]
  %i.be = load i32, ptr @ett_bitcoin_msg, align 4
  %i.bf = tail call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef -1, i32 noundef %i.be, ptr noundef null, ptr noundef nonnull @.str.324) ; 2 uses
  %i.bg = load i32, ptr @hf_msg_merkleblock_flags_size8, align 4
  %i.bh = load i32, ptr @hf_msg_merkleblock_flags_size16, align 4
  %i.bi = load i32, ptr @hf_msg_merkleblock_flags_size32, align 4
  %i.bj = load i32, ptr @hf_msg_merkleblock_flags_size64, align 4
  tail call fastcc void @add_varint_item(ptr noundef %i.bf, ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef %.1, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.bj)
  %i.bk = add i32 %.1, %.0.lcssa                  ; 2 uses
  %i.bl = load i32, ptr @hf_msg_merkleblock_flags_data, align 4
  %i.bm = trunc i64 %.sink.i58 to i32             ; 2 uses
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef 131072) ; 0 uses
  %i.bo = add i32 %i.bk, %i.bm
  ret i32 %i.bo
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bitcoin_msg_sendcmpct(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_bitcoin_msg_sendcmpct, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.c = load i32, ptr @ett_bitcoin_msg, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 2 uses
  %i.e = load i32, ptr @hf_msg_sendcmpct_announce, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_msg_sendcmpct_version, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  ret i32 9
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_bitcoin_msg_empty(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_bitcoin_pdu_length(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 16
  %i.b = tail call i32 @tvb_get_letohl(ptr noundef %1, i32 noundef %i.a)
  %i.c = add i32 %i.b, 24
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_bitcoin_tcp_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.248)
  %i.d = load i32, ptr @proto_bitcoin, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.f = load i32, ptr @ett_bitcoin, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 5 uses
  %i.h = load i32, ptr @hf_bitcoin_magic, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_bitcoin_command, align 4
  %i.k = getelementptr i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 12, i32 noundef 0, ptr noundef %i.l, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load i32, ptr @hf_bitcoin_length, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.n, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.p = load i32, ptr @hf_bitcoin_checksum, align 4
  %i.q = call ptr @proto_tree_add_checksum(ptr noundef %i.g, ptr noundef %0, i32 noundef 20, i32 noundef %i.p, i32 noundef -1, ptr noundef null, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.r = load ptr, ptr @bitcoin_command_table, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = call ptr @dissector_get_string_handle(ptr noundef %i.r, ptr noundef %i.s) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.a, align 8
  call void @col_append_sep_str(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.318, ptr noundef %i.v)
  %i.w = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 24)
  %i.x = call i32 @call_dissector(ptr noundef nonnull %i.t, ptr noundef %i.w, ptr noundef %1, ptr noundef %i.g) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @col_append_sep_str(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319)
  %i.y = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull @ei_bitcoin_command_unknown) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = call i32 @tvb_reported_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_string_handle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @create_string_tree(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 2 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.a) ; 3 uses
  %i.c = icmp ult i8 %i.b, -3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i64
end_hunk_0
