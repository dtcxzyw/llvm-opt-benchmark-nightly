Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-wccp?download=true
inline.NumInlined: 27
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_wccp2_web_cache_identity_element:bb.a
bb.w:                                             ; preds = %bb.o
  %i.bm = icmp samesign ult i32 %.0.i, 4
  br i1 %i.bm, label %dissect_wccp2_assignment_weight_and_status_element.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = load i32, ptr @hf_assignment_weight, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.am, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %1, 14
  %i.bq = load i32, ptr @hf_assignment_status, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bp, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_wccp2_assignment_weight_and_status_element.exit.i

dissect_wccp2_assignment_weight_and_status_element.exit.i: ; preds = %bb.x, %bb.w
  %i.bs = sub nsw i32 %i.al, %.0.i
  br label %dissect_wccp2_extended_assignment_data_element.exit

dissect_wccp2_extended_assignment_data_element.exit: ; preds = %bb.j, %bb.o, %bb.p, %bb.q, %dissect_wccp2_alternate_mask_assignment_data_element.exit.i, %dissect_wccp2_assignment_weight_and_status_element.exit.i
  %.071.i = phi i32 [ %i.aa, %bb.j ], [ %i.bs, %dissect_wccp2_assignment_weight_and_status_element.exit.i ], [ %i.bl, %dissect_wccp2_alternate_mask_assignment_data_element.exit.i ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.al, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.y

default.unreachable68:                            ; preds = %bb.e
  unreachable

bb.y:                                             ; preds = %dissect_wccp2_extended_assignment_data_element.exit, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %.071.i, %dissect_wccp2_extended_assignment_data_element.exit ], [ %i.t, %bb.h ], [ %i.w, %bb.g ], [ %i.v, %bb.f ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -35, 2147483635) i32 @dissect_wccp2_hash_assignment_data_element(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2147483640) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ett_hash_assignment_buckets, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 32, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.427)
  %umin = tail call i32 @llvm.umin.i32(i32 %2, i32 31) ; 2 uses
  %i.c = sub nsw i32 %2, %umin                    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.07 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.d ]
  %.0226 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.d ]
  %.0245 = phi i32 [ %1, %bb.a ], [ %i.i, %bb.d ] ; 4 uses
  %.0254 = phi i32 [ %2, %bb.a ], [ %i.h, %bb.d ] ; 2 uses
  %i.d = icmp eq i32 %.0254, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i32 -4, %umin
  br label %dissect_wccp2_assignment_weight_and_status_element.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0245)
  %i.g = tail call fastcc i32 @wccp_bucket_info(i8 noundef zeroext %i.f, ptr noundef %i.b, i32 noundef %.07, ptr noundef %0, i32 noundef %.0245)
  %i.h = add nsw i32 %.0254, -1                   ; 2 uses
  %i.i = add i32 %.0245, 1                        ; 2 uses
  %i.j = add nuw nsw i32 %.0226, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, 32
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !29

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i32 %i.c, 3
  br i1 %i.k, label %dissect_wccp2_assignment_weight_and_status_element.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i32 %i.c, 5
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = or disjoint i32 %i.h, -4
  br label %dissect_wccp2_assignment_weight_and_status_element.exit

bb.h:                                             ; preds = %bb.f
  %i.n = load i32, ptr @hf_assignment_weight, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = add i32 %.0245, 3
  %i.q = load i32, ptr @hf_assignment_status, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = add nsw i32 %i.c, -5
  br label %dissect_wccp2_assignment_weight_and_status_element.exit

dissect_wccp2_assignment_weight_and_status_element.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.023 = phi i32 [ %i.e, %bb.c ], [ -4, %bb.e ], [ %i.m, %bb.g ], [ %i.s, %bb.h ]
  ret i32 %.023
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2147483648, 2147483644) i32 @dissect_wccp2_mask_assignment_data_element(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2147483640) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr @ett_mask_assignment_data_element, align 4
  %i.c = call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.428)
  %i.d = call fastcc i32 @dissect_wccp2_mask_value_set_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.c, ptr noundef %5) ; 8 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nsw i32 %2, %i.d                     ; 3 uses
  %i.g = add i32 %i.f, %1                         ; 4 uses
  %.not = icmp slt i32 %1, %i.g
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.d, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = or disjoint i32 %i.d, -4
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %i.d, 4
  br i1 %i.j, label %.thread68, label %bb.f

