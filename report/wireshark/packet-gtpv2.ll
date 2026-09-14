Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gtpv2?download=true
inline.NumInlined: 47
inline.NumDeleted: 22
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_gtpv2_s1udf:bb.a

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = zext i8 %i.e to i32
  %i.i = zext i16 %4 to i32
  %i.j = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_gtpv2_ie_len_invalid, ptr noundef %0, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull @.str.1803, i32 noundef %i.h) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %hf_gtpv2_sgw_addr_ipv6.sink = phi ptr [ @hf_gtpv2_sgw_addr_ipv6, %bb.b ], [ @hf_gtpv2_sgw_addr_ipv4, %bb.a ]
  %.sink32 = phi i32 [ 16, %bb.b ], [ 4, %bb.a ]
  %.0 = phi i32 [ 18, %bb.b ], [ 6, %bb.a ]
  %i.k = load i32, ptr %hf_gtpv2_sgw_addr_ipv6.sink, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef %.sink32, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_gtpv2_sgw_s1u_teid, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %.0, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_delay_value(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gtpv2_delay_value, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_bearer_ctx(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i8 zeroext %6, ptr noundef %7) #1 {
bb.a:
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.1804)
  %i.a = load i32, ptr @ett_gtpv2_bearer_ctx, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a)
  %i.c = zext i16 %4 to i32
  %i.d = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 0, i32 noundef %i.c)
  tail call void @dissect_gtpv2_ie_common(ptr noundef %i.d, ptr noundef %1, ptr noundef %i.b, i32 noundef 0, i8 noundef zeroext %5, ptr noundef %7, i8 noundef zeroext 93)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_charging_id(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gtpv2_charging_id, align 4
  %i.b = zext i16 %4 to i32
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef %i.b, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_char_char(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gtpv2_charging_characteristic, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = icmp ugt i16 %4, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i16 %4 to i32
  %i.e = load i32, ptr @hf_gtpv2_charging_characteristic_remaining_octets, align 4
  %i.f = add nsw i32 %i.d, -2
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef %i.f, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_tra_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = tail call i32 @dissect_e212_mcc_mnc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 3)
  %i.c = zext i16 %i.b to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.1805, i32 noundef %i.c)
  %i.d = load i32, ptr @hf_gtpv2_trace_id, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @ett_gtpv2_tra_info_trigg, align 4
  %i.g = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 6, i32 noundef 9, i32 noundef %i.f, ptr noundef null, ptr noundef nonnull @.str.1806) ; 8 uses
  %i.h = load i32, ptr @ett_gtpv2_tra_info_trigg_msc_server, align 4
  %i.i = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull @.str.312) ; 3 uses
  %i.j = load i32, ptr @ett_gtpv2_tra_info_trigg_mgw, align 4
  %i.k = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull @.str.323) ; 2 uses
  %i.l = load i32, ptr @ett_gtpv2_tra_info_trigg_sgsn, align 4
  %i.m = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull @.str.326) ; 3 uses
  %i.n = load i32, ptr @ett_gtpv2_tra_info_trigg_ggsn, align 4
  %i.o = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull @.str.336) ; 3 uses
  %i.p = load i32, ptr @ett_gtpv2_tra_info_trigg_bm_sc, align 4
  %i.q = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.340) ; 2 uses
  %i.r = load i32, ptr @ett_gtpv2_tra_info_trigg_sgw_mme, align 4
  %i.s = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef %i.r, ptr noundef null, ptr noundef nonnull @.str.1807) ; 3 uses
  %i.t = load i32, ptr @ett_gtpv2_tra_info_trigg_sgw, align 4
  %i.u = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef %i.t, ptr noundef null, ptr noundef nonnull @.str.356)
  %i.v = load i32, ptr @ett_gtpv2_tra_info_trigg_pgw, align 4
  %i.w = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef %i.v, ptr noundef null, ptr noundef nonnull @.str.361) ; 2 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.i, ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_msc_flags, i32 noundef 0)
  %i.x = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.y = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.i, i32 noundef %i.x, ptr noundef %0, i32 noundef 48, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.aa = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.i, i32 noundef %i.z, ptr noundef %0, i32 noundef 56, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_gtpv2_tra_info_mgw_context, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ab, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.ae = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.k, i32 noundef %i.ad, ptr noundef %0, i32 noundef 64, i32 noundef 7, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.m, ptr noundef %0, i32 noundef 9, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_sgsn_flags, i32 noundef 0)
  %i.af = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.ag = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.m, i32 noundef %i.af, ptr noundef %0, i32 noundef 72, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_gtpv2_tra_info_sgsn_reserved, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ah, ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_gtpv2_tra_info_ggsn_pdp, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.aj, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_gtpv2_tra_info_ggsn_mbms, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.al, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.ao = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.o, i32 noundef %i.an, ptr noundef %0, i32 noundef 88, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_gtpv2_tra_info_bm_sc, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ap, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.as = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.ar, ptr noundef %0, i32 noundef 96, i32 noundef 7, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.s, ptr noundef %0, i32 noundef 13, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_mme_flags, i32 noundef 0)
  %i.at = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.au = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.s, i32 noundef %i.at, ptr noundef %0, i32 noundef 104, i32 noundef 2, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.s, ptr noundef %0, i32 noundef 14, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_sgw_pdn_flags, i32 noundef 0)
  %i.av = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.aw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.u, i32 noundef %i.av, ptr noundef %0, i32 noundef 116, i32 noundef 1, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.w, ptr noundef %0, i32 noundef 14, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_pgw_flags, i32 noundef 0)
  %i.ax = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.ay = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.w, i32 noundef %i.ax, ptr noundef %0, i32 noundef 112, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = load i32, ptr @ett_gtpv2_tra_info_ne_types, align 4
  %i.ba = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 15, i32 noundef 2, i32 noundef %i.az, ptr noundef null, ptr noundef nonnull @.str.1808)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 15, i32 noundef 1, ptr noundef nonnull @trace_ne_types_flags_oct1, i32 noundef 0)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull @trace_ne_types_flags_oct2, i32 noundef 0)
  %i.bb = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.bc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef %0, i32 noundef 128, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = load i32, ptr @hf_gtpv2_tra_info_tdl, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bd, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @ett_gtpv2_tra_info_interfaces, align 4
  %i.bg = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 18, i32 noundef 12, i32 noundef %i.bf, ptr noundef null, ptr noundef nonnull @.str.1809) ; 10 uses
  %i.bh = load i32, ptr @ett_gtpv2_tra_info_interfaces_imsc_server, align 4
  %i.bi = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 18, i32 noundef 2, i32 noundef %i.bh, ptr noundef null, ptr noundef nonnull @.str.312) ; 4 uses
  %i.bj = load i32, ptr @ett_gtpv2_tra_info_interfaces_lmgw, align 4
  %i.bk = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef %i.bj, ptr noundef null, ptr noundef nonnull @.str.323) ; 2 uses
  %i.bl = load i32, ptr @ett_gtpv2_tra_info_interfaces_lsgsn, align 4
  %i.bm = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 21, i32 noundef 2, i32 noundef %i.bl, ptr noundef null, ptr noundef nonnull @.str.326) ; 2 uses
  %i.bn = load i32, ptr @ett_gtpv2_tra_info_interfaces_lggsn, align 4
  %i.bo = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 23, i32 noundef 1, i32 noundef %i.bn, ptr noundef null, ptr noundef nonnull @.str.336) ; 2 uses
  %i.bp = load i32, ptr @ett_gtpv2_tra_info_interfaces_lrnc, align 4
  %i.bq = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 24, i32 noundef 1, i32 noundef %i.bp, ptr noundef null, ptr noundef nonnull @.str.369) ; 2 uses
  %i.br = load i32, ptr @ett_gtpv2_tra_info_interfaces_lbm_sc, align 4
  %i.bs = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 25, i32 noundef 1, i32 noundef %i.br, ptr noundef null, ptr noundef nonnull @.str.340) ; 2 uses
  %i.bt = load i32, ptr @ett_gtpv2_tra_info_interfaces_lmme, align 4
  %i.bu = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 26, i32 noundef 1, i32 noundef %i.bt, ptr noundef null, ptr noundef nonnull @.str.343) ; 2 uses
  %i.bv = load i32, ptr @ett_gtpv2_tra_info_interfaces_lsgw, align 4
  %i.bw = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 27, i32 noundef 1, i32 noundef %i.bv, ptr noundef null, ptr noundef nonnull @.str.356) ; 2 uses
  %i.bx = load i32, ptr @ett_gtpv2_tra_info_interfaces_lpdn_gw, align 4
  %i.by = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 28, i32 noundef 1, i32 noundef %i.bx, ptr noundef null, ptr noundef nonnull @.str.374)
  %i.bz = load i32, ptr @ett_gtpv2_tra_info_interfaces_lpdn_lenb, align 4
  %i.ca = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %0, i32 noundef 29, i32 noundef 1, i32 noundef %i.bz, ptr noundef null, ptr noundef nonnull @.str.376) ; 2 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bi, ptr noundef %0, i32 noundef 18, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lmsc_flags, i32 noundef 0)
  %i.cb = load i32, ptr @hf_gtpv2_tra_info_lmsc_map_d, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.bi, i32 noundef %i.cb, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_gtpv2_tra_info_lmsc_map_c, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.bi, i32 noundef %i.cd, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.cg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bi, i32 noundef %i.cf, ptr noundef %0, i32 noundef 152, i32 noundef 6, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bk, ptr noundef %0, i32 noundef 20, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lmgw_flags, i32 noundef 0)
  %i.ch = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.ci = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bk, i32 noundef %i.ch, ptr noundef %0, i32 noundef 160, i32 noundef 5, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bm, ptr noundef %0, i32 noundef 21, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lsgsn_flags, i32 noundef 0)
  %i.cj = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.ck = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bm, i32 noundef %i.cj, ptr noundef %0, i32 noundef 176, i32 noundef 8, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bo, ptr noundef %0, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lggsn_flags, i32 noundef 0)
  %i.cl = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.cm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bo, i32 noundef %i.cl, ptr noundef %0, i32 noundef 184, i32 noundef 5, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bq, ptr noundef %0, i32 noundef 24, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lrnc_flags, i32 noundef 0)
  %i.cn = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.co = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bq, i32 noundef %i.cn, ptr noundef %0, i32 noundef 192, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cp = load i32, ptr @hf_gtpv2_tra_info_lbm_sc_gmb, align 4
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %i.bs, i32 noundef %i.cp, ptr noundef %0, i32 noundef 25, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.cs = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bs, i32 noundef %i.cr, ptr noundef %0, i32 noundef 200, i32 noundef 7, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bu, ptr noundef %0, i32 noundef 26, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lmme_flags, i32 noundef 0)
  %i.ct = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.cu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bu, i32 noundef %i.ct, ptr noundef %0, i32 noundef 208, i32 noundef 3, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.bw, ptr noundef %0, i32 noundef 27, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lsgw_flags, i32 noundef 0)
  %i.cv = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.cw = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bw, i32 noundef %i.cv, ptr noundef %0, i32 noundef 216, i32 noundef 4, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.by, ptr noundef %0, i32 noundef 28, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lpdn_gw_flags, i32 noundef 0)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.ca, ptr noundef %0, i32 noundef 29, i32 noundef 1, ptr noundef nonnull @dissect_gtpv2_tra_info.tra_info_lenb_flags, i32 noundef 0)
  %i.cx = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.cy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.ca, i32 noundef %i.cx, ptr noundef %0, i32 noundef 232, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.cz = zext i16 %4 to i32
  %.not255 = icmp ult i16 %4, 33
  br i1 %.not255, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0256 = phi i32 [ %i.dd, %.lr.ph ], [ 33, %bb.a ] ; 2 uses
  %i.da = add nsw i32 %.0256, -3
  %i.db = load i32, ptr @hf_gtpv2_ipv4_addr, align 4
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.db, ptr noundef %0, i32 noundef %i.da, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dd = add nuw nsw i32 %.0256, 4               ; 2 uses
  %.not = icmp samesign ugt i32 %i.dd, %i.cz
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_bearer_flag(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gtpv2_bearer_flag_ppc, align 4
  %i.b = zext i16 %4 to i32                       ; 2 uses
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef %i.b, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_gtpv2_bearer_flag_vb, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef %i.b, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_pti(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gtpv2_pti, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_drx_param(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gtpv2_drx_parameter, align 4
  %i.b = zext i16 %4 to i32
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef %i.b, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_ue_net_capability(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = zext i16 %4 to i32
  %i.b = tail call zeroext i16 @de_emm_ue_net_cap(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef %i.a, ptr noundef null, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_mm_context_gsm_t(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = load i32, ptr @ett_gtpv2_mm_context_flag, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.1810) ; 11 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.d = load i32, ptr @hf_gtpv2_mm_context_sm, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.g = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.b, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_gtpv2_mm_context_drxi, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_gtpv2_mm_context_cksn, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.m = lshr i8 %i.l, 5                          ; 2 uses
  %i.n = load i32, ptr @hf_gtpv2_mm_context_nr_tri, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.q = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.b, i32 noundef %i.p, ptr noundef %0, i32 noundef 11, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_gtpv2_mm_context_uamb_ri, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_gtpv2_mm_context_samb_ri, align 4
  %i.u = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.b, i32 noundef %i.t, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.w = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.b, i32 noundef %i.v, ptr noundef %0, i32 noundef 16, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_gtpv2_mm_context_used_cipher, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.x, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_gtpv2_mm_context_kc, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef 3, i32 noundef 8, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %dissect_gtpv2_authentication_triplets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = zext nneg i8 %i.m to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.021.i = phi i32 [ 0, %bb.b ], [ %i.an, %bb.c ] ; 2 uses
  %.01920.i = phi i32 [ 11, %bb.b ], [ %i.am, %bb.c ] ; 5 uses
  %i.ac = load i32, ptr @ett_gtpv2_mm_context_auth_tri, align 4
  %i.ad = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.01920.i, i32 noundef 0, i32 noundef %i.ac, ptr noundef null, ptr noundef nonnull @.str.1811, i32 noundef %.021.i) ; 3 uses
  %i.ae = load i32, ptr @hf_gtpv2_mm_context_rand, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef %0, i32 noundef %.01920.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ag = add nuw nsw i32 %.01920.i, 16
  %i.ah = load i32, ptr @hf_gtpv2_mm_context_sres, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aj = add nuw nsw i32 %.01920.i, 20
  %i.ak = load i32, ptr @hf_gtpv2_mm_context_kc, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.am = add nuw nsw i32 %.01920.i, 28
  %i.an = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, %i.ab
  br i1 %exitcond.not.i, label %dissect_gtpv2_authentication_triplets.exit, label %bb.c, !llvm.loop !27

dissect_gtpv2_authentication_triplets.exit:       ; preds = %bb.c, %bb.a
  %i.ao = and i8 %i.c, 8
  %.not67 = icmp eq i8 %i.ao, 0
  br i1 %.not67, label %.split66, label %.split

.split:                                           ; preds = %dissect_gtpv2_authentication_triplets.exit
  %i.ap = load i32, ptr @hf_gtpv2_mm_context_drx, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ap, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.split66

.split66:                                         ; preds = %dissect_gtpv2_authentication_triplets.exit, %.split
  %.sink = phi i32 [ 13, %.split ], [ 11, %dissect_gtpv2_authentication_triplets.exit ]
  %i.ar = and i8 %i.l, 1
  %i.as = lshr i8 %i.l, 1
  %i.at = and i8 %i.as, 1
  %i.au = tail call fastcc i32 @dissect_gtpv2_mm_context_common_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.sink, i8 noundef zeroext %i.ar, i8 noundef zeroext %i.at)
  %i.av = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @ei_gtpv2_ie_data_not_dissected, ptr noundef %0, i32 noundef %i.au, ptr noundef nonnull @.str.3) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_gtpv2_mm_context_utms_cq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i16 noundef zeroext %4, i8 zeroext %5, i8 zeroext %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr @ett_gtpv2_mm_context_flag, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef %i.c, ptr noundef null, ptr noundef nonnull @.str.1810) ; 11 uses
  %i.e = load i32, ptr @hf_gtpv2_mm_context_sm, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.h = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_gtpv2_mm_context_drxi, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.d, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = load i32, ptr @hf_gtpv2_mm_context_cksn_ksi, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.n = lshr i8 %i.m, 5                          ; 2 uses
  %i.o = lshr i8 %i.m, 1
  %i.p = and i8 %i.o, 1
  %i.q = and i8 %i.m, 1
  %i.r = load i32, ptr @hf_gtpv2_mm_context_nr_qui, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.u = call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.t, ptr noundef %0, i32 noundef 11, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_gtpv2_mm_context_uamb_ri, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.v, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_gtpv2_mm_context_samb_ri, align 4
  %i.y = call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.x, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_gtpv2_spare_bits, align 4
  %i.aa = call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.z, ptr noundef %0, i32 noundef 16, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_gtpv2_mm_context_used_cipher, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ab, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_gtpv2_ck, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef 3, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_gtpv2_ik, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef 19, i32 noundef 16, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = call fastcc i32 @dissect_gtpv2_authentication_quintuplets(ptr noundef %0, ptr noundef %2, i32 noundef 35, i8 noundef zeroext %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.ah, %bb.b ], [ 35, %bb.a ]   ; 3 uses
  %i.ai = load i8, ptr %i.a, align 1
  %.not102 = icmp eq i8 %i.ai, 0
  br i1 %.not102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr @hf_gtpv2_mm_context_drx, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %.0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.al = add i32 %.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.al, %bb.d ], [ %.0, %bb.c ]
  %i.am = call fastcc i32 @dissect_gtpv2_mm_context_common_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.1, i8 noundef zeroext %i.q, i8 noundef zeroext %i.p) ; 2 uses
  %i.an = zext i16 %4 to i32                      ; 6 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ap = call fastcc i32 @dissect_gtpv2_access_restriction_data(ptr noundef %0, ptr noundef %2, i32 noundef %i.am) ; 3 uses
  %i.aq = icmp eq i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr @hf_gtpv2_mm_context_vdp_len, align 4
  %i.as = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.at = add nuw nsw i32 %i.ap, 1                ; 3 uses
  %i.au = load i8, ptr %i.b, align 1              ; 2 uses
  %.not103 = icmp eq i8 %i.au, 0
  br i1 %.not103, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr @hf_gtpv2_voice_domain_and_ue_usage_setting, align 4
  %i.aw = zext i8 %i.au to i32
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.aw, i32 noundef 0) ; 0 uses
  %i.ay = load i8, ptr %i.b, align 1
end_hunk_0
