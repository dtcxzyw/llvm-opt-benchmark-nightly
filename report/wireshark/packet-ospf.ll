inline.NumInlined: 32
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_ospf_v3_lsa:bb.a
  %i.ja = add i32 %i.bd, %i.iz
  br label %.loopexit

bb.af:                                            ; preds = %bb.e
  %i.jb = load i32, ptr @hf_ospf_v3_lsa_num_prefixes, align 4
  %i.jc = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.jb, ptr noundef %0, i32 noundef %i.bd, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.jd = load i32, ptr @hf_ospf_v3_lsa_referenced_ls_type, align 4
  %i.je = add i32 %2, 22
  %i.jf = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.jd, ptr noundef %0, i32 noundef %i.je, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jg = load i32, ptr @hf_ospf_v3_lsa_referenced_link_state_id, align 4
  %i.jh = add i32 %2, 24
  %i.ji = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.jg, ptr noundef %0, i32 noundef %i.jh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jj = load i32, ptr @hf_ospf_referenced_advertising_router, align 4
  %i.jk = add i32 %2, 28
  %i.jl = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.jj, ptr noundef %0, i32 noundef %i.jk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jm = add i32 %2, 32                          ; 2 uses
  %i.jn = add i16 %i.g, -32
  %i.jo = zext i16 %i.jn to i32                   ; 2 uses
  call fastcc void @dissect_ospf6_e_lsa_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %i.jm, ptr noundef %i.n, i32 noundef %i.jo, i8 noundef zeroext %5)
  %i.jp = add i32 %i.jm, %i.jo
  br label %.loopexit

bb.ag:                                            ; preds = %bb.e
  %i.jq = load i32, ptr @hf_ospf_v3_router_lsa_flag, align 4
  %i.jr = load i32, ptr @ett_ospf_v3_router_lsa_flags, align 4
  %i.js = call ptr @proto_tree_add_bitmask(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.jq, i32 noundef %i.jr, ptr noundef nonnull @bf_v3_router_lsa_flags, i32 noundef 0) ; 0 uses
  %i.jt = add i32 %2, 21
  %i.ju = load i32, ptr @hf_ospf_v3_options, align 4
  %i.jv = load i32, ptr @ett_ospf_v3_options, align 4
  %i.jw = call ptr @proto_tree_add_bitmask(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.jt, i32 noundef %i.ju, i32 noundef %i.jv, ptr noundef nonnull @bf_v3_options, i32 noundef 0) ; 0 uses
  %i.jx = add i32 %2, 24                          ; 2 uses
  %i.jy = add i16 %i.g, -24
  %i.jz = zext i16 %i.jy to i32                   ; 2 uses
  call fastcc void @dissect_ospf6_e_lsa_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %i.jx, ptr noundef %i.n, i32 noundef %i.jz, i8 noundef zeroext %5)
  %i.ka = add i32 %i.jx, %i.jz
  br label %.loopexit

bb.ah:                                            ; preds = %bb.e
  %i.kb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bd)
  %i.kc = load i32, ptr @hf_ospf_header_reserved, align 4
  %i.kd = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.kc, ptr noundef %0, i32 noundef %i.bd, i32 noundef 1, i32 noundef 0)
  %.not.i268 = icmp eq i8 %i.kb, 0
  br i1 %.not.i268, label %dissect_ospf_v3_network_lsa_common.exit269, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ke = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.kd, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %dissect_ospf_v3_network_lsa_common.exit269

dissect_ospf_v3_network_lsa_common.exit269:       ; preds = %bb.ah, %bb.ai
  %i.kf = add i32 %2, 21
  %i.kg = load i32, ptr @hf_ospf_v3_options, align 4
  %i.kh = load i32, ptr @ett_ospf_v3_options, align 4
  %i.ki = call ptr @proto_tree_add_bitmask(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.kf, i32 noundef %i.kg, i32 noundef %i.kh, ptr noundef nonnull @bf_v3_options, i32 noundef 0) ; 0 uses
  %i.kj = add i32 %2, 24                          ; 2 uses
  %i.kk = add i16 %i.g, -24
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  call fastcc void @dissect_ospf6_e_lsa_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %i.kj, ptr noundef %i.n, i32 noundef %i.kl, i8 noundef zeroext %5)
  %i.km = add i32 %i.kj, %i.kl
  br label %.loopexit

bb.aj:                                            ; preds = %bb.e
  %i.kn = zext i16 %i.be to i32                   ; 2 uses
  call fastcc void @dissect_ospf6_e_lsa_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %i.bd, ptr noundef %i.n, i32 noundef %i.kn, i8 noundef zeroext %5)
  %i.ko = add i32 %i.bd, %i.kn
  br label %.loopexit

bb.ak:                                            ; preds = %bb.e
  %i.kp = load i32, ptr @hf_ospf_v3_lsa_router_priority, align 4
  %i.kq = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.kp, ptr noundef %0, i32 noundef %i.bd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kr = add i32 %2, 21
  %i.ks = load i32, ptr @hf_ospf_v3_options, align 4
  %i.kt = load i32, ptr @ett_ospf_v3_options, align 4
  %i.ku = call ptr @proto_tree_add_bitmask(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.kr, i32 noundef %i.ks, i32 noundef %i.kt, ptr noundef nonnull @bf_v3_options, i32 noundef 0) ; 0 uses
  %i.kv = add i32 %2, 24                          ; 2 uses
  %i.kw = add i16 %i.g, -24
  %i.kx = zext i16 %i.kw to i32                   ; 2 uses
  call fastcc void @dissect_ospf6_e_lsa_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %i.kv, ptr noundef %i.n, i32 noundef %i.kx, i8 noundef zeroext %5)
  %i.ky = add i32 %i.kv, %i.kx
  br label %.loopexit

bb.al:                                            ; preds = %bb.e
  %i.kz = zext i16 %i.be to i32                   ; 2 uses
  call fastcc void @dissect_ospf_lsa_grace_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %i.bd, ptr noundef %i.n, i32 noundef %i.kz, i8 noundef zeroext 3)
  %i.la = add i32 %i.bd, %i.kz
  br label %.loopexit

