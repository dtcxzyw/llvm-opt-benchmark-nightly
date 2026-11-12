Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ttl?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0_@proto_register_ttl:bb.a
  tail call void @reassembly_table_register(ptr noundef @ttl_reassembly_table, ptr noundef @addresses_reassembly_table_functions)
  %i.o = load i32, ptr @proto_ttl, align 4
  %i.p = tail call ptr @prefs_register_protocol(i32 noundef %i.o, ptr noundef null)
  tail call void @prefs_register_bool_preference(ptr noundef %i.p, ptr noundef @.str.198, ptr noundef @.str.199, ptr noundef @.str.199, ptr noundef @pref_dissect_next_layer)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @register_shutdown_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ttl_shutdown() #0 {
bb.a:
  %i.a = load ptr, ptr @segmented_frames_info_ht, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.a)
  store ptr null, ptr @segmented_frames_info_ht, align 8
  %i.b = load ptr, ptr @address_to_master_ht, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.b)
  store ptr null, ptr @address_to_master_ht, align 8
  %i.c = load ptr, ptr @address_to_name_ht, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.c)
  store ptr null, ptr @address_to_name_ht, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ttl_init_masters_from_pref_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @epan_get_environment_prefix() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ttl_init_names_from_pref_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ttl_from_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_ttl_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ttl() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_ttl, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef @dissect_ttl_from_file, i32 noundef %i.a)
  store ptr %i.b, ptr @ttl_from_file_handle, align 8
  %i.c = load i32, ptr @proto_ttl, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef @dissect_ttl_over_eth, i32 noundef %i.c) ; 2 uses
  store ptr %i.d, ptr @ttl_in_eth_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.200, i32 noundef 16448, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_ttl, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.201, i32 noundef %i.e)
  store ptr %i.f, ptr @eth_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ttl_over_eth(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_ttl_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_ttl_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = alloca i16, align 2                      ; 3 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 6 uses
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.h = icmp ult i32 %i.g, 2
  br i1 %i.h, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 0, i32 noundef -2147483648) ; 2 uses
  %i.j = lshr i16 %i.i, 12                        ; 3 uses
  %i.k = and i16 %i.i, 4095                       ; 2 uses
  %i.l = zext nneg i16 %i.k to i32                ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @proto_ttl, align 4
  %i.n = zext nneg i16 %i.j to i32                ; 2 uses
  %i.o = tail call ptr @val_to_str_const(i32 noundef %i.n, ptr noundef @hf_ttl_trace_data_entry_type_vals, ptr noundef @.str.507)
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef %i.l, ptr noundef @.str.506, ptr noundef %i.o)
  %i.q = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 35, ptr noundef @.str.196)
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = tail call ptr @val_to_str_const(i32 noundef %i.n, ptr noundef @hf_ttl_trace_data_entry_type_vals, ptr noundef @.str.507)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.s, i32 noundef 25, ptr noundef @.str.506, ptr noundef %i.t)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr @hf_ttl_trace_data_entry, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef 0, i32 noundef %i.l, i32 noundef 0) ; 2 uses
  %i.w = zext nneg i16 %i.j to i32
  %i.x = tail call ptr @val_to_str_const(i32 noundef %i.w, ptr noundef @hf_ttl_trace_data_entry_type_vals, ptr noundef @.str.507)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.v, ptr noundef @.str.508, ptr noundef %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0108 = phi ptr [ %i.p, %bb.c ], [ %i.v, %bb.d ] ; 7 uses
  %i.y = load i32, ptr @ett_ttl_trace_data_entry, align 4
  %i.z = tail call ptr @proto_item_add_subtree(ptr noundef %.0108, i32 noundef %i.y) ; 12 uses
  %i.aa = load i32, ptr @hf_ttl_trace_data_entry_type, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ac = load i32, ptr @hf_ttl_trace_data_entry_size, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.ac, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ae = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.af = icmp ult i32 %i.ae, 2
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0108, ptr noundef @ei_ttl_entry_size_too_short) ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.ah = load i32, ptr @hf_ttl_trace_data_entry_meta1, align 4
  %i.ai = load i32, ptr @ett_ttl_trace_data_entry_meta1, align 4
  %i.aj = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.z, ptr noundef %0, i32 noundef 2, i32 noundef %i.ah, i32 noundef %i.ai, ptr noundef @ttl_trace_data_entry_meta1, i32 noundef -2147483648) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.ak = load i32, ptr @hf_ttl_trace_data_entry_dest_addr, align 4
  %i.al = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.z, i32 noundef %i.ak, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.d)
  %i.am = load i32, ptr @ett_ttl_trace_data_entry_dest_addr, align 4
  %i.an = call ptr @proto_item_add_subtree(ptr noundef %i.al, i32 noundef %i.am) ; 4 uses
  %i.ao = load i32, ptr @hf_ttl_trace_data_entry_dest_addr_cascade, align 4
  %i.ap = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.an, i32 noundef %i.ao, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.aq = load i16, ptr %i.e, align 2
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr @hf_ttl_trace_data_entry_dest_addr_device_logger, align 4
  %i.at = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.an, i32 noundef %i.as, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.au = load i16, ptr %i.f, align 2             ; 2 uses
  %i.av = icmp ult i16 %i.au, 8
  br i1 %i.av, label %switch.lookup, label %dissect_ttl_dest_addr_ret.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @hf_ttl_trace_data_entry_dest_addr_device_tap, align 4
  %i.ax = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.an, i32 noundef %i.aw, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.ay = load i16, ptr %i.f, align 2             ; 2 uses
  %i.az = icmp ult i16 %i.ay, 9
  br i1 %i.az, label %switch.lookup116, label %dissect_ttl_dest_addr_ret.exit

