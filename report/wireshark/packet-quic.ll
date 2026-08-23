Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-quic?download=true
inline.NumInlined: 174
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@follow_quic_tap_listener:bb.a
copy_address.exit:                                ; preds = %bb.e, %bb.f
  %i.ao = getelementptr i8, ptr %1, i64 292
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.v, align 8
  %i.aq = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 232
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %1, i64 236
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 240
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store i32 %i.as, ptr %i.aq, align 8
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %copy_address.exit58, label %copy_address.exit58.sink.split

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 8
  %i.ay = load i32, ptr %i.v, align 8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.h, label %copy_address.exit58

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %1, i64 288
  %i.bb = load i32, ptr %i.ba, align 8
  store i32 %i.bb, ptr %i.v, align 8
  %i.bc = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 208
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %1, i64 212
  %i.bg = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.bh = getelementptr i8, ptr %1, i64 216
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store i32 %i.be, ptr %i.bc, align 8
  %i.bj = icmp eq i32 %i.bg, 0
  br i1 %i.bj, label %copy_address.exit59, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = sext i32 %i.bg to i64
  %i.bl = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.bi, i64 noundef %i.bk) #20 ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 80
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %0, i64 72
  store ptr %i.bl, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %0, i64 68
  store i32 %i.bg, ptr %i.bo, align 4
  br label %copy_address.exit59

copy_address.exit59:                              ; preds = %bb.h, %bb.i
  %i.bp = getelementptr i8, ptr %1, i64 292
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %0, i64 60
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 232
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %1, i64 236
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 240
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bz = icmp eq i32 %i.bw, 0
  br i1 %i.bz, label %copy_address.exit58, label %copy_address.exit58.sink.split

copy_address.exit58.sink.split:                   ; preds = %copy_address.exit59, %copy_address.exit
  %.sink75 = phi i32 [ %i.au, %copy_address.exit ], [ %i.bw, %copy_address.exit59 ] ; 2 uses
  %.sink73 = phi ptr [ %i.aw, %copy_address.exit ], [ %i.by, %copy_address.exit59 ]
  %.sink72 = phi i64 [ 80, %copy_address.exit ], [ 104, %copy_address.exit59 ]
  %.sink69 = phi i64 [ 72, %copy_address.exit ], [ 96, %copy_address.exit59 ]
  %.sink66 = phi i64 [ 68, %copy_address.exit ], [ 92, %copy_address.exit59 ]
  %i.ca = sext i32 %.sink75 to i64
  %i.cb = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %.sink73, i64 noundef %i.ca) #20 ; 2 uses
  %i.cc = getelementptr i8, ptr %0, i64 %.sink72
  store ptr %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %0, i64 %.sink69
  store ptr %i.cb, ptr %i.cd, align 8
  %i.ce = getelementptr i8, ptr %0, i64 %.sink66
  store i32 %.sink75, ptr %i.ce, align 4
  br label %copy_address.exit58