bb.am:                                            ; preds = %bb.e
  %i.lb = load ptr, ptr %i.a, align 8
  %i.lc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.lb, ptr noundef nonnull @ei_ospf_lsa_unknown_type, ptr noundef nonnull @.str.822, i32 noundef %i.l) ; 0 uses
  %i.ld = zext i16 %i.be to i32
  %i.le = add i32 %i.bd, %i.ld
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.ac, %.lr.ph425, %bb.h, %bb.f, %bb.ad, %bb.aa, %dissect_ospf_v3_network_lsa_common.exit, %bb.o, %bb.t, %bb.ae, %bb.af, %bb.ag, %dissect_ospf_v3_network_lsa_common.exit269, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.z, %bb.y, %proto_item_set_hidden.exit
  %.6 = phi i32 [ %i.le, %bb.am ], [ %i.bd, %proto_item_set_hidden.exit ], [ %i.bm, %bb.f ], [ %i.ed, %bb.o ], [ %i.ex, %bb.t ], [ %i.gm, %bb.z ], [ %.3, %bb.y ], [ %i.dd, %.lr.ph425 ], [ %i.hs, %bb.ac ], [ %i.ja, %bb.ae ], [ %i.jp, %bb.af ], [ %i.ka, %bb.ag ], [ %i.km, %dissect_ospf_v3_network_lsa_common.exit269 ], [ %i.ko, %bb.aj ], [ %i.ky, %bb.ak ], [ %i.la, %bb.al ], [ %i.co, %bb.h ], [ %i.cy, %dissect_ospf_v3_network_lsa_common.exit ], [ %i.ha, %bb.aa ], [ %i.ig, %bb.ad ], [ %i.iw, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.6
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ospf_lsa_mpls(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 1, 65516) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = load i32, ptr @ett_ospf_lsa_mpls, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef %4, i32 noundef %i.c, ptr noundef null, ptr noundef nonnull @.str.175) ; 4 uses
  %i.e = load i32, ptr @hf_ospf_ls_mpls, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.h, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 28       ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %i.l = getelementptr i8, ptr %1, i64 416        ; 11 uses
  br label %bb.d

bb.d:                                             ; preds = %proto_item_set_hidden.exit, %.loopexit
  %.09491016 = phi i32 [ %4, %proto_item_set_hidden.exit ], [ %i.zv, %.loopexit ]
  %.09501015 = phi i32 [ %2, %proto_item_set_hidden.exit ], [ %i.zu, %.loopexit ] ; 12 uses
  %i.m = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.09501015) ; 2 uses
  %i.n = add i32 %.09501015, 2                    ; 5 uses
  %i.o = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.n)
  %i.p = zext i16 %i.o to i32                     ; 6 uses
  %i.q = add i32 %.09501015, 4                    ; 8 uses
  %i.r = add i32 %i.q, %i.p                       ; 4 uses
  switch i16 %i.m, label %bb.bq [
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 -32768, label %bb.bh
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw nsw i32 %i.p, 4                  ; 2 uses
  %i.t = load i32, ptr @ett_ospf_lsa_mpls_router, align 4
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = call ptr @tvb_address_to_str(ptr noundef %i.u, ptr noundef %0, i32 noundef 2, i32 noundef %i.q)
  %i.w = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.d, ptr noundef %0, i32 noundef %.09501015, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef nonnull @.str.832, ptr noundef %i.v) ; 3 uses
  %i.x = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.y = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef %.09501015, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @.str.833) ; 0 uses
  %i.z = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_ospf_ls_mpls_routerid, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.p, 4                 ; 3 uses
  %i.ae = load i32, ptr @ett_ospf_lsa_mpls_link, align 4
  %i.af = call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.09501015, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef null, ptr noundef nonnull @.str.834) ; 22 uses
  %i.ag = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.ah = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.af, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.09501015, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @.str.835) ; 0 uses
  %i.ai = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ak = icmp slt i32 %i.q, %i.r
  br i1 %i.ak, label %.lr.ph1014, label %.loopexit

.lr.ph1014:                                       ; preds = %bb.f, %dissect_ospf_subtlv_ext_admin_group.exit
  %.09471012 = phi i32 [ %i.wd, %dissect_ospf_subtlv_ext_admin_group.exit ], [ %i.q, %bb.f ] ; 118 uses
  %i.al = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.09471012) ; 3 uses
  %i.am = zext i16 %i.al to i32                   ; 10 uses
  %i.an = add i32 %.09471012, 2                   ; 22 uses
  %i.ao = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.an) ; 4 uses
  %i.ap = zext i16 %i.ao to i32                   ; 12 uses
  %i.aq = call ptr @val_to_str_const(i32 noundef %i.am, ptr noundef nonnull @mpls_link_stlv_str, ptr noundef nonnull @.str.836) ; 41 uses
  %i.ar = add nuw nsw i32 %i.ap, 4                ; 20 uses
  %i.as = load i32, ptr @ett_ospf_lsa_mpls_link_stlv, align 4 ; 20 uses
  switch i16 %i.al, label %bb.bg [
    i16 1, label %bb.g
    i16 2, label %bb.h
    i16 3, label %bb.i
    i16 4, label %bb.i
    i16 5, label %bb.k
    i16 9, label %bb.l
    i16 6, label %bb.o
    i16 7, label %bb.o
    i16 8, label %dissect_ospf_subtlv_ext_admin_group.exit.loopexit1020
    i16 17, label %bb.p
    i16 11, label %bb.y
    i16 15, label %bb.z
    i16 14, label %bb.an
    i16 16, label %bb.ao
    i16 26, label %bb.aq
    i16 27, label %bb.ar
    i16 28, label %bb.au
    i16 29, label %bb.az
    i16 -32763, label %bb.bc
    i16 -32762, label %bb.bd
    i16 -32761, label %bb.be
  ]

bb.g:                                             ; preds = %.lr.ph1014
  %i.at = add i32 %.09471012, 4                   ; 3 uses
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.at)
  %i.av = zext i8 %i.au to i32
  %i.aw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.at)
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call ptr @val_to_str_const(i32 noundef %i.ax, ptr noundef nonnull @mpls_link_stlv_ltype_str, ptr noundef nonnull @.str.838)
  %i.az = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.837, ptr noundef %i.aq, i32 noundef %i.av, ptr noundef %i.ay) ; 3 uses
  %i.ba = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.bb = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.az, i32 noundef %i.ba, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @.str.839, i32 noundef 1, ptr noundef %i.aq) ; 0 uses
  %i.bc = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %i.az, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.be = load i32, ptr @hf_ospf_ls_mpls_linktype, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.az, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.h:                                             ; preds = %.lr.ph1014
  %i.bg = load ptr, ptr %i.l, align 8
  %i.bh = add i32 %.09471012, 4                   ; 2 uses
  %i.bi = call ptr @tvb_address_to_str(ptr noundef %i.bg, ptr noundef %0, i32 noundef 2, i32 noundef %i.bh)
  %i.bj = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.840, ptr noundef %i.aq, ptr noundef %i.bi) ; 3 uses
  %i.bk = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.bl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @.str.839, i32 noundef 2, ptr noundef %i.aq) ; 0 uses
  %i.bm = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.bj, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bo = load i32, ptr @hf_ospf_ls_mpls_linkid, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %i.bj, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bh, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.i:                                             ; preds = %.lr.ph1014, %.lr.ph1014
  %i.bq = load ptr, ptr %i.l, align 8
  %i.br = add i32 %.09471012, 4                   ; 2 uses
  %i.bs = call ptr @tvb_address_to_str(ptr noundef %i.bq, ptr noundef %0, i32 noundef 2, i32 noundef %i.br)
  %i.bt = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.840, ptr noundef %i.aq, ptr noundef %i.bs) ; 3 uses
  %i.bu = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.bv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bt, i32 noundef %i.bu, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef %i.am, ptr noundef nonnull @.str.839, i32 noundef %i.am, ptr noundef %i.aq) ; 0 uses
  %i.bw = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not1018 = icmp eq i16 %i.ao, 0
  br i1 %.not1018, label %dissect_ospf_subtlv_ext_admin_group.exit, label %.lr.ph1011

