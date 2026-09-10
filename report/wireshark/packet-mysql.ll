Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mysql?download=true
inline.NumInlined: 176
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_mysql_decompressed_pdus:bb.a
bb.z:                                             ; preds = %bb.x, %bb.w
  %i.au = load volatile ptr, ptr %i.h, align 8
  call void @except_free(ptr noundef %i.au)
  %i.av = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.33 = load volatile i32, ptr %i.b, align 4
  %.0..0..0..0.34 = load volatile i32, ptr %i.b, align 4
  %i.aw = add i32 %.0..0..0..0.34, %i.m
  store volatile i32 %i.aw, ptr %i.b, align 4
  %.0..0..0..0.35 = load volatile i32, ptr %i.b, align 4
  %.not71 = icmp sgt i32 %.0..0..0..0.35, %.0..0..0..0.33
  br i1 %.not71, label %bb.b, label %.loopexit, !llvm.loop !9

.sink.split:                                      ; preds = %bb.c, %bb.h
  %.pn = phi i32 [ %i.m, %bb.h ], [ 3, %bb.c ]
  %.sink = sub nuw i32 %.pn, %i.j
  %i.ax = getelementptr i8, ptr %1, i64 344
  store i32 %.sink, ptr %i.ax, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.z, %.sink.split
  %i.ay = call i32 @tvb_reported_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.ay
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #3

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_pinfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_mysql_compressed_pdu_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_letoh24(ptr noundef %1, i32 noundef %2)
  %i.b = add i32 %i.a, 7
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mysql_compressed_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @find_or_create_conversation(ptr noundef %1) ; 2 uses
  %i.b = load i32, ptr @proto_mysql, align 4
  %i.c = tail call ptr @conversation_get_proto_data(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @wmem_file_scope()
  %i.e = tail call noalias dereferenceable_or_null(120) ptr @wmem_alloc0(ptr noundef %i.d, i64 noundef 120) #14 ; 7 uses
  %i.f = tail call ptr @wmem_file_scope()
  %i.g = tail call ptr @wmem_tree_new(ptr noundef %i.f)
  %i.h = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 28
  store i8 2, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %i.e, i64 24
  store i32 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.e, i64 112
  store i32 2, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.e, i64 116
  store i32 2, ptr %i.n, align 4
  %i.o = load i32, ptr @proto_mysql, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.a, i32 noundef %i.o, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.076 = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.p = getelementptr i8, ptr %.076, i64 48      ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not80 = icmp eq ptr %i.q, null
  br i1 %.not80, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @streaming_reassembly_info_new()
  store ptr %i.r, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = load i32, ptr @proto_mysql, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef 0, i32 noundef 7, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.t, ptr noundef nonnull @.str.1220)
  %i.u = load i32, ptr @ett_mysql, align 4
  %i.v = tail call ptr @proto_item_add_subtree(ptr noundef %i.t, i32 noundef %i.u) ; 6 uses
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @col_set_str(ptr noundef %i.x, i32 noundef 35, ptr noundef nonnull @.str.601)
  %i.y = tail call i32 @tvb_get_letoh24(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.z = load i32, ptr @hf_mysql_compressed_packet_length, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.ab = load i32, ptr @hf_mysql_compressed_packet_number, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ab, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = tail call i32 @tvb_get_letoh24(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.ae = load i32, ptr @hf_mysql_compressed_packet_length_uncompressed, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ae, ptr noundef %0, i32 noundef 4, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %.not81 = icmp eq i32 %i.ad, 0
  br i1 %.not81, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %.076, i64 29
  %i.ah = load i8, ptr %i.ag, align 1
  %cond = icmp eq i8 %i.ah, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call ptr @tvb_child_uncompress_zstd(ptr noundef %0, ptr noundef %0, i32 noundef 7, i32 noundef %i.y)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = tail call ptr @tvb_child_uncompress_zlib(ptr noundef %0, ptr noundef %0, i32 noundef 7, i32 noundef %i.y)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.077 = phi ptr [ %i.ai, %bb.g ], [ %i.aj, %bb.h ] ; 4 uses
  %.not82 = icmp eq ptr %.077, null
  br i1 %.not82, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef nonnull %.077, ptr noundef nonnull @.str.1221) ; 0 uses
  %i.al = load ptr, ptr %i.p, align 8
  %i.am = getelementptr i8, ptr %1, i64 20
  %.val84 = load i32, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %1, i64 384
  %.val85 = load i8, ptr %i.an, align 8
  %i.ao = zext i32 %.val84 to i64
  %i.ap = shl nuw i64 %i.ao, 32
  %i.aq = zext i8 %.val85 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 24
  %i.as = tail call i32 @tvb_raw_offset(ptr noundef nonnull %.077)
  %i.at = zext i32 %i.as to i64
  %i.au = or disjoint i64 %i.ar, %i.ap
  %i.av = add i64 %i.au, %i.at
  %i.aw = load ptr, ptr @decompressed_handle, align 8
  %i.ax = load i32, ptr @hf_mysql_fragment_data, align 4
  %i.ay = tail call i32 @reassemble_streaming_data_and_call_subdissector(ptr noundef nonnull %.077, ptr noundef %1, i32 noundef 0, i32 noundef %i.ad, ptr noundef %i.v, ptr noundef %2, ptr noundef nonnull byval(%struct.reassembly_table) align 8 @mysql_reassembly_table, ptr noundef %i.al, i64 noundef %i.av, ptr noundef %i.aw, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.601, ptr noundef nonnull @mysql_frag_items, i32 noundef %i.ax) ; 0 uses
  %i.az = add i32 %i.y, 7
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.v, ptr noundef nonnull @ei_mysql_compression) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.bb = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 7)
  %i.bc = load ptr, ptr %i.p, align 8
  %i.bd = getelementptr i8, ptr %1, i64 20
  %.val = load i32, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %1, i64 384
  %.val83 = load i8, ptr %i.be, align 8
  %i.bf = zext i32 %.val to i64
  %i.bg = shl nuw i64 %i.bf, 32
  %i.bh = zext i8 %.val83 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = tail call i32 @tvb_raw_offset(ptr noundef %0)
  %i.bk = zext i32 %i.bj to i64
  %i.bl = or disjoint i64 %i.bg, %i.bi
  %i.bm = add nuw nsw i64 %i.bk, 7
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = load ptr, ptr @decompressed_handle, align 8
  %i.bp = load i32, ptr @hf_mysql_fragment_data, align 4
  %i.bq = tail call i32 @reassemble_streaming_data_and_call_subdissector(ptr noundef %0, ptr noundef %1, i32 noundef 7, i32 noundef %i.bb, ptr noundef %i.v, ptr noundef %2, ptr noundef nonnull byval(%struct.reassembly_table) align 8 @mysql_reassembly_table, ptr noundef %i.bc, i64 noundef %i.bn, ptr noundef %i.bo, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.601, ptr noundef nonnull @mysql_frag_items, i32 noundef %i.bp) ; 0 uses
  %i.br = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.0 = phi i32 [ %i.az, %bb.j ], [ 7, %bb.k ], [ %i.br, %bb.l ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_mysql_pdu_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_letoh24(ptr noundef %1, i32 noundef %2)
  %i.b = add i32 %i.a, 4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mysql_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 105 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 6 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 3 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca [7 x i8], align 1                 ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  %i.o = tail call ptr @find_or_create_conversation(ptr noundef %1) ; 2 uses
  %i.p = load i32, ptr @proto_mysql, align 4
  %i.q = tail call ptr @conversation_get_proto_data(ptr noundef %i.o, i32 noundef %i.p) ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.b, label %find_or_create_mysql_conn_data.exit

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @wmem_file_scope()
  %i.s = tail call noalias dereferenceable_or_null(120) ptr @wmem_alloc0(ptr noundef %i.r, i64 noundef 120) #14 ; 13 uses
  %i.t = tail call ptr @wmem_file_scope()
  %i.u = tail call ptr @wmem_tree_new(ptr noundef %i.t)
  %i.v = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.s, i64 112
  store i32 2, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.s, i64 116
  store i32 2, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.s, i64 4
  store i16 -32256, ptr %i.y, align 4
  store i16 -32256, ptr %i.s, align 8
  %i.z = load i8, ptr @mysql_deprecate_eof, align 1, !range !6, !noundef !7
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.s, i64 6       ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = or i16 %i.ac, 384
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr i8, ptr %i.s, i64 2       ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = or i16 %i.af, 384
  store i16 %i.ag, ptr %i.ae, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = load i8, ptr @mysql_query_attributes, align 1, !range !6, !noundef !7
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.s, i64 6       ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = or i16 %i.ak, 2048
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr i8, ptr %i.s, i64 2       ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = or i16 %i.an, 2048
  store i16 %i.ao, ptr %i.am, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = load i8, ptr @mariadb_extended_metadata, align 1, !range !6, !noundef !7
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %i.s, i64 32      ; 2 uses
  %i.as = load <2 x i32>, ptr %i.ar, align 8
  %i.at = or <2 x i32> %i.as, splat (i32 8)
  store <2 x i32> %i.at, ptr %i.ar, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = load i8, ptr @mariadb_cache_metadata, align 1, !range !6, !noundef !7
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.s, i64 32      ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 8
  %i.ay = or <2 x i32> %i.ax, splat (i32 16)
  store <2 x i32> %i.ay, ptr %i.aw, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = load i32, ptr @proto_mysql, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.o, i32 noundef %i.az, ptr noundef %i.s)
  br label %find_or_create_mysql_conn_data.exit