.thread68:                                        ; preds = %bb.e
  %i.k = or disjoint i32 %i.d, -4
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @hf_assignment_weight, align 4
  %i.m = call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add i32 %i.g, 2
  %i.o = load i32, ptr @hf_assignment_status, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not59 = icmp slt i32 %i.g, 2147483644
  br i1 %.not59, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.d, -4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = add nsw i32 %i.f, 4
  call void @proto_item_set_len(ptr noundef %i.r, i32 noundef %i.s)
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread68, %bb.f, %bb.b, %bb.g, %bb.d
  %.2 = phi i32 [ %i.i, %bb.d ], [ %i.q, %bb.g ], [ 4, %bb.f ], [ %i.f, %bb.b ], [ %i.k, %.thread68 ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_wccp2_mask_value_set_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = icmp slt i32 %2, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %2, -4
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @ett_mv_set_list, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.429) ; 2 uses
  %i.g = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.h = load i32, ptr @hf_mask_value_set_list_num_elements, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.h, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.j = add nsw i32 %2, -4                       ; 2 uses
  %i.k = add i32 %1, 4                            ; 2 uses
  %.not93 = icmp eq i32 %i.g, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.s
  %i.l = add nuw i32 %.04091, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.04091 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.04290 = phi i32 [ %i.bn, %bb.d ], [ %i.k, %bb.c ] ; 6 uses
  %.04489 = phi i32 [ %.3.i55, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.m = load i32, ptr @ett_mv_set_element, align 4
  %i.n = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.f, ptr noundef %0, i32 noundef %.04290, i32 noundef 0, i32 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.430, i32 noundef %.04091) ; 2 uses
  %i.o = call fastcc i32 @dissect_wccp2_mask_element(ptr noundef %0, i32 noundef %.04290, i32 noundef range(i32 0, -2147483648) %.04489, ptr noundef %i.n) ; 6 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %dissect_wccp2_mask_value_set_element.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = sub nsw i32 %.04489, %i.o                ; 2 uses
  %i.r = add i32 %i.q, %.04290                    ; 4 uses
  %.not.i = icmp slt i32 %.04290, %i.r
  br i1 %.not.i, label %bb.f, label %dissect_wccp2_mask_value_set_element.exit

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ult i32 %i.o, 4
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = or disjoint i32 %i.o, -4
  br label %dissect_wccp2_mask_value_set_element.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.u = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.r) ; 4 uses
  %i.v = load i32, ptr @hf_mask_value_set_element_value_element_num, align 4
  %i.w = call ptr @proto_tree_add_uint(ptr noundef %i.n, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef %i.u)
  %i.x = load i32, ptr @ett_mv_set_value_list, align 4
  %i.y = call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 4 uses
  %i.z = add nsw i32 %i.o, -4                     ; 2 uses
  %.not98.i = icmp eq i32 %i.u, 0
  br i1 %.not98.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.aa = add i32 %i.r, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.05797.i = phi i32 [ %i.bk, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.16196.i = phi i32 [ %i.bj, %bb.r ], [ %i.aa, %.lr.ph.preheader.i ] ; 8 uses
  %.16495.i = phi i32 [ %i.bi, %bb.r ], [ %i.z, %.lr.ph.preheader.i ] ; 11 uses
  %i.ab = icmp samesign ult i32 %.16495.i, 4
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ac = or disjoint i32 %.16495.i, -16
  br label %dissect_wccp2_mask_value_set_element.exit.thread

bb.j:                                             ; preds = %.lr.ph.i
  %i.ad = load i32, ptr @ett_value_element, align 4
  %i.ae = add i32 %.16196.i, 8
  %i.af = add i32 %.16196.i, 10
  %i.ag = add i32 %.16196.i, 12                   ; 2 uses
  %i.ah = call fastcc ptr @decode_wccp_encoded_address(ptr noundef %0, i32 noundef %i.ag, ptr noundef readonly %3, ptr noundef readonly %5)
  %i.ai = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.y, ptr noundef %0, i32 noundef %.16196.i, i32 noundef 16, i32 noundef %i.ad, ptr noundef null, ptr noundef nonnull @.str.431, i32 noundef %.05797.i, ptr noundef %i.ah) ; 2 uses
  %i.aj = load i32, ptr @hf_value_element_src_ip_index, align 4
  %i.ak = load i32, ptr @hf_value_element_src_ipv4, align 4
  %i.al = load i32, ptr @hf_value_element_src_ipv6, align 4
  %i.am = call fastcc ptr @wccp_add_ipaddress_item(ptr noundef %i.y, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al, ptr noundef %0, i32 noundef %.16196.i, ptr noundef readonly %5) ; 0 uses
  %i.an = icmp samesign ult i32 %.16495.i, 8
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = or disjoint i32 %.16495.i, -8
  br label %dissect_wccp2_mask_value_set_element.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ap = add i32 %.16196.i, 4
  %i.aq = load i32, ptr @hf_value_element_dest_ip_index, align 4
  %i.ar = load i32, ptr @hf_value_element_dest_ipv4, align 4
  %i.as = load i32, ptr @hf_value_element_dest_ipv6, align 4
  %i.at = call fastcc ptr @wccp_add_ipaddress_item(ptr noundef %i.y, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ap, ptr noundef readonly %5) ; 0 uses
  %i.au = icmp samesign ult i32 %.16495.i, 10
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nuw nsw i32 %.16495.i, -10
  br label %dissect_wccp2_mask_value_set_element.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.aw = load i32, ptr @hf_value_element_src_port, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ae, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ay = icmp samesign ult i32 %.16495.i, 12
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = add nuw nsw i32 %.16495.i, -12
  br label %dissect_wccp2_mask_value_set_element.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ba = load i32, ptr @hf_value_element_dest_port, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bc = icmp samesign ult i32 %.16495.i, 16
  br i1 %i.bc, label %bb.q, label %dissect_wccp2_value_element.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bd = or disjoint i32 %.16495.i, -16
  br label %dissect_wccp2_mask_value_set_element.exit.thread

