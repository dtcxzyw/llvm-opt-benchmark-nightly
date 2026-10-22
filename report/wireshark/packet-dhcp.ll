Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dhcp?download=true
inline.NumInlined: 45
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_dhcpopt_vendor_class_identifier:bb.a
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr @hf_dhcp_option_vendor_class_id, align 4
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i32 noundef 0) ; 0 uses
  %i.e = load ptr, ptr @dhcp_vendor_id_subdissector, align 8
  %i.f = call zeroext i1 @dissector_try_heuristic(ptr noundef %i.e, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3) ; 0 uses
  %i.g = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.g
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dhcpopt_client_identifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 14 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread149

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 5 uses
  %i.d = icmp eq i32 %i.a, 7
  %i.e = add i8 %i.c, -1
  %i.f = icmp ult i8 %i.e, 47
  %or.cond5 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @hf_dhcp_hw_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.c, label %bb.e [
    i8 6, label %bb.d
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = load i32, ptr @hf_dhcp_hw_ether_addr, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %.thread149

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr @hf_dhcp_client_hardware_address, align 4
  %i.l = getelementptr i8, ptr %1, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext nneg i8 %i.c to i16
  %i.o = tail call ptr @tvb_arphrdaddr_to_str(ptr noundef %i.m, ptr noundef %0, i32 noundef 1, i32 noundef 6, i16 noundef zeroext %i.n)
  %i.p = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef 6, ptr noundef %i.o) ; 0 uses
  br label %.thread149

bb.f:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %i.a, 17
  %i.r = icmp eq i8 %i.c, 0                       ; 2 uses
  %or.cond11 = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond11, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr @hf_dhcp_client_identifier_uuid, align 4
  %i.t = load i32, ptr @dhcp_uuid_endian, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef 1, i32 noundef 16, i32 noundef %i.t) ; 0 uses
  br label %.thread149

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.c, -1
  br i1 %i.v, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr @hf_dhcp_client_id_iaid, align 4
  %i.x = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call ptr @tvb_arphrdaddr_to_str(ptr noundef %i.y, ptr noundef %0, i32 noundef 1, i32 noundef 4, i16 noundef zeroext 255)
  %i.aa = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef %i.z) ; 0 uses
  %i.ab = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 5)
  %i.ac = load i32, ptr @hf_dhcp_client_id_duid_type, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  switch i16 %i.ab, label %.thread149 [
    i16 1, label %bb.j
    i16 2, label %bb.p
    i16 3, label %bb.t
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp samesign ult i32 %i.a, 8
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_mal_duid) ; 0 uses
  br label %.thread149

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 7) ; 2 uses
  %i.ah = load i32, ptr @hf_dhcp_client_identifier_duid_llt_hw_type, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_dhcp_client_identifier_time, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef 9, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not139 = icmp eq i32 %i.a, 8
  br i1 %.not139, label %.thread149, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr @hf_dhcp_client_identifier_link_layer_address, align 4
  %i.am = add nsw i32 %i.a, -13                   ; 3 uses
  %i.an = load ptr, ptr %i.x, align 8
  %i.ao = tail call ptr @tvb_arphrdaddr_to_str(ptr noundef %i.an, ptr noundef %0, i32 noundef 13, i32 noundef %i.am, i16 noundef zeroext %i.ag)
  %i.ap = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.al, ptr noundef %0, i32 noundef 13, i32 noundef %i.am, ptr noundef %i.ao) ; 0 uses
  switch i16 %i.ag, label %.thread149 [
    i16 6, label %bb.n
    i16 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.aq = icmp eq i32 %i.am, 6
  br i1 %i.aq, label %bb.o, label %.thread149

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr @hf_dhcp_client_identifier_link_layer_address_ether, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef 13, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %.thread149

bb.p:                                             ; preds = %bb.i
  %i.at = icmp samesign ult i32 %i.a, 6
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_mal_duid) ; 0 uses
  br label %.thread149

bb.r:                                             ; preds = %bb.p
  %i.av = load i32, ptr @hf_dhcp_client_identifier_enterprise_num, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.av, ptr noundef %0, i32 noundef 7, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not138 = icmp eq i32 %i.a, 6
  br i1 %.not138, label %.thread149, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr @hf_dhcp_client_identifier, align 4
  %i.ay = add nsw i32 %i.a, -11
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ax, ptr noundef %0, i32 noundef 11, i32 noundef %i.ay, i32 noundef 0) ; 0 uses
  br label %.thread149

bb.t:                                             ; preds = %bb.i
  %i.ba = icmp samesign ult i32 %i.a, 4
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_mal_duid) ; 0 uses
  br label %.thread149

bb.v:                                             ; preds = %bb.t
  %i.bc = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 7) ; 2 uses
  %i.bd = load i32, ptr @hf_dhcp_client_identifier_duid_ll_hw_type, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bd, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not = icmp eq i32 %i.a, 4
  br i1 %.not, label %.thread149, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load i32, ptr @hf_dhcp_client_identifier_link_layer_address, align 4
  %i.bg = add nsw i32 %i.a, -9                    ; 3 uses
  %i.bh = load ptr, ptr %i.x, align 8
  %i.bi = tail call ptr @tvb_arphrdaddr_to_str(ptr noundef %i.bh, ptr noundef %0, i32 noundef 9, i32 noundef %i.bg, i16 noundef zeroext %i.bc)
  %i.bj = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef 9, i32 noundef %i.bg, ptr noundef %i.bi) ; 0 uses
  switch i16 %i.bc, label %.thread149 [
    i16 6, label %bb.x
    i16 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.bk = icmp eq i32 %i.bg, 6
  br i1 %i.bk, label %bb.y, label %.thread149

bb.y:                                             ; preds = %bb.x
  %i.bl = load i32, ptr @hf_dhcp_client_identifier_link_layer_address_ether, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef 9, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %.thread149

bb.z:                                             ; preds = %bb.h
  %i.bn = icmp ne i32 %i.a, 1
  %or.cond19 = and i1 %i.bn, %i.r
  br i1 %or.cond19, label %bb.aa, label %.thread149

bb.aa:                                            ; preds = %bb.z
  %i.bo = load i32, ptr @hf_dhcp_client_identifier_type, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bo, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bq = load i32, ptr @hf_dhcp_client_identifier_undef, align 4
  %i.br = add nsw i32 %i.a, -1
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bq, ptr noundef %0, i32 noundef 1, i32 noundef %i.br, i32 noundef 0) ; 0 uses
  br label %.thread149

