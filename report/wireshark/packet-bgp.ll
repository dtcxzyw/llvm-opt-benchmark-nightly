Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bgp?download=true
inline.NumInlined: 72
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decode_path_prefix4:bb.a
  %i.w = call ptr @proto_tree_add_ipv4(ptr noundef %i.r, i32 noundef %3, ptr noundef %4, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.v) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, -2147483647) i32 @decode_prefix4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct._address, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %4, i32 noundef %5)
  %i.c = add i32 %5, 1                            ; 2 uses
  %i.d = zext i8 %i.b to i32                      ; 6 uses
  %i.e = call i32 @tvb_get_ipv4_addr_with_prefix_len(ptr noundef %4, i32 noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.d) ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_bgp_length_invalid, ptr noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef nonnull @.str.1963, ptr noundef %6, i32 noundef %i.d) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr %7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 4, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.j, align 8
  %i.k = add nuw i32 %i.e, 1                      ; 2 uses
  %i.l = load i32, ptr @ett_bgp_prefix, align 4
  %i.m = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @address_to_str(ptr noundef %i.n, ptr noundef nonnull %7)
  %i.p = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %4, i32 noundef %5, i32 noundef %i.k, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull @.str.1954, ptr noundef %i.o, i32 noundef %i.d) ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = call ptr @address_to_str(ptr noundef %i.q, ptr noundef nonnull %7)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.1965, ptr noundef %i.r, i32 noundef %i.d)
  %i.s = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.t = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.s, ptr noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef %i.d, ptr noundef nonnull @.str.1966, ptr noundef %6, i32 noundef %i.d) ; 0 uses
  %i.u = load i32, ptr %i.a, align 4
  %i.v = call ptr @proto_tree_add_ipv4(ptr noundef %i.p, i32 noundef %3, ptr noundef %4, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.u) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @detect_add_path_prefix46(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 32, 256) %3) unnamed_addr #0 {
bb.a:
  %.051 = add i32 %1, 4                           ; 2 uses
  %i.a = icmp slt i32 %.051, %2
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.a
  %i.b = icmp slt i32 %1, %2
  br i1 %i.b, label %.lr.ph54, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.052 = phi i32 [ %.0, %bb.e ], [ %.051, %bb.a ] ; 3 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.052)
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %i.e = icmp samesign ult i32 %3, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i32 %i.d, 7
  %i.g = lshr i32 %i.f, 3                         ; 2 uses
  %i.h = add nsw i32 %.052, 1
  %i.i = add i32 %i.h, %i.g                       ; 2 uses
  %i.j = icmp sgt i32 %i.i, %2
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.d, 7                          ; 2 uses
  %.not46 = icmp eq i32 %i.k, 0
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %i.g, %.052
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.l)
  %i.n = zext i8 %i.m to i32
  %i.o = lshr i32 255, %i.k
  %i.p = and i32 %i.o, %i.n
  %.not47 = icmp eq i32 %i.p, 0
  br i1 %.not47, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = add i32 %i.i, 4                           ; 2 uses
  %i.q = icmp slt i32 %.0, %2
  br i1 %i.q, label %.lr.ph, label %.preheader, !llvm.loop !72

.lr.ph54:                                         ; preds = %.preheader, %bb.i
  %.153 = phi i32 [ %i.aa, %bb.i ], [ %1, %.preheader ] ; 4 uses
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.153) ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = icmp eq i8 %i.r, 0
  %i.u = sub i32 %2, %.153
  %i.v = icmp sgt i32 %i.u, 1
  %or.cond = and i1 %i.v, %i.t
  %i.w = icmp samesign ult i32 %3, %i.s
  %or.cond49 = select i1 %or.cond, i1 true, i1 %i.w
  br i1 %or.cond49, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph54
  %i.x = add nuw nsw i32 %i.s, 7
  %i.y = lshr i32 %i.x, 3                         ; 2 uses
  %i.z = add nsw i32 %.153, 1
  %i.aa = add i32 %i.z, %i.y                      ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %2
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.s, 7                         ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add i32 %i.y, %.153
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ad)
  %i.af = zext i8 %i.ae to i32
  %i.ag = lshr i32 255, %i.ac
  %i.ah = and i32 %i.ag, %i.af
  %.not45 = icmp eq i32 %i.ah, 0
  br i1 %.not45, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = icmp slt i32 %i.aa, %2
  br i1 %i.ai, label %.lr.ph54, label %.loopexit, !llvm.loop !73

.loopexit:                                        ; preds = %bb.d, %bb.b, %.lr.ph, %.lr.ph54, %bb.f, %bb.h, %bb.i, %.preheader
  %.036 = phi i32 [ 0, %bb.i ], [ 0, %.preheader ], [ 1, %.lr.ph54 ], [ 1, %bb.h ], [ 1, %bb.f ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.036
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 1431655766) i32 @decode_MPLS_stack(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @wmem_strbuf_truncate(ptr noundef %2, i64 noundef 0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.021 = phi i32 [ %1, %bb.a ], [ %i.h, %bb.d ]  ; 3 uses
  %i.a = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %.021) ; 3 uses
  %i.b = icmp eq i32 %.021, %1
  %i.c = and i32 %i.a, -8388609
  %or.cond = icmp eq i32 %i.c, 0
  %or.cond19 = select i1 %i.b, i1 %or.cond, i1 false
  br i1 %or.cond19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @wmem_strbuf_append(ptr noundef %2, ptr noundef nonnull @.str.1967)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i32 %i.a, 4
  %i.e = and i32 %i.a, 1
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.g = select i1 %i.f, ptr @.str.71, ptr @.str.1969
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %2, ptr noundef nonnull @.str.1968, i32 noundef %i.d, ptr noundef nonnull %i.g)
  %i.h = add i32 %.021, 3                         ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e, !llvm.loop !43