dissect_wccp2_value_element.exit.i:               ; preds = %bb.p
  %i.be = load i32, ptr @hf_value_element_web_cache_ip_index, align 4
  %i.bf = load i32, ptr @hf_value_element_web_cache_ipv4, align 4
  %i.bg = load i32, ptr @hf_value_element_web_cache_ipv6, align 4
  %i.bh = call fastcc ptr @wccp_add_ipaddress_item(ptr noundef %i.y, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.ag, ptr noundef readonly %5) ; 0 uses
  %.not75.i = icmp slt i32 %.16196.i, 2147483632
  br i1 %.not75.i, label %bb.r, label %dissect_wccp2_mask_value_set_element.exit.thread53

dissect_wccp2_mask_value_set_element.exit.thread53: ; preds = %dissect_wccp2_value_element.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.s

bb.r:                                             ; preds = %dissect_wccp2_value_element.exit.i
  %i.bi = add nsw i32 %.16495.i, -16              ; 2 uses
  %i.bj = add nsw i32 %.16196.i, 16
  %i.bk = add nuw nsw i32 %.05797.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bk, %i.u
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %bb.r, %bb.h
  %.pre-phi.i = phi i32 [ %i.z, %bb.h ], [ %i.bi, %bb.r ]
  %6 = load ptr, ptr %i.a, align 8
  %7 = shl i32 %i.u, 4
  %8 = add i32 %7, 16
  call void @proto_item_set_len(ptr noundef %6, i32 noundef %8)
  br label %dissect_wccp2_mask_value_set_element.exit

