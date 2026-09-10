Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-infiniband?download=true
inline.NumInlined: 91
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@dissect_mellanox_eoib:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @call_data_dissector(ptr noundef %i.aa, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @eth_handle, align 8
  %i.ad = tail call i32 @call_dissector(ptr noundef %i.ac, ptr noundef %i.aa, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_id_by_filter_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @dissect_eth_over_ib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %4 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %5 = alloca %struct.except_catch, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i8 0, ptr %i.a, align 1
  %i.d = call i32 @tvb_reported_length(ptr noundef %0)
  %i.e = icmp ult i32 %i.d, 4
  br i1 %i.e, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.g = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @except_setup_try(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @dissect_eth_over_ib.catch_spec, i64 noundef 1)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.k = call i32 @_setjmp(ptr noundef nonnull %i.j) #17
  %.not45 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sink = select i1 %.not45, ptr null, ptr %i.l
  store volatile ptr %.sink, ptr %i.b, align 8
  %.0..0..0..0.4 = load volatile i32, ptr %i.c, align 4
  %i.m = and i32 %.0..0..0..0.4, 1
  %.not46 = icmp eq i32 %i.m, 0
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0..0..0..0.5 = load volatile i32, ptr %i.c, align 4
  %i.n = or i32 %.0..0..0..0.5, 2
  store volatile i32 %i.n, ptr %i.c, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0..0..0..0.6 = load volatile i32, ptr %i.c, align 4
  %i.o = and i32 %.0..0..0..0.6, -2
  store volatile i32 %i.o, ptr %i.c, align 4
  %.0..0..0..0.7 = load volatile i32, ptr %i.c, align 4
  %i.p = icmp eq i32 %.0..0..0..0.7, 0
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.0..0..0..0.11 = load volatile ptr, ptr %i.b, align 8
  %i.q = icmp eq ptr %.0..0..0..0.11, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @ethertype_dissector_table, align 8
  %i.s = zext i16 %i.f to i32
  %i.t = call i32 @dissector_try_uint(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %i.h, ptr noundef %1, ptr noundef %2)
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i8
  store volatile i8 %i.v, ptr %i.a, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0..0..0..0.8 = load volatile i32, ptr %i.c, align 4
  %i.w = icmp eq i32 %.0..0..0..0.8, 0
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.0..0..0..0.12 = load volatile ptr, ptr %i.b, align 8
  %.not47 = icmp eq ptr %.0..0..0..0.12, null
  br i1 %.not47, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.13 = load volatile ptr, ptr %i.b, align 8
  %i.x = getelementptr i8, ptr %.0..0..0..0.13, i64 8
  %i.y = load volatile i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.y, 3
  br i1 %i.z, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.0..0..0..0.14 = load volatile ptr, ptr %i.b, align 8
  %i.aa = getelementptr i8, ptr %.0..0..0..0.14, i64 8
  %i.ab = load volatile i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.15 = load volatile ptr, ptr %i.b, align 8
  %i.ad = getelementptr i8, ptr %.0..0..0..0.15, i64 8
  %i.ae = load volatile i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ae, 7
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0..0..0..0.16 = load volatile ptr, ptr %i.b, align 8
  %i.ag = getelementptr i8, ptr %.0..0..0..0.16, i64 8
  %i.ah = load volatile i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, 9
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.0..0..0..0.9 = load volatile i32, ptr %i.c, align 4
  %i.aj = or i32 %.0..0..0..0.9, 1
  store volatile i32 %i.aj, ptr %i.c, align 4
  %.0..0..0..0.17 = load volatile ptr, ptr %i.b, align 8
  %i.ak = getelementptr i8, ptr %.0..0..0..0.17, i64 8
  %i.al = load volatile i64, ptr %i.ak, align 8
  %.0..0..0..0.18 = load volatile ptr, ptr %i.b, align 8
  %i.am = getelementptr i8, ptr %.0..0..0..0.18, i64 16
  %i.an = load volatile ptr, ptr %i.am, align 8
  call void @show_exception(ptr noundef %i.h, ptr noundef %1, ptr noundef %2, i64 noundef %i.al, ptr noundef %i.an)
  store volatile i8 1, ptr %i.a, align 1
  store ptr %i.i, ptr %1, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.i, %bb.h
  %.0..0..0..0.10 = load volatile i32, ptr %i.c, align 4
  %i.ao = and i32 %.0..0..0..0.10, 1
  %.not48 = icmp eq i32 %i.ao, 0
  br i1 %.not48, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.0..0..0..0.19 = load volatile ptr, ptr %i.b, align 8
  %.not49 = icmp eq ptr %.0..0..0..0.19, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0..0..0..0.20 = load volatile ptr, ptr %i.b, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.20) #18
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aq = load volatile ptr, ptr %i.ap, align 8
  call void @except_free(ptr noundef %i.aq)
  %i.ar = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.0..0..0..0.21 = load volatile i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.as = trunc nuw i8 %.0..0..0..0.21 to i1
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr %3, align 8
  %i.au = load i32, ptr @hf_infiniband_payload, align 4
  %i.av = call i32 @tvb_reported_length(ptr noundef %0)
  %i.aw = add i32 %i.av, -6
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.au, ptr noundef %0, i32 noundef 0, i32 noundef %i.aw, i32 noundef 0) ; 2 uses
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ax, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.1589)
  %i.ay = load i32, ptr @ett_payload, align 4
  %i.az = call ptr @proto_item_add_subtree(ptr noundef %i.ax, i32 noundef %i.ay) ; 2 uses
  %i.ba = load i32, ptr @hf_infiniband_etype, align 4
  %i.bb = zext i16 %i.f to i32
  %i.bc = call ptr @proto_tree_add_uint(ptr noundef %i.az, i32 noundef %i.ba, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.bb) ; 0 uses
  %i.bd = load i32, ptr @hf_infiniband_reserved, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.az, i32 noundef %i.bd, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0..0..0..0.22 = load volatile i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.bf = trunc nuw i8 %.0..0..0..0.22 to i1
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.a, %bb.t
  %.0 = phi i1 [ %i.bf, %bb.t ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_delete_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_infiniband_common(ptr noundef %0, ptr noundef initializes((284, 296)) %1, ptr noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 79 uses
  %4 = alloca %struct.infinibandinfo, align 8     ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 292        ; 3 uses
  store i32 -1, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %1, i64 288
  store i32 -1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 284
  store i32 10, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef nonnull @.str.1043)
  %i.g = load ptr, ptr %i.e, align 8
  tail call void @col_clear(ptr noundef %i.g, i32 noundef 25)
  %i.h = load i32, ptr @proto_infiniband, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.j = load i32, ptr @ett_all_headers, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 77 uses
  switch i32 %3, label %bb.b [
    i32 1, label %.thread
    i32 2, label %.thread409
  ]

.thread:                                          ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.l, i32 noundef 35, ptr noundef nonnull @.str.1228)
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.n = trunc i32 %i.m to i16
  br label %bb.c

