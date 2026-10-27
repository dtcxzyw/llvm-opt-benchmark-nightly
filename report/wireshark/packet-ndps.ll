Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ndps?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@dissect_ndps_ipx:bb.a
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = load ptr, ptr %i.c, align 8
  call void @col_append_str(ptr noundef %i.ch, i32 noundef 25, ptr noundef @.str.1782)
  br label %.thread.i

bb.aa:                                            ; preds = %bb.p
  %i.ci = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.w, %bb.v
  %.075.i = phi ptr [ %i.bt, %bb.v ], [ %i.cb, %bb.w ], [ %i.cb, %bb.x ], [ %i.ci, %bb.aa ] ; 2 uses
  %i.cj = icmp eq ptr %.075.i, null
  br i1 %i.cj, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab, %bb.z, %bb.y
  %i.ck = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 0)
  %i.cl = call i32 @call_data_dissector(ptr noundef %i.ck, ptr noundef %1, ptr noundef %i.i) ; 0 uses
  br label %ndps_defrag.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load i8, ptr %3, align 1, !range !6, !noundef !7
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.ad, label %ndps_defrag.exit

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %.phi.trans.insert.i, align 4
  call fastcc void @dissect_ndps(ptr noundef nonnull %.075.i, ptr noundef %1, ptr noundef %i.i)
  br label %ndps_defrag.exit

bb.ae:                                            ; preds = %bb.o
  store i8 0, ptr %.phi.trans.insert.i, align 4
  call fastcc void @dissect_ndps(ptr noundef %0, ptr noundef %1, ptr noundef %i.i)
  br label %ndps_defrag.exit

ndps_defrag.exit:                                 ; preds = %bb.c, %bb.l, %.thread.i, %bb.ac, %bb.ad, %bb.ae
  %i.co = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %ndps_defrag.exit
  %.0 = phi i32 [ %i.co, %ndps_defrag.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ndps_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i8, ptr @ndps_desegment, align 1, !range !6, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.b, i32 noundef 4, ptr noundef @get_ndps_pdu_len, ptr noundef @dissect_ndps_pdu, ptr noundef %3)
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new_autoreset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @ndps_hash(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, %i.c
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @ndps_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ndps() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ndps_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.554, i32 noundef 37042, ptr noundef %i.a)
  %i.b = load ptr, ptr @ndps_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.554, i32 noundef 37043, ptr noundef %i.b)
  %i.c = load ptr, ptr @ndps_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.554, i32 noundef 37044, ptr noundef %i.c)
  %i.d = load ptr, ptr @ndps_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.554, i32 noundef 37045, ptr noundef %i.d)
  %i.e = load ptr, ptr @ndps_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.554, i32 noundef 37046, ptr noundef %i.e)
  %i.f = load ptr, ptr @ndps_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.554, i32 noundef 37047, ptr noundef %i.f)
  %i.g = load ptr, ptr @ndps_tcp_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef @.str.555, ptr noundef @.str.556, ptr noundef %i.g)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ndps(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8)
  %or.cond = icmp ugt i32 %i.a, 1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 25, ptr noundef @.str.1783)
  %i.d = load i32, ptr @hf_ndps_data, align 4
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef @.str.1784, i32 noundef %i.e) ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_ndps_record_mark, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ndps_length, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 4)
  %i.l = load i32, ptr @hf_ndps_xid, align 4
  %i.m = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.k) ; 0 uses
  %i.n = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8) ; 2 uses
  %i.o = load i32, ptr @hf_ndps_packet_type, align 4
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef %i.n) ; 0 uses
  %i.q = icmp eq i32 %i.n, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @col_set_str(ptr noundef %i.s, i32 noundef 25, ptr noundef @.str.1785)
  %i.t = load i32, ptr @hf_ndps_rpc_accept, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.v = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 12)
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.split101, label %.split

.split101:                                        ; preds = %bb.d
  %i.x = load i32, ptr @hf_ndps_auth_null, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_ndps_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 24)
  br label %.thread