.thread149:                                       ; preds = %bb.a, %bb.i, %bb.k, %bb.q, %bb.u, %bb.n, %bb.o, %bb.l, %bb.s, %bb.r, %bb.x, %bb.y, %bb.v, %bb.m, %bb.w, %bb.g, %bb.aa, %bb.z, %bb.d, %bb.e
  %i.bt = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.bt
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dhcpopt_netware_ip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %dissect_netware_ip_suboption.exit
  %.09 = phi i32 [ %.0.i, %dissect_netware_ip_suboption.exit ], [ 0, %bb.a ] ; 5 uses
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.09) ; 6 uses
  %i.d = add i32 %.09, 1                          ; 3 uses
  %.not.i = icmp ult i32 %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext i8 %i.c to i32
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2093, i32 noundef %i.e) ; 0 uses
  br label %dissect_netware_ip_suboption.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.h = load i32, ptr @hf_dhcp_option63_suboption, align 4
  %i.i = zext i8 %i.g to i32                      ; 4 uses
  %i.j = add nuw nsw i32 %i.i, 2                  ; 2 uses
  %i.k = zext i8 %i.c to i32                      ; 3 uses
  %i.l = tail call ptr @val_to_str_const(i32 noundef %i.k, ptr noundef @option63_suboption_vals, ptr noundef @.str.482)
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %.09, i32 noundef %i.j, i32 noundef %i.k, ptr noundef @.str.2067, i32 noundef %i.k, ptr noundef %i.l) ; 3 uses
  %i.n = load i32, ptr @ett_dhcp_option63_suboption, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 4 uses
  %i.p = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = add i32 %.09, 2                          ; 3 uses
  %i.s = load i32, ptr @hf_dhcp_option63_value, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.i, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %proto_item_set_hidden.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not5.i.i = icmp eq ptr %i.v, null
  br i1 %.not5.i.i, label %proto_item_set_hidden.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.v, i64 28       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  br label %proto_item_set_hidden.exit.i

proto_item_set_hidden.exit.i:                     ; preds = %bb.e, %bb.d, %bb.c
  %i.z = icmp ult i8 %i.c, 12
  br i1 %i.z, label %bb.f, label %bb.l

bb.f:                                             ; preds = %proto_item_set_hidden.exit.i
  %i.aa = zext nneg i8 %i.c to i64
  %i.ab = getelementptr [24 x i8], ptr @dissect_netware_ip_suboption.o63_opt, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call fastcc i32 @dhcp_handle_basic_types(ptr noundef %1, ptr noundef %i.o, ptr noundef %i.m, ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.r, i32 noundef %i.i, ptr noundef %i.af, ptr noundef @dissect_netware_ip_suboption.default_hfs)
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %4 = add nsw i8 %i.c, -1
  %cond.i = icmp ult i8 %4, 4
  br i1 %cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not53.i = icmp eq i8 %i.g, 0
  br i1 %.not53.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.m, ptr noundef @ei_dhcp_bad_length, ptr noundef @.str.1469) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %5 = icmp samesign ult i8 %i.c, 5
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr @hf_dhcp_option63_value, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.i, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %proto_item_set_hidden.exit.i
  %i.al = add i32 %i.j, %.09
  br label %dissect_netware_ip_suboption.exit