.thread409:                                       ; preds = %bb.a
  %i.o = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 35, ptr noundef nonnull @.str.1229)
  %i.p = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.q = trunc i32 %i.p to i16
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr @hf_infiniband_LRH, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.r, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.s, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.15)
  %i.t = load i32, ptr @ett_lrh, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 9 uses
  %i.v = load i32, ptr @hf_infiniband_virtual_lane, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_infiniband_link_version, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_infiniband_service_level, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.z, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_infiniband_reserved2, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ab, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_infiniband_link_next_header, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ad, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ag = and i8 %i.af, 3
  store i32 2, ptr %i.a, align 4
  %i.ah = load i32, ptr @hf_infiniband_destination_local_id, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ah, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = getelementptr i8, ptr %1, i64 416       ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noalias dereferenceable_or_null(2) ptr @wmem_alloc(ptr noundef %i.ak, i64 noundef 2) #15 ; 2 uses
  %i.am = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  store i16 %i.am, ptr %i.al, align 2
  %i.an = getelementptr i8, ptr %1, i64 232       ; 2 uses
  store i32 9, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %1, i64 236       ; 2 uses
  store i32 2, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %1, i64 240       ; 2 uses
  store ptr %i.al, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %1, i64 248       ; 2 uses
  store ptr null, ptr %i.aq, align 8
  %i.ar = load i32, ptr @hf_infiniband_reserved5, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ar, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.at = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  %i.au = shl i16 %i.at, 2
  %i.av = and i16 %i.au, 8188
  %i.aw = load i32, ptr @hf_infiniband_packet_length, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.aw, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ay = load i32, ptr @hf_infiniband_source_local_id, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ay, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = load ptr, ptr %i.aj, align 8
  %i.bb = tail call noalias dereferenceable_or_null(2) ptr @wmem_alloc(ptr noundef %i.ba, i64 noundef 2) #15 ; 2 uses
  %i.bc = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6)
  store i16 %i.bc, ptr %i.bb, align 2
  %i.bd = getelementptr i8, ptr %1, i64 208
  store i32 9, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %1, i64 212
  store i32 2, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %1, i64 216
  store ptr %i.bb, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %1, i64 224
  store ptr null, ptr %i.bg, align 8
  %i.bh = add nsw i16 %i.av, -8                   ; 2 uses
  switch i8 %i.ag, label %default.unreachable413 [
    i8 3, label %bb.c
    i8 2, label %bb.d
    i8 1, label %bb.g
    i8 0, label %bb.h
  ]