find_or_create_mysql_conn_data.exit:              ; preds = %bb.a, %bb.j
  %.0.i = phi ptr [ %i.q, %bb.a ], [ %i.s, %bb.j ] ; 139 uses
  %i.ba = tail call ptr @wmem_file_scope()
  %i.bb = load i32, ptr @proto_mysql, align 4
  %i.bc = tail call i32 @tvb_raw_offset(ptr noundef %0)
  %i.bd = tail call ptr @p_get_proto_data(ptr noundef %i.ba, ptr noundef %1, i32 noundef %i.bb, i32 noundef %i.bc) ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %find_or_create_mysql_conn_data.exit
  %i.be = tail call ptr @wmem_file_scope()
  %i.bf = tail call noalias dereferenceable_or_null(64) ptr @wmem_alloc(ptr noundef %i.be, i64 noundef 64) #14 ; 9 uses
  %i.bg = getelementptr i8, ptr %.0.i, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  store i32 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr i8, ptr %.0.i, i64 60
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr i8, ptr %i.bf, i64 4
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %.0.i, i64 64
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bf, i64 8
  store i32 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %.0.i, i64 72
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %i.bf, i64 16
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.bf, i64 24
  %i.bs = getelementptr i8, ptr %.0.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.br, ptr noundef align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bt = getelementptr i8, ptr %.0.i, i64 112
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bf, i64 56
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %.0.i, i64 116
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr i8, ptr %i.bf, i64 60
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = tail call ptr @wmem_file_scope()
  %i.ca = load i32, ptr @proto_mysql, align 4
  %i.cb = tail call i32 @tvb_raw_offset(ptr noundef %0)
  tail call void @p_add_proto_data(ptr noundef %i.bz, ptr noundef %1, i32 noundef %i.ca, i32 noundef %i.cb, ptr noundef %i.bf)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %find_or_create_mysql_conn_data.exit
  %.0 = phi ptr [ %i.bd, %find_or_create_mysql_conn_data.exit ], [ %i.bf, %bb.k ] ; 32 uses
  %i.cc = load i32, ptr @proto_mysql, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cc, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 24 uses
  %i.ce = load i32, ptr @ett_mysql, align 4
  %i.cf = tail call ptr @proto_item_add_subtree(ptr noundef %i.cd, i32 noundef %i.ce) ; 62 uses
  %i.cg = load i32, ptr @hf_mysql_packet_length, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cg, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.ci = getelementptr i8, ptr %1, i64 8         ; 30 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void @col_set_str(ptr noundef %i.cj, i32 noundef 35, ptr noundef nonnull @.str.601)
  %i.ck = getelementptr i8, ptr %1, i64 292
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %1, i64 296
  %i.cn = load i32, ptr %i.cm, align 8
  %.not131 = icmp eq i32 %i.cl, %i.cn
  %i.co = load i32, ptr @hf_mysql_packet_number, align 4
  %i.cp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cf, i32 noundef %i.co, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.n) ; 0 uses
  %i.cq = getelementptr i8, ptr %1, i64 368
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call zeroext i1 @proto_is_frame_protocol(ptr noundef %i.cr, ptr noundef nonnull @.str.621)
  br i1 %.not131, label %bb.ge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.n, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = load i32, ptr %.0, align 8              ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %or.cond241 = select i1 %i.cu, i1 %i.cw, i1 false
  %i.cx = load ptr, ptr %i.ci, align 8            ; 4 uses
  br i1 %or.cond241, label %bb.n, label %thread-pre-split

