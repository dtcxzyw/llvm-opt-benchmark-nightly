Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dcp-etsi?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@expert_register_field_array
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dcp_etsi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 11
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.e, i32 noundef 35, ptr noundef nonnull @.str.103)
  %i.f = load i32, ptr @proto_dcp_etsi, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.h = load i32, ptr @ett_edcp, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h)
  %i.j = getelementptr i8, ptr %1, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @tvb_get_string_enc(ptr noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %i.m = load ptr, ptr @dcp_dissector_table, align 8
  %i.n = tail call i32 @dissector_try_string_with_data(ptr noundef %i.m, ptr noundef %i.l, ptr noundef %0, ptr noundef %1, ptr noundef %i.i, i1 noundef zeroext true, ptr noundef null) ; 0 uses
  %i.o = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_af(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @col_set_str(ptr noundef %i.e, i32 noundef 35, ptr noundef nonnull @.str.106)
  %i.f = load i32, ptr @proto_af, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.h = load i32, ptr @ett_af, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 8 uses
  %i.j = load i32, ptr @hf_edcp_sync, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_edcp_len, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.l, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.c) ; 2 uses
  %i.n = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 12) ; 4 uses
  %i.o = load i32, ptr %i.c, align 4              ; 4 uses
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.m, ptr noundef nonnull @.str.118, i32 noundef %i.o, i32 noundef %i.n)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ugt i32 %i.n, %i.o
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = sub nuw i32 %i.n, %i.o
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.m, ptr noundef nonnull @.str.119, i32 noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.s = load i32, ptr @hf_edcp_seq, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.s, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_edcp_crcflag, align 4
  %i.v = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.i, i32 noundef %i.u, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.w = load i32, ptr @hf_edcp_maj, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.w, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_edcp_min, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.y, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_edcp_pt, align 4
  %i.ab = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.i, i32 noundef %i.aa, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 10, i32 noundef %i.ac)
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = add i32 %i.ae, 10                       ; 2 uses
  %i.ag = call zeroext i16 @crc16_x25_ccitt_tvb(ptr noundef %0, i32 noundef %i.af)
  %i.ah = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %. = zext nneg i8 %i.ah to i32
  %i.ai = xor i16 %i.ag, -1
  %i.aj = load i32, ptr @hf_edcp_crc, align 4
  %i.ak = load i32, ptr @hf_edcp_crc_status, align 4
  %i.al = zext i16 %i.ai to i32
  %i.am = call ptr @proto_tree_add_checksum(ptr noundef %i.i, ptr noundef %0, i32 noundef %i.af, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull @ei_edcp_crc_bad, ptr noundef %1, i32 noundef %i.al, i32 noundef 0, i32 noundef %.) ; 0 uses
  %i.an = load ptr, ptr @af_dissector_table, align 8
  %i.ao = load i8, ptr %i.a, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = call i32 @dissector_try_uint(ptr noundef %i.an, i32 noundef %i.ap, ptr noundef %i.ad, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.ar = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ar
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pft(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef nonnull @.str.109)
  %i.k = load i32, ptr @proto_pft, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.m = load i32, ptr @ett_pft, align 4
  %i.n = tail call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m) ; 22 uses
  %i.o = load i32, ptr @hf_edcp_sync, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_edcp_pseq, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.n, i32 noundef %i.q, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.s = load i32, ptr @hf_edcp_findex, align 4
  %i.t = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.u = load i32, ptr @hf_edcp_fcount, align 4
  %i.v = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.u, ptr noundef %0, i32 noundef 7, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.w = load i32, ptr @hf_edcp_fecflag, align 4
  %i.x = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.n, i32 noundef %i.w, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.y = load i32, ptr @hf_edcp_addrflag, align 4
  %i.z = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.n, i32 noundef %i.y, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.aa = load i32, ptr @hf_edcp_plen, align 4
  %i.ab = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.ac = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr @hf_edcp_rsk, align 4
  %i.af = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.n, i32 noundef %i.ae, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.h) ; 0 uses
  %i.ag = load i32, ptr @hf_edcp_rsz, align 4
  %i.ah = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.n, i32 noundef %i.ag, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.081 = phi i32 [ 14, %bb.b ], [ 12, %bb.a ]    ; 4 uses
  %i.ai = load i8, ptr %i.f, align 1, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr @hf_edcp_source, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ak, ptr noundef %0, i32 noundef %.081, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.am = add nuw nsw i32 %.081, 2
  %i.an = load i32, ptr @hf_edcp_dest, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ap = add nuw nsw i32 %.081, 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.182 = phi i32 [ %i.ap, %bb.d ], [ %.081, %bb.c ] ; 3 uses
  %i.aq = call zeroext i16 @crc16_x25_ccitt_tvb(ptr noundef %0, i32 noundef %.182)
  %i.ar = xor i16 %i.aq, -1
  %i.as = load i32, ptr @hf_edcp_hcrc, align 4
  %i.at = load i32, ptr @hf_edcp_hcrc_status, align 4
  %i.au = zext i16 %i.ar to i32
  %i.av = call ptr @proto_tree_add_checksum(ptr noundef %i.n, ptr noundef %0, i32 noundef %.182, i32 noundef %i.as, i32 noundef %i.at, ptr noundef nonnull @ei_edcp_hcrc_bad, ptr noundef %1, i32 noundef %i.au, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.aw = add nuw nsw i32 %.182, 2                ; 7 uses
  %i.ax = load i32, ptr %i.d, align 4
  %i.ay = icmp ugt i32 %i.ax, 1
  br i1 %i.ay, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %1, i64 272       ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !6, !noundef !7
  %i.bb = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.aw) ; 2 uses
  %i.bc = load i32, ptr @hf_edcp_pft_payload, align 4
  %i.bd = and i32 %i.bb, 65535                    ; 14 uses
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  %i.bf = load i16, ptr %i.b, align 2             ; 2 uses
  %i.bg = trunc i32 %i.bb to i16
  %i.bh = icmp ne i16 %i.bf, %i.bg
  %i.bi = icmp eq i32 %i.bd, 0
  %or.cond = or i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ab, ptr noundef nonnull @.str.120, i32 noundef %i.bd)
  br label %dissect_pft_fragmented.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = load i32, ptr %i.c, align 4             ; 4 uses
  %i.bk = load i32, ptr %i.d, align 4             ; 16 uses
  %i.bl = load i16, ptr %i.a, align 2
  %i.bm = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i8, ptr %i.h, align 1              ; 3 uses
  store i8 1, ptr %i.az, align 8
  %i.bp = icmp eq i32 %i.bj, 0
  %i.bq = add i32 %i.bj, 1
  %i.br = icmp ne i32 %i.bk, %i.bq                ; 3 uses
  %i.bs = zext i16 %i.bl to i32                   ; 3 uses
  %i.bt = call ptr @fragment_add_seq_check(ptr noundef nonnull @dcp_reassembly_table, ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, i32 noundef %i.bs, ptr noundef null, i32 noundef %i.bj, i32 noundef %i.bd, i1 noundef zeroext %i.br) ; 3 uses
  br i1 %i.bn, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h
  %i.bu = icmp ugt i32 %i.bk, 262144
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.127, i32 noundef %i.bk) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.bw = icmp eq i32 %i.bk, 0
  br i1 %i.bw, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = zext i8 %i.bo to i32                    ; 5 uses
  %i.by = icmp ugt i8 %i.bo, -49
  br i1 %i.by, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = mul i32 %i.bk, %i.bd                    ; 10 uses
  %i.ca = add nuw nsw i32 %i.bx, 48               ; 2 uses
  %i.cb = udiv i32 %i.bz, %i.ca                   ; 2 uses
  %i.cc = mul nuw i32 %i.cb, 48
  %i.cd = udiv i32 %i.cc, %i.bd
  %i.ce = sub i32 %i.bk, %i.cd                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.cf = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly_info, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.128, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.ce) ; 0 uses
  %i.cg = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = shl nuw nsw i32 %i.bk, 2
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = call noalias ptr @wmem_alloc(ptr noundef %i.ch, i64 noundef %i.cj) #8 ; 2 uses
  %i.cl = call ptr @fragment_get(ptr noundef nonnull @dcp_reassembly_table, ptr noundef %1, i32 noundef %i.bs, ptr noundef null) ; 2 uses
  %.not169.i.i = icmp eq ptr %i.cl, null
  br i1 %.not169.i.i, label %.loopexit.i.i, label %.preheader186.i.i