.split:                                           ; preds = %bb.d
  %i.z = load i32, ptr @hf_ndps_rpc_rej_stat, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_ndps_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 20)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  tail call void @col_set_str(ptr noundef %i.s, i32 noundef 25, ptr noundef @.str.1786)
  %i.ab = load i32, ptr @hf_ndps_rpc_version, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ad = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 16) ; 3 uses
  %i.ae = tail call ptr @try_val_to_str(i32 noundef %i.ad, ptr noundef @spx_ndps_program_vals) ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr @hf_spx_ndps_program, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = load ptr, ptr %i.r, align 8
  tail call void @col_append_str(ptr noundef %i.ah, i32 noundef 25, ptr noundef nonnull %i.ae)
  %i.ai = load ptr, ptr %i.r, align 8
  tail call void @col_append_str(ptr noundef %i.ai, i32 noundef 25, ptr noundef @.str.1787)
  %i.aj = load i32, ptr @hf_spx_ndps_version, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.al = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 24) ; 7 uses
  switch i32 %i.ad, label %.thread [
    i32 395638, label %bb.g
    i32 395639, label %bb.h
    i32 395640, label %bb.i
    i32 395641, label %bb.j
    i32 395642, label %bb.k
    i32 395643, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr @hf_spx_ndps_func_print, align 4
  %i.an = tail call ptr @try_val_to_str_ext(i32 noundef %i.al, ptr noundef @spx_ndps_print_func_vals_ext)
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ao = load i32, ptr @hf_spx_ndps_func_broker, align 4
  %i.ap = tail call ptr @try_val_to_str_ext(i32 noundef %i.al, ptr noundef @spx_ndps_broker_func_vals_ext)
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.aq = load i32, ptr @hf_spx_ndps_func_registry, align 4
  %i.ar = tail call ptr @try_val_to_str_ext(i32 noundef %i.al, ptr noundef @spx_ndps_registry_func_vals_ext)
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.as = load i32, ptr @hf_spx_ndps_func_notify, align 4
  %i.at = tail call ptr @try_val_to_str_ext(i32 noundef %i.al, ptr noundef @spx_ndps_notify_func_vals_ext)
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.au = load i32, ptr @hf_spx_ndps_func_resman, align 4
  %i.av = tail call ptr @try_val_to_str_ext(i32 noundef %i.al, ptr noundef @spx_ndps_resman_func_vals_ext)
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.aw = load i32, ptr @hf_spx_ndps_func_delivery, align 4
  %i.ax = tail call ptr @try_val_to_str(i32 noundef %i.al, ptr noundef @spx_ndps_deliver_func_vals)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.098 = phi i32 [ %i.aw, %bb.l ], [ %i.am, %bb.g ], [ %i.ao, %bb.h ], [ %i.aq, %bb.i ], [ %i.as, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %.0 = phi ptr [ %i.ax, %bb.l ], [ %i.an, %bb.g ], [ %i.ap, %bb.h ], [ %i.ar, %bb.i ], [ %i.at, %bb.j ], [ %i.av, %bb.k ] ; 2 uses
  %.not103 = icmp eq i32 %.098, 0
  br i1 %.not103, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %.098, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not104 = icmp eq ptr %.0, null
  br i1 %.not104, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.r, align 8
  tail call void @col_append_str(ptr noundef %i.az, i32 noundef 25, ptr noundef nonnull %.0)
  %i.ba = load i32, ptr @hf_ndps_auth_null, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef 28, i32 noundef 16, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_ndps_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ad, i32 noundef %i.al)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.m, %bb.o, %bb.n, %bb.e, %.split, %.split101, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @show_fragment_seq_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ndps_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 20, 25) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.ndps_req_hash_key, align 8  ; 5 uses
  %i.e = alloca ptr, align 8                      ; 84 uses
  %i.f = alloca ptr, align 8                      ; 45 uses
  %i.g = alloca ptr, align 8                      ; 15 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 87 uses
  %i.j = alloca i32, align 4                      ; 24 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store i32 0, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store i32 0, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 53
  %i.o = load i16, ptr %i.n, align 1
  %i.p = and i16 %i.o, 8
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %1, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %1, i64 208
  %i.t = getelementptr i8, ptr %1, i64 232
  %i.u = getelementptr i8, ptr %1, i64 292        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = tail call ptr @find_conversation(i32 noundef %i.r, ptr noundef %i.s, ptr noundef %i.t, i32 noundef 6, i32 noundef %i.v, i32 noundef %i.v, i32 noundef 0) ; 2 uses
  %.not1779 = icmp eq ptr %i.w, null
  br i1 %.not1779, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.w, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr @ndps_req_hash, align 8
  %i.aa = call ptr @wmem_map_lookup(ptr noundef %i.z, ptr noundef nonnull %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.ab = call ptr @wmem_file_scope()
  %i.ac = load i32, ptr @proto_ndps, align 4
  call void @p_add_proto_data(ptr noundef %i.ab, ptr noundef %1, i32 noundef %i.ac, i32 noundef 0, ptr noundef %i.aa)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ad = tail call ptr @wmem_file_scope()
  %i.ae = load i32, ptr @proto_ndps, align 4
  %i.af = tail call ptr @p_get_proto_data(ptr noundef %i.ad, ptr noundef %1, i32 noundef %i.ae, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.01731 = phi ptr [ %i.af, %bb.d ], [ %i.aa, %bb.c ] ; 4 uses
  %.not1780 = icmp eq ptr %.01731, null
  br i1 %.not1780, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %.01731, align 4
  %i.ah = getelementptr i8, ptr %.01731, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = load i32, ptr @hf_ndps_reqframe, align 4
  %i.ak = getelementptr i8, ptr %.01731, i64 8
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.al, ptr noundef @.str.1788, i32 noundef %i.al) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f, %bb.e
  %.01718 = phi i32 [ %i.ai, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ] ; 7 uses
  %.01717 = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ]
  %i.an = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %3)
  %i.ao = icmp ult i32 %i.an, 12
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.ap = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3)
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr @hf_ndps_error_val, align 4
  %i.as = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.at = getelementptr i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void @col_append_str(ptr noundef %i.au, i32 noundef 25, ptr noundef @.str.1789)
  br label %.loopexit1838