dissect_netware_ip_suboption.exit:                ; preds = %bb.b, %bb.l
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.al, %bb.l ] ; 2 uses
  %i.am = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %dissect_netware_ip_suboption.exit, %bb.a
  %i.an = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.an
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dhcpopt_user_class_information(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_bad_length, ptr noundef @.str.2097) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.g = zext i16 %i.f to i32
  store i32 %i.g, ptr %i.a, align 4
  %i.h = icmp ult i16 %i.f, 256
  br i1 %i.h, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.c
  %i.i = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not107 = icmp eq i32 %i.i, 0
  br i1 %.not107, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.j = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not99111 = icmp eq i32 %i.j, 0
  br i1 %.not99111, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader, %bb.e
  %.091113 = phi i32 [ %i.ar, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %.093112 = phi i8 [ %i.as, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.k = load i32, ptr @hf_dhcp_option77_user_class, align 4
  %i.l = zext i8 %.093112 to i32                  ; 2 uses
  %i.m = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %.091113, i32 noundef 1, i32 noundef %i.l, ptr noundef @.str.2098, i32 noundef %i.l) ; 2 uses
  %i.n = load i32, ptr @ett_dhcp_option77_instance, align 4
  %i.o = call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 7 uses
  %i.p = load i32, ptr @hf_dhcp_option77_user_class_binary_data_length, align 4
  %i.q = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef %.091113, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.r = add i32 %.091113, 2                      ; 2 uses
  %i.s = load i32, ptr @hf_dhcp_option77_user_class_binary_data, align 4
  %i.t = load i32, ptr %i.a, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  %i.w = add i32 %i.v, %i.r                       ; 3 uses
  %i.x = sub i32 0, %i.v
  %i.y = and i32 %i.x, 3                          ; 3 uses
  %.not100 = icmp eq i32 %i.y, 0
  br i1 %.not100, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph114
  %i.z = load i32, ptr @hf_dhcp_option77_user_class_padding, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.w, i32 noundef %i.y, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %i.w, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph114
  %.192 = phi i32 [ %i.ab, %bb.d ], [ %i.w, %.lr.ph114 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ac = load i32, ptr @hf_dhcp_option77_user_class_name_length, align 4
  %i.ad = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.ac, ptr noundef %0, i32 noundef %.192, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ae = add i32 %.192, 2                        ; 2 uses
  %i.af = load i32, ptr @hf_dhcp_option77_user_class_name, align 4
  %i.ag = load i32, ptr %i.b, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef 4) ; 0 uses
  %i.ai = load i32, ptr %i.b, align 4
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  %i.ak = load i32, ptr @hf_dhcp_option77_user_class_description_length, align 4
  %i.al = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.am = add i32 %i.aj, 2                        ; 2 uses
  %i.an = load i32, ptr @hf_dhcp_option77_user_class_description, align 4
  %i.ao = load i32, ptr %i.b, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef 4) ; 0 uses
  %i.aq = load i32, ptr %i.b, align 4
  %i.ar = add i32 %i.aq, %i.am                    ; 3 uses
  call void @proto_item_set_end(ptr noundef %i.m, ptr noundef %0, i32 noundef %i.ar)
  %i.as = add i8 %.093112, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.at = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ar)
  %.not99 = icmp eq i32 %i.at, 0
  br i1 %.not99, label %._crit_edge, label %.lr.ph114, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.au = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader101, %bb.i
  %.090110 = phi i32 [ %i.bo, %bb.i ], [ %i.c, %.preheader101 ] ; 3 uses
  %.2109 = phi i32 [ %i.bn, %bb.i ], [ 0, %.preheader101 ] ; 5 uses
  %.194108 = phi i8 [ %i.bp, %bb.i ], [ 0, %.preheader101 ] ; 2 uses
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2109) ; 2 uses
  %i.aw = zext i8 %i.av to i32                    ; 5 uses
  %.not98 = icmp ugt i32 %.090110, %i.aw
  br i1 %.not98, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ax = load i32, ptr @hf_dhcp_option77_user_class_text, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ax, ptr noundef %0, i32 noundef %.2109, i32 noundef %.090110, i32 noundef 0)
  %i.az = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ay, ptr noundef @ei_dhcp_nonstd_option_data) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.ba = load i32, ptr @hf_dhcp_option77_user_class, align 4
  %i.bb = zext i8 %.194108 to i32                 ; 4 uses
  %i.bc = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef %.2109, i32 noundef 1, i32 noundef %i.bb, ptr noundef @.str.2098, i32 noundef %i.bb) ; 2 uses
  %i.bd = load i32, ptr @ett_dhcp_option77_instance, align 4
  %i.be = tail call ptr @proto_item_add_subtree(ptr noundef %i.bc, i32 noundef %i.bd) ; 2 uses
  %i.bf = load i32, ptr @hf_dhcp_option77_user_class_length, align 4
  %i.bg = tail call ptr @proto_tree_add_uint(ptr noundef %i.be, i32 noundef %i.bf, ptr noundef %0, i32 noundef %.2109, i32 noundef 1, i32 noundef %i.aw)
  %i.bh = add nuw nsw i32 %i.aw, 1                ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.bc, i32 noundef %i.bh)
  %i.bi = icmp eq i8 %i.av, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bg, ptr noundef @ei_dhcp_bad_length, ptr noundef @.str.2099, i32 noundef %i.bb, i32 noundef %i.bb) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bk = add i32 %.2109, 1                       ; 2 uses
  %i.bl = load i32, ptr @hf_dhcp_option77_user_class_data, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %i.be, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.aw, i32 noundef 0) ; 0 uses
  %i.bn = add i32 %i.bk, %i.aw                    ; 2 uses
  %i.bo = sub nuw i32 %.090110, %i.bh
  %i.bp = add i8 %.194108, 1
  %i.bq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bn)
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %bb.i, %.preheader101, %bb.h, %bb.f
  %i.br = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %._crit_edge
  %.0 = phi i32 [ %i.au, %._crit_edge ], [ %i.br, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %.0, %bb.j ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dhcpopt_slp_directory_agent(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_bad_length, ptr noundef @.str.2095) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_dhcp_option_slp_directory_agent_value, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp eq i32 %i.g, 128
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 2, %bb.d ]        ; 3 uses
  %i.k = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0)
  %i.l = icmp ugt i32 %i.k, 3
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.123 = phi i32 [ %i.o, %.lr.ph ], [ %.0, %bb.e ] ; 2 uses
  %i.m = load i32, ptr @hf_dhcp_option_slp_directory_agent_slpda_address, align 4
end_hunk_0
begin_hunk_1_@dissect_pxeclient_vendor_info_heur:bb.a
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.w, label %.loopexit152.i

bb.w:                                             ; preds = %bb.v
  %i.df = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.x, ptr noundef @ei_dhcp_subopt_unknown_type, ptr noundef @.str.2331, i32 noundef %i.m) ; 0 uses
  br label %.loopexit152.i

.loopexit152.i:                                   ; preds = %.lr.ph.i, %.loopexit.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.k
  %i.dg = add i32 %i.v, %.018
  br label %dissect_vendor_pxeclient_suboption.exit

dissect_vendor_pxeclient_suboption.exit:          ; preds = %bb.d, %bb.e, %bb.g, %.loopexit152.i
  %.0143.i = phi i32 [ %i.l, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %i.dg, %.loopexit152.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.dh = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0143.i)
  %.not15 = icmp eq i32 %i.dh, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %dissect_vendor_pxeclient_suboption.exit, %bb.c, %bb.a, %bb.b
  %.013 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %dissect_vendor_pxeclient_suboption.exit ]
  ret i1 %.013
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_cablelabs_vendor_info_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(5) @.str.2335, i64 noundef 4) #11
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(7) @.str.2336, i64 noundef 6) #11
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(13) @.str.2337, i64 noundef 12) #11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(10) @.str.2338, i64 noundef 9) #11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %sub_0