switch.lookup:                                    ; preds = %bb.h
  %4 = zext nneg i16 %i.au to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ttl_common, i64 %4
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dissect_ttl_dest_addr_ret.exit

switch.lookup116:                                 ; preds = %bb.i
  %i.ba = zext nneg i16 %i.ay to i64
  %switch.gep117 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ttl_common.2, i64 %i.ba
  %switch.load118 = load ptr, ptr %switch.gep117, align 8
  br label %dissect_ttl_dest_addr_ret.exit

dissect_ttl_dest_addr_ret.exit:                   ; preds = %bb.h, %bb.i, %switch.lookup116, %switch.lookup
  %hf_ttl_trace_data_entry_dest_addr_function_unknown.sink.i = phi ptr [ %switch.load118, %switch.lookup116 ], [ %switch.load, %switch.lookup ], [ @hf_ttl_trace_data_entry_dest_addr_function_unknown, %bb.i ], [ @hf_ttl_trace_data_entry_dest_addr_function_unknown, %bb.h ]
  %i.bb = load i32, ptr %hf_ttl_trace_data_entry_dest_addr_function_unknown.sink.i, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bb, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.bd = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4)
  %i.be = icmp ult i32 %i.bd, 2
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %dissect_ttl_dest_addr_ret.exit
  %i.bf = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0108, ptr noundef @ei_ttl_entry_size_too_short) ; 0 uses
  br label %bb.x

bb.k:                                             ; preds = %dissect_ttl_dest_addr_ret.exit
  %i.bg = load i32, ptr @hf_ttl_trace_data_entry_meta2, align 4
  %i.bh = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.bg, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bj, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 28     ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = or i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.k, %bb.l, %bb.m
  %i.bn = load i32, ptr @hf_ttl_trace_data_entry_ackmode, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.bn, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bp = load i32, ptr @hf_ttl_trace_data_entry_src_addr, align 4
  %i.bq = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.z, i32 noundef %i.bp, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.a)
  %i.br = load i32, ptr @ett_ttl_trace_data_entry_src_addr, align 4
  %i.bs = call ptr @proto_item_add_subtree(ptr noundef %i.bq, i32 noundef %i.br) ; 4 uses
  %i.bt = load i32, ptr @hf_ttl_trace_data_entry_src_addr_cascade, align 4
  %i.bu = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.bs, i32 noundef %i.bt, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.bv = load i16, ptr %i.b, align 2
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %proto_item_set_hidden.exit
  %i.bx = load i32, ptr @hf_ttl_trace_data_entry_src_addr_device_logger, align 4
  %i.by = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.bs, i32 noundef %i.bx, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.bz = load i16, ptr %i.c, align 2             ; 2 uses
  %i.ca = icmp ult i16 %i.bz, 8
  br i1 %i.ca, label %switch.lookup119, label %dissect_ttl_src_addr_ret.exit