.preheader186.i.i:                                ; preds = %bb.n
  %.0145191.i.i = load ptr, ptr %i.cl, align 8    ; 2 uses
  %.not206.i.i = icmp eq ptr %.0145191.i.i, null
  br i1 %.not206.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader186.i.i, %bb.p
  %.0145193.i.i = phi ptr [ %.0145.i.i, %bb.p ], [ %.0145191.i.i, %.preheader186.i.i ] ; 3 uses
  %.0146192.i.i = phi i32 [ %.1147.i.i, %bb.p ], [ 0, %.preheader186.i.i ] ; 3 uses
  %i.cm = getelementptr i8, ptr %.0145193.i.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not173.i.i = icmp eq ptr %i.cn, null
  br i1 %.not173.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.co = getelementptr i8, ptr %.0145193.i.i, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add nuw nsw i32 %.0146192.i.i, 1
  %i.cr = zext i32 %.0146192.i.i to i64
  %i.cs = getelementptr [4 x i8], ptr %i.ck, i64 %i.cr
  store i32 %i.cp, ptr %i.cs, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.1147.i.i = phi i32 [ %i.cq, %bb.o ], [ %.0146192.i.i, %.lr.ph.i.i ] ; 3 uses
  %.0145.i.i = load ptr, ptr %.0145193.i.i, align 8 ; 2 uses
  %i.ct = icmp ne ptr %.0145.i.i, null
  %i.cu = icmp ult i32 %.1147.i.i, %i.bk
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !9