sub_0:                                            ; preds = %bb.e
  %i.k = load i8, ptr %i.b, align 1               ; 2 uses
  switch i8 %i.k, label %.tail36.thread [
    i8 82, label %sub_1
    i8 69, label %sub_133
    i8 80, label %sub_138
  ]

sub_1:                                            ; preds = %sub_0
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %.not48 = icmp eq i8 %i.m, 80
  br i1 %.not48, label %.tail, label %sub_128

.tail:                                            ; preds = %sub_1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 68
  br i1 %i.p, label %bb.f, label %sub_128

sub_128:                                          ; preds = %.tail, %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %.not50 = icmp eq i8 %i.r, 77
  br i1 %.not50, label %.tail26, label %.tail36.thread

.tail26:                                          ; preds = %sub_128
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 68
  br i1 %i.u, label %bb.f, label %.tail36.thread

sub_133:                                          ; preds = %sub_0
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %.not52 = icmp eq i8 %i.w, 67
  br i1 %.not52, label %.tail31, label %.tail36.thread

.tail31:                                          ; preds = %sub_133
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 77
  br i1 %i.z, label %bb.f, label %.tail36.thread

sub_138:                                          ; preds = %sub_0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %.not54 = icmp eq i8 %i.ab, 84
  br i1 %.not54, label %.tail36, label %.tail36.thread

.tail36:                                          ; preds = %sub_138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 65
  br i1 %i.ae, label %bb.f, label %.thread

.tail36.thread:                                   ; preds = %sub_0, %.tail26, %sub_128, %sub_133, %.tail31, %sub_138
  %i.af = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(7) @.str.2343, i64 noundef 6) #11
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %sub_042

.thread:                                          ; preds = %.tail36
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(7) @.str.2343, i64 noundef 6) #11
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %.tail41.thread

sub_042:                                          ; preds = %.tail36.thread
  %.not55 = icmp eq i8 %i.k, 84
  br i1 %.not55, label %.tail41, label %.tail41.thread

.tail41:                                          ; preds = %sub_042
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 82
  br i1 %i.al, label %bb.f, label %.tail41.thread

.tail41.thread:                                   ; preds = %.thread, %sub_042, %.tail41
  %i.am = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(8) @.str.2345, i64 noundef 7) #11
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.thread, %.tail41.thread, %.tail41, %.tail36.thread, %.tail36, %.tail31, %.tail26, %.tail, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.2346)
  %i.ao = load i32, ptr @ett_dhcp_option, align 4
  %i.ap = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.ao) ; 3 uses
  %i.aq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not2545 = icmp eq i32 %i.aq, 0
  br i1 %.not2545, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %dissect_vendor_cablelabs_suboption.exit
  %.046 = phi i32 [ %.0.i, %dissect_vendor_cablelabs_suboption.exit ], [ 0, %bb.f ] ; 9 uses
  %i.ar = tail call i32 @tvb_reported_length(ptr noundef %0) ; 5 uses
  %i.as = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.046) ; 5 uses
  %i.at = add i32 %.046, 1                        ; 4 uses
  %i.au = zext i8 %i.as to i32                    ; 6 uses
  switch i8 %i.as, label %bb.i [
    i8 0, label %bb.g
    i8 -1, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.av = load i32, ptr @hf_dhcp_option43_cl_padding, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.ap, i32 noundef %i.av, ptr noundef %0, i32 noundef %.046, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_vendor_cablelabs_suboption.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ax = load i32, ptr @hf_dhcp_option43_cl_end, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.ap, i32 noundef %i.ax, ptr noundef %0, i32 noundef %.046, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_vendor_cablelabs_suboption.exit

bb.i:                                             ; preds = %.lr.ph
  %.not.i = icmp ult i32 %i.at, %i.ar
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2093, i32 noundef %i.au) ; 0 uses
  br label %dissect_vendor_cablelabs_suboption.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.at) ; 3 uses
  %i.bb = load i32, ptr @hf_dhcp_option43_cl_suboption, align 4
  %i.bc = zext i8 %i.ba to i32                    ; 6 uses
  %i.bd = add nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = tail call ptr @val_to_str_const(i32 noundef %i.au, ptr noundef @option43_cl_suboption_vals, ptr noundef @.str.482)
  %i.bf = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ap, i32 noundef %i.bb, ptr noundef %0, i32 noundef %.046, i32 noundef %i.bd, i32 noundef %i.au, ptr noundef @.str.2067, i32 noundef %i.au, ptr noundef %i.be) ; 6 uses
  %i.bg = load i32, ptr @ett_dhcp_option43_suboption, align 4
  %i.bh = tail call ptr @proto_item_add_subtree(ptr noundef %i.bf, i32 noundef %i.bg) ; 8 uses
  %i.bi = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bk = add i32 %.046, 2                        ; 9 uses
  %i.bl = add i32 %i.bk, %i.bc
  %i.bm = icmp ugt i32 %i.bl, %i.ar
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bf, ptr noundef @ei_dhcp_missing_subopt_value, ptr noundef @.str.2094, i32 noundef %i.au) ; 0 uses
  br label %dissect_vendor_cablelabs_suboption.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = icmp ugt i8 %i.as, 55
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr @hf_dhcp_option43_value, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bc, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.br = zext nneg i8 %i.as to i64               ; 2 uses
  %i.bs = getelementptr [24 x i8], ptr @dissect_vendor_cablelabs_suboption.o43cablelabs_opt, i64 %i.br ; 3 uses
  %4 = shl nuw nsw i64 1, %i.br                   ; 2 uses
  %5 = and i64 %4, 51791391419465984
  %.not107.i.a = icmp eq i64 %5, 0
  br i1 %.not107.i.a, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i8 %i.as, label %bb.x [
    i8 8, label %bb.q
    i8 31, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  switch i8 %i.ba, label %bb.t [
    i8 3, label %bb.r
    i8 6, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr @hf_dhcp_option43_cl_oui_bytes, align 4
  %i.bu = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bk)
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %.046, 3
  %i.bx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bw)
  %i.by = zext i8 %i.bx to i32
  %i.bz = add i32 %.046, 4
  %i.ca = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bz)
  %i.cb = zext i8 %i.ca to i32
  %i.cc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.bh, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bk, i32 noundef 3, ptr noundef null, ptr noundef @.str.2350, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.cb) ; 0 uses
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.cd = load i32, ptr @hf_dhcp_option43_cl_oui_string, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.bk, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cf = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bf, ptr noundef @ei_dhcp_bad_length, ptr noundef @.str.2351) ; 0 uses
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  %.not108.i.a = icmp eq i8 %i.ba, 6
  br i1 %.not108.i.a, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bf, ptr noundef @ei_dhcp_bad_length, ptr noundef @.str.2352) ; 0 uses
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.ch = load i32, ptr @hf_dhcp_option43_cl_mta_mac_address, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.bk, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.x:                                             ; preds = %bb.p
  %6 = and i64 %4, 38280590389870592
  %.not109.not.i = icmp eq i64 %6, 0
  br i1 %.not109.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %7 = getelementptr i8, ptr %i.bs, i64 16
  %8 = load ptr, ptr %7, align 8
  %i.cj = load i32, ptr %8, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bc, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.cl = load i32, ptr @hf_dhcp_option43_value, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bc, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.o
  %9 = getelementptr i8, ptr %i.bs, i64 8
  %10 = load i32, ptr %9, align 8
  %i.cn = getelementptr i8, ptr %i.bs, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call fastcc i32 @dhcp_handle_basic_types(ptr noundef %1, ptr noundef %i.bh, ptr noundef %i.bf, ptr noundef %0, i32 noundef %10, i32 noundef %i.bk, i32 noundef %i.bc, ptr noundef %i.co, ptr noundef @dissect_vendor_cablelabs_suboption.default_hfs)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cr = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bf, ptr noundef @ei_dhcp_subopt_unknown_type, ptr noundef @.str.2331, i32 noundef %i.au) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.n
  %i.cs = add i32 %i.bd, %.046
  br label %dissect_vendor_cablelabs_suboption.exit