bb.c:                                             ; preds = %.thread, %bb.b
  %i.bi = phi i32 [ 0, %.thread ], [ 8, %bb.b ]   ; 10 uses
  %.0393408 = phi i32 [ 4, %.thread ], [ 6, %bb.b ]
  %.0394406 = phi i16 [ %i.n, %.thread ], [ %i.bh, %bb.b ]
  %i.bj = load i32, ptr @hf_infiniband_GRH, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.bi, i32 noundef 40, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.bk, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.35)
  %i.bl = load i32, ptr @ett_grh, align 4
  %i.bm = tail call ptr @proto_item_add_subtree(ptr noundef %i.bk, i32 noundef %i.bl) ; 8 uses
  %i.bn = load i32, ptr @hf_infiniband_ip_version, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_infiniband_traffic_class, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.br = load i32, ptr @hf_infiniband_flow_label, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bt = or disjoint i32 %i.bi, 4
  %i.bu = load i32, ptr @hf_infiniband_payload_length, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bw = or disjoint i32 %i.bi, 6                ; 2 uses
  %i.bx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bw)
  %i.by = load i32, ptr @hf_infiniband_next_header, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.bw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ca = or disjoint i32 %i.bi, 7
  %i.cb = load i32, ptr @hf_infiniband_hop_limit, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.cb, ptr noundef %0, i32 noundef %i.ca, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = add nuw nsw i32 %i.bi, 8                ; 2 uses
  %i.ce = load i32, ptr @hf_infiniband_source_gid, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.cd, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.cg = getelementptr i8, ptr %1, i64 208
  %i.ch = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.cd, i32 noundef 16)
  store i32 9, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %1, i64 212
  store i32 16, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %1, i64 216
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %1, i64 224
  store ptr null, ptr %i.ck, align 8
  %i.cl = add nuw nsw i32 %i.bi, 24               ; 2 uses
  %i.cm = load i32, ptr @hf_infiniband_destination_gid, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.co = getelementptr i8, ptr %1, i64 232
  %i.cp = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.cl, i32 noundef 16)
  store i32 9, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %1, i64 236
  store i32 16, ptr %i.cq, align 4
  %i.cr = getelementptr i8, ptr %1, i64 240
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %1, i64 248
  store ptr null, ptr %i.cs, align 8
  %i.ct = add nuw nsw i32 %i.bi, 40               ; 2 uses
  store i32 %i.ct, ptr %i.a, align 4
  %i.cu = add i16 %.0394406, -40
  %.not = icmp eq i8 %i.bx, 27
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.thread409, %bb.c, %bb.b
  %i.cv = phi i32 [ %i.ct, %bb.c ], [ 8, %bb.b ], [ 0, %.thread409 ] ; 10 uses
  %.0393407 = phi i32 [ %.0393408, %bb.c ], [ 6, %bb.b ], [ 4, %.thread409 ] ; 17 uses
  %.1 = phi i16 [ %i.cu, %bb.c ], [ %i.bh, %bb.b ], [ %i.q, %.thread409 ]
  %i.cw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cv) ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 %i.cw, ptr %i.cx, align 8
  %i.cy = add nuw nsw i32 %i.cv, 1                ; 6 uses
  %i.cz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cy)
  %i.da = lshr i8 %i.cz, 4
  %i.db = and i8 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %i.db, ptr %i.dc, align 1
  %.mask = and i8 %i.cw, -32
  %i.dd = icmp eq i8 %.mask, 64
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.de = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cy)
  %.not401 = icmp sgt i8 %i.de, -1
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dg = zext i1 %.not401 to i8
  store i8 %i.dg, ptr %i.df, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %DctOpCodeMap.OpCodeMap = phi ptr [ @DctOpCodeMap, %bb.e ], [ @OpCodeMap, %bb.d ]
  %.0397 = phi i32 [ 20, %bb.e ], [ 12, %bb.d ]   ; 4 uses
  %i.dh = load i32, ptr @hf_infiniband_BTH, align 4
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.cv, i32 noundef %.0397, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.di, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.53)
  %i.dj = load i32, ptr @ett_bth, align 4
  %i.dk = tail call ptr @proto_item_add_subtree(ptr noundef %i.di, i32 noundef %i.dj) ; 11 uses
  %i.dl = load i32, ptr @hf_infiniband_opcode, align 4
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.dl, ptr noundef %0, i32 noundef %i.cv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = load ptr, ptr %i.e, align 8
  %i.do = zext i8 %i.cw to i32
  %i.dp = tail call ptr @val_to_str_const(i32 noundef %i.do, ptr noundef nonnull %DctOpCodeMap.OpCodeMap, ptr noundef nonnull @.str.1231)
  tail call void @col_append_str(ptr noundef %i.dn, i32 noundef 25, ptr noundef %i.dp)
  %i.dq = load i32, ptr @hf_infiniband_solicited_event, align 4
  %i.dr = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.dq, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ds = load i32, ptr @hf_infiniband_migreq, align 4
  %i.dt = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.du = load i32, ptr @hf_infiniband_pad_count, align 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.du, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dw = load i32, ptr @hf_infiniband_transport_header_version, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.dw, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dy = add nuw nsw i32 %i.cv, 2
  %i.dz = load i32, ptr @hf_infiniband_partition_key, align 4
  %i.ea = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.dz, ptr noundef %0, i32 noundef %i.dy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eb = add nuw nsw i32 %i.cv, 4
  %i.ec = load i32, ptr @hf_infiniband_reserved, align 4
  %i.ed = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.ec, ptr noundef %0, i32 noundef %i.eb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ee = add nuw nsw i32 %i.cv, 5
  %i.ef = load i32, ptr @hf_infiniband_destination_qp, align 4
  %i.eg = tail call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.dk, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.ee, i32 noundef 3, i32 noundef 0, ptr noundef %i.b) ; 0 uses
  %i.eh = load ptr, ptr %i.e, align 8
  %i.ei = load i32, ptr %i.b, align 4
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eh, i32 noundef 25, ptr noundef nonnull @.str.1232, i32 noundef %i.ei)
  %i.ej = add nuw nsw i32 %i.cv, 8                ; 2 uses
  %i.ek = load i32, ptr @hf_infiniband_acknowledge_request, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.ej, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_infiniband_reserved7, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %i.dk, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.ej, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eo = add nuw nsw i32 %i.cv, 9                ; 3 uses
  store i32 %i.eo, ptr %i.a, align 4
  %i.ep = load i32, ptr @hf_infiniband_packet_sequence_number, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.er = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.dk, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eo, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.eq) ; 0 uses
  %i.es = add nsw i32 %i.cv, %.0397
  store i32 %i.es, ptr %i.a, align 4
  %i.et = trunc nuw nsw i32 %.0397 to i16
  %i.eu = sub i16 %.1, %i.et                      ; 17 uses
  %.val = load i8, ptr %i.cx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val402 = load i8, ptr %i.ev, align 8
  %i.ew = call fastcc i32 @find_next_header_sequence(i8 %.val, i8 %.val402)
  switch i32 %i.ew, label %bb.ak [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %bb.u
    i32 13, label %bb.v
    i32 14, label %bb.w
    i32 16, label %bb.x
    i32 15, label %bb.y
    i32 17, label %bb.z
    i32 18, label %bb.aa
    i32 19, label %bb.ab
    i32 20, label %bb.ac
    i32 21, label %bb.ad
    i32 22, label %bb.ae
    i32 12, label %bb.af
    i32 23, label %bb.ag
    i32 24, label %bb.ah
    i32 25, label %bb.ai
    i32 26, label %bb.aj
  ]

