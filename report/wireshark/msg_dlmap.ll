Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/msg_dlmap?download=true
inline.NumInlined: 32
inline.NumDeleted: 32
begin_hunk_0_@wimax_decode_dlmap_reduced_aas:bb.a
  %i.fz = add i32 %.6, 54
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.9 = phi i32 [ %i.fz, %bb.o ], [ %i.fp, %bb.n ], [ %i.fc, %bb.m ] ; 2 uses
  %i.ga = load i32, ptr @hf_dlmap_reduced_aas_repetition_coding_indication, align 4
  %i.gb = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.ga, ptr noundef %0, i32 noundef %.9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gc = add i32 %.9, 2                          ; 2 uses
  br i1 %.not287, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gd = tail call i32 @wimax_decode_ulmap_reduced_aas(ptr noundef %i.e, i32 noundef 0, i32 noundef %i.am, ptr noundef %0)
  %i.ge = add i32 %i.gd, %i.gc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.10 = phi i32 [ %i.ge, %bb.q ], [ %i.gc, %bb.p ] ; 2 uses
  %i.gf = load i32, ptr @hf_dlmap_reserved_uint, align 4
  %i.gg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.gf, ptr noundef %0, i32 noundef %.10, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.gh = add i32 %.10, 3                         ; 5 uses
  %i.gi = add nuw nsw i32 %.0290, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gi, %.0274297
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.r
  %i.gj = srem i32 %i.gh, 8                       ; 2 uses
  %i.gk = sdiv i32 %i.gh, 8
  %.not278 = icmp eq i32 %i.gj, 0
  br i1 %.not278, label %._crit_edge.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.gl = sub nsw i32 8, %i.gj                    ; 2 uses
  %i.gm = load i32, ptr @hf_padding, align 4
  %i.gn = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.e, i32 noundef %i.gm, ptr noundef %0, i32 noundef %i.gk, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %i.gl) ; 0 uses
  %i.go = add i32 %i.gl, %i.gh
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.s, %._crit_edge
  %.11 = phi i32 [ %i.go, %bb.s ], [ %i.gh, %._crit_edge ], [ 16, %bb.b ] ; 2 uses
  %i.gp = sdiv i32 %.11, 8                        ; 3 uses
  %i.gq = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef %i.gp)
  %i.gr = tail call zeroext i16 @wimax_mac_calc_crc16(ptr noundef %i.gq, i32 noundef %i.gp)
  %i.gs = load i32, ptr @hf_crc16, align 4
  %i.gt = load i32, ptr @hf_crc16_status, align 4
  %i.gu = zext i16 %i.gr to i32
  %i.gv = tail call ptr @proto_tree_add_checksum(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.gp, i32 noundef %i.gs, i32 noundef %i.gt, ptr noundef nonnull @ei_crc16, ptr noundef %1, i32 noundef %i.gu, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.gw = add i32 %.11, 16
  %i.gx = sdiv i32 %i.gw, 8
  ret i32 %i.gx
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wimax_decode_ulmap_reduced_aas(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @wimax_mac_calc_crc16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_mac_mgmt_msg_dlmap() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.530, ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.532) ; 2 uses
  store i32 %i.a, ptr @proto_mac_mgmt_msg_dlmap_decoder, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_mac_mgmt_msg_dlmap.hf, i32 noundef 332)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_mac_mgmt_msg_dlmap.ett, i32 noundef 46)
  %i.b = load i32, ptr @proto_mac_mgmt_msg_dlmap_decoder, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_mac_mgmt_msg_dlmap.ei, i32 noundef 4)
  %i.d = load i32, ptr @proto_mac_mgmt_msg_dlmap_decoder, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.533, ptr noundef nonnull @dissect_mac_mgmt_msg_dlmap_decoder, i32 noundef %i.d)
  store ptr %i.e, ptr @dlmap_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mac_mgmt_msg_dlmap_decoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  store i32 0, ptr @INC_CID, align 4
  %i.b = load i32, ptr @proto_mac_mgmt_msg_dlmap_decoder, align 4
  %i.c = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.617)
  %i.d = load i32, ptr @ett_dlmap, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 6 uses
  %i.f = load i32, ptr @ett_275_phy, align 4
  %i.g = tail call ptr @proto_tree_add_subtree(ptr noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %i.f, ptr noundef null, ptr noundef nonnull @.str.4) ; 4 uses
  %i.h = load i32, ptr @hf_dlmap_phy_fdur_ms, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_dlmap_phy_fdur_per_sec, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_dlmap_phy_fdur, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_dlmap_phy_fnum, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_dlmap_dcd, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_dlmap_bsid, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.r, ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_dlmap_ofdma_sym, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.t, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = add i32 %i.a, -12                        ; 2 uses
  %i.w = load i32, ptr @ett_dlmap_ie, align 4
  %i.x = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.e, ptr noundef %0, i32 noundef 12, i32 noundef %i.v, i32 noundef %i.w, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.v)
  %i.y = shl i32 %i.a, 1
  %i.z = add i32 %i.y, -1                         ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 24
  br i1 %i.aa, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.058 = phi i32 [ %i.ac, %.lr.ph ], [ 24, %bb.a ] ; 2 uses
  %i.ab = tail call fastcc i32 @dissect_dlmap_ie(ptr noundef %i.x, ptr noundef %1, i32 noundef %.058, ptr noundef %0)
  %i.ac = add i32 %i.ab, %.058                    ; 4 uses
  %i.ad = icmp slt i32 %i.ac, %i.z
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph
  %i.ae = and i32 %i.ac, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.af = load i32, ptr @hf_padding, align 4
  %i.ag = lshr i32 %i.ac, 1
  %i.ah = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.e, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.6) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  %i.ai = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ai
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mac_mgmt_msg_dlmap() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dlmap_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.534, i32 noundef 2, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 1, 17) i32 @Dedicated_DL_Control_IE(ptr noundef %0, i32 noundef range(i32 -536870912, 536870912) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1                            ; 3 uses
  %.not = icmp eq i32 %i.a, 0                     ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %1, 2                           ; 2 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.b)
  %i.d = and i8 %i.c, 15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = ashr exact i32 %1, 1
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.e)
  %i.g = lshr i8 %i.f, 4
  %.pre = ashr exact i32 %1, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.in = phi i8 [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.h = add nuw nsw i32 %i.a, 1
  %narrow = add nuw nsw i8 %.in, 1
  %i.i = zext nneg i8 %narrow to i32
  %i.j = add nuw nsw i32 %i.h, %i.i
  %i.k = lshr i32 %i.j, 1
  %i.l = load i32, ptr @ett_286i, align 4
  %i.m = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %2, i32 noundef %.pre-phi, i32 noundef %i.k, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull @.str.549) ; 5 uses
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %.pre-phi) ; 2 uses
  %i.o = and i8 %i.n, 15
  %i.p = lshr i8 %i.n, 4
  %.in67 = select i1 %.not, i8 %i.p, i8 %i.o      ; 4 uses
  %i.q = zext nneg i8 %.in67 to i32               ; 3 uses
  %i.r = load i32, ptr @hf_dlmap_dedicated_dl_control_length, align 4
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.r, ptr noundef %2, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef %i.q) ; 0 uses
  %i.t = add nsw i32 %1, 1                        ; 3 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i32 %i.t, 2                         ; 2 uses
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.u)
  %i.w = and i8 %i.v, 15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = ashr exact i32 %i.t, 1
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.x)
  %i.z = lshr i8 %i.y, 4
  %.pre75 = ashr exact i32 %i.t, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi76 = phi i32 [ %.pre75, %bb.f ], [ %i.u, %bb.e ]
  %.in69 = phi i8 [ %i.z, %bb.f ], [ %i.w, %bb.e ]
  %i.aa = zext nneg i8 %.in69 to i32              ; 2 uses
  %i.ab = load i32, ptr @hf_dlmap_dedicated_dl_control_control_header, align 4
  %i.ac = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.ab, ptr noundef %2, i32 noundef %.pre-phi76, i32 noundef 1, i32 noundef %i.aa) ; 0 uses
  %i.ad = add nsw i32 %1, 2                       ; 5 uses
  %i.ae = and i32 %i.aa, 1
  %.not70 = icmp eq i32 %i.ae, 0
  br i1 %.not70, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = sdiv i32 %i.ad, 2                       ; 2 uses
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.af)
  %i.ah = and i8 %i.ag, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = ashr exact i32 %i.ad, 1
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.ai)
  %i.ak = lshr i8 %i.aj, 4
  %.pre77 = ashr exact i32 %i.ad, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi78 = phi i32 [ %.pre77, %bb.j ], [ %i.af, %bb.i ]
  %.in72 = phi i8 [ %i.ak, %bb.j ], [ %i.ah, %bb.i ]
  %i.al = load i32, ptr @hf_dlmap_dedicated_dl_control_num_sdma_layers, align 4
  %i.am = lshr i8 %.in72, 2
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.al, ptr noundef %2, i32 noundef %.pre-phi78, i32 noundef 1, i32 noundef %i.an) ; 0 uses
  %i.ap = shl i32 %i.ad, 2                        ; 3 uses
  %i.aq = or disjoint i32 %i.ap, 2
  %i.ar = add nsw i32 %1, %i.q
  %i.as = shl i32 %i.ar, 2
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %3 = shl nuw nsw i8 %.in67, 2
  %i.au = load i32, ptr @hf_reserved, align 4
  %i.av = sdiv i32 %i.ap, 8
  %i.aw = srem i32 %i.ap, 8
  %4 = trunc nsw i32 %i.aw to i8
  %5 = add nsw i8 %4, -11
  %.lhs.trunc73 = add nsw i8 %5, %3
  %i.ax = sdiv i8 %.lhs.trunc73, 8
  %narrow74 = add nsw i8 %i.ax, 1
  %i.ay = sext i8 %narrow74 to i32
  %i.az = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.m, i32 noundef %i.au, ptr noundef %2, i32 noundef %i.av, i32 noundef %i.ay, ptr noundef null, ptr noundef nonnull @.str.550) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.ba = icmp samesign ugt i8 %.in67, 2
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = load i32, ptr @hf_reserved, align 4
  %i.bc = sdiv i32 %i.ad, 2
  %i.bd = trunc nuw nsw i32 %i.a to i8
  %i.be = add nsw i8 %i.bd, -1
  %.lhs.trunc = add nsw i8 %i.be, %.in67
  %i.bf = lshr i8 %.lhs.trunc, 1
  %.zext = zext nneg i8 %i.bf to i32
  %i.bg = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.m, i32 noundef %i.bb, ptr noundef %2, i32 noundef %i.bc, i32 noundef %.zext, ptr noundef null, ptr noundef nonnull @.str.550) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.l
  %i.bh = add nuw nsw i32 %i.q, 1
  ret i32 %i.bh
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @Dedicated_MIMO_DL_Control_IE(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %1, 8
  %i.b = load i32, ptr @ett_286t, align 4
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %2, i32 noundef %i.a, i32 noundef 1, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.554) ; 19 uses
  %i.d = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_length, align 4
  %i.e = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %2, i32 noundef %1, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.f = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = add <4 x i32> %i.g, <i32 5, i32 6, i32 7, i32 8> ; 5 uses
  %i.i = extractelement <4 x i32> %i.h, i64 0     ; 2 uses
  %i.j = sdiv i32 %i.i, 8
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.j)
  %i.l = zext i8 %i.k to i32
  %i.m = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_control_header_mimo_control_info, align 4
  %i.n = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.m, ptr noundef %2, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = extractelement <4 x i32> %i.h, i64 1     ; 2 uses
  %i.p = sdiv i32 %i.o, 8
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.p)
  %i.r = zext i8 %i.q to i32
  %i.s = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_control_header_cqi_control_info, align 4
  %i.t = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.s, ptr noundef %2, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = extractelement <4 x i32> %i.h, i64 2     ; 2 uses
  %i.v = sdiv i32 %i.u, 8
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.v)
  %i.x = zext i8 %i.w to i32
  %i.y = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_control_header_closed_mimo_control_info, align 4
  %i.z = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.y, ptr noundef %2, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = extractelement <4 x i32> %i.h, i64 3    ; 2 uses
  %i.ab = sdiv i32 %i.aa, 8
  %i.ac = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef %i.ab)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = srem <4 x i32> %i.h, splat (i32 8)
  %i.af = sub nsw <4 x i32> <i32 7, i32 7, i32 7, i32 14>, %i.ae ; 4 uses
  %i.ag = extractelement <4 x i32> %i.af, i64 3
  %i.ah = lshr i32 %i.ad, %i.ag
  %i.ai = and i32 %i.ah, 3
  store i32 %i.ai, ptr @N_layer, align 4
  %i.aj = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_n_layer, align 4
  %i.ak = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.aj, ptr noundef %2, i32 noundef %i.aa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.al = add i32 %1, 10                          ; 4 uses
  %i.am = extractelement <4 x i32> %i.af, i64 0
  %i.an = shl nuw nsw i32 1, %i.am
  %i.ao = and i32 %i.an, %i.l
  %.not = icmp eq i32 %i.ao, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = sdiv i32 %i.al, 8
  %i.aq = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef %i.ap)
  %i.ar = zext i16 %i.aq to i32
  %i.as = srem i32 %i.al, 8
  %i.at = sub nsw i32 14, %i.as
  %i.au = lshr i32 %i.ar, %i.at
  %i.av = and i32 %i.au, 3                        ; 2 uses
  %i.aw = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_matrix, align 4
  %i.ax = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.aw, ptr noundef %2, i32 noundef %i.al, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %1, 12                          ; 2 uses
  %i.az = load i32, ptr @STC_Zone_Dedicated_Pilots, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_num_beamformed_streams, align 4
  %i.bc = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.bb, ptr noundef %2, i32 noundef %i.ay, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bd = add i32 %1, 14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0128 = phi i32 [ %i.bd, %bb.c ], [ %i.ay, %bb.b ], [ %i.al, %bb.a ] ; 5 uses
  %.0127 = phi i32 [ %i.av, %bb.c ], [ %i.av, %bb.b ], [ 0, %bb.a ]
  %i.be = extractelement <4 x i32> %i.af, i64 1
  %i.bf = shl nuw nsw i32 1, %i.be
  %i.bg = and i32 %i.bf, %i.r
  %.not132 = icmp eq i32 %i.bg, 0
  br i1 %.not132, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_period, align 4
  %i.bi = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.bh, ptr noundef %2, i32 noundef %.0128, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %.0128, 3
  %i.bk = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_frame_offset, align 4
  %i.bl = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.bk, ptr noundef %2, i32 noundef %i.bj, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %.0128, 6
  %i.bn = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_duration, align 4
  %i.bo = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.bn, ptr noundef %2, i32 noundef %i.bm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %.0128, 10                      ; 2 uses
  %i.bq = load i32, ptr @N_layer, align 4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0138 = phi i32 [ %i.bv, %.lr.ph ], [ 0, %bb.e ]
  %.1129137 = phi i32 [ %i.bu, %.lr.ph ], [ %i.bp, %bb.e ] ; 2 uses
  %i.bs = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_allocation_index, align 4
  %i.bt = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.bs, ptr noundef %2, i32 noundef %.1129137, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bu = add i32 %.1129137, 6                    ; 2 uses
  %i.bv = add nuw nsw i32 %.0138, 1               ; 2 uses
  %i.bw = load i32, ptr @N_layer, align 4
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.1129.lcssa = phi i32 [ %i.bp, %bb.e ], [ %i.bu, %.lr.ph ] ; 4 uses
  %i.by = sdiv i32 %.1129.lcssa, 8
  %i.bz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef %i.by)
  %i.ca = zext i16 %i.bz to i32
  %i.cb = srem i32 %.1129.lcssa, 8
  %i.cc = sub nsw i32 14, %i.cb
  %i.cd = lshr i32 %i.ca, %i.cc
  %i.ce = and i32 %i.cd, 3                        ; 2 uses
  %i.cf = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_cqich_num, align 4
  %i.cg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.cf, ptr noundef %2, i32 noundef %.1129.lcssa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ch = add i32 %.1129.lcssa, 2                 ; 2 uses
  %.not144 = icmp eq i32 %i.ce, 0
  br i1 %.not144, label %.loopexit, label %.lr.ph142