dissect_wccp2_mask_value_set_element.exit.thread: ; preds = %.lr.ph, %bb.g, %bb.k, %bb.i, %bb.q, %bb.o, %bb.m
  %.3.i.ph = phi i32 [ %i.av, %bb.m ], [ %i.az, %bb.o ], [ %i.bd, %bb.q ], [ %i.ac, %bb.i ], [ %i.t, %bb.g ], [ %i.ao, %bb.k ], [ %i.o, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

dissect_wccp2_mask_value_set_element.exit:        ; preds = %bb.e, %._crit_edge.i
  %.3.i = phi i32 [ %i.q, %bb.e ], [ %.pre-phi.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bl = icmp slt i32 %.3.i, 0
  br i1 %i.bl, label %.thread, label %bb.s

bb.s:                                             ; preds = %dissect_wccp2_mask_value_set_element.exit, %dissect_wccp2_mask_value_set_element.exit.thread53
  %.3.i55 = phi i32 [ 16, %dissect_wccp2_mask_value_set_element.exit.thread53 ], [ %.3.i, %dissect_wccp2_mask_value_set_element.exit ] ; 3 uses
  %i.bm = sub nsw i32 %.04489, %.3.i55            ; 2 uses
  %i.bn = add i32 %i.bm, %.04290                  ; 3 uses
  %.not = icmp slt i32 %.04290, %i.bn
  br i1 %.not, label %bb.d, label %.thread

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.044.lcssa = phi i32 [ %i.j, %bb.c ], [ %.3.i55, %bb.d ]
  %.042.lcssa = phi i32 [ %i.k, %bb.c ], [ %i.bn, %bb.d ]
  %i.bo = load ptr, ptr %i.b, align 8
  %i.bp = sub i32 %.042.lcssa, %1
  call void @proto_item_set_len(ptr noundef %i.bo, i32 noundef %i.bp)
  br label %.thread

.thread:                                          ; preds = %dissect_wccp2_mask_value_set_element.exit, %bb.s, %dissect_wccp2_mask_value_set_element.exit.thread, %._crit_edge, %bb.b
  %.2 = phi i32 [ %i.d, %bb.b ], [ %.3.i.ph, %dissect_wccp2_mask_value_set_element.exit.thread ], [ %.044.lcssa, %._crit_edge ], [ %.3.i, %dissect_wccp2_mask_value_set_element.exit ], [ %i.bm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -12, 2147483636) i32 @dissect_wccp2_mask_element(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, -2147483648) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i32 %2, -12
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_mask_element_src_ip, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.c, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = icmp samesign ult i32 %2, 8
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = or disjoint i32 %2, -8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = add i32 %1, 4
  %i.h = load i32, ptr @hf_mask_element_dest_ip, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.j = icmp samesign ult i32 %2, 10
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add nuw nsw i32 %2, -10
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = add i32 %1, 8
  %i.m = load i32, ptr @hf_mask_element_src_port, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = icmp samesign ult i32 %2, 12
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = add nuw nsw i32 %2, -12
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = add i32 %1, 10
  %i.r = load i32, ptr @hf_mask_element_dest_port, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.q, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.t = add nsw i32 %2, -12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.f, %bb.d ], [ %i.k, %bb.f ], [ %i.p, %bb.h ], [ %i.t, %bb.i ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @decode_wccp_encoded_address(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i8, ptr %3, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @tvb_get_ipv4(ptr noundef %0, i32 noundef %1)
  store i32 %i.d, ptr %i.a, align 4
  %i.e = getelementptr i8, ptr %2, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.f, i64 noundef 16) #9 ; 2 uses
  call void @ip_addr_to_str_buf(ptr noundef nonnull %i.a, ptr noundef %i.g, i32 noundef 16)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %1) ; 9 uses
  %.not = icmp ult i32 %i.h, 65536
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %2, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noalias ptr @wmem_strdup(ptr noundef %i.j, ptr noundef nonnull @.str.421)
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %3, i64 2
  %i.m = load i16, ptr %i.l, align 2
  switch i16 %i.m, label %bb.t [
    i16 1, label %bb.f
    i16 2, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %i.h, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %2, i64 416
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noalias ptr @wmem_strdup(ptr noundef %i.p, ptr noundef nonnull @.str.432)
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %3, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = icmp samesign ugt i32 %i.h, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %2, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.w, ptr noundef nonnull @.str.422, i32 noundef %i.h, i32 noundef %i.t)
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not42 = icmp eq ptr %i.z, null
  %i.aa = getelementptr i8, ptr %2, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.ab, i64 noundef 16) #9 ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = getelementptr [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  tail call void @ip_addr_to_str_buf(ptr noundef %i.ag, ptr noundef %i.ac, i32 noundef 16)
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ah = tail call noalias ptr @wmem_strdup(ptr noundef %i.ab, ptr noundef nonnull @.str.433)
  br label %bb.u

bb.m:                                             ; preds = %bb.e
  %i.ai = icmp eq i32 %i.h, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %2, i64 416
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noalias ptr @wmem_strdup(ptr noundef %i.ak, ptr noundef nonnull @.str.434)
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %3, i64 6
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.h, %i.ao
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %2, i64 416
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ar, ptr noundef nonnull @.str.424, i32 noundef %i.h, i32 noundef %i.ao)
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not41 = icmp eq ptr %i.au, null
  %i.av = getelementptr i8, ptr %2, i64 416
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  br i1 %.not41, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call noalias dereferenceable_or_null(46) ptr @wmem_alloc(ptr noundef %i.aw, i64 noundef 46) #9 ; 2 uses
  %i.ay = load ptr, ptr %i.at, align 8
  %i.az = zext nneg i32 %i.h to i64
  %i.ba = getelementptr [16 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  tail call void @ip6_to_str_buf(ptr noundef %i.bb, ptr noundef %i.ax, i64 noundef 46)
  br label %bb.u

end_hunk_0