bb.n:                                             ; preds = %bb.m
  call void @col_set_str(ptr noundef %i.cx, i32 noundef 25, ptr noundef nonnull @.str.1223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  %i.cy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.cz = icmp eq i8 %i.cy, -1
  br i1 %i.cz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = call fastcc i32 @mysql_dissect_error_packet(ptr noundef %0, ptr noundef readonly %1, ptr noundef %i.cf, ptr noundef readonly %.0, ptr noundef %.0.i)
  br label %mysql_dissect_greeting.exit

bb.p:                                             ; preds = %bb.n
  %i.db = zext i8 %i.cy to i32
  %i.dc = getelementptr i8, ptr %1, i64 80
  %.val.i = load ptr, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %.val.i, i64 53
  %.val.val.i = load i16, ptr %i.dd, align 1
  %i.de = and i16 %.val.val.i, 8
  %.not.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i, label %bb.q, label %mysql_set_conn_state.exit.i

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr i8, ptr %.0.i, i64 56
  store i32 1, ptr %i.df, align 8
  br label %mysql_set_conn_state.exit.i

mysql_set_conn_state.exit.i:                      ; preds = %bb.q, %bb.p
  %i.dg = load i32, ptr @hf_mysql_server_greeting, align 4
  %i.dh = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.dg, ptr noundef %0, i32 noundef 4, i32 noundef -1, i32 noundef 0)
  %i.di = load i32, ptr @ett_server_greeting, align 4