bb.e:                                             ; preds = %bb.d
  %i.i = sub i32 %i.h, %1
  %i.j = udiv i32 %i.i, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.018 = phi i32 [ 1, %bb.c ], [ %i.j, %bb.e ]
  ret i32 %.018
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ipv4_addr_with_prefix_len(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @address_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ipv4(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 258) i32 @decode_mcast_vpn_nlri(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i16 %3, 1                        ; 4 uses
  %5 = select i1 %i.a, i8 4, i8 16                ; 2 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.c = load i32, ptr @hf_bgp_mcast_vpn_nlri_route_type, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = add i32 %2, 1                            ; 2 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e) ; 3 uses
  %i.g = load i32, ptr @hf_bgp_mcast_vpn_nlri_length, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.g, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = add i32 %2, 2                            ; 14 uses
  %i.j = zext i8 %i.f to i32                      ; 5 uses
  %i.k = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.i)
  %i.l = icmp ult i32 %i.k, %i.j
  br i1 %i.l, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @hf_bgp_mcast_vpn_nlri_t, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.m, ptr noundef %1, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 0) ; 2 uses
  %i.o = zext i8 %i.b to i32
  %i.p = tail call ptr @val_to_str_const(i32 noundef %i.o, ptr noundef nonnull @mcast_vpn_route_type, ptr noundef nonnull @.str.23)
  %i.q = icmp eq i8 %i.f, 1
  %i.r = select i1 %i.q, ptr @.str, ptr @.str.21
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.n, ptr noundef nonnull @.str.1970, ptr noundef %i.p, i32 noundef %i.j, ptr noundef nonnull %i.r)
  %i.s = load i32, ptr @ett_bgp_mcast_vpn_nlri, align 4
  %i.t = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.s) ; 17 uses
  switch i8 %i.b, label %bb.r [
    i8 1, label %bb.c
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.k
    i8 5, label %bb.p
    i8 6, label %bb.q
    i8 7, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr @hf_bgp_mcast_vpn_nlri_rd, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.u, ptr noundef %1, i32 noundef %i.i, i32 noundef 8, i32 noundef 0)
  %i.w = getelementptr i8, ptr %4, i64 416
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @decode_bgp_rd(ptr noundef %i.x, ptr noundef %1, i32 noundef %i.i)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.v, ptr noundef nonnull @.str.1971, ptr noundef %i.y)
  %i.z = add i32 %2, 10                           ; 2 uses
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr @hf_bgp_mcast_vpn_nlri_origin_router_ipv4, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.aa, ptr noundef %1, i32 noundef %i.z, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.ac = load i32, ptr @hf_bgp_mcast_vpn_nlri_origin_router_ipv6, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.ac, ptr noundef %1, i32 noundef %i.z, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.b
  %i.ae = load i32, ptr @hf_bgp_mcast_vpn_nlri_rd, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.ae, ptr noundef %1, i32 noundef %i.i, i32 noundef 8, i32 noundef 0)
  %i.ag = getelementptr i8, ptr %4, i64 416
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @decode_bgp_rd(ptr noundef %i.ah, ptr noundef %1, i32 noundef %i.i)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.af, ptr noundef nonnull @.str.1971, ptr noundef %i.ai)
  %i.aj = add i32 %2, 10
  %i.ak = load i32, ptr @hf_bgp_mcast_vpn_nlri_source_as, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.ak, ptr noundef %1, i32 noundef %i.aj, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %i.am = load i32, ptr @hf_bgp_mcast_vpn_nlri_rd, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.am, ptr noundef %1, i32 noundef %i.i, i32 noundef 8, i32 noundef 0)
  %i.ao = getelementptr i8, ptr %4, i64 416
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call ptr @decode_bgp_rd(ptr noundef %i.ap, ptr noundef %1, i32 noundef %i.i)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.an, ptr noundef nonnull @.str.1971, ptr noundef %i.aq)
  %i.ar = add i32 %2, 10
  %i.as = tail call fastcc i32 @decode_mcast_vpn_nlri_addresses(ptr noundef %i.t, ptr noundef %1, i32 noundef %i.ar) ; 3 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.a, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr @hf_bgp_mcast_vpn_nlri_origin_router_ipv4, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.au, ptr noundef %1, i32 noundef %i.as, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.aw = load i32, ptr @hf_bgp_mcast_vpn_nlri_origin_router_ipv6, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.aw, ptr noundef %1, i32 noundef %i.as, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %6 = zext nneg i8 %5 to i32                     ; 3 uses
  %7 = icmp ult i8 %i.f, %5
  br i1 %7, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #8
  unreachable