bb.i:                                             ; preds = %bb.g, %.thread
  %i.av = add i32 %.01718, -1
  %or.cond = icmp ult i32 %i.av, 2
  br i1 %or.cond, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr @hf_ndps_rpc_acc_stat, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0)
  %i.ay = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3) ; 2 uses
  %.not1781 = icmp eq i32 %i.ay, 0
  br i1 %.not1781, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %1, i64 416
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call ptr @val_to_str(ptr noundef %i.ba, i32 noundef %i.ay, ptr noundef @accept_stat, ptr noundef @.str.1791)
  %i.bc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ax, ptr noundef @ei_ndps_rpc_acc_stat, ptr noundef @.str.1790, ptr noundef %i.bb) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = add nuw nsw i32 %3, 4                   ; 2 uses
  %i.be = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bd)
  %i.bf = icmp ult i32 %i.be, 4
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void @col_append_str(ptr noundef %i.bh, i32 noundef 25, ptr noundef @.str.1792)
  br label %.loopexit1838

bb.n:                                             ; preds = %bb.l
  %i.bi = load i32, ptr @hf_ndps_rpc_acc_results, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bk = add nuw nsw i32 %3, 8                   ; 2 uses
  %i.bl = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bk)
  %i.bm = icmp ult i32 %i.bl, 4
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @col_append_str(ptr noundef %i.bo, i32 noundef 25, ptr noundef @.str.1792)
  br label %.loopexit1838

bb.p:                                             ; preds = %bb.n, %bb.i
  %.01732 = phi i32 [ %i.bk, %bb.n ], [ %3, %bb.i ] ; 55 uses
  %i.bp = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.01732) ; 17 uses
  %i.bq = load i32, ptr @hf_ndps_error_val, align 4
  %i.br = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bq, ptr noundef %0, i32 noundef %.01732, i32 noundef 4, i32 noundef %i.bp) ; 0 uses
  %i.bs = add nuw nsw i32 %.01732, 4              ; 73 uses
  %i.bt = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bs)
  %i.bu = call ptr @try_val_to_str_ext(i32 noundef %i.bt, ptr noundef @ndps_error_types_ext)
end_hunk_0