.lr.ph1011:                                       ; preds = %bb.i
  %i.by = icmp eq i16 %i.al, 3
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1011, %bb.j
  %.01009 = phi i32 [ 0, %.lr.ph1011 ], [ %i.ce, %bb.j ] ; 2 uses
  %i.bz = load i32, ptr @hf_ospf_ls_mpls_local_addr, align 4
  %i.ca = load i32, ptr @hf_ospf_ls_mpls_remote_addr, align 4
  %i.cb = select i1 %i.by, i32 %i.bz, i32 %i.ca
  %i.cc = add i32 %.01009, %i.br
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cb, ptr noundef %0, i32 noundef %i.cc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ce = add nuw nsw i32 %.01009, 4              ; 2 uses
  %i.cf = icmp samesign ult i32 %i.ce, %i.ap
  br i1 %i.cf, label %bb.j, label %dissect_ospf_subtlv_ext_admin_group.exit, !llvm.loop !40

bb.k:                                             ; preds = %.lr.ph1014
  %i.cg = add i32 %.09471012, 4                   ; 4 uses
  %i.ch = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cg)
  %i.ci = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.841, ptr noundef %i.aq, i32 noundef %i.ch) ; 3 uses
  %i.cj = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.ck = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ci, i32 noundef %i.cj, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.839, i32 noundef 5, ptr noundef %i.aq) ; 0 uses
  %i.cl = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef %i.ci, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_ospf_ls_mpls_te_metric, align 4
  %i.co = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cg)
  %i.cp = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cg)
  %i.cq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ci, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.cg, i32 noundef 4, i32 noundef %i.co, ptr noundef nonnull @.str.841, ptr noundef %i.aq, i32 noundef %i.cp) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.l:                                             ; preds = %.lr.ph1014
  %i.cr = add i32 %.09471012, 4                   ; 4 uses
  %i.cs = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cr)
  %i.ct = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.842, ptr noundef %i.aq, i32 noundef %i.cs) ; 3 uses
  %i.cu = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.cv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ct, i32 noundef %i.cu, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 9, ptr noundef nonnull @.str.839, i32 noundef 9, ptr noundef %i.aq) ; 0 uses
  %i.cw = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.ct, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cy = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cr)
  %i.cz = load i32, ptr @hf_ospf_ls_mpls_linkcolor, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %i.ct, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.cr, i32 noundef 4, i32 noundef 0)
  %i.db = load i32, ptr @ett_ospf_lsa_mpls_link_stlv_admingrp, align 4
  %i.dc = call ptr @proto_item_add_subtree(ptr noundef %i.da, i32 noundef %i.db) ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.loopexit985, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.n
  %.11008 = phi i32 [ %i.dj, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.09421007 = phi i32 [ %i.di, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %i.de = and i32 %.09421007, %i.cy
  %.not974 = icmp eq i32 %i.de, 0
  br i1 %.not974, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.df = load i32, ptr @hf_ospf_ls_mpls_group, align 4
  %i.dg = shl nuw i32 1, %.11008
  %i.dh = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %i.dc, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.cr, i32 noundef 4, i32 noundef %i.dg, ptr noundef nonnull @.str.843, i32 noundef %.11008) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader
  %i.di = shl i32 %.09421007, 1
  %i.dj = add nuw nsw i32 %.11008, 1              ; 2 uses
  %exitcond1035.not = icmp eq i32 %i.dj, 32
  br i1 %exitcond1035.not, label %dissect_ospf_subtlv_ext_admin_group.exit, label %.preheader, !llvm.loop !41

bb.o:                                             ; preds = %.lr.ph1014, %.lr.ph1014
  %i.dk = add i32 %.09471012, 4                   ; 6 uses
  %i.dl = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.dk)
  %i.dm = fpext float %i.dl to double
  %i.dn = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.dk)
  %i.do = fpext float %i.dn to double
  %i.dp = fmul double %i.do, 8.000000e+00
  %i.dq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.844, ptr noundef %i.aq, double noundef %i.dm, double noundef %i.dp) ; 3 uses
  %i.dr = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.ds = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.dq, i32 noundef %i.dr, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef %i.am, ptr noundef nonnull @.str.839, i32 noundef %i.am, ptr noundef %i.aq) ; 0 uses
  %i.dt = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.dt, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dv = load i32, ptr @hf_ospf_ls_mpls_link_max_bw, align 4
  %i.dw = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.dk)
  %i.dx = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.dk)
  %i.dy = fpext float %i.dx to double
  %i.dz = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.dk)
  %i.ea = fpext float %i.dz to double
  %i.eb = fmul double %i.ea, 8.000000e+00
  %i.ec = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.dq, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.dk, i32 noundef 4, float noundef %i.dw, ptr noundef nonnull @.str.844, ptr noundef %i.aq, double noundef %i.dy, double noundef %i.eb) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