dissect_vendor_cablelabs_suboption.exit:          ; preds = %bb.g, %bb.h, %bb.j, %bb.l, %bb.ac
  %.0.i = phi i32 [ %i.at, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %bb.j ], [ %i.ar, %bb.l ], [ %i.cs, %bb.ac ] ; 2 uses
  %i.ct = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %.not25 = icmp eq i32 %i.ct, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph, !llvm.loop !61

.loopexit:                                        ; preds = %dissect_vendor_cablelabs_suboption.exit, %bb.f, %bb.a, %.tail41.thread
  %.023 = phi i1 [ false, %bb.a ], [ false, %.tail41.thread ], [ true, %bb.f ], [ true, %dissect_vendor_cablelabs_suboption.exit ]
  ret i1 %.023
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_aruba_ap_vendor_info_heur(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(8) @.str.1580, i64 noundef 7) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.2353)
  %i.e = load i32, ptr @ett_dhcp_option, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.e)
  %i.g = load i32, ptr @hf_dhcp_option43_arubaap_controllerip, align 4
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_aruba_instant_ap_vendor_info_heur(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.d = getelementptr i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef dereferenceable(15) @.str.1582, i64 noundef 14) #11
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.2354)
  %i.h = load i32, ptr @hf_dhcp_option43_arubaiap, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i32 noundef 0)
  %i.j = load i32, ptr @ett_dhcp_option43_suboption, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 3 uses
  %i.l = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.m = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef 0, i32 noundef %i.l, i8 noundef zeroext 44, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load i32, ptr @hf_dhcp_option43_arubaiap_nameorg, align 4
  %i.o = load i32, ptr %i.a, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr %i.a, align 4              ; 3 uses
  %i.r = add i32 %i.q, 1                          ; 3 uses
  %i.s = xor i32 %i.q, -1
  %i.t = add i32 %i.c, %i.s
  %i.u = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.t, i8 noundef zeroext 44, ptr noundef nonnull %i.b) ; 0 uses
  %i.v = load i32, ptr %i.b, align 4
  %i.w = sub i32 %i.v, %i.r                       ; 2 uses
  store i32 %i.w, ptr %i.b, align 4
  %i.x = load i32, ptr @hf_dhcp_option43_arubaiap_ampip, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.w, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr %i.b, align 4
  %i.aa = add i32 %i.q, 2
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = load i32, ptr @hf_dhcp_option43_arubaiap_password, align 4
  %i.ad = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ab)
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_apple_bsdp_vendor_info_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(10) @.str.2355, i64 noundef 9) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.2356)
  %i.e = load i32, ptr @ett_dhcp_option, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.e)
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not1517 = icmp eq i32 %i.g, 0
  br i1 %.not1517, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %dissect_vendor_bsdp_suboption.exit
  %.018 = phi i32 [ %.0148.i, %dissect_vendor_bsdp_suboption.exit ], [ 0, %bb.c ] ; 7 uses
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.018) ; 3 uses
  %i.j = add i32 %.018, 1                         ; 4 uses
  %i.k = zext i8 %i.i to i32                      ; 5 uses
  %i.l = add i8 %i.i, 1
  %or.cond.i = icmp ult i8 %i.l, 2
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not.i = icmp ult i32 %i.j, %i.h
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2093, i32 noundef %i.k) ; 0 uses
  br label %dissect_vendor_bsdp_suboption.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j) ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.0145.i = phi i8 [ %i.n, %bb.f ], [ undef, %.lr.ph ] ; 4 uses
  %.0.i = phi i32 [ %i.p, %bb.f ], [ 1, %.lr.ph ] ; 3 uses
  %i.q = load i32, ptr @hf_dhcp_option43_bsdp_suboption, align 4
  %i.r = tail call ptr @val_to_str_const(i32 noundef %i.k, ptr noundef @option43_bsdp_suboption_vals, ptr noundef @.str.482)
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef %.018, i32 noundef %.0.i, i32 noundef %i.k, ptr noundef @.str.2067, i32 noundef %i.k, ptr noundef %i.r) ; 2 uses
  %i.t = icmp eq i32 %.0.i, 1
  br i1 %i.t, label %dissect_vendor_bsdp_suboption.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @ett_dhcp_option43_suboption, align 4
  %i.v = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.u) ; 13 uses
  %i.w = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = add i32 %.018, 2                         ; 17 uses
  %i.z = zext i8 %.0145.i to i32                  ; 16 uses
  %i.aa = add i32 %i.y, %i.z
  %i.ab = icmp ugt i32 %i.aa, %i.h
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef @ei_dhcp_missing_subopt_value, ptr noundef @.str.2094, i32 noundef %i.k) ; 0 uses
  br label %dissect_vendor_bsdp_suboption.exit

