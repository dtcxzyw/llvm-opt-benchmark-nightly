Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-isis-hello?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_isis_hello:bb.a
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %4, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.cg, ptr noundef %i.ci) ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.ck = load i32, ptr @hf_isis_hello_local_circuit_id, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = add nuw nsw i32 %i.am, 14
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr i8, ptr %4, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %4, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.co, ptr noundef %i.cq) ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cs = load i32, ptr @hf_isis_hello_priority, align 4
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cu = load i32, ptr @hf_isis_hello_priority_reserved, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cw = load i8, ptr %4, align 8
  %i.cx = zext i8 %i.cw to i32
  %i.cy = load i8, ptr %i.t, align 1
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %reass.add = shl nuw nsw i32 %i.cz, 1
  %i.da = add nuw nsw i32 %reass.add, 15
  %i.db = icmp samesign ugt i32 %i.da, %i.cx
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr i8, ptr %4, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %4, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dd, ptr noundef %i.df) ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dh = add nuw nsw i32 %i.am, 14
  %i.di = load i32, ptr @hf_isis_hello_lan_id, align 4
  %i.dj = add nuw nsw i32 %i.cz, 1
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dh, i32 noundef %i.dj, i32 noundef 0) ; 0 uses
  %i.dl = load i8, ptr %i.t, align 1
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.am, 15
  %i.do = add nuw nsw i32 %i.dn, %i.dm
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.0105 = phi i32 [ %i.cm, %bb.n ], [ %i.do, %bb.s ]
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr i8, ptr %4, i64 2
  store i16 %i.bk, ptr %i.dp, align 2
  %i.dq = load i32, ptr @ett_isis_hello_clv_unknown, align 4
  %i.dr = load i32, ptr @hf_isis_hello_clv_type, align 4
  %i.ds = load i32, ptr @hf_isis_hello_clv_length, align 4
  tail call void @isis_dissect_clvs(ptr noundef %0, ptr noundef %1, ptr noundef %i.f, i32 noundef %.0105, ptr noundef %3, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %4, i32 noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef nonnull @ei_isis_hello_clv_unknown)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.p, %bb.m, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_print_system_id(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @isis_dissect_clvs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_area_address_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_hello_area_address, align 4
  tail call void @isis_dissect_area_address_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_isis_hello_short_clv, i32 noundef %i.a, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_instance_identifier_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_hello_instance_identifier, align 4
  %i.b = load i32, ptr @hf_isis_hello_supported_itid, align 4
  tail call void @isis_dissect_instance_identifier_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_isis_hello_short_clv, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal void @dissect_hello_padding_clv(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5) #3 {
bb.a:
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_nlpid_clv(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_isis_hello_clv_nlpid_nlpid, align 4
  %i.b = load i32, ptr @hf_isis_hello_clv_nlpid_nlpid, align 4
  tail call void @isis_dissect_nlpid_clv(ptr noundef %0, ptr noundef %2, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_ip_int_addr_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_hello_clv_ipv4_int_addr, align 4
  tail call void @isis_dissect_ip_int_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_isis_hello_short_clv, i32 noundef %3, i32 noundef %5, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_ipv6_int_addr_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_hello_clv_ipv6_int_addr, align 4
  tail call void @isis_dissect_ipv6_int_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_isis_hello_short_clv, i32 noundef %3, i32 noundef %5, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_authentication_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_hello_authentication, align 4
  %i.b = load i32, ptr @hf_isis_clv_key_id, align 4
  tail call void @isis_dissect_authentication_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, ptr noundef nonnull @ei_isis_hello_authentication, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_ip_authentication_clv(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_isis_hello_clv_ip_authentication, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %5, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_mt_port_cap_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 1
  br i1 %i.a, label %bb.b, label %.loopexit98

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_isis_hello_mtid, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = icmp samesign ugt i32 %5, 3
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit98

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = add i32 %3, 2
  %i.f = add nsw i32 %5, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.082103 = phi i32 [ %i.ea, %.loopexit ], [ %i.f, %.lr.ph.preheader ]
  %.083102 = phi i32 [ %i.eb, %.loopexit ], [ %i.e, %.lr.ph.preheader ] ; 20 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.083102) ; 3 uses
  %i.h = add i32 %.083102, 1
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h) ; 7 uses
  %i.j = add nsw i32 %.082103, -2                 ; 3 uses
  %i.k = add i32 %.083102, 2                      ; 15 uses
  %i.l = zext i8 %i.i to i32                      ; 24 uses
  %i.m = icmp samesign ult i32 %i.j, %i.l
  br i1 %i.m, label %.thread, label %bb.c

.thread:                                          ; preds = %.lr.ph
  %i.n = zext i8 %i.g to i32
  %i.o = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull @.str.200, i32 noundef %i.n, i32 noundef %i.l, i32 noundef %i.j) ; 0 uses
  br label %.loopexit98

bb.c:                                             ; preds = %.lr.ph
  switch i8 %i.g, label %bb.p [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.j
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i32 %i.l, 2
  %i.q = load i32, ptr @ett_isis_hello_clv_mt_port_cap_vlan_flags, align 4
  %i.r = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.p, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull @.str.202, i32 noundef 1, i32 noundef range(i32 0, 256) %i.l) ; 10 uses
  %i.s = load i32, ptr @hf_isis_hello_vlan_flags_port_id, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = add i32 %.083102, 4
  %i.v = load i32, ptr @hf_isis_hello_vlan_flags_nickname, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.083102, 6                      ; 5 uses
  %i.y = load i32, ptr @hf_isis_hello_vlan_flags_af, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_isis_hello_vlan_flags_ac, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_isis_hello_vlan_flags_vm, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_isis_hello_vlan_flags_by, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_isis_hello_vlan_flags_outer_vlan, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = add i32 %.083102, 8                     ; 3 uses
  %i.aj = load i32, ptr @hf_isis_hello_vlan_flags_tr, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_isis_hello_vlan_flags_reserved, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ai, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_isis_hello_vlan_flags_designated_vlan, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.ai, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.ap = add nuw nsw i32 %i.l, 2
  %i.aq = load i32, ptr @ett_isis_hello_clv_mt_port_cap_enabled_vlans, align 4
  %i.ar = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.ap, i32 noundef %i.aq, ptr noundef null, ptr noundef nonnull @.str.203, i32 noundef 2, i32 noundef range(i32 0, 256) %i.l)
  %i.as = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.k)
  %i.at = and i16 %i.as, 4095
  %i.au = zext nneg i16 %i.at to i32
  %i.av = add i32 %.083102, 4                     ; 2 uses
  %i.aw = add nsw i32 %i.l, -2                    ; 2 uses
  %i.ax = load i32, ptr @hf_isis_hello_enabled_vlans, align 4
  %i.ay = tail call ptr @proto_tree_add_string(ptr noundef %i.ar, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef nonnull @.str.198)
  tail call fastcc void @parse_vlan_bitmap(ptr noundef %i.ay, ptr noundef %0, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.aw)
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.az = add nuw nsw i32 %i.l, 2
  %i.ba = load i32, ptr @ett_isis_hello_clv_mt_port_cap_appointedfwrdrs, align 4
  %i.bb = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef null, ptr noundef nonnull @.str.207, i32 noundef 3, i32 noundef range(i32 0, 256) %i.l) ; 3 uses
  %i.bc = icmp ugt i8 %i.i, 5
  br i1 %i.bc, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.02.i = phi i32 [ %i.bm, %.lr.ph.i ], [ %i.l, %bb.f ] ; 2 uses
  %.0171.i = phi i32 [ %i.bl, %.lr.ph.i ], [ %i.k, %bb.f ] ; 4 uses
  %i.bd = load i32, ptr @hf_isis_hello_af_nickname, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bd, ptr noundef %0, i32 noundef %.0171.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_isis_hello_af_start_vlan, align 4
  %i.bg = add i32 %.0171.i, 2
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.bg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bi = load i32, ptr @hf_isis_hello_af_end_vlan, align 4
  %i.bj = add i32 %.0171.i, 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bl = add i32 %.0171.i, 6
  %i.bm = add nsw i32 %.02.i, -6
  %i.bn = icmp samesign ugt i32 %.02.i, 11
  br i1 %i.bn, label %.lr.ph.i, label %.loopexit, !llvm.loop !7