copy_address.exit58:                              ; preds = %copy_address.exit58.sink.split, %copy_address.exit59, %copy_address.exit, %bb.g, %bb.d
  %i.cf = load ptr, ptr %i.i, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %0, i64 24
  %i.cj = load i8, ptr %i.e, align 8, !range !6, !noundef !7
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, %i.ch
  store i32 %i.cn, ptr %i.cl, align 4
  %i.co = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call ptr @g_list_prepend(ptr noundef %i.cp, ptr noundef %i.e)
  store ptr %i.cq, ptr %i.co, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %copy_address.exit58
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_sized_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @get_quic_connections_count() #5 {
bb.a:
  %i.a = load i32, ptr @quic_connections_count, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_quic() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.369, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.371) ; 2 uses
  store i32 %i.a, ptr @proto_quic, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_quic.hf, i32 noundef 125)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_quic.ett, i32 noundef 11)
  %i.b = load i32, ptr @proto_quic, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_quic.ei, i32 noundef 9)
  %i.d = load i32, ptr @proto_quic, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null) ; 3 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.374, ptr noundef nonnull @quic_crypto_out_of_order)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.377, ptr noundef nonnull @quic_stream_out_of_order)
  tail call void @prefs_register_uint_preference(ptr noundef %i.e, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.379, ptr noundef nonnull @.str.380, i32 noundef 10, ptr noundef nonnull @quic_gso_heur_dcid_len)
  %i.f = load i32, ptr @proto_quic, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.371, ptr noundef nonnull @dissect_quic, i32 noundef %i.f)
  store ptr %i.g, ptr @quic_handle, align 8
  tail call void @register_init_routine(ptr noundef nonnull @quic_init)
  tail call void @register_cleanup_routine(ptr noundef nonnull @quic_cleanup)
  %i.h = load i32, ptr @proto_quic, align 4
  tail call void @register_follow_stream(i32 noundef %i.h, ptr noundef nonnull @.str.381, ptr noundef nonnull @quic_follow_conv_filter, ptr noundef nonnull @quic_follow_index_filter, ptr noundef nonnull @udp_follow_address_filter, ptr noundef nonnull @udp_port_to_display, ptr noundef nonnull @follow_quic_tap_listener, ptr noundef nonnull @get_quic_connections_count, ptr noundef nonnull @quic_get_sub_stream_id)
  tail call void @reassembly_table_register(ptr noundef nonnull @quic_reassembly_table, ptr noundef nonnull @quic_reassembly_table_functions)
  tail call void @reassembly_table_register(ptr noundef nonnull @quic_crypto_reassembly_table, ptr noundef nonnull @tcp_reassembly_table_functions)
  %i.i = load i32, ptr @proto_quic, align 4
  %i.j = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.382, ptr noundef nonnull @.str.383, i32 noundef %i.i, i32 noundef 26, i32 noundef 0)
  store ptr %i.j, ptr @quic_proto_dissector_table, align 8
  %i.k = load i32, ptr @proto_quic, align 4
  %i.l = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.384, ptr noundef nonnull @.str.385, i32 noundef %i.k, i32 noundef 26, i32 noundef 0)
  store ptr %i.l, ptr @quic_datagram_proto_dissector_table, align 8
  %i.m = tail call i32 @register_tap(ptr noundef nonnull @.str.381)
  store i32 %i.m, ptr @quic_follow_tap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uint_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_quic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.quic_cid, align 8           ; 7 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %5 = alloca %struct.quic_pp_cipher, align 8     ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 8 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.quic_cid, align 8           ; 10 uses
  %7 = alloca %struct.quic_cid, align 8           ; 7 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i8, align 1                       ; 9 uses
  %i.o = alloca ptr, align 8                      ; 14 uses
  %i.p = alloca [48 x i8], align 16               ; 5 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 9 uses
  %i.s = alloca ptr, align 8                      ; 10 uses
  %8 = alloca %struct.quic_cid, align 8           ; 4 uses
  %9 = alloca %struct.quic_cid, align 8           ; 4 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.quic_cid, align 8          ; 4 uses
  %11 = alloca %struct.quic_cid, align 8          ; 4 uses
  %12 = alloca %struct.quic_cid, align 8          ; 4 uses
  %13 = alloca %struct.quic_cid, align 8          ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %14 = alloca %struct.quic_cid, align 8          ; 10 uses
  %15 = alloca %struct.quic_cid, align 8          ; 7 uses
  %i.y = alloca i8, align 1                       ; 5 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %16 = alloca %struct.quic_cid, align 8          ; 10 uses
  %17 = alloca %struct.quic_cid, align 8          ; 11 uses
  %i.aa = alloca i8, align 1                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 11 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @col_set_str(ptr noundef %i.ac, i32 noundef 35, ptr noundef nonnull @.str.370)
  %i.ad = tail call ptr @wmem_file_scope()
  %i.ae = load i32, ptr @proto_quic, align 4
  %i.af = getelementptr i8, ptr %1, i64 385       ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = tail call ptr @p_get_proto_data(ptr noundef %i.ad, ptr noundef %1, i32 noundef %i.ae, i32 noundef %i.ah) ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %16, i64 48
  %.sink.sroa.gep520 = getelementptr inbounds nuw i8, ptr %16, i64 40
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call ptr @wmem_file_scope()
  %i.ak = tail call noalias dereferenceable_or_null(72) ptr @wmem_alloc0(ptr noundef %i.aj, i64 noundef 72) #18 ; 2 uses
  %i.al = tail call ptr @wmem_file_scope()
  %i.am = load i32, ptr @proto_quic, align 4
  %i.an = load i8, ptr %i.af, align 1
  %i.ao = zext i8 %i.an to i32
  tail call void @p_add_proto_data(ptr noundef %i.al, ptr noundef %1, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef %i.ak)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0116 = phi ptr [ %i.ai, %bb.a ], [ %i.ak, %bb.b ] ; 11 uses
  %i.ap = load i32, ptr @proto_quic, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ap, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.ar = load i32, ptr @ett_quic, align 4
  %i.as = tail call ptr @proto_item_add_subtree(ptr noundef %i.aq, i32 noundef %i.ar) ; 7 uses
  %i.at = getelementptr i8, ptr %1, i64 80        ; 10 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 53
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = and i16 %i.aw, 8
  %.not130 = icmp eq i16 %i.ax, 0
  br i1 %.not130, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %.0116, align 8
  br label %bb.ao

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  store i8 0, ptr %i.aa, align 1
  call fastcc void @quic_extract_header(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %i.ay = load i8, ptr %i.y, align 1              ; 2 uses
  %i.az = call fastcc ptr @quic_connection_find(ptr noundef %1, i8 noundef zeroext %i.ay, ptr noundef nonnull %16, ptr noundef nonnull %i.aa) ; 2 uses
  %.not131 = icmp eq ptr %i.az, null
  br i1 %.not131, label %bb.e, label %quic_find_stateless_reset_token.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ba = call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 16
  br i1 %i.bb, label %quic_find_stateless_reset_token.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = call i32 @tvb_captured_length(ptr noundef %0)
  %.not.i = icmp eq i32 %i.ba, %i.bc
  br i1 %.not.i, label %bb.g, label %quic_find_stateless_reset_token.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr i8, ptr %1, i64 208       ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 232
  %i.bh = getelementptr i8, ptr %1, i64 284
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = call i32 @conversation_pt_to_conversation_type(i32 noundef %i.bi)
  %i.bk = getelementptr i8, ptr %1, i64 288       ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %1, i64 292
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = call ptr @find_conversation(i32 noundef %i.be, ptr noundef %i.bf, ptr noundef %i.bg, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %quic_find_stateless_reset_token.exit.thread, label %quic_connection_from_conv.exit.i

quic_connection_from_conv.exit.i:                 ; preds = %bb.g
  %i.bp = load i32, ptr @proto_quic, align 4
  %i.bq = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.bo, i32 noundef %i.bp) ; 2 uses
  %.not3246.i = icmp eq ptr %i.bq, null
  br i1 %.not3246.i, label %quic_find_stateless_reset_token.exit.thread, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %quic_connection_from_conv.exit.i
  %i.br = getelementptr i8, ptr %1, i64 212
  %i.bs = getelementptr i8, ptr %1, i64 216
  %i.bt = add nsw i32 %i.ba, -16
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph48.i
  %.02547.i = phi ptr [ %i.bq, %.lr.ph48.i ], [ %i.da, %._crit_edge.i ] ; 4 uses
  %i.bu = getelementptr i8, ptr %.02547.i, i64 8
  %.025.val.i = load ptr, ptr %i.bu, align 8
  %i.bv = call ptr @wmem_list_head(ptr noundef %.025.val.i) ; 2 uses
  %.not2.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not2.not.i.i, label %quic_connection_from_server_endpoint.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %addresses_equal.exit.i.i
  %.093.i.i = phi ptr [ %i.cp, %addresses_equal.exit.i.i ], [ %i.bv, %bb.h ] ; 2 uses
  %i.bw = call ptr @wmem_list_frame_data(ptr noundef nonnull %.093.i.i) ; 4 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = zext i16 %i.by to i32
  %i.ca = load i32, ptr %i.bk, align 8
  %i.cb = icmp eq i32 %i.ca, %i.bz
  br i1 %i.cb, label %bb.i, label %addresses_equal.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.cc = load i32, ptr %i.bw, align 8
  %i.cd = load i32, ptr %i.bf, align 8
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.j, label %addresses_equal.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr i8, ptr %i.bw, i64 4
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = load i32, ptr %i.br, align 4
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.k, label %addresses_equal.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp eq i32 %i.cg, 0
  br i1 %i.cj, label %quic_connection_from_server_endpoint.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr i8, ptr %i.bw, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.bs, align 8
  %i.cn = sext i32 %i.cg to i64
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.cl, ptr %i.cm, i64 %i.cn)
  %i.co = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.co, label %quic_connection_from_server_endpoint.exit.i, label %addresses_equal.exit.i.i

addresses_equal.exit.i.i:                         ; preds = %bb.l, %bb.j, %bb.i, %.lr.ph.i.i
  %i.cp = call ptr @wmem_list_frame_next(ptr noundef nonnull %.093.i.i) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.not.i.i, label %quic_connection_from_server_endpoint.exit.i, label %.lr.ph.i.i, !llvm.loop !13