bb.j:                                             ; preds = %bb.h
  switch i8 %i.i, label %.loopexit.i [
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.q
    i8 8, label %bb.r
    i8 9, label %bb.s
    i8 10, label %bb.u
    i8 11, label %bb.v
    i8 12, label %bb.w
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr @hf_dhcp_option43_bsdp_message_type, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.j
  %i.af = load i32, ptr @hf_dhcp_option43_bsdp_version, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  br label %.loopexit.i

bb.m:                                             ; preds = %bb.j
  %i.ah = load i32, ptr @hf_dhcp_option43_bsdp_server_identifier, align 4
end_hunk_1
begin_hunk_2_@dissect_apple_bsdp_vendor_info_heur:bb.a

bb.w:                                             ; preds = %bb.j
  %i.da = load i32, ptr @hf_dhcp_option43_bsdp_message_size, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph162._crit_edge.i, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.dc = add i32 %.0.i, %.018
  br label %dissect_vendor_bsdp_suboption.exit

dissect_vendor_bsdp_suboption.exit:               ; preds = %bb.e, %bb.g, %bb.i, %.loopexit.i
  %.0148.i = phi i32 [ %i.h, %bb.e ], [ %i.h, %bb.i ], [ %i.dc, %.loopexit.i ], [ %i.j, %bb.g ] ; 2 uses
  %i.dd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0148.i)
  %.not15 = icmp eq i32 %i.dd, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !64

.loopexit:                                        ; preds = %dissect_vendor_bsdp_suboption.exit, %bb.c, %bb.a, %bb.b
  %.013 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %dissect_vendor_bsdp_suboption.exit ]
  ret i1 %.013
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_aerohive_vendor_info_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(9) @.str.1585, i64 noundef 8) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.2362)
  %i.e = load i32, ptr @ett_dhcp_option, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.e)
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not1516 = icmp eq i32 %i.g, 0
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %dissect_vendor_aerohive_suboption.exit
  %.017 = phi i32 [ %.0.i, %dissect_vendor_aerohive_suboption.exit ], [ 0, %bb.c ] ; 5 uses
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.017) ; 4 uses
  %i.j = add i32 %.017, 1                         ; 3 uses
  %.not.i = icmp ult i32 %i.j, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = zext i8 %i.i to i32
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2363, i32 noundef %i.k) ; 0 uses
  br label %dissect_vendor_aerohive_suboption.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j)
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = add nuw nsw i32 %i.n, 2                  ; 2 uses
  %i.p = load i32, ptr @hf_dhcp_option43_aerohive_suboption, align 4
  %i.q = zext i8 %i.i to i32                      ; 4 uses
  %i.r = tail call ptr @val_to_str_const(i32 noundef %i.q, ptr noundef @option43_aerohive_suboption_vals, ptr noundef @.str.482)
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.f, i32 noundef %i.p, ptr noundef %0, i32 noundef %.017, i32 noundef %i.o, i32 noundef %i.q, ptr noundef @.str.2067, i32 noundef %i.q, ptr noundef %i.r) ; 2 uses
  %i.t = load i32, ptr @ett_dhcp_option43_suboption, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 2 uses
  %i.v = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.017, 2                         ; 2 uses
  %i.y = add i32 %i.x, %i.n
  %i.z = icmp ugt i32 %i.y, %i.h
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef @ei_dhcp_missing_subopt_value, ptr noundef @.str.2364, i32 noundef %i.q) ; 0 uses
  br label %dissect_vendor_aerohive_suboption.exit

bb.g:                                             ; preds = %bb.e
  %switch.selectcmp.i = icmp eq i8 %i.i, -30
  %switch.selectcmp52.i = icmp eq i8 %i.i, -31
  %hf_dhcp_option43_aerohive_xiqhostname.val.i = load i32, ptr @hf_dhcp_option43_aerohive_xiqhostname, align 4
  %hf_dhcp_option43_aerohive_xiqipaddress.val.i = load i32, ptr @hf_dhcp_option43_aerohive_xiqipaddress, align 4
  %hf_dhcp_option43_aerohive_unknown.val.i = load i32, ptr @hf_dhcp_option43_aerohive_unknown, align 4
  %switch.select.val.i = select i1 %switch.selectcmp.i, i32 %hf_dhcp_option43_aerohive_xiqipaddress.val.i, i32 %hf_dhcp_option43_aerohive_unknown.val.i
  %i.ab = select i1 %switch.selectcmp52.i, i32 %hf_dhcp_option43_aerohive_xiqhostname.val.i, i32 %switch.select.val.i
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %i.o, %.017
  br label %dissect_vendor_aerohive_suboption.exit