dissect_ospf_subtlv_ext_admin_group.exit.loopexit1020: ; preds = %.lr.ph1014
  %i.ed = call ptr @proto_tree_add_subtree(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef %i.aq) ; 10 uses
  %i.ee = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.ef = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ed, i32 noundef %i.ee, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 8, ptr noundef nonnull @.str.839, i32 noundef 8, ptr noundef %i.aq) ; 0 uses
  %i.eg = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.eg, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ei = add i32 %.09471012, 4                   ; 2 uses
  %i.ej = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.ei) ; 2 uses
  %i.ek = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.el = fpext float %i.ej to double             ; 2 uses
  %i.em = fmul double %i.el, 8.000000e+00
  %i.en = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.ed, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.ei, i32 noundef 4, float noundef %i.ej, ptr noundef nonnull @.str.845, i32 noundef 0, double noundef %i.el, double noundef %i.em) ; 0 uses
  %i.eo = add i32 %.09471012, 8                   ; 2 uses
  %i.ep = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.eo) ; 2 uses
  %i.eq = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.er = fpext float %i.ep to double             ; 2 uses
  %i.es = fmul double %i.er, 8.000000e+00
  %i.et = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.ed, i32 noundef %i.eq, ptr noundef %0, i32 noundef %i.eo, i32 noundef 4, float noundef %i.ep, ptr noundef nonnull @.str.845, i32 noundef 1, double noundef %i.er, double noundef %i.es) ; 0 uses
  %i.eu = add i32 %.09471012, 12                  ; 2 uses
  %i.ev = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.eu) ; 2 uses
  %i.ew = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.ex = fpext float %i.ev to double             ; 2 uses
  %i.ey = fmul double %i.ex, 8.000000e+00
  %i.ez = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.ed, i32 noundef %i.ew, ptr noundef %0, i32 noundef %i.eu, i32 noundef 4, float noundef %i.ev, ptr noundef nonnull @.str.845, i32 noundef 2, double noundef %i.ex, double noundef %i.ey) ; 0 uses
  %i.fa = add i32 %.09471012, 16                  ; 2 uses
  %i.fb = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.fa) ; 2 uses
  %i.fc = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.fd = fpext float %i.fb to double             ; 2 uses
  %i.fe = fmul double %i.fd, 8.000000e+00
  %i.ff = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.ed, i32 noundef %i.fc, ptr noundef %0, i32 noundef %i.fa, i32 noundef 4, float noundef %i.fb, ptr noundef nonnull @.str.845, i32 noundef 3, double noundef %i.fd, double noundef %i.fe) ; 0 uses
  %i.fg = add i32 %.09471012, 20                  ; 2 uses
  %i.fh = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.fg) ; 2 uses
  %i.fi = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.fj = fpext float %i.fh to double             ; 2 uses
  %i.fk = fmul double %i.fj, 8.000000e+00
  %i.fl = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.ed, i32 noundef %i.fi, ptr noundef %0, i32 noundef %i.fg, i32 noundef 4, float noundef %i.fh, ptr noundef nonnull @.str.845, i32 noundef 4, double noundef %i.fj, double noundef %i.fk) ; 0 uses
  %i.fm = add i32 %.09471012, 24                  ; 2 uses
  %i.fn = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.fm) ; 2 uses
  %i.fo = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.fp = fpext float %i.fn to double             ; 2 uses
  %i.fq = fmul double %i.fp, 8.000000e+00
  %i.fr = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %i.ed, i32 noundef %i.fo, ptr noundef %0, i32 noundef %i.fm, i32 noundef 4, float noundef %i.fn, ptr noundef nonnull @.str.845, i32 noundef 5, double noundef %i.fp, double noundef %i.fq) ; 0 uses
  %i.fs = add i32 %.09471012, 28                  ; 2 uses
  %i.ft = call float @tvb_get_ntohieee_float(ptr noundef %0, i32 noundef %i.fs) ; 2 uses
  %i.fu = load i32, ptr @hf_ospf_ls_mpls_pri, align 4
  %i.fv = fpext float %i.ft to double             ; 2 uses
end_hunk_0
begin_hunk_1_@dissect_ospf_lsa_mpls:bb.a
  %i.qg = icmp slt i32 %.pre1049, %i.pm
  br i1 %i.qg, label %.lr.ph1003, label %dissect_ospf_subtlv_ext_admin_group.exit

.lr.ph1003:                                       ; preds = %bb.am, %.lr.ph1003
  %.29451001 = phi i32 [ %i.qj, %.lr.ph1003 ], [ %.pre1049, %bb.am ] ; 2 uses
  %i.qh = load i32, ptr @hf_ospf_mpls_bitmap, align 4
  %i.qi = call ptr @proto_tree_add_item(ptr noundef %i.hw, i32 noundef %i.qh, ptr noundef %0, i32 noundef %.29451001, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qj = add i32 %.29451001, 4                   ; 2 uses
  %i.qk = icmp slt i32 %i.qj, %i.pm
  br i1 %i.qk, label %.lr.ph1003, label %dissect_ospf_subtlv_ext_admin_group.exit, !llvm.loop !45

bb.an:                                            ; preds = %.lr.ph1014
  %i.ql = call ptr @proto_tree_add_subtree(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef %i.aq) ; 3 uses
  %i.qm = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.qn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ql, i32 noundef %i.qm, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 14, ptr noundef nonnull @.str.839, i32 noundef 14, ptr noundef %i.aq) ; 0 uses
  %i.qo = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.qp = call ptr @proto_tree_add_item(ptr noundef %i.ql, i32 noundef %i.qo, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qq = load i32, ptr @hf_ospf_mpls_protection_capability, align 4
  %i.qr = add i32 %.09471012, 4
  %i.qs = call ptr @proto_tree_add_item(ptr noundef %i.ql, i32 noundef %i.qq, ptr noundef %0, i32 noundef %i.qr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.ao:                                            ; preds = %.lr.ph1014
  %i.qt = call ptr @proto_tree_add_subtree(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef %i.aq) ; 3 uses
  %i.qu = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.qv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.qt, i32 noundef %i.qu, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 16, ptr noundef nonnull @.str.839, i32 noundef 16, ptr noundef %i.aq) ; 0 uses
  %i.qw = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.qx = call ptr @proto_tree_add_item(ptr noundef %i.qt, i32 noundef %i.qw, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not1017 = icmp eq i16 %i.ao, 0
  br i1 %.not1017, label %dissect_ospf_subtlv_ext_admin_group.exit, label %.lr.ph993

.lr.ph993:                                        ; preds = %bb.ao
  %i.qy = add i32 %.09471012, 4
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph993, %bb.ap
  %.5992 = phi i32 [ 0, %.lr.ph993 ], [ %i.rc, %bb.ap ] ; 2 uses
  %i.qz = load i32, ptr @hf_ospf_mpls_shared_risk_link_group, align 4
  %i.ra = add i32 %i.qy, %.5992
  %i.rb = call ptr @proto_tree_add_item(ptr noundef %i.qt, i32 noundef %i.qz, ptr noundef %0, i32 noundef %i.ra, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rc = add nuw nsw i32 %.5992, 4               ; 2 uses
  %i.rd = icmp samesign ult i32 %i.rc, %i.ap
  br i1 %i.rd, label %bb.ap, label %dissect_ospf_subtlv_ext_admin_group.exit, !llvm.loop !46

bb.aq:                                            ; preds = %.lr.ph1014
  %i.re = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.857, ptr noundef %i.aq) ; 3 uses
  %i.rf = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.rg = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.re, i32 noundef %i.rf, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 26, ptr noundef nonnull @.str.839, i32 noundef 26, ptr noundef %i.aq) ; 0 uses
  %i.rh = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.ri = call ptr @proto_tree_add_item(ptr noundef %i.re, i32 noundef %i.rh, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rj = add i32 %.09471012, 4
  %i.rk = lshr i32 %i.ap, 2                       ; 2 uses
  %.not.i975 = icmp eq i32 %i.rk, 0
  br i1 %.not.i975, label %dissect_ospf_subtlv_ext_admin_group.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.i
  %.012.i = phi i32 [ %i.rq, %.lr.ph.i ], [ 0, %bb.aq ] ; 3 uses
  %i.rl = shl nuw nsw i32 %.012.i, 2
  %i.rm = add i32 %i.rj, %i.rl                    ; 2 uses
  %i.rn = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.rm, i32 noundef 0) ; 2 uses
  %i.ro = load i32, ptr @hf_ospf_ls_ext_admin_group, align 4
  %i.rp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.re, i32 noundef %i.ro, ptr noundef %0, i32 noundef %i.rm, i32 noundef 4, i32 noundef %i.rn, ptr noundef nonnull @.str.892, i32 noundef %.012.i, i32 noundef %i.rn) ; 0 uses
  %i.rq = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rq, %i.rk
  br i1 %exitcond.not.i, label %dissect_ospf_subtlv_ext_admin_group.exit, label %.lr.ph.i, !llvm.loop !30