.loopexit.i.i:                                    ; preds = %bb.p, %.preheader186.i.i, %bb.n
  %.2148.i.i = phi i32 [ 0, %bb.n ], [ 0, %.preheader186.i.i ], [ %.1147.i.i, %bb.p ] ; 4 uses
  %.not170.i.i = icmp ult i32 %.2148.i.i, %i.ce
  br i1 %.not170.i.i, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %.loopexit.i.i
  %i.cw = load ptr, ptr %i.cg, align 8
  %i.cx = zext nneg i32 %i.bd to i64
  %i.cy = call noalias ptr @wmem_alloc0(ptr noundef %i.cw, i64 noundef %i.cx) #8
  %i.cz = call ptr @tvb_new_real_data(ptr noundef %i.cy, i32 noundef %i.bd, i32 noundef %i.bd) ; 3 uses
  %i.da = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly_info, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.128, i32 noundef %i.bk, i32 noundef %.2148.i.i, i32 noundef %i.ce) ; 0 uses
  %.not172198.not.i.i = icmp eq i32 %.2148.i.i, 0
  br i1 %.not172198.not.i.i, label %._crit_edge204.thread.i.i, label %.lr.ph203.preheader.i.i

._crit_edge204.thread.i.i:                        ; preds = %bb.q
  call void @tvb_free(ptr noundef %i.cz)
  br label %dissect_pft_fec_detailed.exit.thread.i

.lr.ph203.preheader.i.i:                          ; preds = %bb.q
  %wide.trip.count.i.i = zext i32 %.2148.i.i to i64
  br label %.lr.ph203.i.i

.lr.ph203.i.i:                                    ; preds = %._crit_edge.i.i, %.lr.ph203.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph203.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0138201.i.i = phi ptr [ null, %.lr.ph203.preheader.i.i ], [ %.1139.lcssa.i.i, %._crit_edge.i.i ]
  %.0141200.i.i = phi i32 [ 0, %.lr.ph203.preheader.i.i ], [ %i.dm, %._crit_edge.i.i ] ; 4 uses
  %i.db = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i
  %i.dc = load i32, ptr %i.db, align 4            ; 6 uses
  %i.dd = icmp ugt i32 %i.dc, 262144
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph203.i.i
  %i.de = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.127, i32 noundef %i.dc) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