dissect_vendor_aerohive_suboption.exit:           ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.h, %bb.d ], [ %i.h, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ae = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %.not15 = icmp eq i32 %i.ae, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !65

.loopexit:                                        ; preds = %dissect_vendor_aerohive_suboption.exit, %bb.c, %bb.a, %bb.b
  %.013 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %dissect_vendor_aerohive_suboption.exit ]
  ret i1 %.013
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_cisco_vendor_info_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef dereferenceable(6) @.str.2365, i64 noundef 5) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.2366)
  %i.e = load i32, ptr @ett_dhcp_option, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.e)
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not1516 = icmp eq i32 %i.g, 0
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %dissect_vendor_cisco_suboption.exit
  %.017 = phi i32 [ %.0.i, %dissect_vendor_cisco_suboption.exit ], [ 0, %bb.c ] ; 5 uses
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.017) ; 3 uses
  %i.j = add i32 %.017, 1                         ; 3 uses
  %.not.i = icmp ult i32 %i.j, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = zext i8 %i.i to i32
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2363, i32 noundef %i.k) ; 0 uses
  br label %dissect_vendor_cisco_suboption.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j)
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = add nuw nsw i32 %i.n, 2                  ; 2 uses
  %i.p = load i32, ptr @hf_dhcp_option43_cisco_suboption, align 4
  %i.q = zext i8 %i.i to i32                      ; 4 uses
  %i.r = tail call ptr @val_to_str_const(i32 noundef %i.q, ptr noundef @option43_cisco_suboption_vals, ptr noundef @.str.482)
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.f, i32 noundef %i.p, ptr noundef %0, i32 noundef %.017, i32 noundef %i.o, i32 noundef %i.q, ptr noundef @.str.2067, i32 noundef %i.q, ptr noundef %i.r) ; 2 uses
  %i.t = load i32, ptr @ett_dhcp_option43_suboption, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 2 uses
  %i.v = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.017, 2                         ; 2 uses
  %i.y = add i32 %i.x, %i.n
  %i.z = icmp ugt i32 %i.y, %i.h
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef @ei_dhcp_missing_subopt_value, ptr noundef @.str.2364, i32 noundef %i.q) ; 0 uses
  br label %dissect_vendor_cisco_suboption.exit

bb.g:                                             ; preds = %bb.e
  %switch.tableidx = add i8 %i.i, -1              ; 2 uses
  %i.ab = icmp ult i8 %switch.tableidx, 12
  br i1 %i.ab, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.ac = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_cisco_vendor_info_heur, i64 %i.ac
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %hf_dhcp_option43_cisco_unknown.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @hf_dhcp_option43_cisco_unknown, %bb.g ]
  %i.ad = load i32, ptr %hf_dhcp_option43_cisco_unknown.sink.i, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  %i.af = add i32 %i.o, %.017
  br label %dissect_vendor_cisco_suboption.exit

dissect_vendor_cisco_suboption.exit:              ; preds = %bb.d, %bb.f, %bb.h
  %.0.i = phi i32 [ %i.h, %bb.d ], [ %i.h, %bb.f ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %.not15 = icmp eq i32 %i.ag, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !66

.loopexit:                                        ; preds = %dissect_vendor_cisco_suboption.exit, %bb.c, %bb.a, %bb.b
  %.013 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %dissect_vendor_cisco_suboption.exit ]
  ret i1 %.013
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 1, 258) i32 @dissect_vendor_cl_suboption(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 5 uses
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.a to i32
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2093, i32 noundef %i.d) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.g = load i32, ptr @hf_dhcp_option125_cl_suboption, align 4
  %i.h = zext i8 %i.f to i32                      ; 5 uses
  %i.i = add nuw nsw i32 %i.h, 2                  ; 7 uses
  %i.j = zext i8 %i.a to i32                      ; 4 uses
  %i.k = tail call ptr @val_to_str_const(i32 noundef %i.j, ptr noundef @option125_cl_suboption_vals, ptr noundef @.str.482)
  %i.l = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef %i.i, i32 noundef %i.j, ptr noundef @.str.2067, i32 noundef %i.j, ptr noundef %i.k) ; 3 uses
  %i.m = load i32, ptr @ett_dhcp_option125_cl_suboption, align 4
  %i.n = tail call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m) ; 5 uses
  %i.o = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.r = icmp ult i32 %i.q, %i.h
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.l, ptr noundef @ei_dhcp_missing_subopt_value, ptr noundef @.str.2094, i32 noundef %i.j) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ult i8 %i.a, 6
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i8 %i.a to i64
  %i.v = getelementptr [24 x i8], ptr @dissect_vendor_cl_suboption.o125_cl_opt, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.v, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = tail call fastcc i32 @dhcp_handle_basic_types(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.l, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef %i.h, ptr noundef %i.z, ptr noundef @dissect_vendor_cl_suboption.default_hfs)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  switch i8 %i.a, label %bb.j [
    i8 0, label %bb.h
    i8 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr @hf_dhcp_option125_value, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ac, ptr noundef %0, i32 noundef 2, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.z, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ae, ptr noundef %0, i32 noundef 2, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_docsis_cm_cap(ptr noundef %1, ptr noundef %i.n, ptr noundef %0, i32 noundef %i.i, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.i, %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.i ], [ %i.i, %bb.h ], [ %i.i, %bb.e ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 1, 258) i32 @dissect_vendor_tr111_suboption(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 5 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i8 %i.b to i32
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef @ei_dhcp_missing_subopt_length, ptr noundef @.str.2093, i32 noundef %i.e) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.h = load i32, ptr @hf_dhcp_option125_tr111_suboption, align 4
  %i.i = zext i8 %i.g to i32                      ; 7 uses
  %i.j = add nuw nsw i32 %i.i, 2                  ; 6 uses
  %i.k = zext i8 %i.b to i32                      ; 4 uses
  %i.l = tail call ptr @val_to_str_const(i32 noundef %i.k, ptr noundef @option125_tr111_suboption_vals, ptr noundef @.str.482)
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 1, i32 noundef %i.j, i32 noundef %i.k, ptr noundef @.str.2067, i32 noundef %i.k, ptr noundef %i.l) ; 3 uses
  %i.n = load i32, ptr @ett_dhcp_option125_tr111_suboption, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 4 uses
  %i.p = load i32, ptr @hf_dhcp_suboption_length, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.s = icmp ult i32 %i.r, %i.i
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.m, ptr noundef @ei_dhcp_missing_subopt_value, ptr noundef @.str.2094, i32 noundef %i.k) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.u = load i32, ptr @hf_dhcp_option125_value, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef 2, i32 noundef %i.i, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.x, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.x, i64 28       ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.f, %bb.g
  %i.ab = icmp ult i8 %i.b, 7
  br i1 %i.ab, label %bb.h, label %bb.l