bb.o:                                             ; preds = %proto_item_set_hidden.exit
  %i.cb = load i32, ptr @hf_ttl_trace_data_entry_src_addr_device_tap, align 4
  %i.cc = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.bs, i32 noundef %i.cb, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.cd = load i16, ptr %i.c, align 2             ; 2 uses
  %i.ce = icmp ult i16 %i.cd, 9
  br i1 %i.ce, label %switch.lookup122, label %dissect_ttl_src_addr_ret.exit

switch.lookup119:                                 ; preds = %bb.n
  %5 = zext nneg i16 %i.bz to i64
  %switch.gep120 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ttl_common.3, i64 %5
  %switch.load121 = load ptr, ptr %switch.gep120, align 8
  br label %dissect_ttl_src_addr_ret.exit

switch.lookup122:                                 ; preds = %bb.o
  %i.cf = zext nneg i16 %i.cd to i64
  %switch.gep123 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ttl_common.4, i64 %i.cf
  %switch.load124 = load ptr, ptr %switch.gep123, align 8
  br label %dissect_ttl_src_addr_ret.exit

dissect_ttl_src_addr_ret.exit:                    ; preds = %bb.n, %bb.o, %switch.lookup122, %switch.lookup119
  %hf_ttl_trace_data_entry_src_addr_function_pt15_fpga.sink.i = phi ptr [ %switch.load121, %switch.lookup119 ], [ %switch.load124, %switch.lookup122 ], [ @hf_ttl_trace_data_entry_src_addr_function_unknown, %bb.o ], [ @hf_ttl_trace_data_entry_src_addr_function_unknown, %bb.n ]
  %i.cg = load i32, ptr %hf_ttl_trace_data_entry_src_addr_function_pt15_fpga.sink.i, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.bs, i32 noundef %i.cg, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ci = load i16, ptr %i.a, align 2             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.cj = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 6)
  %i.ck = icmp ult i32 %i.cj, 2
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %dissect_ttl_src_addr_ret.exit
  %i.cl = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0108, ptr noundef @ei_ttl_entry_size_too_short) ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %dissect_ttl_src_addr_ret.exit
  %i.cm = load i32, ptr @hf_ttl_trace_data_entry_status_information, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.cm, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648)
  %i.co = load i32, ptr @ett_ttl_trace_data_entry_status_information, align 4
  %i.cp = call ptr @proto_item_add_subtree(ptr noundef %i.cn, i32 noundef %i.co) ; 2 uses
  %i.cq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 8)
  %i.cr = icmp ult i32 %i.cq, 8
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cs = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0108, ptr noundef @ei_ttl_entry_size_too_short) ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ct = load i32, ptr @hf_ttl_trace_data_entry_timestamp, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.ct, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef -2147483600) ; 0 uses
  %i.cv = zext nneg i16 %i.k to i32               ; 4 uses
  %i.cw = add nsw i32 %i.cv, -16
  %i.cx = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 16, i32 noundef %i.cw) ; 2 uses
  switch i16 %i.j, label %bb.v [
    i16 0, label %bb.t
    i16 4, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.cy = call fastcc i32 @dissect_ttl_bus_data_entry(ptr noundef %i.cx, ptr noundef %1, ptr noundef %i.z, ptr noundef %.0108, ptr noundef %0, ptr noundef %i.cp, i16 noundef zeroext %i.ci, i1 noundef zeroext %3)
  %i.cz = add i32 %i.cy, 16
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.da = call fastcc i32 @dissect_ttl_segmented_message_entry(ptr noundef %i.cx, ptr noundef %1, ptr noundef %i.z, ptr noundef %.0108, ptr noundef %0, ptr noundef %i.cp, i16 noundef zeroext %i.ci, i1 noundef zeroext %3, ptr noundef %2)
  %i.db = add i32 %i.da, 16
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t
  %.0 = phi i32 [ 16, %bb.s ], [ %i.cz, %bb.t ], [ %i.db, %bb.u ] ; 4 uses
  %i.dc = icmp ult i32 %.0, %i.cv
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dd = load i32, ptr @hf_ttl_trace_data_entry_unparsed, align 4
  %i.de = sub nuw nsw i32 %i.cv, %.0
  %i.df = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.dd, ptr noundef %0, i32 noundef %.0, i32 noundef %i.de, i32 noundef 0) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.a, %bb.r, %bb.p, %bb.j, %bb.f
  %.0109 = phi i32 [ 0, %bb.a ], [ 2, %bb.f ], [ 4, %bb.j ], [ 6, %bb.p ], [ 8, %bb.r ], [ %i.cv, %bb.w ], [ %.0, %bb.v ]
  ret i32 %.0109
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_ttl_bus_data_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i16 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.lin_info, align 4           ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %9 = alloca %struct.can_info, align 4           ; 8 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = tail call i32 @ttl_get_address_iface_type(i16 noundef zeroext %6)
  switch i32 %i.e, label %bb.aj [
    i32 1, label %bb.b
    i32 125, label %bb.k
    i32 107, label %bb.s
    i32 106, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef @.str.509)
  br i1 %7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.g, i32 noundef 25, ptr noundef @.str.509)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.h = tail call zeroext i16 @tvb_get_uint16(ptr noundef %4, i32 noundef 6, i32 noundef -2147483648) ; 2 uses
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %.not.i = icmp eq i16 %i.h, -32768              ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr @hf_ttl_trace_data_entry_eth_unused, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ 2, %bb.e ], [ 0, %bb.d ]      ; 6 uses
  %i.l = load i32, ptr @hf_ttl_trace_data_entry_payload, align 4
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.m, i32 noundef 0) ; 2 uses
  %i.o = load i32, ptr @ett_ttl_trace_data_entry_payload, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o) ; 2 uses
  %i.q = tail call ptr @val_to_str_const(i32 noundef %i.i, ptr noundef @hf_ttl_trace_data_entry_status_info_eth_type_vals, ptr noundef @.str.515)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.n, ptr noundef @.str.514, ptr noundef %i.q)
  %i.r = load i32, ptr @hf_ttl_trace_data_entry_status_info_eth_type, align 4
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %5, i32 noundef %i.r, ptr noundef %4, i32 noundef 6, i32 noundef 2, i32 noundef %i.i) ; 0 uses
  br i1 %.not.i, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.f
  %i.t = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %i.u = icmp ugt i32 %i.t, 3
  br i1 %i.u, label %.lr.ph.i, label %dissect_ttl_eth_bus_data_entry.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = and i16 %6, 7168
  %i.w = icmp eq i16 %i.v, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.158.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %i.as, %bb.g ] ; 5 uses
  %i.x = load i32, ptr @hf_ttl_eth_phy_status, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.x, ptr noundef %0, i32 noundef %.158.i, i32 noundef 4, i32 noundef 0) ; 2 uses
  %i.z = load i32, ptr @ett_ttl_eth_phy_status, align 4
  %i.aa = call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 6 uses
  %i.ab = load i32, ptr @hf_ttl_eth_phy_status_valid, align 4
  %i.ac = add i32 %.158.i, 3                      ; 3 uses
  %i.ad = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ae = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = call ptr @tfs_get_string(i1 noundef zeroext %i.af, ptr noundef @tfs_valid_invalid)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.y, ptr noundef @.str.516, ptr noundef %i.ag)
  %i.ah = load i32, ptr @hf_ttl_eth_phy_status_res2, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %hf_ttl_eth_phy_status_unused.val.i = load i32, ptr @hf_ttl_eth_phy_status_unused, align 4
  %hf_ttl_eth_phy_status_phy_addr.val.i = load i32, ptr @hf_ttl_eth_phy_status_phy_addr, align 4
  %i.aj = select i1 %i.w, i32 %hf_ttl_eth_phy_status_unused.val.i, i32 %hf_ttl_eth_phy_status_phy_addr.val.i
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_ttl_eth_phy_status_res1, align 4
  %i.am = add i32 %.158.i, 2                      ; 2 uses
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_ttl_eth_phy_status_reg_addr, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_ttl_eth_phy_status_data, align 4
  %i.ar = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aq, ptr noundef %0, i32 noundef %.158.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.as = add i32 %.158.i, 4                      ; 3 uses
  %i.at = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.as)
  %i.au = icmp ugt i32 %i.at, 3
  br i1 %i.au, label %bb.g, label %dissect_ttl_eth_bus_data_entry.exit, !llvm.loop !6

bb.h:                                             ; preds = %bb.f
  %i.av = load i8, ptr @pref_dissect_next_layer, align 1, !range !7, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load ptr, ptr @eth_handle, align 8      ; 2 uses
  %i.ay = icmp ne ptr %i.ax, null
  %or.cond.i = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.j
end_hunk_0