bb.ar:                                            ; preds = %.lr.ph1014
  %i.rr = add i32 %.09471012, 5                   ; 2 uses
  %i.rs = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.rr, i32 noundef 0)
  %i.rt = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.858, ptr noundef %i.aq, i32 noundef %i.rs) ; 4 uses
  %i.ru = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.rv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.rt, i32 noundef %i.ru, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 27, ptr noundef nonnull @.str.839, i32 noundef 27, ptr noundef %i.aq) ; 0 uses
  %i.rw = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.rx = call ptr @proto_tree_add_item(ptr noundef %i.rt, i32 noundef %i.rw, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ry = add i32 %.09471012, 4
  %i.rz = load i32, ptr @hf_ospf_ls_unidir_link_flags, align 4
  %i.sa = load i32, ptr @ett_ospf_lsa_unidir_link_flags, align 4
  %i.sb = call ptr @proto_tree_add_bitmask(ptr noundef %i.rt, ptr noundef %0, i32 noundef %i.ry, i32 noundef %i.rz, i32 noundef %i.sa, ptr noundef nonnull @unidir_link_flags, i32 noundef 0)
  %i.sc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.09471012)
  %i.sd = and i8 %i.sc, 127                       ; 2 uses
  %i.se = zext nneg i8 %i.sd to i32
  store i32 %i.se, ptr %i.a, align 4
  %.not972 = icmp eq i8 %i.sd, 0
  br i1 %.not972, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.sb, ptr noundef nonnull @ei_ospf_header_reserved, ptr noundef nonnull @.str.859) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sg = load i32, ptr @hf_ospf_ls_unidir_link_delay, align 4
  %i.sh = call ptr @proto_tree_add_item(ptr noundef %i.rt, i32 noundef %i.sg, ptr noundef %0, i32 noundef %i.rr, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.au:                                            ; preds = %.lr.ph1014
  %i.si = add i32 %.09471012, 5                   ; 2 uses
  %i.sj = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.si, i32 noundef 0)
  %i.sk = add i32 %.09471012, 9                   ; 2 uses
  %i.sl = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.sk, i32 noundef 0)
  %i.sm = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.860, ptr noundef %i.aq, i32 noundef %i.sj, i32 noundef %i.sl) ; 6 uses
  %i.sn = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.so = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.sm, i32 noundef %i.sn, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 28, ptr noundef nonnull @.str.839, i32 noundef 28, ptr noundef %i.aq) ; 0 uses
  %i.sp = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.sq = call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.sp, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sr = add i32 %.09471012, 4
  %i.ss = load i32, ptr @hf_ospf_ls_unidir_link_flags, align 4
  %i.st = load i32, ptr @ett_ospf_lsa_unidir_link_flags, align 4
  %i.su = call ptr @proto_tree_add_bitmask(ptr noundef %i.sm, ptr noundef %0, i32 noundef %i.sr, i32 noundef %i.ss, i32 noundef %i.st, ptr noundef nonnull @unidir_link_flags, i32 noundef 0)
  %i.sv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.09471012)
  %i.sw = and i8 %i.sv, 127                       ; 2 uses
  %i.sx = zext nneg i8 %i.sw to i32
  store i32 %i.sx, ptr %i.a, align 4
  %.not970 = icmp eq i8 %i.sw, 0
  br i1 %.not970, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sy = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.su, ptr noundef nonnull @ei_ospf_header_reserved, ptr noundef nonnull @.str.859) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.sz = load i32, ptr @hf_ospf_ls_unidir_link_delay_min, align 4
  %i.ta = call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.sz, ptr noundef %0, i32 noundef %i.si, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.tb = load i32, ptr @hf_ospf_ls_unidir_link_reserved, align 4
  %i.tc = add i32 %.09471012, 8
  %i.td = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.sm, i32 noundef %i.tb, ptr noundef %0, i32 noundef %i.tc, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.te = load i32, ptr %i.a, align 4
  %.not971 = icmp eq i32 %i.te, 0
  br i1 %.not971, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.tf = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.td, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.tg = load i32, ptr @hf_ospf_ls_unidir_link_delay_max, align 4
  %i.th = call ptr @proto_tree_add_item(ptr noundef %i.sm, i32 noundef %i.tg, ptr noundef %0, i32 noundef %i.sk, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.az:                                            ; preds = %.lr.ph1014
  %i.ti = add i32 %.09471012, 5                   ; 2 uses
  %i.tj = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.ti, i32 noundef 0)
  %i.tk = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.858, ptr noundef %i.aq, i32 noundef %i.tj) ; 4 uses
  %i.tl = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.tm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.tk, i32 noundef %i.tl, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 29, ptr noundef nonnull @.str.839, i32 noundef 29, ptr noundef %i.aq) ; 0 uses
  %i.tn = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.to = call ptr @proto_tree_add_item(ptr noundef %i.tk, i32 noundef %i.tn, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tp = load i32, ptr @hf_ospf_ls_unidir_link_reserved, align 4
  %i.tq = add i32 %.09471012, 4
  %i.tr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.tk, i32 noundef %i.tp, ptr noundef %0, i32 noundef %i.tq, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.ts = load i32, ptr %i.a, align 4
  %.not969 = icmp eq i32 %i.ts, 0
  br i1 %.not969, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.tt = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.tr, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.tu = load i32, ptr @hf_ospf_ls_unidir_delay_variation, align 4
  %i.tv = call ptr @proto_tree_add_item(ptr noundef %i.tk, i32 noundef %i.tu, ptr noundef %0, i32 noundef %i.ti, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.bc:                                            ; preds = %.lr.ph1014
  %i.tw = load ptr, ptr %i.l, align 8
  %i.tx = add i32 %.09471012, 4                   ; 2 uses
  %i.ty = call ptr @tvb_address_to_str(ptr noundef %i.tw, ptr noundef %0, i32 noundef 2, i32 noundef %i.tx)
  %i.tz = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.840, ptr noundef %i.aq, ptr noundef %i.ty) ; 3 uses
  %i.ua = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.ub = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.tz, i32 noundef %i.ua, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 32773, ptr noundef nonnull @.str.839, i32 noundef 32773, ptr noundef %i.aq) ; 0 uses
  %i.uc = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.ud = call ptr @proto_tree_add_item(ptr noundef %i.tz, i32 noundef %i.uc, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ue = load i32, ptr @hf_ospf_ls_oif_local_node_id, align 4
  %i.uf = call ptr @proto_tree_add_item(ptr noundef %i.tz, i32 noundef %i.ue, ptr noundef %0, i32 noundef %i.tx, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.bd:                                            ; preds = %.lr.ph1014
  %i.ug = load ptr, ptr %i.l, align 8
  %i.uh = add i32 %.09471012, 4                   ; 2 uses
  %i.ui = call ptr @tvb_address_to_str(ptr noundef %i.ug, ptr noundef %0, i32 noundef 2, i32 noundef %i.uh)
  %i.uj = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.840, ptr noundef %i.aq, ptr noundef %i.ui) ; 3 uses
  %i.uk = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.ul = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.uj, i32 noundef %i.uk, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 32774, ptr noundef nonnull @.str.839, i32 noundef 32774, ptr noundef %i.aq) ; 0 uses
  %i.um = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.un = call ptr @proto_tree_add_item(ptr noundef %i.uj, i32 noundef %i.um, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uo = load i32, ptr @hf_ospf_ls_oif_remote_node_id, align 4
  %i.up = call ptr @proto_tree_add_item(ptr noundef %i.uj, i32 noundef %i.uo, ptr noundef %0, i32 noundef %i.uh, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

bb.be:                                            ; preds = %.lr.ph1014
  %i.uq = call ptr @proto_tree_add_subtree(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef %i.aq) ; 5 uses
  %i.ur = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.us = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.uq, i32 noundef %i.ur, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef 32775, ptr noundef nonnull @.str.839, i32 noundef 32775, ptr noundef %i.aq) ; 0 uses
  %i.ut = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.uu = call ptr @proto_tree_add_item(ptr noundef %i.uq, i32 noundef %i.ut, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uv = load i32, ptr @hf_ospf_oif_switching_cap, align 4
  %i.uw = add i32 %.09471012, 4
  %i.ux = call ptr @proto_tree_add_item(ptr noundef %i.uq, i32 noundef %i.uv, ptr noundef %0, i32 noundef %i.uw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.uy = load i32, ptr @hf_ospf_oif_encoding, align 4
  %i.uz = add i32 %.09471012, 5
  %i.va = call ptr @proto_tree_add_item(ptr noundef %i.uq, i32 noundef %i.uy, ptr noundef %0, i32 noundef %i.uz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %5 = add nsw i32 %i.ap, -4
  %6 = sdiv i32 %5, 4
  %i.vb = icmp ugt i16 %i.ao, 7
  br i1 %i.vb, label %.lr.ph991, label %dissect_ospf_subtlv_ext_admin_group.exit

.lr.ph991:                                        ; preds = %bb.be
  %i.vc = add i32 %.09471012, 8
  %i.vd = add i32 %.09471012, 9
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph991, %bb.bf
  %.6990 = phi i32 [ 0, %.lr.ph991 ], [ %i.vq, %bb.bf ] ; 2 uses
  %i.ve = load i32, ptr @hf_ospf_oif_signal_type, align 4
  %i.vf = shl nuw nsw i32 %.6990, 2               ; 2 uses
  %i.vg = add i32 %i.vc, %i.vf                    ; 3 uses
  %i.vh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.vg)
  %i.vi = zext i8 %i.vh to i32
  %i.vj = load ptr, ptr %i.l, align 8
  %i.vk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.vg)
  %i.vl = zext i8 %i.vk to i32
  %i.vm = call ptr @val_to_str_ext(ptr noundef %i.vj, i32 noundef %i.vl, ptr noundef nonnull @gmpls_sonet_signal_type_str_ext, ptr noundef nonnull @.str.862)
  %i.vn = add i32 %i.vd, %i.vf
  %i.vo = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.vn)
  %i.vp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.uq, i32 noundef %i.ve, ptr noundef %0, i32 noundef %i.vg, i32 noundef 4, i32 noundef %i.vi, ptr noundef nonnull @.str.861, ptr noundef %i.vm, i32 noundef %i.vo) ; 0 uses
  %i.vq = add nuw nsw i32 %.6990, 1               ; 2 uses
  %7 = icmp slt i32 %i.vq, %6
  br i1 %7, label %bb.bf, label %dissect_ospf_subtlv_ext_admin_group.exit, !llvm.loop !47