bb.h:                                             ; preds = %proto_item_set_hidden.exit
  %i.ac = zext nneg i8 %i.b to i64
  %i.ad = getelementptr [24 x i8], ptr @dissect_vendor_tr111_suboption.o125_tr111_opt, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = tail call fastcc i32 @dhcp_handle_basic_types(ptr noundef %1, ptr noundef %i.o, ptr noundef %i.m, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef %i.i, ptr noundef %i.ah, ptr noundef @dissect_vendor_tr111_suboption.default_hfs)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  switch i8 %i.b, label %bb.l [
    i8 0, label %bb.j
    i8 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr @hf_dhcp_option125_value, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ak, ptr noundef %0, i32 noundef 2, i32 noundef %i.i, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.am = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef 2, i32 noundef %i.i, i32 noundef 33554432, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %i.an = load i32, ptr %i.ah, align 4
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = call ptr @proto_tree_add_uint(ptr noundef %i.o, i32 noundef %i.an, ptr noundef %0, i32 noundef 2, i32 noundef %i.i, i32 noundef %i.ao) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.l

bb.l:                                             ; preds = %proto_item_set_hidden.exit, %bb.j, %bb.k, %bb.h, %bb.i, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ %i.j, %bb.i ], [ %i.j, %bb.h ], [ %i.j, %bb.k ], [ %i.j, %bb.j ], [ %i.j, %proto_item_set_hidden.exit ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @signed_time_secs_to_str(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @unsigned_time_secs_to_str(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @stat_tap_find_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @stat_tap_init_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @stat_tap_add_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @stat_tap_init_table_row(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @str_to_val_idx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @stat_tap_get_field_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @stat_tap_set_field_data(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_change_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_list_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dhcp_clear_uat_dhcpopt(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32
  tail call void @dissector_reset_uint(ptr noundef @.str.1536, i32 noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_destroy_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_reset_uint(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_arphrdaddr_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ether_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dhcp_option(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10) unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.dhcp_option_data, align 8  ; 8 uses
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.b = zext i8 %i.a to i32                      ; 5 uses
  switch i8 %i.a, label %bb.e [
    i8 0, label %.preheader.preheader
    i8 -1, label %bb.c
  ]

.preheader.preheader:                             ; preds = %bb.a
  %.0141173 = add i32 %3, 1                       ; 3 uses
  %i.c = icmp slt i32 %.0141173, %4
  br i1 %i.c, label %.lr.ph, label %.preheader._crit_edge

.preheader:                                       ; preds = %.lr.ph
  %.0141 = add i32 %.0141174, 1                   ; 3 uses
  %i.d = icmp slt i32 %.0141, %4
  br i1 %i.d, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !67

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.0141174 = phi i32 [ %.0141, %.preheader ], [ %.0141173, %.preheader.preheader ] ; 3 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0141174)
  %.not151 = icmp eq i8 %i.e, 0
  br i1 %.not151, label %.preheader, label %._crit_edge175, !llvm.loop !67

._crit_edge175:                                   ; preds = %.lr.ph
  br label %.preheader._crit_edge, !llvm.loop !67

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge175, %.preheader.preheader
  %.0141.lcssa = phi i32 [ %.0141174, %._crit_edge175 ], [ %.0141173, %.preheader.preheader ], [ %.0141, %.preheader ]
  %i.f = sub i32 %.0141.lcssa, %3                 ; 3 uses
  %i.g = icmp eq ptr %2, null
  %or.cond.not = or i1 %i.g, %5
  br i1 %or.cond.not, label %proto_item_set_visible.exit, label %bb.b

bb.b:                                             ; preds = %.preheader._crit_edge
  %i.h = load i32, ptr @hf_dhcp_option_type, align 4
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef @.str.2064)
  %i.j = load i32, ptr @ett_dhcp_option, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr @hf_dhcp_option_padding, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef %3, i32 noundef %i.f, i32 noundef 0) ; 0 uses
  br label %proto_item_set_visible.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %2, null
  %or.cond4.not = or i1 %i.n, %5
  br i1 %or.cond4.not, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c
  %i.o = load i32, ptr @hf_dhcp_option_type, align 4
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef nonnull %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef @.str.2065)
  %i.q = load i32, ptr @ett_dhcp_option, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q)
  %i.s = icmp eq ptr %9, null
  %hf_dhcp_option_end_overload.val = load i32, ptr @hf_dhcp_option_end_overload, align 4
  %hf_dhcp_option_end.val = load i32, ptr @hf_dhcp_option_end, align 4
  %i.t = select i1 %i.s, i32 %hf_dhcp_option_end_overload.val, i32 %hf_dhcp_option_end.val
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.t, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
end_hunk_2