bb.m:                                             ; preds = %bb.k
  %8 = sub nuw nsw i32 %i.j, %6                   ; 4 uses
  %i.ay = load i32, ptr @hf_bgp_mcast_vpn_nlri_route_key, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.ay, ptr noundef %1, i32 noundef %i.i, i32 noundef %8, i32 noundef 0)
  %i.ba = icmp eq i32 %8, 1
  %i.bb = select i1 %i.ba, ptr @.str, ptr @.str.21
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.az, ptr noundef nonnull @.str.1972, i32 noundef %8, ptr noundef nonnull %i.bb)
  %i.bc = add i32 %8, %i.i                        ; 2 uses
  br i1 %i.a, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr @hf_bgp_mcast_vpn_nlri_origin_router_ipv4, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bd, ptr noundef %1, i32 noundef %i.bc, i32 noundef %6, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bf = load i32, ptr @hf_bgp_mcast_vpn_nlri_origin_router_ipv6, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bf, ptr noundef %1, i32 noundef %i.bc, i32 noundef %6, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.b
  %i.bh = load i32, ptr @hf_bgp_mcast_vpn_nlri_rd, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bh, ptr noundef %1, i32 noundef %i.i, i32 noundef 8, i32 noundef 0)
  %i.bj = getelementptr i8, ptr %4, i64 416
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call ptr @decode_bgp_rd(ptr noundef %i.bk, ptr noundef %1, i32 noundef %i.i)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.bi, ptr noundef nonnull @.str.1971, ptr noundef %i.bl)
  %i.bm = add i32 %2, 10
  %i.bn = tail call fastcc i32 @decode_mcast_vpn_nlri_addresses(ptr noundef %i.t, ptr noundef %1, i32 noundef %i.bm)
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.b, %bb.b
  %i.bp = load i32, ptr @hf_bgp_mcast_vpn_nlri_rd, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bp, ptr noundef %1, i32 noundef %i.i, i32 noundef 8, i32 noundef 0)
  %i.br = getelementptr i8, ptr %4, i64 416
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call ptr @decode_bgp_rd(ptr noundef %i.bs, ptr noundef %1, i32 noundef %i.i)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.bq, ptr noundef nonnull @.str.1971, ptr noundef %i.bt)
  %i.bu = add i32 %2, 10
  %i.bv = load i32, ptr @hf_bgp_mcast_vpn_nlri_source_as, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bv, ptr noundef %1, i32 noundef %i.bu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bx = add i32 %2, 14
  %i.by = tail call fastcc i32 @decode_mcast_vpn_nlri_addresses(ptr noundef %i.t, ptr noundef %1, i32 noundef %i.bx)
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.o, %bb.i, %bb.j, %bb.d, %bb.e, %bb.f, %bb.b
  %i.ca = add nuw nsw i32 %i.j, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.g, %bb.a, %bb.r
  %.0 = phi i32 [ -1, %bb.p ], [ %i.ca, %bb.r ], [ -1, %bb.a ], [ -1, %bb.g ], [ -1, %bb.q ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 18) i32 @decode_mdt_safi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3)
  %.not = icmp eq i8 %i.a, -128
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %3, 1                            ; 2 uses
  %i.c = load i32, ptr @hf_bgp_mdt_nlri_safi_rd, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %2, i32 noundef %i.b, i32 noundef 8, i32 noundef 0)
  %i.e = getelementptr i8, ptr %0, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @decode_bgp_rd(ptr noundef %i.f, ptr noundef %2, i32 noundef %i.b)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.d, ptr noundef nonnull @.str.1971, ptr noundef %i.g)
  %i.h = add i32 %3, 9
  %i.i = load i32, ptr @hf_bgp_mdt_nlri_safi_ipv4_addr, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %2, i32 noundef %i.h, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.k = add i32 %3, 13
  %i.l = load i32, ptr @hf_bgp_mdt_nlri_safi_group_addr, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %2, i32 noundef %i.k, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 17, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef range(i32 13, 26) i32 @decode_sr_policy_nlri(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_bgp_sr_policy_nlri_length, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %2, 1
  %i.d = load i32, ptr @hf_bgp_sr_policy_nlri_distinguisher, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %i.c, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.f = add i32 %2, 5
  %i.g = load i32, ptr @hf_bgp_sr_policy_nlri_policy_color, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.g, ptr noundef %1, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.i = add i32 %2, 9
  %i.j = icmp eq i16 %3, 1                        ; 3 uses
  %. = select i1 %i.j, i32 4, i32 16
  %.20 = select i1 %i.j, i32 13, i32 25
  %hf_bgp_sr_policy_nlri_endpoint_v4.val = load i32, ptr @hf_bgp_sr_policy_nlri_endpoint_v4, align 4
  %hf_bgp_sr_policy_nlri_endpoint_v6.val = load i32, ptr @hf_bgp_sr_policy_nlri_endpoint_v6, align 4
  %i.k = select i1 %i.j, i32 %hf_bgp_sr_policy_nlri_endpoint_v4.val, i32 %hf_bgp_sr_policy_nlri_endpoint_v6.val
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %i.i, i32 noundef %., i32 noundef 0) ; 0 uses
  ret i32 %.20
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 4097) i32 @decode_flowspec_nlri(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = add i16 %3, -3
  %or.cond = icmp ult i16 %i.b, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %5, ptr noundef null, ptr noundef nonnull @ei_bgp_afi_type_not_supported) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.e = icmp ugt i8 %i.d, -17
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %2)
  %i.g = and i16 %i.f, 4095
  %i.h = zext nneg i16 %i.g to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = zext i8 %i.d to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0180 = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 6 uses
  %.0179 = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]     ; 3 uses
  %i.j = load i32, ptr @hf_bgp_flowspec_nlri_t, align 4
  %i.k = add nuw nsw i32 %.0179, %.0180           ; 4 uses
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef %i.k, i32 noundef 0) ; 2 uses
  %i.m = icmp eq i32 %i.k, 1
  %i.n = select i1 %i.m, ptr @.str, ptr @.str.21
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.l, ptr noundef nonnull @.str.1973, i32 noundef %i.k, ptr noundef nonnull %i.n)
  %i.o = load i32, ptr @ett_bgp_flow_spec_nlri, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.o) ; 3 uses
  %i.q = load i32, ptr @hf_bgp_flowspec_nlri_length, align 4
  %i.r = tail call ptr @proto_tree_add_uint(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %1, i32 noundef %2, i32 noundef %.0179, i32 noundef %.0180) ; 0 uses
  %i.s = add i32 %.0179, %2                       ; 21 uses
  %i.t = icmp eq i8 %4, -122
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr @hf_bgp_flowspec_nlri_route_distinguisher, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.u, ptr noundef %1, i32 noundef %i.s, i32 noundef 8, i32 noundef 0)
  %i.w = load i32, ptr @ett_bgp_flow_spec_nlri, align 4
  %i.x = tail call ptr @proto_item_add_subtree(ptr noundef %i.v, i32 noundef %i.w) ; 8 uses
  %i.y = load i32, ptr @hf_bgp_flowspec_nlri_route_distinguisher_type, align 4
  %i.z = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.x, i32 noundef %i.y, ptr noundef %1, i32 noundef %i.s, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.aa = load i32, ptr %i.a, align 4             ; 2 uses
  switch i32 %i.aa, label %bb.k [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr @hf_bgp_flowspec_nlri_route_dist_admin_asnum_2, align 4
  %i.ac = add i32 %i.s, 2
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ab, ptr noundef %1, i32 noundef %i.ac, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_bgp_flowspec_nlri_route_dist_asnum_4, align 4
  %i.af = add i32 %i.s, 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ae, ptr noundef %1, i32 noundef %i.af, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr @hf_bgp_flowspec_nlri_route_dist_admin_ipv4, align 4
  %i.ai = add i32 %i.s, 2
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ah, ptr noundef %1, i32 noundef %i.ai, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ak = load i32, ptr @hf_bgp_flowspec_nlri_route_dist_asnum_2, align 4
  %i.al = add i32 %i.s, 6
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ak, ptr noundef %1, i32 noundef %i.al, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.an = load i32, ptr @hf_bgp_flowspec_nlri_route_dist_admin_asnum_4, align 4
  %i.ao = add i32 %i.s, 2
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.an, ptr noundef %1, i32 noundef %i.ao, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_bgp_flowspec_nlri_route_dist_asnum_2, align 4
  %i.ar = add i32 %i.s, 6
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.aq, ptr noundef %1, i32 noundef %i.ar, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.at = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %5, ptr noundef %i.x, ptr noundef nonnull @ei_bgp_length_invalid, ptr noundef nonnull @.str.1957, i32 noundef %i.aa) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.f
  %.0176 = phi i32 [ 0, %bb.f ], [ 8, %bb.k ], [ 8, %bb.j ], [ 8, %bb.i ], [ 8, %bb.h ] ; 2 uses
  %i.au = icmp samesign ult i32 %.0176, %.0180
  br i1 %i.au, label %.lr.ph, label %decode_bgp_nlri_op_dscp_value.exit.thread