bb.g:                                             ; preds = %bb.b
  %i.ex = load ptr, ptr %i.aj, align 8
  %i.ey = tail call noalias ptr @wmem_strdup(ptr noundef %i.ex, ptr noundef nonnull @.str.1233) ; 2 uses
  %i.ez = tail call i64 @strlen(ptr noundef %i.ey) #16
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add i32 %i.fa, 1
  store i32 7, ptr %i.an, align 8
  store i32 %i.fb, ptr %i.ao, align 4
  store ptr %i.ey, ptr %i.ap, align 8
  store ptr null, ptr %i.aq, align 8
  %i.fc = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 8)
  %i.fd = add i32 %i.fc, -2
  %i.fe = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 8, i32 noundef %i.fd)
  %i.ff = load ptr, ptr @ipv6_handle, align 8
  %i.fg = tail call i32 @call_dissector(ptr noundef %i.ff, ptr noundef %i.fe, ptr noundef %1, ptr noundef %i.k) ; 0 uses
  %i.fh = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.fi = add i32 %i.fh, -2                       ; 2 uses
  store i32 %i.fi, ptr %i.a, align 4
  %i.fj = load i32, ptr @hf_infiniband_variant_crc, align 4
  %i.fk = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.fj, ptr noundef %0, i32 noundef %i.fi, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.b
  %i.fl = load i32, ptr @hf_infiniband_RWH, align 4
  %i.fm = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.fl, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.fm, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.1322)
  %i.fn = load i32, ptr @ett_rwh, align 4
  %i.fo = tail call ptr @proto_item_add_subtree(ptr noundef %i.fm, i32 noundef %i.fn) ; 2 uses
  %i.fp = load i32, ptr @hf_infiniband_reserved, align 4
  %i.fq = tail call ptr @proto_tree_add_item(ptr noundef %i.fo, i32 noundef %i.fp, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fr = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 10)
  %i.fs = load i32, ptr @hf_infiniband_etype, align 4
  %i.ft = zext i16 %i.fr to i32                   ; 2 uses
  %i.fu = tail call ptr @proto_tree_add_uint(ptr noundef %i.fo, i32 noundef %i.fs, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef %i.ft) ; 0 uses
  %i.fv = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 12)
  %i.fw = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 12) ; 3 uses
  %i.fx = icmp sgt i32 %i.fv, -1
  %i.fy = icmp sgt i32 %i.fw, 1
  %or.cond3.i = and i1 %i.fx, %i.fy
  %i.fz = add nsw i32 %i.fw, -2
  %spec.select.i = select i1 %or.cond3.i, i32 %i.fz, i32 %i.fw
  %i.ga = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 12, i32 noundef %spec.select.i) ; 2 uses
  %i.gb = load ptr, ptr @ethertype_dissector_table, align 8
  %i.gc = tail call i32 @dissector_try_uint(ptr noundef %i.gb, i32 noundef %i.ft, ptr noundef %i.ga, ptr noundef %1, ptr noundef %2)
  %.not.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i, label %bb.i, label %parse_RWH.exit