bb.g:                                             ; preds = %bb.c
  %.not.i = icmp eq i8 %i.i, 102
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull @.str.208, i32 noundef range(i32 0, 256) %i.l, i32 noundef 102) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bp = load i32, ptr @ett_isis_hello_clv_mt_port_cap_spb_mcid, align 4
  %i.bq = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef 104, i32 noundef %i.bp, ptr noundef null, ptr noundef nonnull @.str.209, i32 noundef 4, i32 noundef 102) ; 2 uses
  %i.br = load i32, ptr @hf_isis_hello_mcid, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.k, i32 noundef 51, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %.083102, 53
  %i.bu = load i32, ptr @hf_isis_hello_aux_mcid, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 51, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.c
  %.not.i92 = icmp eq i8 %i.i, 33
  br i1 %.not.i92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull @.str.210, i32 noundef range(i32 0, 256) %i.l, i32 noundef 33) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bx = load i32, ptr @ett_isis_hello_clv_mt_port_cap_spb_digest, align 4
  %i.by = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef 35, i32 noundef %i.bx, ptr noundef null, ptr noundef nonnull @.str.211, i32 noundef 5, i32 noundef 33) ; 4 uses
  %i.bz = load i32, ptr @hf_isis_hello_digest_v, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cb = load i32, ptr @hf_isis_hello_digest_a, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.cb, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_isis_hello_digest_d, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = add i32 %.083102, 3
  %i.cg = load i32, ptr @hf_isis_hello_digest, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.ci = add nuw nsw i32 %i.l, 2
  %i.cj = load i32, ptr @ett_isis_hello_clv_mt_port_cap_spb_bvid_tuples, align 4
  %i.ck = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.ci, i32 noundef %i.cj, ptr noundef null, ptr noundef nonnull @.str.212, i32 noundef 6, i32 noundef range(i32 0, 256) %i.l) ; 4 uses
  %.not29.i = icmp eq i8 %i.i, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %6 = urem i8 %i.i, 6
  %.zext.i = zext nneg i8 %6 to i32
  %i.cl = icmp ult i8 %i.i, 6
  br i1 %i.cl, label %.lr.ph.i93._crit_edge, label %.lr.ph136