bb.s:                                             ; preds = %.lr.ph203.i.i
  %i.df = sub i32 %i.dc, %.0141200.i.i            ; 2 uses
  %i.dg = icmp ugt i32 %i.df, 1000
  br i1 %i.dg, label %bb.t, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s
  %i.dh = icmp ult i32 %.0141200.i.i, %i.dc
  br i1 %i.dh, label %.lr.ph195.i.i, label %._crit_edge.i.i

bb.t:                                             ; preds = %bb.s
  %i.di = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.129, i32 noundef %i.df) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

.lr.ph195.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph195.i.i
  %.1142194.i.i = phi i32 [ %i.dj, %.lr.ph195.i.i ], [ %.0141200.i.i, %.preheader.i.i ] ; 2 uses
  %i.dj = add nuw nsw i32 %.1142194.i.i, 1        ; 3 uses
  %i.dk = icmp ne i32 %i.dj, %i.bk
  %i.dl = call ptr @fragment_add_seq_check(ptr noundef nonnull @dcp_reassembly_table, ptr noundef %i.cz, i32 noundef 0, ptr noundef %1, i32 noundef %i.bs, ptr noundef null, i32 noundef %.1142194.i.i, i32 noundef %i.bd, i1 noundef zeroext %i.dk)
  %exitcond.not.i.i = icmp eq i32 %i.dj, %i.dc
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph195.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph195.i.i, %.preheader.i.i
  %.1142.lcssa.i.i = phi i32 [ %.0141200.i.i, %.preheader.i.i ], [ %i.dc, %.lr.ph195.i.i ]
  %.1139.lcssa.i.i = phi ptr [ %.0138201.i.i, %.preheader.i.i ], [ %i.dl, %.lr.ph195.i.i ] ; 3 uses
  %i.dm = add i32 %.1142.lcssa.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond214.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond214.not.i.i, label %._crit_edge204.i.i, label %.lr.ph203.i.i, !llvm.loop !11

._crit_edge204.i.i:                               ; preds = %._crit_edge.i.i
  call void @tvb_free(ptr noundef %i.cz)
  %.not171.i.i = icmp eq ptr %.1139.lcssa.i.i, null
  br i1 %.not171.i.i, label %dissect_pft_fec_detailed.exit.thread.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %._crit_edge204.i.i, %bb.m
  %.1139.lcssa.lcssa.sink.i.i = phi ptr [ %i.bt, %bb.m ], [ %.1139.lcssa.i.i, %._crit_edge204.i.i ]
  %i.dn = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef nonnull %.1139.lcssa.lcssa.sink.i.i, ptr noundef nonnull @dcp_frag_items, ptr noundef null, ptr noundef %i.n) ; 6 uses
  %.not174.i.i = icmp eq ptr %i.dn, null
  br i1 %.not174.i.i, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i
  %i.do = call i32 @tvb_captured_length(ptr noundef nonnull %i.dn)
  %.not175.i.i = icmp eq i32 %i.do, 0
  br i1 %.not175.i.i, label %dissect_pft_fec_detailed.exit.thread44.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = call i32 @tvb_captured_length(ptr noundef nonnull %i.dn)
  %.not176.i.i = icmp eq i32 %i.dp, %i.bz
  br i1 %.not176.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef nonnull %i.dn, i32 noundef 0, ptr noundef nonnull @.str.130) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