.lr.ph:                                           ; preds = %bb.l
  %i.av = getelementptr i8, ptr %5, i64 416
  %i.aw = icmp eq i16 %3, 1                       ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.aj
  %.1177198 = phi i32 [ %.0176, %.lr.ph ], [ %i.lo, %bb.aj ] ; 13 uses
  %i.ax = load i32, ptr @hf_bgp_flowspec_nlri_filter, align 4
  %i.ay = add i32 %.1177198, %i.s                 ; 4 uses
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 32 uses
  %i.ba = load i32, ptr @ett_bgp_flow_spec_nlri_filter, align 4
  %i.bb = call ptr @proto_item_add_subtree(ptr noundef %i.az, i32 noundef %i.ba) ; 24 uses
  %i.bc = load i32, ptr @hf_bgp_flowspec_nlri_filter_type, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %1, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.be = load ptr, ptr %i.av, align 8
  %i.bf = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ay)
  %i.bg = zext i8 %i.bf to i32
end_hunk_0
begin_hunk_1_@decode_bgp_link_nlri_prefix_descriptors:bb.a

.loopexit:                                        ; preds = %bb.s, %bb.c
  %.1 = phi i16 [ %i.i, %bb.c ], [ %i.bq, %bb.s ]
  %i.bs = zext i16 %.1 to i32
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.r, %bb.p, %bb.g, %bb.f
  %.083 = phi i32 [ %i.bs, %.loopexit ], [ -1, %bb.g ], [ -1, %bb.f ], [ %i.bh, %bb.p ], [ %i.bm, %bb.r ]
  ret i32 %.083
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 65536) i32 @decode_bgp_link_nlri_srv6_sid_descriptors(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 1, 65535) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_bgp_ls_nlri_srv6_sid_descriptors_tlv, align 4
  %i.b = add nuw nsw i32 %4, 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef %i.b, i32 noundef 0)
  %i.d = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.n
  %.06492 = phi i16 [ 0, %bb.a ], [ %i.ax, %bb.n ] ; 2 uses
  %.06591 = phi i32 [ %4, %bb.a ], [ %i.au, %bb.n ] ; 3 uses
  %.06790 = phi i32 [ %2, %bb.a ], [ %i.av, %bb.n ] ; 9 uses
  %i.f = icmp samesign ult i32 %.06591, 4
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.1960) ; 0 uses
  %i.h = trunc nuw nsw i32 %.06591 to i16
  %i.i = add i16 %.06492, %i.h
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.06790) ; 2 uses
  %i.k = add i32 %.06790, 2                       ; 3 uses
  %i.l = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.k) ; 5 uses
  switch i16 %i.j, label %bb.i [
    i16 263, label %bb.e
    i16 518, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.not73 = icmp eq i16 %i.l, 2
  br i1 %.not73, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext i16 %i.l to i32
  %i.n = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.e, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2030, i32 noundef %i.m, i32 noundef 2) ; 0 uses
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %.not = icmp eq i16 %i.l, 16
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = zext i16 %i.l to i32
  %i.p = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.e, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2036, i32 noundef %i.o) ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.q = zext i16 %i.j to i32
  %i.r = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.e, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2037, i32 noundef %i.q) ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.s = load i32, ptr @hf_bgp_ls_tlv_multi_topology_id, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.s, ptr noundef %0, i32 noundef %.06790, i32 noundef 6, i32 noundef 0)
  %i.u = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.v = tail call ptr @proto_item_add_subtree(ptr noundef %i.t, i32 noundef %i.u) ; 4 uses
  %i.w = load i32, ptr @hf_bgp_ls_type, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.06790, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_bgp_ls_length, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.06790, 4                      ; 2 uses
  %i.ab = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aa)
  %i.ac = lshr i16 %i.ab, 12                      ; 2 uses
  %.not74 = icmp eq i16 %i.ac, 0
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.v, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2032, i32 noundef %i.ad) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = load i32, ptr @hf_bgp_ls_nlri_multi_topology_id, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.aa, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.ah = load i32, ptr @hf_bgp_ls_tlv_srv6_sid_info, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ah, ptr noundef %0, i32 noundef %.06790, i32 noundef 20, i32 noundef 0)
  %i.aj = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.ak = tail call ptr @proto_item_add_subtree(ptr noundef %i.ai, i32 noundef %i.aj) ; 3 uses
  %i.al = load i32, ptr @hf_bgp_ls_type, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.al, ptr noundef %0, i32 noundef %.06790, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_bgp_ls_length, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_bgp_ls_tlv_srv6_sid_info_sid, align 4
  %i.aq = add i32 %.06790, 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.aq, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = zext nneg i16 %i.l to i32
  %i.at = add nuw nsw i32 %i.as, 4                ; 3 uses
  %i.au = sub nsw i32 %.06591, %i.at              ; 2 uses
  %i.av = add i32 %i.at, %.06790
  %i.aw = trunc nuw nsw i32 %i.at to i16
  %i.ax = add i16 %.06492, %i.aw                  ; 2 uses
  %i.ay = icmp sgt i32 %i.au, 0
  br i1 %i.ay, label %bb.b, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.1 = phi i16 [ %i.i, %bb.c ], [ %i.ax, %bb.n ]
  %i.az = zext i16 %.1 to i32
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.i, %bb.h, %bb.f
  %.066 = phi i32 [ %i.az, %.loopexit ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.h ]
  ret i32 %.066
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @decode_mcast_vpn_nlri_addresses(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_bgp_mcast_vpn_nlri_source_length, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2) ; 2 uses
  switch i8 %i.c, label %bb.g [
    i8 -128, label %bb.b
    i8 32, label %bb.b
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = add i32 %2, 1                            ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 32, label %.sink.split
    i8 -128, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %hf_bgp_mcast_vpn_nlri_source_addr_ipv6.sink = phi ptr [ @hf_bgp_mcast_vpn_nlri_source_addr_ipv6, %bb.c ], [ @hf_bgp_mcast_vpn_nlri_source_addr_ipv4, %bb.b ]
  %.sink50 = phi i32 [ 16, %bb.c ], [ 4, %bb.b ]
  %.sink = phi i32 [ 17, %bb.c ], [ 5, %bb.b ]
  %i.e = load i32, ptr %hf_bgp_mcast_vpn_nlri_source_addr_ipv6.sink, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %i.d, i32 noundef %.sink50, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, %.sink
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.g, %.sink.split ] ; 4 uses
  %i.h = load i32, ptr @hf_bgp_mcast_vpn_nlri_group_length, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.0) ; 2 uses
  switch i8 %i.j, label %bb.g [
    i8 -128, label %bb.e
    i8 32, label %bb.e
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.k = add i32 %.0, 1                           ; 2 uses
  switch i8 %i.j, label %bb.g [
    i8 32, label %.sink.split51
    i8 -128, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.sink.split51

.sink.split51:                                    ; preds = %bb.e, %bb.f
  %hf_bgp_mcast_vpn_nlri_group_addr_ipv4.sink = phi ptr [ @hf_bgp_mcast_vpn_nlri_group_addr_ipv6, %bb.f ], [ @hf_bgp_mcast_vpn_nlri_group_addr_ipv4, %bb.e ]
  %.sink54 = phi i32 [ 16, %bb.f ], [ 4, %bb.e ]
  %.sink52 = phi i32 [ 17, %bb.f ], [ 5, %bb.e ]
  %i.l = load i32, ptr %hf_bgp_mcast_vpn_nlri_group_addr_ipv4.sink, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %i.k, i32 noundef %.sink54, i32 noundef 0) ; 0 uses
  %i.n = add i32 %.0, %.sink52
  br label %bb.g

bb.g:                                             ; preds = %.sink.split51, %bb.e, %bb.d, %bb.a
  %.048 = phi i32 [ -1, %bb.d ], [ -1, %bb.a ], [ %i.k, %bb.e ], [ %i.n, %.sink.split51 ]
  ret i32 %.048
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, -2147483646) i32 @decode_fspec_match_prefix6(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.e_in6_addr, align 1         ; 5 uses
  %7 = alloca %struct._address, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %4, 1
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.039.in = phi i8 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.038 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.039 = zext i8 %.039.in to i32                 ; 4 uses
  %i.e = add i32 %4, 2                            ; 2 uses
  %i.f = call i32 @tvb_get_ipv6_addr_with_prefix_len(ptr noundef %3, i32 noundef %i.e, ptr noundef nonnull %6, i32 noundef %.039) ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @ei_bgp_prefix_length_err, ptr noundef nonnull @.str.1975, i32 noundef %.039) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  store i32 3, ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 16, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.k, align 8
  %i.l = add nuw i32 %i.f, 1
  %i.m = load i32, ptr @ett_bgp_prefix, align 4
  %i.n = getelementptr i8, ptr %5, i64 416        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call ptr @address_to_str(ptr noundef %i.o, ptr noundef nonnull %7)
  %i.q = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %3, i32 noundef %4, i32 noundef %i.l, i32 noundef %i.m, ptr noundef null, ptr noundef nonnull @.str.1954, ptr noundef %i.p, i32 noundef %.039) ; 3 uses
  %i.r = load i32, ptr @hf_bgp_flowspec_nlri_ipv6_pref_len, align 4
  %i.s = add i32 %.0, %4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %3, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_bgp_flowspec_nlri_ipv6_pref_offset, align 4
  %i.v = add i32 %.038, %4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %3, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = call ptr @proto_tree_add_ipv6(ptr noundef %i.q, i32 noundef %2, ptr noundef %3, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull %6) ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = call ptr @address_to_str(ptr noundef %i.y, ptr noundef nonnull %7)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %1, ptr noundef nonnull @.str.1965, ptr noundef %i.z, i32 noundef %.039)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = add nuw i32 %i.f, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.040 = phi i32 [ -1, %bb.d ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %.040
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @decode_bgp_nlri_op_dec_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %1, ptr noundef nonnull @.str.1976)
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3) ; 3 uses
  %i.b = lshr i8 %i.a, 4
  %i.c = and i8 %i.b, 3
  %i.d = shl nuw nsw i8 1, %i.c                   ; 2 uses
  %i.e = load i32, ptr @hf_bgp_flowspec_nlri_op_flags, align 4
  %i.f = load i32, ptr @ett_bgp_flow_spec_nlri_op_flags, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @decode_bgp_flow_spec_dec_operator.flags, i32 noundef 0) ; 0 uses
  %i.h = zext i8 %i.a to i32                      ; 4 uses
  %i.i = and i32 %i.h, 64
  %i.j = icmp eq i32 %i.i, 0
  %i.k = select i1 %i.j, ptr @.str, ptr @.str.1978
  %i.l = and i32 %i.h, 2
  %i.m = icmp eq i32 %i.l, 0
  %i.n = select i1 %i.m, ptr @.str, ptr @.str.1979
  %i.o = and i32 %i.h, 4
  %i.p = icmp eq i32 %i.o, 0
  %i.q = select i1 %i.p, ptr @.str, ptr @.str.1980
  %i.r = and i32 %i.h, 1
  %i.s = icmp eq i32 %i.r, 0
  %i.t = select i1 %i.s, ptr @.str, ptr @.str.1981
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %1, ptr noundef nonnull @.str.1977, ptr noundef nonnull %i.k, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t)
  switch i8 %i.d, label %.loopexit [
    i8 1, label %bb.e
    i8 2, label %bb.d
    i8 3, label %bb.c
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_64, align 4
  %i.v = add i32 %3, 1
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.u, ptr noundef %2, i32 noundef %i.v, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.x = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_32, align 4
  %i.y = add i32 %3, 1                            ; 2 uses
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.x, ptr noundef %2, i32 noundef %i.y, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = tail call i32 @tvb_get_ntohl(ptr noundef %2, i32 noundef %i.y)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ab = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_16, align 4
  %i.ac = add i32 %3, 1                           ; 2 uses
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ab, ptr noundef %2, i32 noundef %i.ac, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef %i.ac)
  %i.af = zext i16 %i.ae to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ag = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_8, align 4
  %i.ah = add i32 %3, 1                           ; 2 uses
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.ah)
  %i.ak = zext i8 %i.aj to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.157.peel = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.aa, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %narrow = add nuw nsw i8 %i.d, 1
  %i.al = zext nneg i8 %narrow to i32             ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %.157.peel)
  %i.am = icmp sgt i8 %i.a, -1
  br i1 %i.am, label %.peel.next, label %.loopexit61