quic_connection_from_server_endpoint.exit.i:      ; preds = %addresses_equal.exit.i.i, %bb.l, %bb.k, %bb.h
  %i.cq = phi i8 [ 0, %bb.h ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %addresses_equal.exit.i.i ]
  %i.cr = phi i64 [ 416, %bb.h ], [ 480, %bb.l ], [ 480, %bb.k ], [ 416, %addresses_equal.exit.i.i ]
  %i.cs = getelementptr i8, ptr %.02547.i, i64 %i.cr ; 2 uses
  %.not3344.i = icmp eq ptr %i.cs, null
  br i1 %.not3344.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %quic_connection_from_server_endpoint.exit.i, %bb.n
  %.045.i = phi ptr [ %i.cy, %bb.n ], [ %i.cs, %quic_connection_from_server_endpoint.exit.i ] ; 3 uses
  %i.ct = getelementptr i8, ptr %.045.i, i64 45
  %i.cu = load i8, ptr %i.ct, align 1, !range !6, !noundef !7
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.cw = getelementptr i8, ptr %.045.i, i64 29
  %i.cx = call i32 @tvb_memeql(ptr noundef %0, i32 noundef %i.bt, ptr noundef %i.cw, i64 noundef 16)
  %.not34.i = icmp eq i32 %i.cx, 0
end_hunk_0
begin_hunk_1_@dissect_quic:bb.a
  %i.za = load i8, ptr %i.xg, align 8             ; 2 uses
  %i.zb = icmp eq i8 %i.za, 0
  br i1 %i.zb, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.zc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.1121, ptr noundef nonnull @ei_quic_decryption_failed, ptr noundef nonnull @.str.500) ; 0 uses
  br label %dissect_quic_long_header.exit

bb.gc:                                            ; preds = %bb.ga
  %i.zd = zext i8 %i.za to i32
  %i.ze = load i32, ptr @hf_quic_packet_number, align 4
  %i.zf = getelementptr i8, ptr %.1115, i64 8     ; 3 uses
  %i.zg = load i64, ptr %i.zf, align 8
  %i.zh = call ptr @proto_tree_add_uint64(ptr noundef %.1121, i32 noundef %i.ze, ptr noundef %.4.i, i32 noundef %i.yw, i32 noundef %i.zd, i64 noundef %i.zg) ; 2 uses
  %.not.i238.i = icmp eq ptr %i.zh, null
  br i1 %.not.i238.i, label %proto_item_set_generated.exit240.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.zi = getelementptr i8, ptr %i.zh, i64 40
  %i.zj = load ptr, ptr %i.zi, align 8            ; 2 uses
  %.not5.i239.i = icmp eq ptr %i.zj, null
  br i1 %.not5.i239.i, label %proto_item_set_generated.exit240.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.zk = getelementptr i8, ptr %i.zj, i64 28     ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 4
  %i.zm = or i32 %i.zl, 2
  store i32 %i.zm, ptr %i.zk, align 4
  br label %proto_item_set_generated.exit240.i

proto_item_set_generated.exit240.i:               ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.zn = load i8, ptr %i.xg, align 8
  %i.zo = zext i8 %i.zn to i32
  %i.zp = add i32 %i.yw, %i.zo                    ; 4 uses
  %i.zq = load ptr, ptr %i.ab, align 8
  %i.zr = load i64, ptr %i.zf, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.zq, i32 noundef 25, ptr noundef nonnull @.str.501, i64 noundef %i.zr)
  %i.zs = load i32, ptr @hf_quic_payload, align 4
  %i.zt = call ptr @proto_tree_add_item(ptr noundef %.1121, i32 noundef %i.zs, ptr noundef %.4.i, i32 noundef %i.zp, i32 noundef -1, i32 noundef 0)
  %i.zu = getelementptr i8, ptr %.0197.i, i64 8
  %i.zv = load i8, ptr %i.n, align 1              ; 2 uses
  %i.zw = load i8, ptr %i.xg, align 8
  %i.zx = zext i8 %i.zw to i32
  call fastcc void @quic_process_payload(ptr noundef %.4.i, ptr noundef %1, ptr noundef %.1121, ptr noundef %i.zt, i32 noundef %i.zp, ptr noundef %i.rl, ptr noundef %.1115, i1 noundef zeroext %i.rn, ptr noundef %i.zu, i8 noundef zeroext %i.zv, i32 noundef %i.zx)
  %i.zy = load ptr, ptr %i.at, align 8
  %i.zz = getelementptr i8, ptr %i.zy, i64 53
  %i.aaa = load i16, ptr %i.zz, align 1
  %i.aab = and i16 %i.aaa, 8
  %.not221.i = icmp eq i16 %i.aab, 0
  br i1 %.not221.i, label %bb.gf, label %.critedge229.i

bb.gf:                                            ; preds = %proto_item_set_generated.exit240.i
  %i.aac = load ptr, ptr %i.yx, align 8
  %.not222.i = icmp eq ptr %i.aac, null
  br i1 %.not222.i, label %bb.gg, label %.critedge229.i

bb.gg:                                            ; preds = %bb.gf
  %i.aad = load i64, ptr %i.zf, align 8
  %i.aae = load i64, ptr %i.ib, align 8
  %i.aaf = call fastcc ptr @quic_max_packet_number(ptr noundef %i.rl, i64 noundef %i.aae, i1 noundef zeroext %i.rn, i8 noundef zeroext %i.zv)
  store i64 %i.aad, ptr %i.aaf, align 8
  br i1 %i.yd, label %bb.gh, label %.critedge229.i

bb.gh:                                            ; preds = %bb.gg
  %i.aag = call ptr @tls_get_client_alpn(ptr noundef %1) ; 6 uses
  %.not223.i = icmp eq ptr %i.aag, null
  br i1 %.not223.i, label %.critedge229.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aah = load ptr, ptr @quic_proto_dissector_table, align 8
  %i.aai = call ptr @dissector_get_string_handle(ptr noundef %i.aah, ptr noundef nonnull %i.aag) ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.rl, i64 664   ; 2 uses
  store ptr %i.aai, ptr %i.aaj, align 8
  %.not224.i = icmp eq ptr %i.aai, null
  br i1 %.not224.i, label %bb.gj, label %.critedge229.i

bb.gj:                                            ; preds = %bb.gi
  %i.aak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aag) #21 ; 2 uses
  %i.aal = icmp ugt i64 %i.aak, 2
  br i1 %i.aal, label %bb.gk, label %.critedge229.i

bb.gk:                                            ; preds = %bb.gj
  %i.aam = load i16, ptr %i.aag, align 1
  %i.aan = xor i16 %i.aam, 13160
  %i.aao = getelementptr i8, ptr %i.aag, i64 2
  %i.aap = load i8, ptr %i.aao, align 1
  %i.aaq = zext i8 %i.aap to i16
  %i.aar = xor i16 %i.aaq, 45
  %i.aas = or i16 %i.aan, %i.aar
  %i.aat = icmp ne i16 %i.aas, 0
  %i.aau = zext i1 %i.aat to i32
  %.not258.i = icmp eq i32 %i.aau, 0
  br i1 %.not258.i, label %.critedge229.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.gk
  %.not259.i = icmp eq i64 %i.aak, 3
  br i1 %.not259.i, label %.critedge229.i, label %bb.gl