end_hunk_0
begin_hunk_1_@dissect_mysql_pdu:bb.a
my_tvb_strsize.exit197.i:                         ; preds = %bb.hx, %bb.hw
  %.0.i196.i = phi i32 [ %i.ahh, %bb.hw ], [ %i.ahi, %bb.hx ] ; 3 uses
  %i.ahj = load i32, ptr @hf_mysql_client_auth_plugin, align 4
  %i.ahk = call ptr @proto_tree_add_item(ptr noundef %i.acj, i32 noundef %i.ahj, ptr noundef %0, i32 noundef %.3.i, i32 noundef %.0.i196.i, i32 noundef 0) ; 0 uses
  %i.ahl = call ptr @wmem_file_scope()
  %i.ahm = call ptr @tvb_get_string_enc(ptr noundef %i.ahl, ptr noundef %0, i32 noundef %.3.i, i32 noundef %.0.i196.i, i32 noundef 0)
  %i.ahn = getelementptr i8, ptr %.0.i, i64 40
  store ptr %i.ahm, ptr %i.ahn, align 8
  %i.aho = add i32 %.0.i196.i, %.3.i
  %.pre215.i = load i16, ptr %i.aeo, align 2
  br label %bb.hy

bb.hy:                                            ; preds = %my_tvb_strsize.exit197.i, %bb.ht
  %i.ahp = phi i16 [ %.pre215.i, %my_tvb_strsize.exit197.i ], [ %i.agz, %bb.ht ]
  %.4.i = phi i32 [ %i.aho, %my_tvb_strsize.exit197.i ], [ %.3.i, %bb.ht ] ; 11 uses
  %i.ahq = and i16 %i.ahp, 16
  %.not177.i = icmp eq i16 %i.ahq, 0
  br i1 %.not177.i, label %.loopexit.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ahr = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4.i)
  %.not178.i = icmp eq i32 %i.ahr, 0
  br i1 %.not178.i, label %.loopexit.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ahs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.4.i)
  switch i8 %i.ahs, label %bb.ie [
    i8 -5, label %tvb_get_fle.exit201.i
    i8 -4, label %bb.ib
    i8 -3, label %bb.ic
    i8 -2, label %bb.id
  ]

bb.ib:                                            ; preds = %bb.ia
  %i.aht = add i32 %.4.i, 1
  %i.ahu = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.aht, i32 noundef -2147483648)
  %i.ahv = zext i16 %i.ahu to i64
  br label %tvb_get_fle.exit201.i

bb.ic:                                            ; preds = %bb.ia
  %i.ahw = add i32 %.4.i, 1
  %i.ahx = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.ahw, i32 noundef -2147483648)
  %i.ahy = zext i32 %i.ahx to i64
  br label %tvb_get_fle.exit201.i

bb.id:                                            ; preds = %bb.ia
  %i.ahz = add i32 %.4.i, 1
  %i.aia = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.ahz, i32 noundef -2147483648)
  br label %tvb_get_fle.exit201.i

bb.ie:                                            ; preds = %bb.ia
  %i.aib = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.4.i)
  %i.aic = zext i8 %i.aib to i64
  br label %tvb_get_fle.exit201.i

tvb_get_fle.exit201.i:                            ; preds = %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia
  %.1207.i = phi i64 [ 0, %bb.ia ], [ %i.aic, %bb.ie ], [ %i.ahv, %bb.ib ], [ %i.ahy, %bb.ic ], [ %i.aia, %bb.id ] ; 4 uses
  %.025.i200.i = phi i32 [ 1, %bb.ia ], [ 1, %bb.ie ], [ 3, %bb.ib ], [ 4, %bb.ic ], [ 9, %bb.id ] ; 2 uses
  %i.aid = load i32, ptr @hf_mysql_connattrs, align 4
  %i.aie = trunc i64 %.1207.i to i32
  %i.aif = call ptr @proto_tree_add_item(ptr noundef %i.acj, i32 noundef %i.aid, ptr noundef %0, i32 noundef %.4.i, i32 noundef %i.aie, i32 noundef 0)
  %i.aig = load i32, ptr @ett_connattrs, align 4
  %i.aih = call ptr @proto_item_add_subtree(ptr noundef %i.aif, i32 noundef %i.aig) ; 2 uses
  %i.aii = load i32, ptr @hf_mysql_connattrs_length, align 4
  %i.aij = call ptr @proto_tree_add_uint64(ptr noundef %i.aih, i32 noundef %i.aii, ptr noundef %0, i32 noundef %.4.i, i32 noundef %.025.i200.i, i64 noundef %.1207.i) ; 0 uses
  %i.aik = add i32 %.025.i200.i, %.4.i            ; 2 uses
  %.not179210.i = icmp eq i64 %.1207.i, 0
  br i1 %.not179210.i, label %.loopexit.i, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %tvb_get_fle.exit201.i, %.lr.ph.i163
  %.5212.i = phi i32 [ %i.aim, %.lr.ph.i163 ], [ %i.aik, %tvb_get_fle.exit201.i ] ; 2 uses
  %.0206211.i = phi i64 [ %i.aio, %.lr.ph.i163 ], [ %.1207.i, %tvb_get_fle.exit201.i ]
  %i.ail = call fastcc i32 @add_connattrs_entry_to_tree(ptr noundef %0, ptr noundef %1, ptr noundef %i.aih, i32 noundef %.5212.i) ; 2 uses
  %i.aim = add i32 %i.ail, %.5212.i               ; 2 uses
  %i.ain = sext i32 %i.ail to i64
  %i.aio = sub i64 %.0206211.i, %i.ain            ; 2 uses
  %.not179.i = icmp eq i64 %i.aio, 0
  br i1 %.not179.i, label %.loopexit.i, label %.lr.ph.i163, !llvm.loop !14