.peel.next:                                       ; preds = %bb.f, %bb.k
  %.058 = phi i32 [ %i.cb, %bb.k ], [ %i.al, %bb.f ] ; 2 uses
  %.056 = phi i32 [ %.157, %bb.k ], [ %.157.peel, %bb.f ]
  %i.an = add i32 %.058, %3                       ; 2 uses
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.an) ; 3 uses
  %i.ap = lshr i8 %i.ao, 4
  %i.aq = and i8 %i.ap, 3
  %i.ar = shl nuw nsw i8 1, %i.aq                 ; 2 uses
  %i.as = load i32, ptr @hf_bgp_flowspec_nlri_op_flags, align 4
  %i.at = load i32, ptr @ett_bgp_flow_spec_nlri_op_flags, align 4
  %i.au = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.an, i32 noundef %i.as, i32 noundef %i.at, ptr noundef nonnull @decode_bgp_flow_spec_dec_operator.flags, i32 noundef 0) ; 0 uses
  %i.av = zext i8 %i.ao to i32                    ; 4 uses
  %i.aw = and i32 %i.av, 64
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = select i1 %i.ax, ptr @.str.1983, ptr @.str.1978
  %i.az = and i32 %i.av, 2
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ba, ptr @.str, ptr @.str.1979
  %i.bc = and i32 %i.av, 4
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = select i1 %i.bd, ptr @.str, ptr @.str.1980
  %i.bf = and i32 %i.av, 1
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = select i1 %i.bg, ptr @.str, ptr @.str.1981
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %1, ptr noundef nonnull @.str.1982, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bh)
  %i.bi = add i32 %.058, 1                        ; 5 uses
  %i.bj = zext nneg i8 %i.ar to i32
  switch i8 %i.ar, label %.loopexit [
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.g:                                             ; preds = %.peel.next
  %i.bk = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_8, align 4
  %i.bl = add i32 %i.bi, %3                       ; 2 uses
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bk, ptr noundef %2, i32 noundef %i.bl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.bl)
  %i.bo = zext i8 %i.bn to i32
  br label %bb.k