bb.x:                                             ; preds = %bb.v
  %i.dr = call ptr @tvb_get_ptr(ptr noundef nonnull %i.dn, i32 noundef 0, i32 noundef %i.bz) ; 5 uses
  %i.ds = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = zext i32 %i.bz to i64
  %i.dv = call noalias ptr @wmem_alloc(ptr noundef %i.dt, i64 noundef %i.du) #8 ; 8 uses
  %.not.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i, label %rs_deinterleave.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.x
  %wide.trip.count.i.i.i = zext nneg i32 %i.bd to i64 ; 9 uses
  %i.dw = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bd, 4
  %ident.check = icmp ne i32 %i.bk, 1
  %i.dx = trunc nsw i64 %i.dw to i32              ; 2 uses
  %i.dy = icmp ugt i64 %i.dw, 4294967295
  %invariant.op = or i1 %i.dy, %ident.check
  %min.iters.check121 = icmp samesign ult i32 %i.bd, 32
  %i.dz = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 65504  ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.dz, 0
  %n.vec123 = and i64 %wide.trip.count.i.i.i, 65532 ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ea = add nsw i64 %wide.trip.count.i.i.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.01317.i.i.i = phi i32 [ %i.gc, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 8 uses
  %i.eb = mul i32 %.01317.i.i.i, %i.bd            ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ec = xor i32 %i.eb, -1
  %i.ed = icmp ult i32 %i.ec, %i.dx
  %4 = xor i32 %.01317.i.i.i, -1
  %i.ee = icmp ult i32 %4, %i.dx
  %i.ef = or i1 %i.ed, %invariant.op
  %i.eg = or i1 %i.ee, %i.ef
  br i1 %i.eg, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eh = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.ei = add i32 %i.eb, %i.eh
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr i8, ptr %i.dr, i64 %i.ej  ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %wide.load = load <16 x i8>, ptr %i.ek, align 1
  %wide.load122 = load <16 x i8>, ptr %i.el, align 1
  %i.em = add i32 %.01317.i.i.i, %i.eh
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr i8, ptr %i.dv, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store <16 x i8> %wide.load, ptr %i.eo, align 1
  store <16 x i8> %wide.load122, ptr %i.ep, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.er = trunc nuw nsw i64 %index124 to i32      ; 2 uses
  %i.es = add i32 %i.eb, %i.er
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr i8, ptr %i.dr, i64 %i.et
  %wide.load125 = load <4 x i8>, ptr %i.eu, align 1
  %i.ev = add i32 %.01317.i.i.i, %i.er
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr i8, ptr %i.dv, i64 %i.ew
  store <4 x i8> %wide.load125, ptr %i.ex, align 1
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ez = trunc nuw nsw i64 %indvars.iv.i.i.i.ph to i32 ; 2 uses
  %i.fa = add i32 %i.eb, %i.ez
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %i.dr, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = mul i32 %i.bk, %i.ez
  %i.ff = add i32 %i.fe, %.01317.i.i.i
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr i8, ptr %i.dv, i64 %i.fg
  store i8 %i.fd, ptr %i.fh, align 1
  %indvars.iv.next.i.i.i.prol = or disjoint i64 %indvars.iv.i.i.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fi = icmp eq i64 %indvars.iv.i.i.i.ph, %i.ea
  br i1 %i.fi, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.fj = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.fk = add i32 %i.eb, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr i8, ptr %i.dr, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = mul i32 %i.bk, %i.fj
  %i.fp = add i32 %i.fo, %.01317.i.i.i
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr i8, ptr %i.dv, i64 %i.fq
  store i8 %i.fn, ptr %i.fr, align 1
  %i.fs = trunc i64 %indvars.iv.i.i.i to i32
  %i.ft = add i32 %i.fs, 1                        ; 2 uses
  %i.fu = add i32 %i.eb, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr i8, ptr %i.dr, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = mul i32 %i.bk, %i.ft
  %i.fz = add i32 %i.fy, %.01317.i.i.i
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr i8, ptr %i.dv, i64 %i.ga
  store i8 %i.fx, ptr %i.gb, align 1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gc = add nuw nsw i32 %.01317.i.i.i, 1        ; 2 uses
  %exitcond20.not.i.i.i = icmp eq i32 %i.gc, %i.bk
  br i1 %exitcond20.not.i.i.i, label %rs_deinterleave.exit.i.i, label %iter.check, !llvm.loop !15

rs_deinterleave.exit.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.x
  %i.gd = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.dv, i32 noundef %i.bz, i32 noundef %i.bz) ; 2 uses
  %i.ge = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.gd, ptr noundef nonnull @.str.131) ; 0 uses
  %i.gf = load ptr, ptr %i.ds, align 8
  %i.gg = add i32 %i.bz, 255
  %i.gh = sub i32 %i.gg, %i.bx                    ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 4 uses
  %i.gj = call noalias ptr @wmem_alloc(ptr noundef %i.gf, i64 noundef %i.gi) #8 ; 2 uses
  %i.gk = icmp ugt i32 %i.ca, %i.bz
  br i1 %i.gk, label %rs_correct_data.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %rs_deinterleave.exit.i.i
  %i.gl = zext i8 %i.bo to i64                    ; 3 uses
  %i.gm = xor i32 %i.bx, 255
  %i.gn = zext nneg i32 %i.gm to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %.029.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hl, %bb.z ] ; 3 uses
  %.02428.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hk, %bb.z ] ; 2 uses
  %.02527.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hm, %bb.z ]
  %i.go = zext i32 %.029.i.i.i to i64             ; 4 uses
  %i.gp = getelementptr i8, ptr %i.gj, i64 %i.go  ; 4 uses
  %i.gq = zext i32 %.02428.i.i.i to i64
  %i.gr = getelementptr i8, ptr %i.dv, i64 %i.gq
  %i.gs = sub nsw i64 %i.gi, %i.go
  %i.gt = icmp ugt i32 %.029.i.i.i, %i.gh
  %i.gu = select i1 %i.gt, i64 0, i64 %i.gs       ; 2 uses
  %i.gv = icmp ne i64 %i.gu, -1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = call ptr @__memcpy_chk(ptr noundef %i.gp, ptr noundef readonly %i.gr, i64 noundef range(i64 0, 256) %i.gl, i64 noundef %i.gu) #7, !alias.scope !26 ; 0 uses
  %i.gx = add i32 %.02428.i.i.i, %i.bx            ; 2 uses
  %i.gy = add nuw nsw i64 %i.go, %i.gl
  %i.gz = getelementptr i8, ptr %i.gp, i64 %i.gl
  %i.ha = call i64 @llvm.usub.sat.i64(i64 %i.gi, i64 %i.gy)
  %i.hb = call ptr @__memset_chk(ptr noundef %i.gz, i32 noundef 0, i64 noundef range(i64 0, 256) %i.gn, i64 noundef %i.ha) #7 ; 0 uses
  %i.hc = add nuw nsw i64 %i.go, 207
  %i.hd = getelementptr i8, ptr %i.gp, i64 207
  %i.he = zext i32 %i.gx to i64
  %i.hf = getelementptr i8, ptr %i.dv, i64 %i.he
  %i.hg = call i64 @llvm.usub.sat.i64(i64 %i.gi, i64 %i.hc)
  %i.hh = call ptr @__memcpy_chk(ptr noundef %i.hd, ptr noundef readonly %i.hf, i64 noundef 48, i64 noundef %i.hg) #7, !alias.scope !27 ; 0 uses
  %i.hi = call i32 @eras_dec_rs(ptr noundef %i.gp, ptr noundef null, i32 noundef 0)
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %bb.z, label %rs_correct_data.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.hk = add i32 %i.gx, 48
  %i.hl = add i32 %.029.i.i.i, %i.bx
  %i.hm = add nuw nsw i32 %.02527.i.i.i, 1        ; 2 uses
  %exitcond.not.i180.i.i = icmp eq i32 %i.hm, %i.cb
  br i1 %exitcond.not.i180.i.i, label %rs_correct_data.exit.i.i, label %bb.y, !llvm.loop !22