bb.i:                                             ; preds = %bb.h
  %i.gd = tail call i32 @call_data_dissector(ptr noundef %i.ga, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %parse_RWH.exit

parse_RWH.exit:                                   ; preds = %bb.h, %bb.i
  %i.ge = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.gf = add i32 %i.ge, -2                       ; 2 uses
  store i32 %i.gf, ptr %i.a, align 4
  %i.gg = load i32, ptr @hf_infiniband_variant_crc, align 4
  %i.gh = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.gg, ptr noundef %0, i32 noundef %i.gf, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.critedge

default.unreachable413:                           ; preds = %bb.b
  unreachable

bb.j:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.gi = add i16 %i.eu, -12
  %i.gj = zext i16 %i.gi to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gj, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  %i.gk = add i16 %i.eu, -28
  %i.gl = zext i16 %i.gk to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gl, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.l:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_IMMDT(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.gm = add i16 %i.eu, -16
  %i.gn = zext i16 %i.gm to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gn, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.m:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  call fastcc void @parse_IMMDT(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.go = add i16 %i.eu, -32
  %i.gp = zext i16 %i.go to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gp, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.n:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  br label %.critedge

bb.o:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_AETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  %i.gq = add i16 %i.eu, -8
  %i.gr = zext i16 %i.gq to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gr, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.p:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.gs = add i16 %i.eu, -4
  %i.gt = zext i16 %i.gs to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gt, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.q:                                             ; preds = %bb.f
  call fastcc void @parse_AETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  br label %.critedge

bb.r:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_AETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  call fastcc void @parse_ATOMICACKETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %.critedge

bb.s:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_ATOMICETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %.critedge

bb.t:                                             ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %.critedge

bb.u:                                             ; preds = %bb.f
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.gu = add i16 %i.eu, -8
  %i.gv = zext i16 %i.gu to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gv, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.v:                                             ; preds = %bb.f
  %i.gw = zext i16 %i.eu to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gw, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.w:                                             ; preds = %bb.f
  call fastcc void @parse_IMMDT(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.gx = add i16 %i.eu, -4
  %i.gy = zext i16 %i.gx to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.gy, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.x:                                             ; preds = %bb.f
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  call fastcc void @parse_IMMDT(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.gz = add i16 %i.eu, -20
  %i.ha = zext i16 %i.gz to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ha, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.y:                                             ; preds = %bb.f
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  %i.hb = add i16 %i.eu, -16
  %i.hc = zext i16 %i.hb to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.hc, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  %i.hd = add i16 %i.eu, -16
  %i.he = zext i16 %i.hd to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.he, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.aa:                                            ; preds = %bb.f
  call fastcc void @parse_AETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  %i.hf = add i16 %i.eu, -4
  %i.hg = zext i16 %i.hf to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.hg, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.ab:                                            ; preds = %bb.f
  call fastcc void @parse_AETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  br label %.critedge

bb.ac:                                            ; preds = %bb.f
  call fastcc void @parse_AETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  call fastcc void @parse_ATOMICACKETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %.critedge

bb.ad:                                            ; preds = %bb.f
  call fastcc void @parse_ATOMICETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %.critedge

bb.ae:                                            ; preds = %bb.f
  call fastcc void @parse_IETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.hh = add i16 %i.eu, -4
  %i.hi = zext i16 %i.hh to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.hi, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.af:                                            ; preds = %bb.f
  call fastcc void @parse_DETH(ptr noundef %i.k, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_IMMDT(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.hj = add i16 %i.eu, -12
  %i.hk = zext i16 %i.hj to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.hk, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.ag:                                            ; preds = %bb.f
  %i.hl = add nsw i32 %i.eo, %.0397
  %i.hm = add nsw i32 %i.hl, 7
  store i32 %i.hm, ptr %i.a, align 4
  %i.hn = add i16 %i.eu, -16
  %i.ho = zext i16 %i.hn to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ho, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.ah:                                            ; preds = %bb.f
  call fastcc void @parse_FETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  br label %.critedge

bb.ai:                                            ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_FETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  br label %.critedge

bb.aj:                                            ; preds = %bb.f
  call fastcc void @parse_RDETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  call fastcc void @parse_RETH(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  %i.hp = add i16 %i.eu, -20
  %i.hq = zext i16 %i.hp to i32
  call fastcc void @parse_PAYLOAD(ptr noundef %i.k, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.hq, i32 noundef %.0393407, ptr noundef %2)
  br label %.critedge

bb.ak:                                            ; preds = %bb.f
  call fastcc void @parse_VENDOR(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %parse_RWH.exit, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.hr = load i32, ptr %i.a, align 4
  %i.hs = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.hr)
  switch i32 %i.hs, label %bb.ao [
    i32 6, label %bb.al
    i32 4, label %bb.am
    i32 2, label %bb.an
  ]

bb.al:                                            ; preds = %.critedge
  %i.ht = load i32, ptr @hf_infiniband_invariant_crc, align 4
  %5 = load i32, ptr %i.a, align 4                ; 2 uses
  %i.hu = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ht, ptr noundef %0, i32 noundef %5, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hv = add i32 %5, 4
  %i.hw = load i32, ptr @hf_infiniband_variant_crc, align 4
  %i.hx = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.hw, ptr noundef %0, i32 noundef %i.hv, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.am:                                            ; preds = %.critedge
  %i.hy = load i32, ptr @hf_infiniband_invariant_crc, align 4
  %6 = load i32, ptr %i.a, align 4
  %i.hz = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.hy, ptr noundef %0, i32 noundef %6, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %.critedge
  %i.ia = load i32, ptr @hf_infiniband_variant_crc, align 4
  %7 = load i32, ptr %i.a, align 4
  %i.ib = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ia, ptr noundef %0, i32 noundef %7, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge, %bb.am, %bb.an, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 27) i32 @find_next_header_sequence(i8 %.8.val, i8 %.32.val) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i8 %.8.val, 85
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i8 %.32.val to i1
  %i.c = select i1 %i.b, i32 23, i32 13
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = zext i8 %.8.val to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.e = getelementptr [4 x i8], ptr @opCode_PAYLD, i64 %indvars.iv.i
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %i.d                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 13
  %or.cond.i = select i1 %i.g, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %contains.exit, label %bb.d, !llvm.loop !9

contains.exit:                                    ; preds = %bb.d
  br i1 %i.g, label %.critedge, label %.preheader10

.preheader10:                                     ; preds = %contains.exit
  switch i8 %.8.val, label %.preheader2 [
    i8 3, label %.critedge
    i8 5, label %.critedge
    i8 9, label %.critedge
    i8 35, label %.critedge
    i8 37, label %.critedge
    i8 41, label %.critedge
    i8 64, label %.critedge.fold.split
    i8 65, label %.critedge.fold.split
    i8 66, label %.critedge.fold.split
    i8 68, label %.critedge.fold.split
    i8 71, label %.critedge.fold.split
    i8 72, label %.critedge.fold.split
    i8 6, label %.critedge.fold.split81
    i8 10, label %.critedge.fold.split81
    i8 38, label %.critedge.fold.split81
    i8 42, label %.critedge.fold.split81
    i8 77, label %.critedge.fold.split82
    i8 79, label %.critedge.fold.split82
    i8 80, label %.critedge.fold.split82
    i8 13, label %.critedge.fold.split83
    i8 15, label %.critedge.fold.split83
    i8 16, label %.critedge.fold.split83
    i8 67, label %.critedge.fold.split84
    i8 69, label %.critedge.fold.split84
    i8 73, label %.critedge.fold.split84
    i8 43, label %.critedge.fold.split86
    i8 11, label %.critedge.fold.split86
    i8 74, label %.critedge.fold.split85
    i8 70, label %.critedge.fold.split85
  ]

.preheader2:                                      ; preds = %.preheader10
  %i.h = add i8 %.8.val, -19
  %i.i = icmp ult i8 %i.h, 2
  br i1 %i.i, label %.critedge, label %.preheader1

.preheader1:                                      ; preds = %.preheader2
  %i.j = add i8 %.8.val, -22
  %i.k = icmp ult i8 %i.j, 2
  br i1 %i.k, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %i.l = add i8 %.8.val, -83
  %i.m = icmp ult i8 %i.l, 2
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %switch.tableidx = add i8 %.8.val, -12          ; 2 uses
  %i.n = icmp ult i8 %switch.tableidx, 90
  br i1 %i.n, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.e
  %i.o = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.find_next_header_sequence, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.critedge

.critedge.fold.split:                             ; preds = %.preheader10, %.preheader10, %.preheader10, %.preheader10, %.preheader10, %.preheader10
  br label %.critedge

.critedge.fold.split81:                           ; preds = %.preheader10, %.preheader10, %.preheader10, %.preheader10
  br label %.critedge

.critedge.fold.split82:                           ; preds = %.preheader10, %.preheader10, %.preheader10
  br label %.critedge

.critedge.fold.split83:                           ; preds = %.preheader10, %.preheader10, %.preheader10
  br label %.critedge

.critedge.fold.split84:                           ; preds = %.preheader10, %.preheader10, %.preheader10
  br label %.critedge

.critedge.fold.split85:                           ; preds = %.preheader10, %.preheader10
  br label %.critedge

.critedge.fold.split86:                           ; preds = %.preheader10, %.preheader10
  br label %.critedge

.critedge:                                        ; preds = %.preheader10, %.preheader10, %.preheader10, %.preheader10, %.preheader10, %.preheader10, %.critedge.fold.split86, %.critedge.fold.split85, %.preheader, %.preheader1, %.preheader2, %.critedge.fold.split84, %.critedge.fold.split83, %.critedge.fold.split82, %.critedge.fold.split81, %.critedge.fold.split, %bb.e, %switch.lookup, %contains.exit, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %switch.load, %switch.lookup ], [ 13, %contains.exit ], [ -1, %bb.e ], [ 14, %.preheader10 ], [ 18, %.critedge.fold.split83 ], [ 14, %.preheader10 ], [ 0, %.critedge.fold.split ], [ 15, %.critedge.fold.split81 ], [ 1, %.critedge.fold.split85 ], [ 5, %.critedge.fold.split82 ], [ 21, %.preheader2 ], [ 22, %.preheader1 ], [ 9, %.preheader ], [ 2, %.critedge.fold.split84 ], [ 14, %.preheader10 ], [ 14, %.preheader10 ], [ 14, %.preheader10 ], [ 14, %.preheader10 ], [ 16, %.critedge.fold.split86 ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @parse_RDETH(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 4 uses
  %i.b = load i32, ptr @hf_infiniband_RDETH, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %1, i32 noundef %i.a, i32 noundef 4, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.c, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.1323)
  %i.d = load i32, ptr @ett_rdeth, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_infiniband_reserved, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %1, i32 noundef %i.a, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add i32 %i.a, 1
  %i.i = load i32, ptr @hf_infiniband_ee_context, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.i, ptr noundef %1, i32 noundef %i.h, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.k = add i32 %i.a, 4
  store i32 %i.k, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @parse_DETH(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((288, 292)) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 5 uses
  %i.b = load i32, ptr @hf_infiniband_DETH, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %i.a, i32 noundef 8, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.c, ptr noundef nonnull @.str.1230, ptr noundef nonnull @.str.1324)
  %i.d = load i32, ptr @ett_deth, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 3 uses
end_hunk_0