bb.bg:                                            ; preds = %.lr.ph1014
  %i.vr = call ptr @rval_to_str_const(i32 noundef %i.am, ptr noundef nonnull @mpls_te_sub_tlv_rvals, ptr noundef nonnull @.str.777)
  %i.vs = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.af, ptr noundef %0, i32 noundef %.09471012, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.863, i32 noundef %i.am, ptr noundef %i.vr) ; 3 uses
  %i.vt = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.vu = call ptr @rval_to_str_const(i32 noundef %i.am, ptr noundef nonnull @mpls_te_sub_tlv_rvals, ptr noundef nonnull @.str.777)
  %i.vv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.vs, i32 noundef %i.vt, ptr noundef %0, i32 noundef %.09471012, i32 noundef 2, i32 noundef %i.am, ptr noundef nonnull @.str.864, i32 noundef %i.am, ptr noundef %i.aq, ptr noundef %i.vu) ; 0 uses
  %i.vw = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.vx = call ptr @proto_tree_add_item(ptr noundef %i.vs, i32 noundef %i.vw, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vy = load i32, ptr @hf_ospf_tlv_value, align 4
  %i.vz = add i32 %.09471012, 4
  %i.wa = call ptr @proto_tree_add_item(ptr noundef %i.vs, i32 noundef %i.vy, ptr noundef %0, i32 noundef %i.vz, i32 noundef %i.ap, i32 noundef 0) ; 0 uses
  br label %dissect_ospf_subtlv_ext_admin_group.exit

dissect_ospf_subtlv_ext_admin_group.exit:         ; preds = %bb.bf, %.lr.ph.i, %bb.ap, %.lr.ph1003, %.lr.ph999, %.lr.ph996, %bb.x, %bb.n, %bb.j, %bb.al, %bb.af, %dissect_ospf_subtlv_ext_admin_group.exit.loopexit1020, %bb.be, %bb.ao, %bb.am, %bb.i, %bb.ag, %bb.ae, %bb.ad, %bb.aq, %bb.ac, %bb.ab, %bb.bg, %bb.bd, %bb.bc, %bb.bb, %bb.ay, %bb.at, %bb.an, %bb.y, %bb.w, %bb.u, %bb.s, %bb.o, %bb.k, %bb.h, %bb.g
  %i.wb = add nuw nsw i32 %i.ap, 7
  %i.wc = and i32 %i.wb, 131068
  %i.wd = add i32 %i.wc, %.09471012               ; 2 uses
  %i.we = icmp slt i32 %i.wd, %i.r
  br i1 %i.we, label %.lr.ph1014, label %.loopexit, !llvm.loop !48

bb.bh:                                            ; preds = %bb.d
  %i.wf = add nuw nsw i32 %i.p, 4                 ; 4 uses
  %i.wg = load i32, ptr @ett_ospf_lsa_oif_tna, align 4
  %i.wh = call ptr @proto_tree_add_subtree(ptr noundef %i.d, ptr noundef %0, i32 noundef %.09501015, i32 noundef %i.wf, i32 noundef %i.wg, ptr noundef null, ptr noundef nonnull @.str.865) ; 8 uses
  %i.wi = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.wj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.wh, i32 noundef %i.wi, ptr noundef %0, i32 noundef %.09501015, i32 noundef 2, i32 noundef 32768, ptr noundef nonnull @.str.866) ; 0 uses
  %i.wk = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.wl = call ptr @proto_tree_add_item(ptr noundef %i.wh, i32 noundef %i.wk, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.wm = icmp slt i32 %i.q, %i.r
  br i1 %i.wm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bh, %bb.bp
  %.1948989 = phi i32 [ %i.zg, %bb.bp ], [ %i.q, %bb.bh ] ; 19 uses
  %i.wn = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1948989) ; 2 uses
  %i.wo = zext i16 %i.wn to i32                   ; 2 uses
  %i.wp = add i32 %.1948989, 2                    ; 6 uses
  %i.wq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.wp) ; 2 uses
  %i.wr = zext i16 %i.wq to i32                   ; 6 uses
  %i.ws = icmp ult i16 %i.wq, 4
  br i1 %i.ws, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph
  %i.wt = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.wh, ptr noundef %1, ptr noundef nonnull @ei_ospf_stlv_length_invalid, ptr noundef %0, i32 noundef %i.wp, i32 noundef 2, ptr noundef nonnull @.str.867, i32 noundef %i.wr) ; 0 uses
  br label %.loopexit