bb.gl:                                            ; preds = %.critedge.i
  %i.aav = load i32, ptr %i.aag, align 1
  %i.aaw = icmp ne i32 %i.aav, 762408804
  %i.aax = zext i1 %i.aaw to i32
  %.not260.i = icmp eq i32 %i.aax, 0
  br i1 %.not260.i, label %.critedge229.sink.split.i, label %.critedge229.i

.critedge229.sink.split.i:                        ; preds = %bb.gl, %bb.gk
  %.str.503.sink.i = phi ptr [ @.str.503, %bb.gk ], [ @.str.505, %bb.gl ]
  %i.aay = load ptr, ptr @quic_proto_dissector_table, align 8
  %i.aaz = call ptr @dissector_get_string_handle(ptr noundef %i.aay, ptr noundef nonnull %.str.503.sink.i)
  store ptr %i.aaz, ptr %i.aaj, align 8
  br label %.critedge229.i

.critedge229.i:                                   ; preds = %.critedge229.sink.split.i, %bb.gl, %.critedge.i, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %proto_item_set_generated.exit240.i
  %i.aba = call i32 @tvb_reported_length_remaining(ptr noundef %.4.i, i32 noundef %i.zp)
  %i.abb = add i32 %i.aba, %i.zp
  br label %dissect_quic_long_header.exit