rs_correct_data.exit.i.i:                         ; preds = %bb.z, %bb.y, %rs_deinterleave.exit.i.i
  %.lcssa.i.i.i = phi i64 [ 1, %rs_deinterleave.exit.i.i ], [ 1, %bb.z ], [ 0, %bb.y ]
  %i.hn = load i32, ptr @hf_edcp_rs_ok, align 4
  %i.ho = call ptr @proto_tree_add_boolean(ptr noundef %i.n, i32 noundef %i.hn, ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, i32 noundef 2, i64 noundef %.lcssa.i.i.i) ; 0 uses
  %i.hp = call ptr @tvb_new_child_real_data(ptr noundef %i.gd, ptr noundef %i.gj, i32 noundef %i.bz, i32 noundef %i.bz) ; 2 uses
  %i.hq = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.hp, ptr noundef nonnull @.str.132) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.i

bb.aa:                                            ; preds = %bb.h
  %i.hr = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef %i.bt, ptr noundef nonnull @dcp_frag_items, ptr noundef null, ptr noundef %i.n)
  br label %dissect_pft_fec_detailed.exit.i

dissect_pft_fec_detailed.exit.i:                  ; preds = %bb.aa, %rs_correct_data.exit.i.i
  %.0.i = phi ptr [ %i.hr, %bb.aa ], [ %i.hp, %rs_correct_data.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %dissect_pft_fec_detailed.exit.thread.i, label %dissect_pft_fec_detailed.exit.thread44.i

dissect_pft_fec_detailed.exit.thread44.i:         ; preds = %dissect_pft_fec_detailed.exit.i, %bb.u
  %.047.i = phi ptr [ %.0.i, %dissect_pft_fec_detailed.exit.i ], [ %i.dn, %bb.u ]
  %i.hs = load ptr, ptr %i.i, align 8
  call void @col_append_str(ptr noundef %i.hs, i32 noundef 25, ptr noundef nonnull @.str.122)
  br label %bb.ad

dissect_pft_fec_detailed.exit.thread.i:           ; preds = %dissect_pft_fec_detailed.exit.i, %bb.w, %.critedge.i.i, %._crit_edge204.i.i, %bb.t, %bb.r, %._crit_edge204.thread.i.i, %.loopexit.i.i, %bb.l, %bb.k, %bb.j
  %i.ht = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %i.br, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %dissect_pft_fec_detailed.exit.thread.i
  call void @col_append_str(ptr noundef %i.ht, i32 noundef 25, ptr noundef nonnull @.str.123)
  br label %bb.ad

bb.ac:                                            ; preds = %dissect_pft_fec_detailed.exit.thread.i
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ht, i32 noundef 25, ptr noundef nonnull @.str.124, i32 noundef %i.bj)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %dissect_pft_fec_detailed.exit.thread44.i
  %.042.i = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ %.047.i, %dissect_pft_fec_detailed.exit.thread44.i ] ; 2 uses
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hu = load ptr, ptr %i.i, align 8
  call void @col_append_str(ptr noundef %i.hu, i32 noundef 25, ptr noundef nonnull @.str.125)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.br, label %dissect_pft_fragmented.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = load ptr, ptr %i.i, align 8
  call void @col_append_str(ptr noundef %i.hv, i32 noundef 25, ptr noundef nonnull @.str.126)
  br label %dissect_pft_fragmented.exit