bb.bj:                                            ; preds = %.lr.ph
  %i.wu = call ptr @val_to_str_const(i32 noundef %i.wo, ptr noundef nonnull @oif_stlv_str, ptr noundef nonnull @.str.836) ; 9 uses
  %i.wv = add nuw nsw i32 %i.wr, 4                ; 5 uses
  switch i16 %i.wn, label %bb.bo [
    i16 -32759, label %bb.bk
    i16 -32760, label %bb.bl
    i16 -32758, label %bb.bm
    i16 -32757, label %bb.bn
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.ww = load i32, ptr @ett_ospf_lsa_oif_tna_stlv, align 4
  %i.wx = load ptr, ptr %i.l, align 8
  %i.wy = add i32 %.1948989, 4                    ; 4 uses
  %i.wz = call ptr @tvb_address_to_str(ptr noundef %i.wx, ptr noundef %0, i32 noundef 2, i32 noundef %i.wy)
  %i.xa = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.wh, ptr noundef %0, i32 noundef %.1948989, i32 noundef %i.wv, i32 noundef %i.ww, ptr noundef null, ptr noundef nonnull @.str.840, ptr noundef %i.wu, ptr noundef %i.wz) ; 3 uses
  %i.xb = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.xc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.xa, i32 noundef %i.xb, ptr noundef %0, i32 noundef %.1948989, i32 noundef 2, i32 noundef 32777, ptr noundef nonnull @.str.839, i32 noundef 32777, ptr noundef %i.wu) ; 0 uses
  %i.xd = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.xe = call ptr @proto_tree_add_item(ptr noundef %i.xa, i32 noundef %i.xd, ptr noundef %0, i32 noundef %i.wp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xf = load i32, ptr @hf_ospf_oif_node_id, align 4
  %i.xg = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.wy)
  %i.xh = load ptr, ptr %i.l, align 8
  %i.xi = call ptr @tvb_address_to_str(ptr noundef %i.xh, ptr noundef %0, i32 noundef 2, i32 noundef %i.wy)
  %i.xj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_ipv4_format(ptr noundef %i.xa, i32 noundef %i.xf, ptr noundef %0, i32 noundef %i.wy, i32 noundef 4, i32 noundef %i.xg, ptr noundef nonnull @.str.840, ptr noundef %i.wu, ptr noundef %i.xi) ; 0 uses
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.xk = load i32, ptr @ett_ospf_lsa_oif_tna_stlv, align 4
  %i.xl = load ptr, ptr %i.l, align 8
  %i.xm = add i32 %.1948989, 8                    ; 2 uses
  %i.xn = call ptr @tvb_address_to_str(ptr noundef %i.xl, ptr noundef %0, i32 noundef 2, i32 noundef %i.xm)
  %i.xo = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.wh, ptr noundef %0, i32 noundef %.1948989, i32 noundef %i.wv, i32 noundef %i.xk, ptr noundef null, ptr noundef nonnull @.str.868, ptr noundef %i.wu, ptr noundef %i.xn) ; 4 uses
  %i.xp = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.xq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.xo, i32 noundef %i.xp, ptr noundef %0, i32 noundef %.1948989, i32 noundef 2, i32 noundef 32776, ptr noundef nonnull @.str.869, i32 noundef 32776, ptr noundef %i.wu) ; 0 uses
  %i.xr = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.xs = call ptr @proto_tree_add_item(ptr noundef %i.xo, i32 noundef %i.xr, ptr noundef %0, i32 noundef %i.wp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xt = load i32, ptr @hf_ospf_oif_tna_addr_length, align 4
  %i.xu = add i32 %.1948989, 4
  %i.xv = call ptr @proto_tree_add_item(ptr noundef %i.xo, i32 noundef %i.xt, ptr noundef %0, i32 noundef %i.xu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xw = load i32, ptr @hf_ospf_oif_tna_addr_ipv4, align 4
  %i.xx = add nsw i32 %i.wr, -4
  %i.xy = call ptr @proto_tree_add_item(ptr noundef %i.xo, i32 noundef %i.xw, ptr noundef %0, i32 noundef %i.xm, i32 noundef %i.xx, i32 noundef 0) ; 0 uses
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  %i.xz = load i32, ptr @ett_ospf_lsa_oif_tna_stlv, align 4
  %i.ya = load ptr, ptr %i.l, align 8
  %i.yb = add i32 %.1948989, 8                    ; 2 uses
  %i.yc = call ptr @tvb_address_to_str(ptr noundef %i.ya, ptr noundef %0, i32 noundef 3, i32 noundef %i.yb)
  %i.yd = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.wh, ptr noundef %0, i32 noundef %.1948989, i32 noundef %i.wv, i32 noundef %i.xz, ptr noundef null, ptr noundef nonnull @.str.870, ptr noundef %i.wu, ptr noundef %i.yc) ; 4 uses
  %i.ye = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.yf = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.yd, i32 noundef %i.ye, ptr noundef %0, i32 noundef %.1948989, i32 noundef 2, i32 noundef 32778, ptr noundef nonnull @.str.871, i32 noundef 32778, ptr noundef %i.wu) ; 0 uses
  %i.yg = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.yh = call ptr @proto_tree_add_item(ptr noundef %i.yd, i32 noundef %i.yg, ptr noundef %0, i32 noundef %i.wp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yi = load i32, ptr @hf_ospf_oif_tna_addr_length, align 4
  %i.yj = add i32 %.1948989, 4
  %i.yk = call ptr @proto_tree_add_item(ptr noundef %i.yd, i32 noundef %i.yi, ptr noundef %0, i32 noundef %i.yj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yl = load i32, ptr @hf_ospf_tna_addr_ipv6, align 4
  %i.ym = add nsw i32 %i.wr, -4
  %i.yn = call ptr @proto_tree_add_item(ptr noundef %i.yd, i32 noundef %i.yl, ptr noundef %0, i32 noundef %i.yb, i32 noundef %i.ym, i32 noundef 0) ; 0 uses
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bj
  %i.yo = load i32, ptr @ett_ospf_lsa_oif_tna_stlv, align 4
  %i.yp = load ptr, ptr %i.l, align 8
  %i.yq = add i32 %.1948989, 8                    ; 2 uses
  %i.yr = add nsw i32 %i.wr, -4                   ; 2 uses
  %i.ys = call ptr @tvb_bytes_to_str(ptr noundef %i.yp, ptr noundef %0, i32 noundef %i.yq, i32 noundef %i.yr)
  %i.yt = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.wh, ptr noundef %0, i32 noundef %.1948989, i32 noundef %i.wv, i32 noundef %i.yo, ptr noundef null, ptr noundef nonnull @.str.872, ptr noundef %i.wu, ptr noundef %i.ys) ; 4 uses
  %i.yu = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.yv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.yt, i32 noundef %i.yu, ptr noundef %0, i32 noundef %.1948989, i32 noundef 2, i32 noundef 32779, ptr noundef nonnull @.str.873, i32 noundef 32779, ptr noundef %i.wu) ; 0 uses
  %i.yw = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.yx = call ptr @proto_tree_add_item(ptr noundef %i.yt, i32 noundef %i.yw, ptr noundef %0, i32 noundef %i.wp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yy = load i32, ptr @hf_ospf_oif_tna_addr_length, align 4
  %i.yz = add i32 %.1948989, 4
  %i.za = call ptr @proto_tree_add_item(ptr noundef %i.yt, i32 noundef %i.yy, ptr noundef %0, i32 noundef %i.yz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zb = load i32, ptr @hf_ospf_tna_addr, align 4
  %i.zc = call ptr @proto_tree_add_item(ptr noundef %i.yt, i32 noundef %i.zb, ptr noundef %0, i32 noundef %i.yq, i32 noundef %i.yr, i32 noundef 0) ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.zd = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.wh, ptr noundef %1, ptr noundef nonnull @ei_ospf_unknown_link_subtype, ptr noundef %0, i32 noundef %.1948989, i32 noundef %i.wv, ptr noundef nonnull @.str.874, i32 noundef %i.wo) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %i.ze = add nuw nsw i32 %i.wr, 7
  %i.zf = and i32 %i.ze, 131068
  %i.zg = add i32 %i.zf, %.1948989                ; 2 uses
  %i.zh = icmp slt i32 %i.zg, %i.r
  br i1 %i.zh, label %.lr.ph, label %.loopexit, !llvm.loop !49

bb.bq:                                            ; preds = %bb.d
  %i.zi = zext i16 %i.m to i32                    ; 5 uses
  %i.zj = add nuw nsw i32 %i.p, 4                 ; 2 uses
  %i.zk = load i32, ptr @ett_ospf_lsa_mpls_link, align 4
  %i.zl = call ptr @rval_to_str_const(i32 noundef %i.zi, ptr noundef nonnull @mpls_te_tlv_rvals, ptr noundef nonnull @.str.777)
  %i.zm = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.d, ptr noundef %0, i32 noundef %.09501015, i32 noundef %i.zj, i32 noundef %i.zk, ptr noundef null, ptr noundef nonnull @.str.875, i32 noundef %i.zi, ptr noundef %i.zl) ; 3 uses
  %i.zn = load i32, ptr @hf_ospf_tlv_type, align 4
  %i.zo = call ptr @rval_to_str_const(i32 noundef %i.zi, ptr noundef nonnull @mpls_te_tlv_rvals, ptr noundef nonnull @.str.777)
  %i.zp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.zm, i32 noundef %i.zn, ptr noundef %0, i32 noundef %.09501015, i32 noundef 2, i32 noundef %i.zi, ptr noundef nonnull @.str.876, i32 noundef %i.zi, ptr noundef %i.zo) ; 0 uses
  %i.zq = load i32, ptr @hf_ospf_tlv_length, align 4
  %i.zr = call ptr @proto_tree_add_item(ptr noundef %i.zm, i32 noundef %i.zq, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zs = load i32, ptr @hf_ospf_tlv_value, align 4
  %i.zt = call ptr @proto_tree_add_item(ptr noundef %i.zm, i32 noundef %i.zs, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.p, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bp, %dissect_ospf_subtlv_ext_admin_group.exit, %bb.bh, %bb.f, %bb.bi, %bb.bq, %bb.e
  %.pre-phi = phi i32 [ %i.ad, %dissect_ospf_subtlv_ext_admin_group.exit ], [ %i.s, %bb.e ], [ %i.wf, %bb.bh ], [ %i.ad, %bb.f ], [ %i.wf, %bb.bi ], [ %i.zj, %bb.bq ], [ %i.wf, %bb.bp ] ; 2 uses
  %i.zu = add i32 %.pre-phi, %.09501015
  %i.zv = sub i32 %.09491016, %.pre-phi           ; 2 uses
  %.not = icmp eq i32 %i.zv, 0
  br i1 %.not, label %.loopexit985, label %bb.d, !llvm.loop !50

.loopexit985:                                     ; preds = %.loopexit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ospf_lsa_opaque_ri(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.c = add i32 %4, %2                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.d = load i32, ptr @ett_ospf_lsa_opaque_ri, align 4
  %i.e = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef %4, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.898) ; 8 uses
  %i.f = icmp slt i32 %2, %i.c
  br i1 %i.f, label %.lr.ph296, label %._crit_edge

.lr.ph296:                                        ; preds = %bb.a, %.loopexit
  %.0271295 = phi i32 [ %i.gu, %.loopexit ], [ %2, %bb.a ] ; 28 uses
  %i.g = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0271295) ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 3 uses
  %i.i = add i32 %.0271295, 2                     ; 9 uses
  %i.j = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.i) ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 15 uses
  %i.l = add i32 %.0271295, 4                     ; 11 uses
  %i.m = add i32 %i.l, %i.k                       ; 6 uses
  %i.n = call ptr @val_to_str_const(i32 noundef %i.h, ptr noundef nonnull @ri_tlv_type_vals, ptr noundef nonnull @.str.777) ; 3 uses
  switch i16 %i.g, label %bb.v [
    i16 1, label %bb.b
    i16 7, label %bb.c
    i16 8, label %bb.d
    i16 9, label %bb.e
    i16 14, label %bb.e
    i16 15, label %bb.o
    i16 12, label %bb.q
    i16 16, label %bb.r
  ]
end_hunk_1