.lr.ph.i93:                                       ; preds = %.lr.ph136
  %i.cm = add i32 %.031.i134, 6
  %i.cn = icmp slt i32 %.02730.i135, 12
  br i1 %i.cn, label %.lr.ph.i93._crit_edge, label %.lr.ph136, !llvm.loop !8

.lr.ph.i93._crit_edge:                            ; preds = %.lr.ph.i93, %.lr.ph.preheader.i
  %i.co = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull @.str.213, i32 noundef %.zext.i, i32 noundef 6) ; 0 uses
  br label %.loopexit

.lr.ph136:                                        ; preds = %.lr.ph.preheader.i, %.lr.ph.i93
  %.02730.i135 = phi i32 [ %i.cy, %.lr.ph.i93 ], [ %i.l, %.lr.ph.preheader.i ] ; 2 uses
  %.031.i134 = phi i32 [ %i.cm, %.lr.ph.i93 ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %i.cp = load i32, ptr @hf_isis_hello_ect, align 4
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cp, ptr noundef %0, i32 noundef %.031.i134, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_isis_hello_bvid, align 4
  %i.cs = add i32 %.031.i134, 4                   ; 3 uses
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cu = load i32, ptr @hf_isis_hello_bvid_u, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.cs, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cw = load i32, ptr @hf_isis_hello_bvid_m, align 4
  %i.cx = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.cs, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cy = add nsw i32 %.02730.i135, -6            ; 2 uses
  %.not.i94 = icmp eq i32 %i.cy, 0
  br i1 %.not.i94, label %.loopexit, label %.lr.ph.i93, !llvm.loop !8

bb.n:                                             ; preds = %bb.c
  %i.cz = add nuw nsw i32 %i.l, 2
  %i.da = load i32, ptr @ett_isis_hello_clv_mt_port_cap_port_trill_ver, align 4
  %i.db = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.cz, i32 noundef %i.da, ptr noundef null, ptr noundef nonnull @.str.214, i32 noundef 7, i32 noundef range(i32 0, 256) %i.l) ; 5 uses
  %i.dc = load i32, ptr @hf_isis_hello_trill_version, align 4
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %i.db, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.de = add i32 %.083102, 3                     ; 4 uses
  %i.df = load i32, ptr @hf_isis_hello_trill_hello_reduction, align 4
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %i.db, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dh = load i32, ptr @hf_isis_hello_trill_unassigned_1, align 4
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %i.db, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dj = load i32, ptr @hf_isis_hello_trill_hop_by_hop_flags, align 4
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %i.db, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dl = load i32, ptr @hf_isis_hello_trill_unassigned_2, align 4
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %i.db, i32 noundef %i.dl, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.c
  %i.dn = add nuw nsw i32 %i.l, 2
  %i.do = load i32, ptr @ett_isis_hello_clv_mt_port_cap_vlans_appointed, align 4
  %i.dp = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.dn, i32 noundef %i.do, ptr noundef null, ptr noundef nonnull @.str.215, i32 noundef 8, i32 noundef range(i32 0, 256) %i.l)
  %i.dq = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.k)
  %i.dr = and i16 %i.dq, 4095
  %i.ds = zext nneg i16 %i.dr to i32
  %i.dt = add i32 %.083102, 4                     ; 2 uses
  %i.du = add nsw i32 %i.l, -2                    ; 2 uses
  %i.dv = load i32, ptr @hf_isis_hello_appointed_vlans, align 4
  %i.dw = tail call ptr @proto_tree_add_string(ptr noundef %i.dp, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.dt, i32 noundef %i.du, ptr noundef nonnull @.str.198)
  tail call fastcc void @parse_vlan_bitmap(ptr noundef %i.dw, ptr noundef %0, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du)
  br label %.loopexit