dissect_quic_long_header.exit:                    ; preds = %bb.fy, %bb.gb, %.critedge229.i
  %.0.i181 = phi i32 [ %i.yw, %bb.fy ], [ %i.yw, %bb.gb ], [ %i.abb, %.critedge229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %bb.iu

bb.gm:                                            ; preds = %proto_item_set_generated.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.abc = load ptr, ptr %.0116, align 8          ; 28 uses
  %i.abd = load i8, ptr %i.ht, align 8
  %i.abe = trunc i8 %i.abd to i1                  ; 8 uses
  %i.abf = load i32, ptr @hf_quic_short, align 4
  %i.abg = call ptr @proto_tree_add_item(ptr noundef %.1121, i32 noundef %i.abf, ptr noundef %.4.i, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.abh = load i32, ptr @ett_quic_short_header, align 4
  %i.abi = call ptr @proto_item_add_subtree(ptr noundef %i.abg, i32 noundef %i.abh) ; 13 uses
  %i.abj = load i32, ptr @hf_quic_header_form, align 4
  %i.abk = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.abj, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abl = load ptr, ptr %i.at, align 8
  %i.abm = getelementptr i8, ptr %i.abl, i64 53
  %i.abn = load i16, ptr %i.abm, align 1
  %i.abo = and i16 %i.abn, 8
  %.not.i185 = icmp eq i16 %i.abo, 0
  br i1 %.not.i185, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.abp = getelementptr i8, ptr %.1115, i64 42
  store i8 -1, ptr %i.abp, align 2
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.not175.i = icmp eq ptr %i.abc, null           ; 2 uses
  br i1 %.not175.i, label %.thread171.critedge.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %.in.in.v.i186 = select i1 %i.abe, i64 424, i64 488
  %.in.in.i187 = getelementptr i8, ptr %i.abc, i64 %.in.in.v.i186
  %.in.i188 = load i8, ptr %.in.in.i187, align 8  ; 5 uses
  store i8 %.in.i188, ptr %4, align 8
  %i.abq = getelementptr i8, ptr %i.abc, i64 16   ; 5 uses
  %i.abr = load i16, ptr %i.abq, align 8          ; 2 uses
  %i.abs = select i1 %i.abe, i16 -145, i16 -97
  %i.abt = or i16 %i.abr, %i.abs
  %i.abu = icmp eq i16 %i.abt, -1                 ; 2 uses
  %i.abv = load ptr, ptr %i.at, align 8
  %i.abw = getelementptr i8, ptr %i.abv, i64 53
  %i.abx = load i16, ptr %i.abw, align 1
  %i.aby = and i16 %i.abx, 8
  %i.abz = icmp eq i16 %i.aby, 0
  br i1 %i.abz, label %bb.gq, label %bb.hj

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4
  %i.aca = trunc i16 %i.abr to i1
  br i1 %i.aca, label %quic_is_hp_cipher_initialized.exit.thread.thread195.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.acb = getelementptr i8, ptr %i.abc, i64 192  ; 6 uses
  %i.acc = getelementptr i8, ptr %i.abc, i64 272  ; 5 uses
  %i.acd = select i1 %i.abe, ptr %i.acc, ptr %i.acb
  %i.ace = load ptr, ptr %i.acb, align 8
  %.not.i.i193 = icmp eq ptr %i.ace, null
  br i1 %.not.i.i193, label %bb.gs, label %quic_get_1rtt_hp_cipher.exit.i

bb.gs:                                            ; preds = %bb.gr
  %i.acf = getelementptr i8, ptr %i.abc, i64 24   ; 5 uses
  %i.acg = getelementptr i8, ptr %i.abc, i64 28   ; 3 uses
  %i.ach = getelementptr i8, ptr %i.abc, i64 20   ; 9 uses
  %i.aci = call zeroext i1 @tls_get_cipher_info(ptr noundef %1, i16 noundef zeroext 0, ptr noundef %i.acf, ptr noundef %i.acg, ptr noundef %i.ach)
  br i1 %i.aci, label %bb.gt, label %quic_is_hp_cipher_initialized.exit.thread.thread.sink.split.i

bb.gt:                                            ; preds = %bb.gs
  %i.acj = load i32, ptr %i.ach, align 4
  %i.ack = call i32 @gcry_md_get_algo_dlen(i32 noundef %i.acj) ; 3 uses
  %i.acl = load ptr, ptr %i.ia, align 8
  %i.acm = zext i32 %i.ack to i64                 ; 2 uses
  %i.acn = call noalias ptr @wmem_alloc0(ptr noundef %i.acl, i64 noundef %i.acm) #18 ; 2 uses
  %i.aco = call i32 @tls13_get_quic_secret(ptr noundef %1, i1 noundef zeroext false, i32 noundef 2, i32 noundef %i.ack, i32 noundef %i.ack, ptr noundef %i.acn)
  %.not.i.not.i.i = icmp eq i32 %i.aco, 0
  br i1 %.not.i.not.i.i, label %quic_get_traffic_secret.exit.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.acp = call ptr @wmem_file_scope()
  %i.acq = call ptr @wmem_memdup(ptr noundef %i.acp, ptr noundef %i.acn, i64 noundef %i.acm) #20
  store ptr %i.acq, ptr %i.acb, align 8
  %i.acr = load i32, ptr %i.ach, align 4
  %i.acs = call i32 @gcry_md_get_algo_dlen(i32 noundef %i.acr) ; 3 uses
  %i.act = load ptr, ptr %i.ia, align 8
  %i.acu = zext i32 %i.acs to i64                 ; 2 uses
  %i.acv = call noalias ptr @wmem_alloc0(ptr noundef %i.act, i64 noundef %i.acu) #18 ; 2 uses
  %i.acw = call i32 @tls13_get_quic_secret(ptr noundef %1, i1 noundef zeroext true, i32 noundef 2, i32 noundef %i.acs, i32 noundef %i.acs, ptr noundef %i.acv)
  %.not.i102.not.i.i = icmp eq i32 %i.acw, 0
  br i1 %.not.i102.not.i.i, label %quic_get_traffic_secret.exit.i.i, label %bb.gv

quic_get_traffic_secret.exit.i.i:                 ; preds = %bb.gu, %bb.gt
  %i.acx = load i16, ptr %i.abq, align 8
  %i.acy = or i16 %i.acx, 1
  store i16 %i.acy, ptr %i.abq, align 8
  br label %quic_is_hp_cipher_initialized.exit.thread.thread.sink.split.i

bb.gv:                                            ; preds = %bb.gu
  %i.acz = call ptr @wmem_file_scope()
  %i.ada = call ptr @wmem_memdup(ptr noundef %i.acz, ptr noundef %i.acv, i64 noundef %i.acu) #20
  store ptr %i.ada, ptr %i.acc, align 8
  %i.adb = getelementptr i8, ptr %i.abc, i64 248
  %i.adc = load i32, ptr %i.ach, align 4
  %i.add = load i32, ptr %i.acf, align 8
  %i.ade = load ptr, ptr %i.acb, align 8
  %i.adf = getelementptr i8, ptr %i.abc, i64 4    ; 6 uses
  %i.adg = load i32, ptr %i.adf, align 4
  %i.adh = call fastcc zeroext i1 @quic_hp_cipher_prepare(ptr noundef %i.adb, i32 noundef %i.adc, i32 noundef %i.add, ptr noundef %i.ade, ptr noundef nonnull %i.c, i32 noundef %i.adg)
  br i1 %i.adh, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.adi = getelementptr i8, ptr %i.abc, i64 200
  %i.adj = load i32, ptr %i.ach, align 4
  %i.adk = load i32, ptr %i.acf, align 8
  %i.adl = load i32, ptr %i.acg, align 4
  %i.adm = load ptr, ptr %i.acb, align 8
  %i.adn = load i32, ptr %i.adf, align 4
  %i.ado = call fastcc zeroext i1 @quic_pp_cipher_prepare(ptr noundef %i.adi, i32 noundef %i.adj, i32 noundef %i.adk, i32 noundef %i.adl, ptr noundef %i.adm, ptr noundef nonnull %i.c, i32 noundef %i.adn)
  br i1 %i.ado, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.adp = getelementptr i8, ptr %i.abc, i64 328
  %i.adq = load i32, ptr %i.ach, align 4
  %i.adr = load i32, ptr %i.acf, align 8
  %i.ads = load ptr, ptr %i.acc, align 8
  %i.adt = load i32, ptr %i.adf, align 4
  %i.adu = call fastcc zeroext i1 @quic_hp_cipher_prepare(ptr noundef %i.adp, i32 noundef %i.adq, i32 noundef %i.adr, ptr noundef %i.ads, ptr noundef nonnull %i.c, i32 noundef %i.adt)
  br i1 %i.adu, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.adv = getelementptr i8, ptr %i.abc, i64 280
  %i.adw = load i32, ptr %i.ach, align 4
  %i.adx = load i32, ptr %i.acf, align 8
  %i.ady = load i32, ptr %i.acg, align 4
  %i.adz = load ptr, ptr %i.acc, align 8
  %i.aea = load i32, ptr %i.adf, align 4
  %i.aeb = call fastcc zeroext i1 @quic_pp_cipher_prepare(ptr noundef %i.adv, i32 noundef %i.adw, i32 noundef %i.adx, i32 noundef %i.ady, ptr noundef %i.adz, ptr noundef nonnull %i.c, i32 noundef %i.aea)
  br i1 %i.aeb, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %i.aec = load i16, ptr %i.abq, align 8
  %i.aed = or i16 %i.aec, 1
  store i16 %i.aed, ptr %i.abq, align 8
  br label %quic_is_hp_cipher_initialized.exit.thread.i

bb.ha:                                            ; preds = %bb.gy
  %i.aee = load i32, ptr %i.adf, align 4
  %i.aef = load i32, ptr %i.ach, align 4
  call fastcc void @quic_update_key(i32 noundef %i.aee, i32 noundef %i.aef, ptr noundef %i.acb)
  %i.aeg = load i32, ptr %i.adf, align 4
  %i.aeh = load i32, ptr %i.ach, align 4
  call fastcc void @quic_update_key(i32 noundef %i.aeg, i32 noundef %i.aeh, ptr noundef %i.acc)
  %i.aei = call ptr @tls_get_alpn(ptr noundef %1) ; 7 uses
  %.not95.i.i = icmp eq ptr %i.aei, null
  br i1 %.not95.i.i, label %quic_get_1rtt_hp_cipher.exit.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aej = load ptr, ptr @quic_proto_dissector_table, align 8
  %i.aek = call ptr @dissector_get_string_handle(ptr noundef %i.aej, ptr noundef nonnull %i.aei)
  %i.ael = getelementptr i8, ptr %i.abc, i64 656  ; 4 uses
  store ptr %i.aek, ptr %i.ael, align 8
  %i.aem = load ptr, ptr @quic_datagram_proto_dissector_table, align 8
  %i.aen = call ptr @dissector_get_string_handle(ptr noundef %i.aem, ptr noundef nonnull %i.aei)
  %i.aeo = getelementptr i8, ptr %i.abc, i64 672  ; 2 uses
  store ptr %i.aen, ptr %i.aeo, align 8
  %i.aep = load ptr, ptr %i.ael, align 8
  %.not96.i.i = icmp eq ptr %i.aep, null
  br i1 %.not96.i.i, label %bb.hc, label %quic_get_1rtt_hp_cipher.exit.i

bb.hc:                                            ; preds = %bb.hb
  %i.aeq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aei) #21 ; 2 uses
  %i.aer = icmp ugt i64 %i.aeq, 2
  br i1 %i.aer, label %bb.hd, label %quic_get_1rtt_hp_cipher.exit.i

bb.hd:                                            ; preds = %bb.hc
  %i.aes = load i16, ptr %i.aei, align 1
  %i.aet = xor i16 %i.aes, 13160
  %i.aeu = getelementptr i8, ptr %i.aei, i64 2
  %i.aev = load i8, ptr %i.aeu, align 1
  %i.aew = zext i8 %i.aev to i16
  %i.aex = xor i16 %i.aew, 45
  %i.aey = or i16 %i.aet, %i.aex
  %i.aez = icmp ne i16 %i.aey, 0
  %i.afa = zext i1 %i.aez to i32
  %.not104.i.i = icmp eq i32 %i.afa, 0
  br i1 %.not104.i.i, label %bb.he, label %.critedge.i.i198

bb.he:                                            ; preds = %bb.hd
  %i.afb = load ptr, ptr @quic_proto_dissector_table, align 8
  %i.afc = call ptr @dissector_get_string_handle(ptr noundef %i.afb, ptr noundef nonnull @.str.503)
  store ptr %i.afc, ptr %i.ael, align 8
  %i.afd = load ptr, ptr @quic_datagram_proto_dissector_table, align 8
  %i.afe = call ptr @dissector_get_string_handle(ptr noundef %i.afd, ptr noundef nonnull @.str.503)
  store ptr %i.afe, ptr %i.aeo, align 8
  br label %quic_get_1rtt_hp_cipher.exit.i

.critedge.i.i198:                                 ; preds = %bb.hd
  %.not105.i.i = icmp eq i64 %i.aeq, 3
  br i1 %.not105.i.i, label %quic_get_1rtt_hp_cipher.exit.i, label %bb.hf

bb.hf:                                            ; preds = %.critedge.i.i198
  %i.aff = load i32, ptr %i.aei, align 1
  %i.afg = icmp ne i32 %i.aff, 762408804
  %i.afh = zext i1 %i.afg to i32
  %.not106.i.i = icmp eq i32 %i.afh, 0
  br i1 %.not106.i.i, label %bb.hg, label %quic_get_1rtt_hp_cipher.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.afi = load ptr, ptr @quic_proto_dissector_table, align 8
  %i.afj = call ptr @dissector_get_string_handle(ptr noundef %i.afi, ptr noundef nonnull @.str.505)
  store ptr %i.afj, ptr %i.ael, align 8
  br label %quic_get_1rtt_hp_cipher.exit.i

quic_get_1rtt_hp_cipher.exit.i:                   ; preds = %bb.hg, %bb.hf, %.critedge.i.i198, %bb.he, %bb.hc, %bb.hb, %bb.ha, %bb.gr
  %i.afk = getelementptr i8, ptr %i.acd, i64 56   ; 2 uses
  %.not.i148.i = icmp eq ptr %i.afk, null
  br i1 %.not.i148.i, label %quic_is_hp_cipher_initialized.exit.thread.i, label %quic_is_hp_cipher_initialized.exit.i194

quic_is_hp_cipher_initialized.exit.i194:          ; preds = %quic_get_1rtt_hp_cipher.exit.i
  %i.afl = load ptr, ptr %i.afk, align 8          ; 2 uses
  %.not176.i = icmp eq ptr %i.afl, null
  br i1 %.not176.i, label %quic_is_hp_cipher_initialized.exit.thread.i, label %bb.hh

bb.hh:                                            ; preds = %quic_is_hp_cipher_initialized.exit.i194
  %i.afm = zext i8 %.in.i188 to i32
  %i.afn = add nuw nsw i32 %i.afm, 1
  %i.afo = getelementptr i8, ptr %i.abc, i64 24
  %i.afp = load i32, ptr %i.afo, align 8
  %i.afq = call fastcc zeroext i1 @quic_decrypt_header(ptr noundef %.4.i, i32 noundef %i.afn, ptr nonnull %i.afl, i32 noundef %i.afp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i1 noundef zeroext %i.abu)
  br i1 %i.afq, label %bb.hi, label %quic_is_hp_cipher_initialized.exit.thread.i

bb.hi:                                            ; preds = %bb.hh
  %i.afr = load i64, ptr %i.ib, align 8
  %i.afs = load i8, ptr %i.b, align 1             ; 3 uses
  %i.aft = load i32, ptr %i.d, align 4
  %i.afu = and i8 %i.afs, 3
  %narrow.i.i195 = add nuw nsw i8 %i.afu, 1       ; 2 uses
  %i.afv = call fastcc ptr @quic_max_packet_number(ptr noundef nonnull %i.abc, i64 noundef %i.afr, i1 noundef zeroext %i.abe, i8 noundef zeroext %i.afs)
  %i.afw = load i64, ptr %i.afv, align 8
  %i.afx = zext i32 %i.aft to i64                 ; 2 uses
  %i.afy = shl nuw nsw i8 %narrow.i.i195, 3
  %i.afz = zext nneg i8 %i.afy to i64
  %i.aga = call i64 @llvm.uadd.sat.i64(i64 %i.afw, i64 1) ; 7 uses
  %i.agb = shl nuw nsw i64 1, %i.afz              ; 2 uses
  %i.agc = sub nsw i64 0, %i.agb
  %i.agd = and i64 %i.aga, %i.agc                 ; 2 uses
  %i.age = or i64 %i.agd, %i.afx                  ; 4 uses
  %i.agf = add i64 %i.agd, %i.agb
  %i.agg = or i64 %i.agf, %i.afx                  ; 4 uses
  %i.agh = icmp ult i64 %i.aga, %i.age
  %i.agi = sub nuw i64 %i.age, %i.aga
  %i.agj = sub nuw i64 %i.aga, %i.age
  %i.agk = select i1 %i.agh, i64 %i.agi, i64 %i.agj
  %i.agl = icmp ult i64 %i.aga, %i.agg
  %i.agm = sub nuw i64 %i.agg, %i.aga
  %i.agn = sub nuw i64 %i.aga, %i.agg
  %i.ago = select i1 %i.agl, i64 %i.agm, i64 %i.agn
  %i.agp = icmp ult i64 %i.agk, %i.ago
  %.0.i.i.i196 = select i1 %i.agp, i64 %i.age, i64 %i.agg
  %i.agq = getelementptr i8, ptr %.1115, i64 40
  store i8 %narrow.i.i195, ptr %i.agq, align 8
  %i.agr = getelementptr i8, ptr %.1115, i64 8
  store i64 %.0.i.i.i196, ptr %i.agr, align 8
  %i.ags = getelementptr i8, ptr %.1115, i64 41
  store i8 %i.afs, ptr %i.ags, align 1
  br label %quic_is_hp_cipher_initialized.exit.thread.i

quic_is_hp_cipher_initialized.exit.thread.i:      ; preds = %bb.hi, %bb.hh, %quic_is_hp_cipher_initialized.exit.i194, %quic_get_1rtt_hp_cipher.exit.i, %bb.gz
  %.pr.pr.i = load ptr, ptr %i.c, align 8         ; 2 uses
  %.not140.i = icmp eq ptr %.pr.pr.i, null
  br i1 %.not140.i, label %quic_is_hp_cipher_initialized.exit.thread.thread195.i, label %quic_is_hp_cipher_initialized.exit.thread.thread.i

quic_is_hp_cipher_initialized.exit.thread.thread.sink.split.i: ; preds = %quic_get_traffic_secret.exit.i.i, %bb.gs
  %.str.496.sink.i = phi ptr [ @.str.496, %quic_get_traffic_secret.exit.i.i ], [ @.str.606, %bb.gs ] ; 2 uses
  store ptr %.str.496.sink.i, ptr %i.c, align 8
  br label %quic_is_hp_cipher_initialized.exit.thread.thread.i

quic_is_hp_cipher_initialized.exit.thread.thread.i: ; preds = %quic_is_hp_cipher_initialized.exit.thread.thread.sink.split.i, %quic_is_hp_cipher_initialized.exit.thread.i
  %18 = phi ptr [ %.pr.pr.i, %quic_is_hp_cipher_initialized.exit.thread.i ], [ %.str.496.sink.i, %quic_is_hp_cipher_initialized.exit.thread.thread.sink.split.i ]
  %i.agt = call ptr @wmem_file_scope()
  %i.agu = call noalias ptr @wmem_strdup(ptr noundef %i.agt, ptr noundef nonnull %18)
  %i.agv = getelementptr i8, ptr %.1115, i64 16
  store ptr %i.agu, ptr %i.agv, align 8
  br label %quic_is_hp_cipher_initialized.exit.thread.thread195.i

quic_is_hp_cipher_initialized.exit.thread.thread195.i: ; preds = %quic_is_hp_cipher_initialized.exit.thread.thread.i, %quic_is_hp_cipher_initialized.exit.thread.i, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.hl

bb.hj:                                            ; preds = %bb.gp
  %i.agw = getelementptr i8, ptr %.1115, i64 40
  %i.agx = load i8, ptr %i.agw, align 8
  %.not139.i = icmp eq i8 %i.agx, 0
  br i1 %.not139.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.agy = getelementptr i8, ptr %.1115, i64 41
  %i.agz = load i8, ptr %i.agy, align 1
  store i8 %i.agz, ptr %i.b, align 1
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %quic_is_hp_cipher_initialized.exit.thread.thread195.i
  %i.aha = load i32, ptr @hf_quic_fixed_bit, align 4
  %i.ahb = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.aha, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahc = load i32, ptr @hf_quic_spin_bit, align 4
  %i.ahd = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.ahc, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %i.abu, label %bb.hm, label %.thread171.i

bb.hm:                                            ; preds = %bb.hl
  %i.ahe = load i32, ptr @hf_quic_q_bit, align 4
  %i.ahf = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.ahe, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahg = load i32, ptr @hf_quic_l_bit, align 4
  %i.ahh = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.ahg, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahi = getelementptr i8, ptr %.1115, i64 40   ; 3 uses
  %i.ahj = load i8, ptr %i.ahi, align 8
  %.not141.i = icmp eq i8 %i.ahj, 0
  br i1 %.not141.i, label %bb.hv, label %bb.hn

.thread171.critedge.i:                            ; preds = %bb.go
  %i.ahk = load i32, ptr @hf_quic_fixed_bit, align 4
  %i.ahl = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.ahk, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahm = load i32, ptr @hf_quic_spin_bit, align 4
  %i.ahn = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.ahm, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.thread171.i

.thread171.i:                                     ; preds = %.thread171.critedge.i, %bb.hl
  %i.aho = phi i8 [ 0, %.thread171.critedge.i ], [ %.in.i188, %bb.hl ] ; 4 uses
  %i.ahp = getelementptr i8, ptr %.1115, i64 40   ; 5 uses
  %i.ahq = load i8, ptr %i.ahp, align 8
  %.not141172.i = icmp eq i8 %i.ahq, 0
  br i1 %.not141172.i, label %bb.hv, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ahr = load i8, ptr %i.b, align 1
  %i.ahs = zext i8 %i.ahr to i32
  br label %proto_item_set_generated.exit.i190

bb.ho:                                            ; preds = %.thread171.i
  %i.aht = load i8, ptr %i.b, align 1
  %i.ahu = zext i8 %i.aht to i32                  ; 4 uses
  %i.ahv = load i32, ptr @hf_quic_short_reserved, align 4
  %i.ahw = call ptr @proto_tree_add_uint(ptr noundef %i.abi, i32 noundef %i.ahv, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef %i.ahu) ; 2 uses
  %.not.i149.i = icmp eq ptr %i.ahw, null
  br i1 %.not.i149.i, label %proto_item_set_generated.exit.i190, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 40
  %i.ahy = load ptr, ptr %i.ahx, align 8          ; 2 uses
  %.not5.i.i189 = icmp eq ptr %i.ahy, null
  br i1 %.not5.i.i189, label %proto_item_set_generated.exit.i190, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 28   ; 2 uses
  %i.aia = load i32, ptr %i.ahz, align 4
  %i.aib = or i32 %i.aia, 2
  store i32 %i.aib, ptr %i.ahz, align 4
  br label %proto_item_set_generated.exit.i190

proto_item_set_generated.exit.i190:               ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.hn
  %i.aic = phi i8 [ %.in.i188, %bb.hn ], [ %i.aho, %bb.ho ], [ %i.aho, %bb.hp ], [ %i.aho, %bb.hq ]
  %i.aid = phi i32 [ %i.ahs, %bb.hn ], [ %i.ahu, %bb.ho ], [ %i.ahu, %bb.hp ], [ %i.ahu, %bb.hq ] ; 2 uses
  %i.aie = phi ptr [ %i.ahi, %bb.hn ], [ %i.ahp, %bb.ho ], [ %i.ahp, %bb.hp ], [ %i.ahp, %bb.hq ]
  %i.aif = and i32 %i.aid, 4                      ; 2 uses
  %i.aig = load i32, ptr @hf_quic_key_phase, align 4
  %i.aih = zext nneg i32 %i.aif to i64
  %i.aii = call ptr @proto_tree_add_boolean(ptr noundef %i.abi, i32 noundef %i.aig, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i64 noundef %i.aih) ; 2 uses
  %.not.i150.i = icmp eq ptr %i.aii, null
  br i1 %.not.i150.i, label %proto_item_set_generated.exit152.i, label %bb.hr

bb.hr:                                            ; preds = %proto_item_set_generated.exit.i190
  %i.aij = getelementptr i8, ptr %i.aii, i64 40
  %i.aik = load ptr, ptr %i.aij, align 8          ; 2 uses
  %.not5.i151.i = icmp eq ptr %i.aik, null
  br i1 %.not5.i151.i, label %proto_item_set_generated.exit152.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ail = getelementptr i8, ptr %i.aik, i64 28   ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4
  %i.ain = or i32 %i.aim, 2
  store i32 %i.ain, ptr %i.ail, align 4
  br label %proto_item_set_generated.exit152.i

proto_item_set_generated.exit152.i:               ; preds = %bb.hs, %bb.hr, %proto_item_set_generated.exit.i190
  %i.aio = load i32, ptr @hf_quic_packet_number_length, align 4
  %i.aip = call ptr @proto_tree_add_uint(ptr noundef %i.abi, i32 noundef %i.aio, ptr noundef %.4.i, i32 noundef 0, i32 noundef 1, i32 noundef %i.aid) ; 2 uses
  %.not.i153.i = icmp eq ptr %i.aip, null
  br i1 %.not.i153.i, label %proto_item_set_generated.exit155.i, label %bb.ht

bb.ht:                                            ; preds = %proto_item_set_generated.exit152.i
  %i.aiq = getelementptr i8, ptr %i.aip, i64 40
  %i.air = load ptr, ptr %i.aiq, align 8          ; 2 uses
  %.not5.i154.i = icmp eq ptr %i.air, null
  br i1 %.not5.i154.i, label %proto_item_set_generated.exit155.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ais = getelementptr i8, ptr %i.air, i64 28   ; 2 uses
  %i.ait = load i32, ptr %i.ais, align 4
  %i.aiu = or i32 %i.ait, 2
  store i32 %i.aiu, ptr %i.ais, align 4
  br label %proto_item_set_generated.exit155.i

proto_item_set_generated.exit155.i:               ; preds = %bb.hu, %bb.ht, %proto_item_set_generated.exit152.i
  %i.aiv = icmp ne i32 %i.aif, 0
  br label %bb.hv

bb.hv:                                            ; preds = %proto_item_set_generated.exit155.i, %.thread171.i, %bb.hm
  %i.aiw = phi i8 [ %i.aic, %proto_item_set_generated.exit155.i ], [ %.in.i188, %bb.hm ], [ %i.aho, %.thread171.i ] ; 3 uses
  %i.aix = phi ptr [ %i.aie, %proto_item_set_generated.exit155.i ], [ %i.ahi, %bb.hm ], [ %i.ahp, %.thread171.i ] ; 3 uses
  %.0133.i = phi i1 [ %i.aiv, %proto_item_set_generated.exit155.i ], [ false, %bb.hm ], [ false, %.thread171.i ] ; 6 uses
  %i.aiy = load ptr, ptr %i.ab, align 8
  call void @col_clear(ptr noundef %i.aiy, i32 noundef 25)
  %i.aiz = load ptr, ptr %i.ab, align 8
  %i.aja = zext i1 %.0133.i to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.aiz, i32 noundef 25, ptr noundef nonnull @.str.603, i32 noundef %i.aja)
  %.not143.i = icmp eq i8 %i.aiw, 0
  br i1 %.not143.i, label %bb.hy, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.ajb = zext i8 %i.aiw to i32
  %i.ajc = load i32, ptr @hf_quic_dcid, align 4
  %i.ajd = call ptr @proto_tree_add_item(ptr noundef %i.abi, i32 noundef %i.ajc, ptr noundef %.4.i, i32 noundef 1, i32 noundef %i.ajb, i32 noundef 0) ; 0 uses
  %i.aje = zext i8 %i.aiw to i64
  %i.ajf = call ptr @tvb_memcpy(ptr noundef %.4.i, ptr noundef nonnull %i.id, i32 noundef 1, i64 noundef %i.aje) ; 0 uses
  %i.ajg = load i8, ptr %4, align 8               ; 3 uses
  %i.ajh = zext i8 %i.ajg to i32
  %i.aji = add nuw nsw i32 %i.ajh, 1
  %i.ajj = icmp eq i8 %i.ajg, 0
  br i1 %i.ajj, label %cid_to_string.exit.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ajk = load ptr, ptr %i.ia, align 8
  %i.ajl = zext i8 %i.ajg to i64
  %i.ajm = shl nuw nsw i64 %i.ajl, 1
  %i.ajn = or disjoint i64 %i.ajm, 1
  %i.ajo = call noalias ptr @wmem_alloc0(ptr noundef %i.ajk, i64 noundef %i.ajn) #18 ; 2 uses
  %i.ajp = load i8, ptr %4, align 8
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = call ptr @bytes_to_hexstr(ptr noundef %i.ajo, ptr noundef nonnull %i.id, i64 noundef %i.ajq) ; 0 uses
  br label %cid_to_string.exit.i