.loopexit.i:                                      ; preds = %.lr.ph.i163, %tvb_get_fle.exit201.i, %bb.hz, %bb.hy
  %.6.i = phi i32 [ %.4.i, %bb.hy ], [ %.4.i, %bb.hz ], [ %i.aik, %tvb_get_fle.exit201.i ], [ %i.aim, %.lr.ph.i163 ] ; 3 uses
  %i.aip = load i16, ptr %i.aeo, align 2
  %i.aiq = and i16 %i.aip, 1024
  %.not180.i = icmp eq i16 %i.aiq, 0
  br i1 %.not180.i, label %mysql_dissect_login.exit, label %bb.if

bb.if:                                            ; preds = %.loopexit.i
  %i.air = load i32, ptr @hf_mysql_zstd_compression_level, align 4
  %i.ais = call ptr @proto_tree_add_item(ptr noundef %i.acj, i32 noundef %i.air, ptr noundef %0, i32 noundef %.6.i, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ait = add i32 %.6.i, 1
  br label %mysql_dissect_login.exit

mysql_dissect_login.exit:                         ; preds = %bb.gx, %bb.hb, %my_tvb_strsize.exit193.i, %.loopexit.i, %bb.if
  %.0162.i = phi i32 [ %.1.i158, %bb.gx ], [ %i.agj, %my_tvb_strsize.exit193.i ], [ %i.afg, %bb.hb ], [ %i.ait, %bb.if ], [ %.6.i, %.loopexit.i ] ; 5 uses
  %i.aiu = getelementptr i8, ptr %.0.i, i64 28    ; 3 uses
  %i.aiv = load i8, ptr %i.aiu, align 4
  %i.aiw = icmp eq i8 %i.aiv, 0
  br i1 %i.aiw, label %bb.ig, label %mysql_dissect_clone_response.exit

bb.ig:                                            ; preds = %mysql_dissect_login.exit
  %i.aix = load i16, ptr %.0.i, align 8
  %i.aiy = and i16 %i.aix, 32
  %.not132 = icmp eq i16 %i.aiy, 0
  br i1 %.not132, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aiz = load i16, ptr %i.abv, align 4
  %i.aja = and i16 %i.aiz, 32
  %.not133 = icmp eq i16 %i.aja, 0
  br i1 %.not133, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  store i8 1, ptr %i.aiu, align 4
  %i.ajb = getelementptr i8, ptr %.0.i, i64 29
  store i8 0, ptr %i.ajb, align 1
  br label %mysql_dissect_clone_response.exit

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %i.ajc = getelementptr i8, ptr %.0.i, i64 2
  %i.ajd = load i16, ptr %i.ajc, align 2
  %i.aje = and i16 %i.ajd, 1024
  %.not134 = icmp eq i16 %i.aje, 0
  br i1 %.not134, label %mysql_dissect_clone_response.exit, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.ajf = load i16, ptr %i.aeo, align 2
  %i.ajg = and i16 %i.ajf, 1024
  %.not135 = icmp eq i16 %i.ajg, 0
  br i1 %.not135, label %mysql_dissect_clone_response.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  store i8 1, ptr %i.aiu, align 4
  %i.ajh = getelementptr i8, ptr %.0.i, i64 29
  store i8 1, ptr %i.ajh, align 1
  br label %mysql_dissect_clone_response.exit

bb.im:                                            ; preds = %bb.ge, %bb.ge
  %i.aji = load ptr, ptr %i.ci, align 8
  call void @col_set_str(ptr noundef %i.aji, i32 noundef 25, ptr noundef nonnull @.str.1227)
  %i.ajj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  switch i8 %i.ajj, label %bb.iq [
    i8 1, label %bb.in
    i8 2, label %bb.in
    i8 3, label %bb.in
    i8 4, label %bb.in
    i8 5, label %bb.in
    i8 6, label %bb.io
  ]

bb.in:                                            ; preds = %bb.im, %bb.im, %bb.im, %bb.im, %bb.im
  %i.ajk = zext nneg i8 %i.ajj to i32
  %i.ajl = load ptr, ptr %i.ci, align 8
  %i.ajm = getelementptr i8, ptr %1, i64 416
  %i.ajn = load ptr, ptr %i.ajm, align 8
  %i.ajo = call ptr @val_to_str(ptr noundef %i.ajn, i32 noundef %i.ajk, ptr noundef nonnull @mysql_clone_command_vals, ptr noundef nonnull @.str.1332)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ajl, i32 noundef 25, ptr noundef nonnull @.str.1237, ptr noundef %i.ajo)
  %i.ajp = load i32, ptr @hf_mysql_clone_command_code, align 4
  %i.ajq = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.ajp, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %mysql_dissect_clone_response.exit