bb.p:                                             ; preds = %bb.c
  %i.dx = zext i8 %i.g to i32
  %i.dy = add nuw nsw i32 %i.l, 2
  %i.dz = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_subtlv, ptr noundef %0, i32 noundef %.083102, i32 noundef %i.dy, ptr noundef nonnull @.str.201, i32 noundef %i.dx, i32 noundef %i.l) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph136, %.lr.ph.i, %bb.d, %bb.e, %bb.n, %bb.o, %bb.p, %bb.f, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %.lr.ph.i93._crit_edge
  %i.ea = sub nuw nsw i32 %i.j, %i.l              ; 2 uses
  %i.eb = add i32 %i.k, %i.l
  %i.ec = icmp sgt i32 %i.ea, 1
  br i1 %i.ec, label %.lr.ph, label %.loopexit98

.loopexit98:                                      ; preds = %.loopexit, %bb.b, %.thread, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_restart_clv(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %bb.b, label %.thread25

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.c = load i32, ptr @hf_isis_hello_clv_restart_flags, align 4
  %i.d = load i32, ptr @ett_isis_hello_clv_restart_flags, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @dissect_hello_restart_clv.flags, i32 noundef 0, i32 noundef 12) ; 0 uses
  %i.f = and i8 %i.b, 2
  %i.g = icmp eq i8 %i.f, 0                       ; 2 uses
  %i.h = icmp samesign ult i32 %5, 3
  %brmerge = select i1 %i.h, i1 true, i1 %i.g
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @hf_isis_hello_clv_restart_remain_time, align 4
  %i.j = add i32 %3, 1
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.k, ptr noundef nonnull @.str.216)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr i8, ptr %4, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 3
  %.not18 = icmp samesign ult i32 %5, %i.o
  %brmerge20 = select i1 %.not18, i1 true, i1 %i.g
  br i1 %brmerge20, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr @hf_isis_hello_clv_restart_neighbor, align 4
  %i.q = add i32 %3, 3
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  br label %.thread25

.thread25:                                        ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_ptp_adj_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 1, label %bb.b
    i32 5, label %bb.c
    i32 11, label %bb.d
    i32 15, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_isis_hello_adjacency_state, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_isis_hello_adjacency_state, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_isis_hello_extended_local_circuit_id, align 4
  %i.f = add i32 %3, 1
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_isis_hello_adjacency_state, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_isis_hello_extended_local_circuit_id, align 4
  %i.k = add i32 %3, 1
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_isis_hello_neighbor_systemid, align 4
  %i.n = add i32 %3, 5
  %i.o = getelementptr i8, ptr %4, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.q, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = load i32, ptr @hf_isis_hello_adjacency_state, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_isis_hello_extended_local_circuit_id, align 4
  %i.v = add i32 %3, 1
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_isis_hello_neighbor_systemid, align 4
  %i.y = add i32 %3, 5                            ; 2 uses
  %i.z = getelementptr i8, ptr %4, i64 1          ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_isis_hello_neighbor_extended_local_circuit_id, align 4
  %i.ae = load i8, ptr %i.z, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = add i32 %i.y, %i.af
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ag, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ai = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.217, i32 noundef %5) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_mt_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_hello_clv_mt, align 4
  tail call void @isis_dissect_mt_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5, i32 noundef %i.a, ptr noundef nonnull @ei_isis_hello_clv_mt)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_hello_checksum_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i16 0, ptr %i.a, align 2
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_hello_short_clv, ptr noundef %0, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.218, i32 noundef %5) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3)
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @hf_isis_hello_checksum, align 4
  %i.f = load i32, ptr @hf_isis_hello_checksum_status, align 4
  %i.g = tail call ptr @proto_tree_add_checksum(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @ei_isis_hello_bad_checksum, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 16) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %4, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = call zeroext i1 @osi_check_and_get_checksum(ptr noundef %0, i32 noundef 0, i32 noundef %i.j, i32 noundef %3, ptr noundef nonnull %i.a)
  %i.l = load i32, ptr @hf_isis_hello_checksum, align 4 ; 2 uses
  %i.m = load i32, ptr @hf_isis_hello_checksum_status, align 4 ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i16, ptr %i.a, align 2
end_hunk_0