cid_to_string.exit.i:                             ; preds = %bb.hx, %bb.hw
  %.0.i.i191 = phi ptr [ %i.ajo, %bb.hx ], [ @.str.485, %bb.hw ] ; 2 uses
  %i.ajs = load ptr, ptr %i.ab, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ajs, i32 noundef 25, ptr noundef nonnull @.str.483, ptr noundef %.0.i.i191)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.abg, ptr noundef nonnull @.str.604, ptr noundef %.0.i.i191)
  br label %bb.hy

bb.hy:                                            ; preds = %cid_to_string.exit.i, %bb.hv
  %.0134.i = phi i32 [ %i.aji, %cid_to_string.exit.i ], [ 1, %bb.hv ] ; 6 uses
  %i.ajt = getelementptr i8, ptr %.1115, i64 16   ; 2 uses
  %i.aju = load ptr, ptr %i.ajt, align 8          ; 2 uses
  %.not144.i = icmp eq ptr %i.aju, null
  br i1 %.not144.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ajv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.1121, ptr noundef nonnull @ei_quic_decryption_failed, ptr noundef nonnull @.str.499, ptr noundef nonnull %i.aju) ; 0 uses
  br label %dissect_quic_short_header.exit

bb.ia:                                            ; preds = %bb.hy
  br i1 %.not175.i, label %dissect_quic_short_header.exit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ajw = getelementptr i8, ptr %i.abc, i64 16   ; 3 uses
  %i.ajx = load i16, ptr %i.ajw, align 8
  %i.ajy = trunc i16 %i.ajx to i1
  br i1 %i.ajy, label %dissect_quic_short_header.exit, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ajz = load i8, ptr %i.aix, align 8           ; 2 uses
  %i.aka = icmp eq i8 %i.ajz, 0
  br i1 %i.aka, label %dissect_quic_short_header.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.akb = zext i8 %i.ajz to i32
  %i.akc = load i32, ptr @hf_quic_packet_number, align 4
  %i.akd = getelementptr i8, ptr %.1115, i64 8    ; 6 uses
  %i.ake = load i64, ptr %i.akd, align 8
  %i.akf = call ptr @proto_tree_add_uint64(ptr noundef %i.abi, i32 noundef %i.akc, ptr noundef %.4.i, i32 noundef %.0134.i, i32 noundef %i.akb, i64 noundef %i.ake) ; 2 uses
end_hunk_1