bb.io:                                            ; preds = %bb.im
  %i.ajr = load ptr, ptr %i.ci, align 8
  %i.ajs = getelementptr i8, ptr %1, i64 416
  %i.ajt = load ptr, ptr %i.ajs, align 8
  %i.aju = call ptr @val_to_str(ptr noundef %i.ajt, i32 noundef 6, ptr noundef nonnull @mysql_clone_command_vals, ptr noundef nonnull @.str.1332)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ajr, i32 noundef 25, ptr noundef nonnull @.str.1237, ptr noundef %i.aju)
  %i.ajv = load i32, ptr @hf_mysql_clone_command_code, align 4
  %i.ajw = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.ajv, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajx = getelementptr i8, ptr %1, i64 80
  %.val.i165 = load ptr, ptr %i.ajx, align 8
  %i.ajy = getelementptr i8, ptr %.val.i165, i64 53
  %.val.val.i166 = load i16, ptr %i.ajy, align 1
  %i.ajz = and i16 %.val.val.i166, 8
  %.not.i.i167 = icmp eq i16 %i.ajz, 0
  br i1 %.not.i.i167, label %bb.ip, label %mysql_dissect_clone_response.exit

bb.ip:                                            ; preds = %bb.io
  %i.aka = getelementptr i8, ptr %.0.i, i64 56
  store i32 24, ptr %i.aka, align 8
  br label %mysql_dissect_clone_response.exit

bb.iq:                                            ; preds = %bb.im
  %i.akb = load ptr, ptr %i.ci, align 8
  call void @col_append_str(ptr noundef %i.akb, i32 noundef 25, ptr noundef nonnull @.str.1333)
  br label %mysql_dissect_clone_response.exit

bb.ir:                                            ; preds = %bb.ge
  %i.akc = load ptr, ptr %i.ci, align 8
  call void @col_set_str(ptr noundef %i.akc, i32 noundef 25, ptr noundef nonnull @.str.1228)
  %i.akd = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4)
  %i.ake = load i32, ptr @hf_mysql_sha2_response, align 4
  %i.akf = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.ake, ptr noundef %0, i32 noundef 4, i32 noundef %i.akd, i32 noundef 0) ; 0 uses
  %i.akg = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4)
  %i.akh = add i32 %i.akg, 4
  br label %mysql_dissect_clone_response.exit

.thread:                                          ; preds = %bb.ge, %bb.gf
  %i.aki = load ptr, ptr %i.ci, align 8
  call void @col_set_str(ptr noundef %i.aki, i32 noundef 25, ptr noundef nonnull @.str.1229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.akj = load i32, ptr %.0, align 8             ; 4 uses
  %i.akk = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4)
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %mysql_dissect_request.exit, label %bb.is

bb.is:                                            ; preds = %.thread
  switch i32 %i.akj, label %bb.jc [
    i32 17, label %bb.it
    i32 18, label %bb.iy
    i32 26, label %bb.iz
    i32 21, label %bb.jb
  ]

bb.it:                                            ; preds = %bb.is
  %i.akm = load ptr, ptr %i.ci, align 8
  call void @col_set_str(ptr noundef %i.akm, i32 noundef 25, ptr noundef nonnull @.str.1338)
  %i.akn = load ptr, ptr %i.ci, align 8
  call void @col_set_fence(ptr noundef %i.akn, i32 noundef 25)
  %i.ako = call i32 @tvb_strnlen(ptr noundef %0, i32 noundef 4, i32 noundef -1) ; 2 uses
  %i.akp = icmp eq i32 %i.ako, -1
  br i1 %i.akp, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.akq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4)
  br label %my_tvb_strsize.exit.i.i

bb.iv:                                            ; preds = %bb.it
  %i.akr = add nuw i32 %i.ako, 1
  br label %my_tvb_strsize.exit.i.i

my_tvb_strsize.exit.i.i:                          ; preds = %bb.iv, %bb.iu
  %.0.i.i.i = phi i32 [ %i.akq, %bb.iu ], [ %i.akr, %bb.iv ] ; 2 uses
  %i.aks = load i32, ptr @hf_mysql_auth_switch_response_data, align 4
  %i.akt = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.aks, ptr noundef %0, i32 noundef 4, i32 noundef %.0.i.i.i, i32 noundef 0) ; 0 uses
  %i.aku = getelementptr i8, ptr %.0.i, i64 40
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = call i32 @g_strcmp0(ptr noundef %i.akv, ptr noundef nonnull @.str.1261)
  %i.akx = icmp eq i32 %i.akw, 0
  br i1 %i.akx, label %bb.iw, label %mysql_dissect_auth_switch_response.exit.i

