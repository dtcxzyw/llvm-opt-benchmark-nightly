Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-fcels?download=true
inline.NumInlined: 18
inline.NumDeleted: 18
begin_hunk_0_@dissect_fcels_adisc
define internal fastcc void @dissect_fcels_adisc(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_adisc, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.a) ; 5 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_fcels_hardaddr, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_fcels_npname, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_fcels_fnname, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_fcels_nportid, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.k, ptr noundef %0, i32 noundef 25, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_rps(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @ett_fcels_rps, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.b) ; 19 uses
  %.not67 = icmp eq i8 %2, 0
  %i.d = load i32, ptr @hf_fcels_rps_flag, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not67, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @hf_fcels_opcode, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = zext i8 %i.a to i32                      ; 2 uses
  %i.i = and i32 %i.h, 2
  %.not69 = icmp eq i32 %i.i, 0
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @hf_fcels_npname, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %i.h, 1
  %.not70 = icmp eq i32 %i.l, 0
  br i1 %.not70, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr @hf_fcels_rps_portnum, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.m, ptr noundef %0, i32 noundef 8, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.o = load i32, ptr @hf_fcels_rps_portstatus, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.o, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_fcels_link_failure_count, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.q, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_fcels_loss_of_sync_count, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.s, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_fcels_loss_of_signal_count, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.u, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_fcels_primitive_seq_protocol_err, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.w, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_fcels_invalid_xmission_word, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.y, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_fcels_invalid_crc_count, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.aa, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ac = and i8 %i.a, 1
  %.not68 = icmp eq i8 %i.ac, 0
  br i1 %.not68, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr @hf_fcels_l_port_status, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.ad, ptr noundef %0, i32 noundef 34, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_fcels_lip_al_ps, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.af, ptr noundef %0, i32 noundef 39, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_fcels_lip_f7_initiated_count, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.ah, ptr noundef %0, i32 noundef 40, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_fcels_lip_f7_received_count, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.aj, ptr noundef %0, i32 noundef 44, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_fcels_lip_f8_initiated_count, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.al, ptr noundef %0, i32 noundef 48, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_fcels_lip_f8_received_count, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.an, ptr noundef %0, i32 noundef 52, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_fcels_lip_reset_initiated_count, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.ap, ptr noundef %0, i32 noundef 56, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_fcels_lip_reset_received_count, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.ar, ptr noundef %0, i32 noundef 60, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_rpl(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_rpl, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a) ; 7 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not38 = icmp eq i8 %2, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @hf_fcels_rpl_max_size, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_fcels_rpl_index, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef 9, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr @hf_fcels_rpl_payload_length, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_fcels_rpl_list_length, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.k, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_fcels_rpl_index_of_i_port_block, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.m, ptr noundef %0, i32 noundef 9, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.o = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 5) ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.02 = phi i32 [ %i.ac, %.lr.ph ], [ %i.o, %bb.d ] ; 3 uses
  %.0371 = phi i32 [ %i.ab, %.lr.ph ], [ 12, %bb.d ] ; 5 uses
  %i.q = add i32 %.0371, 12
  %i.r = load i32, ptr @ett_fcels_rplpb, align 4
  %i.s = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.q, i32 noundef 16, i32 noundef %i.r, ptr noundef null, ptr noundef nonnull @.str.610, i32 noundef %.02) ; 3 uses
  %i.t = load i32, ptr @hf_fcels_rpl_physical_port, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %0, i32 noundef %.0371, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_fcels_rpl_port_identifier, align 4
  %i.w = add i32 %.0371, 5
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_fcels_rpl_port_name, align 4
  %i.z = add i32 %.0371, 8
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.z, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %.0371, 16
  %i.ac = add nsw i32 %.02, -1
  %i.ad = icmp samesign ugt i32 %.02, 1
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_fan(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_fan, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.a) ; 4 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_fcels_fabricaddr, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_fcels_fabricpname, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_fcels_fnname, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_rscn(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_rscn, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a) ; 4 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not38 = icmp eq i8 %2, 0
  br i1 %.not38, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @hf_fcels_rscn_page_len, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.h = load i32, ptr @hf_fcels_rscn_payload_len, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.h, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = icmp ugt i16 %i.g, 7
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %.lhs.trunc = add i16 %i.g, -4
  %4 = lshr i16 %.lhs.trunc, 2
  %.zext = zext nneg i16 %4 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02 = phi i32 [ %i.aa, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0371 = phi i32 [ %i.z, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 7 uses
  %i.k = load i32, ptr @ett_fcels_rscn_rec, align 4
  %i.l = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.b, ptr noundef %0, i32 noundef %.0371, i32 noundef 4, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull @.str.611, i32 noundef %.02) ; 5 uses
  %i.m = load i32, ptr @hf_fcels_rscn_evqual, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %0, i32 noundef %.0371, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_fcels_rscn_addrfmt, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.o, ptr noundef %0, i32 noundef %.0371, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_fcels_rscn_domain, align 4
  %i.r = or disjoint i32 %.0371, 1
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_fcels_rscn_area, align 4
  %i.u = or disjoint i32 %.0371, 2
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_fcels_rscn_port, align 4
  %i.x = or disjoint i32 %.0371, 3
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = add nuw nsw i32 %.0371, 4
  %i.aa = add nuw nsw i32 %.02, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, %.zext
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_scr(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_scr, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a) ; 2 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not8 = icmp eq i8 %2, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @hf_fcels_scrregn, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_rnft(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_rnft, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a) ; 7 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not38 = icmp eq i8 %2, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @hf_fcels_rnft_max_size, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_fcels_rnft_index, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr @hf_fcels_rnft_payload_len, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5) ; 2 uses
  %i.l = load i32, ptr @hf_fcels_rnft_list_length, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.l, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_fcels_rnft_index_of_first_rec_in_list, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.n, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not3 = icmp eq i8 %i.k, 0
  br i1 %.not3, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i8 %i.k to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0361 = phi i32 [ 8, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 4 uses
  %i.p = load i32, ptr @ett_fcels_rnft_fc4, align 4
  %i.q = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.b, ptr noundef %0, i32 noundef %.0361, i32 noundef 4, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.612, i32 noundef %indvars.iv) ; 2 uses
  %i.r = load i32, ptr @hf_fcels_rnft_fc4type, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %0, i32 noundef %.0361, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_fcels_rnft_fc4_qualifier, align 4
  %i.u = or disjoint i32 %.0361, 1
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.u, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.w = add nuw nsw i32 %.0361, 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_lsts(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_lsts, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a) ; 7 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not23 = icmp eq i8 %2, 0
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @hf_fcels_failedrcvr, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_fcels_flacompliance, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_fcels_loopstate, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_fcels_publicloop_bmap, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.k, ptr noundef %0, i32 noundef 8, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_fcels_pvtloop_bmap, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.m, ptr noundef %0, i32 noundef 24, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_fcels_alpa_map, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.o, ptr noundef %0, i32 noundef 40, i32 noundef 128, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_rnid(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_rnid, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.a) ; 15 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not55 = icmp eq i8 %2, 0
  %i.e = load i32, ptr @hf_fcels_nodeidfmt, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not55, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.h = load i32, ptr @hf_fcels_common_identification_data_length, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.h, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_fcels_spidlen, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.j, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not56 = icmp eq i8 %i.g, 0
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @hf_fcels_npname, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.l, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_fcels_fnname, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.n, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.q = icmp eq i8 %i.p, -33
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr @hf_fcels_vendoruniq, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.r, ptr noundef %0, i32 noundef 24, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_fcels_asstype, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.t, ptr noundef %0, i32 noundef 40, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_fcels_physport, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.v, ptr noundef %0, i32 noundef 44, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_fcels_attnodes, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.x, ptr noundef %0, i32 noundef 48, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_fcels_nodemgmt, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.z, ptr noundef %0, i32 noundef 52, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_fcels_ipvers, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ab, ptr noundef %0, i32 noundef 53, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_fcels_tcpport, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ad, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_fcels_ip, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.af, ptr noundef %0, i32 noundef 56, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_fcels_vendorsp, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ah, ptr noundef %0, i32 noundef 74, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_fcels_lirr(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_fcels_lirr, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.a) ; 4 uses
  %i.c = load i32, ptr @hf_fcels_opcode, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_fcels_lirr_regn_function, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %.not16 = icmp eq i8 %i.g, 0
  %i.h = load i32, ptr @hf_fcels_lirr_regn_format, align 4 ; 2 uses
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.b, i32 noundef %i.h, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.613) ; 0 uses
  br label %bb.e

end_hunk_0