bb.h:                                             ; preds = %.peel.next
  %i.bp = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_16, align 4
  %i.bq = add i32 %i.bi, %3                       ; 2 uses
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bp, ptr noundef %2, i32 noundef %i.bq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bs = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef %i.bq)
  %i.bt = zext i16 %i.bs to i32
  br label %bb.k

bb.i:                                             ; preds = %.peel.next
  %i.bu = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_32, align 4
  %i.bv = add i32 %i.bi, %3                       ; 2 uses
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bu, ptr noundef %2, i32 noundef %i.bv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bx = tail call i32 @tvb_get_ntohl(ptr noundef %2, i32 noundef %i.bv)
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.by = load i32, ptr @hf_bgp_flowspec_nlri_dec_val_64, align 4
end_hunk_1
begin_hunk_2_@decode_bgp_link_node_descriptor:bb.a
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.d) ; 10 uses
  switch i16 %i.c, label %bb.p [
    i16 512, label %bb.d
    i16 513, label %bb.g
    i16 514, label %bb.j
    i16 515, label %bb.m
    i16 516, label %bb.n
    i16 517, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @hf_bgp_ls_tlv_autonomous_system, align 4
  %i.g = zext i16 %i.e to i32                     ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 4                  ; 3 uses
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %.0120128, i32 noundef %i.h, i32 noundef 0)
  %i.j = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 3 uses
  %i.l = load i32, ptr @hf_bgp_ls_type, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef %.0120128, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_bgp_ls_length, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not125 = icmp eq i16 %i.e, 4
  br i1 %.not125, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2021, i32 noundef 4, i32 noundef %i.g) ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr @hf_bgp_ls_tlv_autonomous_system_id, align 4
  %i.r = add i32 %.0120128, 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.c
  %i.t = load i32, ptr @hf_bgp_ls_tlv_bgp_ls_identifier, align 4
  %i.u = zext i16 %i.e to i32                     ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 4                  ; 3 uses
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %.0120128, i32 noundef %i.v, i32 noundef 0)
  %i.x = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 3 uses
  %i.z = load i32, ptr @hf_bgp_ls_type, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef %.0120128, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_bgp_ls_length, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not124 = icmp eq i16 %i.e, 4
  br i1 %.not124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2022, i32 noundef 4, i32 noundef %i.u) ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ae = load i32, ptr @hf_bgp_ls_tlv_bgp_ls_identifier_id, align 4
  %i.af = add i32 %.0120128, 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  %i.ah = load i32, ptr @hf_bgp_ls_tlv_area_id, align 4
  %i.ai = zext i16 %i.e to i32                    ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 4                ; 3 uses
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ah, ptr noundef %0, i32 noundef %.0120128, i32 noundef %i.aj, i32 noundef 0)
  %i.al = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.am = tail call ptr @proto_item_add_subtree(ptr noundef %i.ak, i32 noundef %i.al) ; 3 uses
  %i.an = load i32, ptr @hf_bgp_ls_type, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.an, ptr noundef %0, i32 noundef %.0120128, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_bgp_ls_length, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not = icmp eq i16 %i.e, 4
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.2023, i32 noundef 4, i32 noundef %i.ai) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.as = load i32, ptr @hf_bgp_ls_tlv_area_id_id, align 4
  %i.at = add i32 %.0120128, 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.at, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  %i.av = load i32, ptr @hf_bgp_ls_tlv_igp_router, align 4
  %i.aw = zext i16 %i.e to i32                    ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, 4                ; 2 uses
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.av, ptr noundef %0, i32 noundef %.0120128, i32 noundef %i.ax, i32 noundef 0)
  %i.az = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.ba = tail call ptr @proto_item_add_subtree(ptr noundef %i.ay, i32 noundef %i.az) ; 3 uses
  %i.bb = load i32, ptr @hf_bgp_ls_type, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef %0, i32 noundef %.0120128, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bd = load i32, ptr @hf_bgp_ls_length, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.ba, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_bgp_ls_tlv_igp_router_id, align 4
  %i.bg = add i32 %.0120128, 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.ba, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.bg, i32 noundef %i.aw, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %i.bi = load i32, ptr @hf_bgp_ls_tlv_bgp_router_id, align 4
  %i.bj = zext i16 %i.e to i32                    ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, 4                ; 2 uses
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bi, ptr noundef %0, i32 noundef %.0120128, i32 noundef %i.bk, i32 noundef 0)
  %i.bm = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.bn = tail call ptr @proto_item_add_subtree(ptr noundef %i.bl, i32 noundef %i.bm) ; 3 uses
  %i.bo = load i32, ptr @hf_bgp_ls_type, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.bo, ptr noundef %0, i32 noundef %.0120128, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bq = load i32, ptr @hf_bgp_ls_length, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bs = load i32, ptr @hf_bgp_ls_tlv_bgp_router_id_id, align 4
  %i.bt = add i32 %.0120128, 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.bs, ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  %i.bv = load i32, ptr @hf_bgp_ls_tlv_bgp_confederation_member, align 4
  %i.bw = zext i16 %i.e to i32                    ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, 4                ; 2 uses
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bv, ptr noundef %0, i32 noundef %.0120128, i32 noundef %i.bx, i32 noundef 0)
  %i.bz = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.ca = tail call ptr @proto_item_add_subtree(ptr noundef %i.by, i32 noundef %i.bz) ; 3 uses
  %i.cb = load i32, ptr @hf_bgp_ls_type, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cb, ptr noundef %0, i32 noundef %.0120128, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_bgp_ls_length, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cf = load i32, ptr @hf_bgp_ls_tlv_bgp_confederation_member_as, align 4
  %i.cg = add i32 %.0120128, 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.cg, i32 noundef %i.bw, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.ci = zext i16 %i.c to i32
  %i.cj = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @ei_bgp_ls_warn, ptr noundef nonnull @.str.2024, i32 noundef %i.ci) ; 0 uses
  %.pre = zext i16 %i.e to i32
  %.pre134 = add nuw nsw i32 %.pre, 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e
  %.pre-phi135 = phi i32 [ %.pre134, %bb.p ], [ %i.bx, %bb.o ], [ %i.bk, %bb.n ], [ %i.ax, %bb.m ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ], [ %i.v, %bb.i ], [ %i.v, %bb.h ], [ %i.h, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  %i.ck = sub nsw i32 %.0119129, %.pre-phi135     ; 2 uses
  %i.cl = add i32 %.pre-phi135, %.0120128
  %i.cm = icmp sgt i32 %i.ck, 0
  br i1 %i.cm, label %.lr.ph, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %bb.q, %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare float @tvb_get_ntohieee_float(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tfs_get_string(i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_ntoh48(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_add_bitmask_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_prepend_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_uint16_remaining(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65536) i32 @get_bgp_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 16
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.a)
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(1) }
attributes #8 = { noreturn }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !7, !17}
!19 = distinct !{!19, !7, !17}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7, !17}
!75 = distinct !{!75, !7, !17}
!76 = distinct !{!76, !7, !17}
!77 = distinct !{!77, !7}
!78 = !{i64 2152556936}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7, !17}
!83 = distinct !{!83, !7}
!84 = distinct !{!84, !7}
end_hunk_2