bb.iw:                                            ; preds = %my_tvb_strsize.exit.i.i
  %i.aky = getelementptr i8, ptr %1, i64 80
  %.val.i.i169 = load ptr, ptr %i.aky, align 8
  %i.akz = getelementptr i8, ptr %.val.i.i169, i64 53
  %.val.val.i.i = load i16, ptr %i.akz, align 1
  %i.ala = and i16 %.val.val.i.i, 8
  %.not.i.i.i170 = icmp eq i16 %i.ala, 0
  br i1 %.not.i.i.i170, label %bb.ix, label %mysql_dissect_auth_switch_response.exit.i

bb.ix:                                            ; preds = %bb.iw
  %i.alb = getelementptr i8, ptr %.0.i, i64 56
  store i32 18, ptr %i.alb, align 8
  br label %mysql_dissect_auth_switch_response.exit.i

mysql_dissect_auth_switch_response.exit.i:        ; preds = %bb.ix, %bb.iw, %my_tvb_strsize.exit.i.i
  %i.alc = add i32 %.0.i.i.i, 4                   ; 2 uses
  %i.ald = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.alc)
  %i.ale = add i32 %i.ald, %i.alc
  br label %mysql_dissect_request.exit

bb.iy:                                            ; preds = %bb.is
  %i.alf = call fastcc i32 @mysql_dissect_auth_sha2(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef %i.cf, ptr noundef %.0.i)
  br label %mysql_dissect_request.exit

bb.iz:                                            ; preds = %bb.is
  %i.alg = load ptr, ptr %i.ci, align 8
  call void @col_append_str(ptr noundef %i.alg, i32 noundef 25, ptr noundef nonnull @.str.1339)
  %i.alh = load ptr, ptr %i.ci, align 8
  call void @col_set_fence(ptr noundef %i.alh, i32 noundef 25)
  %i.ali = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.alj = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 4, i32 noundef %i.ali)
  %i.alk = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.alj, ptr noundef nonnull @.str.1268) ; 0 uses
  %i.all = load i32, ptr @hf_mysql_loaddata_payload, align 4
  %i.alm = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.all, ptr noundef %0, i32 noundef 4, i32 noundef %i.ali, i32 noundef 0) ; 0 uses
  %i.aln = getelementptr i8, ptr %1, i64 80
  %.val.i501.i = load ptr, ptr %i.aln, align 8
  %i.alo = getelementptr i8, ptr %.val.i501.i, i64 53
  %.val.val.i502.i = load i16, ptr %i.alo, align 1
  %i.alp = and i16 %.val.val.i502.i, 8
  %.not.i.i503.i = icmp eq i16 %i.alp, 0
  br i1 %.not.i.i503.i, label %bb.ja, label %mysql_dissect_loaddata.exit.i

bb.ja:                                            ; preds = %bb.iz
  %i.alq = getelementptr i8, ptr %.0.i, i64 56
  store i32 2, ptr %i.alq, align 8
  br label %mysql_dissect_loaddata.exit.i

mysql_dissect_loaddata.exit.i:                    ; preds = %bb.ja, %bb.iz
  %i.alr = add i32 %i.ali, 4
  br label %mysql_dissect_request.exit

bb.jb:                                            ; preds = %bb.is
  %i.als = call fastcc i32 @mysql_dissect_binlog_event_packet(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef %i.cf, ptr noundef %i.cf)
  br label %mysql_dissect_request.exit