.lr.ph142:                                        ; preds = %._crit_edge, %.lr.ph142
  %.1140 = phi i32 [ %i.co, %.lr.ph142 ], [ 0, %._crit_edge ]
  %.2139 = phi i32 [ %i.cn, %.lr.ph142 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %i.ci = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_feedback_type, align 4
  %i.cj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.ci, ptr noundef %2, i32 noundef %.2139, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ck = add i32 %.2139, 3
  %i.cl = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_allocation_index, align 4
  %i.cm = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.cl, ptr noundef %2, i32 noundef %i.ck, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cn = add i32 %.2139, 9                       ; 2 uses
  %i.co = add nuw nsw i32 %.1140, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %i.ce
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph142, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph142, %._crit_edge, %bb.d
  %.3 = phi i32 [ %.0128, %bb.d ], [ %i.ch, %._crit_edge ], [ %i.cn, %.lr.ph142 ] ; 7 uses
  %i.cp = extractelement <4 x i32> %i.af, i64 2
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = and i32 %i.cq, %i.x
  %.not133 = icmp eq i32 %i.cr, 0
  br i1 %.not133, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.cs = load i32, ptr @STC_Zone_Matrix, align 4
  %.0126 = select i1 %.not, i32 %i.cs, i32 %.0127 ; 2 uses
  %or.cond = icmp ult i32 %.0126, 2
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ct = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_antenna_grouping_index, align 4
  %i.cu = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.ct, ptr noundef %2, i32 noundef %.3, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.cv = add i32 %.3, 3
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.cw = icmp eq i32 %.0126, 2
  %i.cx = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_num_stream, align 4
  %i.cy = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.cx, ptr noundef %2, i32 noundef %.3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cz = add i32 %.3, 2                          ; 2 uses
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_antenna_selection_index, align 4
  %i.db = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.da, ptr noundef %2, i32 noundef %i.cz, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.dc = add i32 %.3, 5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dd = load i32, ptr @hf_dlmap_dedicated_mimo_dl_control_codebook_precoding_index, align 4
  %i.de = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.dd, ptr noundef %2, i32 noundef %i.cz, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.df = add i32 %.3, 8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %.loopexit
  %.4 = phi i32 [ %i.cv, %bb.g ], [ %i.dc, %bb.i ], [ %i.df, %bb.j ], [ %.3, %.loopexit ] ; 5 uses
  %i.dg = srem i32 %.4, 4                         ; 2 uses
  %.not134 = icmp eq i32 %i.dg, 0
end_hunk_0