dissect_pft_fragmented.exit:                      ; preds = %bb.ag, %bb.af, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %.042.i, %bb.af ], [ %.042.i, %bb.ag ]
  store i8 %i.ba, ptr %i.az, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.e
  %i.hw = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.aw)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %dissect_pft_fragmented.exit
  %.1 = phi ptr [ %.0, %dissect_pft_fragmented.exit ], [ %i.hw, %bb.ah ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hx = call i32 @dissect_af(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hy = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.hy
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tpl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.112)
  %i.c = load i32, ptr @proto_tpl, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_tpl, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e)
  %i.g = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not31 = icmp eq i32 %i.g, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02930 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.b ] ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @tvb_get_string_enc(ptr noundef %i.i, ptr noundef %0, i32 noundef %.02930, i32 noundef 4, i32 noundef 0) ; 2 uses
  %i.k = add i32 %.02930, 4
  %i.l = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.k) ; 3 uses
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.l, 7
  %.not = icmp ne i32 %i.n, 0
  %i.o = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.m, %i.o       ; 2 uses
  %i.p = load i32, ptr @hf_tpl_tlv, align 4
  %i.q = add nuw nsw i32 %spec.select, 8          ; 2 uses
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.f, i32 noundef %i.p, ptr noundef %0, i32 noundef %.02930, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef %i.j, i32 noundef %i.l) ; 0 uses
  %i.s = add i32 %.02930, 8
  %i.t = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.s, i32 noundef %spec.select)
  %i.u = load ptr, ptr @tpl_dissector_table, align 8
  %i.v = tail call i32 @dissector_try_string_with_data(ptr noundef %i.u, ptr noundef %i.j, ptr noundef %i.t, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef null) ; 0 uses
  %i.w = add i32 %i.q, %.02930                    ; 2 uses
  %i.x = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.z = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc16_x25_ccitt_tvb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
end_hunk_0