bb.jc:                                            ; preds = %bb.is
  %i.alt = load i32, ptr @hf_mysql_request, align 4
  %i.alu = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.alt, ptr noundef %0, i32 noundef 4, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.alv = load i32, ptr @ett_request, align 4
  %i.alw = call ptr @proto_item_add_subtree(ptr noundef %i.alu, i32 noundef %i.alv) ; 60 uses
  %i.alx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.aly = zext i8 %i.alx to i32                  ; 2 uses
  %i.alz = load ptr, ptr %i.ci, align 8
  %i.ama = getelementptr i8, ptr %1, i64 416      ; 3 uses
  %i.amb = load ptr, ptr %i.ama, align 8
  %i.amc = call ptr @val_to_str_ext(ptr noundef %i.amb, i32 noundef %i.aly, ptr noundef nonnull @mysql_command_vals_ext, ptr noundef nonnull @.str.1334)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.alz, i32 noundef 25, ptr noundef nonnull @.str.1237, ptr noundef %i.amc)
  %i.amd = load i32, ptr @hf_mysql_command, align 4
  %i.ame = call ptr @proto_tree_add_item(ptr noundef %i.alw, i32 noundef %i.amd, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amf = load ptr, ptr %i.ama, align 8
  %i.amg = call ptr @val_to_str_ext(ptr noundef %i.amf, i32 noundef %i.aly, ptr noundef nonnull @mysql_command_vals_ext, ptr noundef nonnull @.str.1241)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.alu, ptr noundef nonnull @.str.1237, ptr noundef %i.amg)
  store i32 5, ptr %i.a, align 4
  switch i8 %i.alx, label %bb.nl [
    i8 1, label %mysql_set_resultset_fmt.exit.i
    i8 10, label %bb.jd
    i8 13, label %bb.jg
    i8 14, label %bb.jg
    i8 9, label %bb.ji
    i8 2, label %bb.jk
    i8 5, label %bb.jk
    i8 6, label %bb.jk
    i8 3, label %bb.jm
    i8 22, label %bb.jz
    i8 25, label %bb.kb
    i8 26, label %bb.kd
    i8 4, label %bb.kf
    i8 12, label %bb.kh
    i8 17, label %bb.kj
    i8 7, label %bb.kz
    i8 8, label %bb.lb
    i8 27, label %bb.ld
    i8 28, label %bb.lf
    i8 24, label %bb.li
    i8 -6, label %bb.lq
    i8 23, label %bb.mc
    i8 30, label %bb.mx
    i8 18, label %bb.nb
    i8 21, label %bb.nf
    i8 19, label %bb.nh
    i8 20, label %bb.nh
    i8 32, label %bb.nj
    i8 31, label %mysql_set_resultset_fmt.exit.i
  ]

bb.jd:                                            ; preds = %bb.jc
  %i.amh = getelementptr i8, ptr %1, i64 80       ; 2 uses
  %.val494.i = load ptr, ptr %i.amh, align 8
  %i.ami = getelementptr i8, ptr %.val494.i, i64 53
  %.val494.val.i = load i16, ptr %i.ami, align 1  ; 2 uses
  %i.amj = and i16 %.val494.val.i, 8
  %.not.i.i182 = icmp eq i16 %i.amj, 0
  br i1 %.not.i.i182, label %bb.je, label %mysql_set_conn_state.exit.i183

bb.je:                                            ; preds = %bb.jd
  %i.amk = getelementptr i8, ptr %.0.i, i64 56
  store i32 8, ptr %i.amk, align 8
  %.val500.pre.i = load ptr, ptr %i.amh, align 8
  %.phi.trans.insert631.i = getelementptr i8, ptr %.val500.pre.i, i64 53
  %.val500.val.pre.i = load i16, ptr %.phi.trans.insert631.i, align 1
  br label %mysql_set_conn_state.exit.i183

mysql_set_conn_state.exit.i183:                   ; preds = %bb.je, %bb.jd
  %.val500.val.i = phi i16 [ %.val494.val.i, %bb.jd ], [ %.val500.val.pre.i, %bb.je ]
  %i.aml = and i16 %.val500.val.i, 8
  %.not.i504.i = icmp eq i16 %i.aml, 0
  br i1 %.not.i504.i, label %bb.jf, label %mysql_set_resultset_fmt.exit.i

bb.jf:                                            ; preds = %mysql_set_conn_state.exit.i183
  %i.amm = getelementptr i8, ptr %.0.i, i64 60
  store i32 0, ptr %i.amm, align 4
  br label %mysql_set_resultset_fmt.exit.i

bb.jg:                                            ; preds = %bb.jc, %bb.jc
  %i.amn = getelementptr i8, ptr %1, i64 80
  %.val493.i = load ptr, ptr %i.amn, align 8
  %i.amo = getelementptr i8, ptr %.val493.i, i64 53
  %.val493.val.i = load i16, ptr %i.amo, align 1
  %i.amp = and i16 %.val493.val.i, 8
  %.not.i505.i = icmp eq i16 %i.amp, 0
  br i1 %.not.i505.i, label %bb.jh, label %mysql_set_resultset_fmt.exit.i

bb.jh:                                            ; preds = %bb.jg
  %i.amq = getelementptr i8, ptr %.0.i, i64 56
  store i32 3, ptr %i.amq, align 8
  br label %mysql_set_resultset_fmt.exit.i

bb.ji:                                            ; preds = %bb.jc
  %i.amr = getelementptr i8, ptr %1, i64 80
  %.val492.i = load ptr, ptr %i.amr, align 8
  %i.ams = getelementptr i8, ptr %.val492.i, i64 53
  %.val492.val.i = load i16, ptr %i.ams, align 1
  %i.amt = and i16 %.val492.val.i, 8
  %.not.i507.i = icmp eq i16 %i.amt, 0
  br i1 %.not.i507.i, label %bb.jj, label %mysql_set_resultset_fmt.exit.i

bb.jj:                                            ; preds = %bb.ji
  %i.amu = getelementptr i8, ptr %.0.i, i64 56
end_hunk_1
