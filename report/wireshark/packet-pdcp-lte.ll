Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pdcp-lte?download=true
inline.NumInlined: 52
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@proto_register_pdcp_lte:bb.a
  tail call void @prefs_register_enum_preference(ptr noundef %i.g, ptr noundef @.str.190, ptr noundef @.str.191, ptr noundef @.str.189, ptr noundef @global_default_integrity_algorithm, ptr noundef @proto_register_pdcp_lte.default_integrity_algorithm_vals, i1 noundef zeroext false)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.192, ptr noundef @.str.193, ptr noundef @.str.194, ptr noundef @global_pdcp_decipher_signalling)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.195, ptr noundef @.str.196, ptr noundef @.str.194, ptr noundef @global_pdcp_decipher_userplane)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.197, ptr noundef @.str.198, ptr noundef @.str.194, ptr noundef @global_pdcp_check_integrity)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.199, ptr noundef @.str.200, ptr noundef @.str.201, ptr noundef @global_pdcp_ignore_sec)
  %i.i = tail call ptr @wmem_epan_scope()
  %i.j = tail call ptr @wmem_file_scope()
  %i.k = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.i, ptr noundef %i.j, ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
  store ptr %i.k, ptr @pdcp_sequence_analysis_channel_hash, align 8
  %i.l = tail call ptr @wmem_epan_scope()
  %i.m = tail call ptr @wmem_file_scope()
  %i.n = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.l, ptr noundef %i.m, ptr noundef @pdcp_result_hash_func, ptr noundef @pdcp_result_hash_equal)
  store ptr %i.n, ptr @pdcp_lte_sequence_analysis_report_hash, align 8
  %i.o = tail call ptr @wmem_epan_scope()
  %i.p = tail call ptr @wmem_file_scope()
  %i.q = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.o, ptr noundef %i.p, ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
  store ptr %i.q, ptr @pdcp_security_hash, align 8
  %i.r = tail call ptr @wmem_epan_scope()
  %i.s = tail call ptr @wmem_file_scope()
  %i.t = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.r, ptr noundef %i.s, ptr noundef @pdcp_lte_ueid_frame_hash_func, ptr noundef @pdcp_lte_ueid_frame_hash_equal)
  store ptr %i.t, ptr @pdcp_security_result_hash, align 8
  %i.u = tail call ptr @wmem_epan_scope()
  %i.v = tail call ptr @wmem_file_scope()
  %i.w = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.u, ptr noundef %i.v, ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
  store ptr %i.w, ptr @pdcp_security_key_hash, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_num_dec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_ueid_set_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 2 uses
  %i.c = tail call zeroext i1 @ws_strtou32(ptr noundef %i.b, ptr noundef null, ptr noundef %0) ; 0 uses
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_ueid_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.266, i32 noundef %i.a) ; 2 uses
  store ptr %i.b, ptr %1, align 8
  %i.c = tail call i64 @strlen(ptr noundef %i.b) #16
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_str(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcCipherKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcCipherKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_upCipherKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_upCipherKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcIntegrityKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcIntegrityKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pdcp_lte(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 10 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 24 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %4 = alloca %struct.pdu_security_settings_t, align 8 ; 19 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 noundef 0, i64 noundef 40, i1 noundef false) #14
  %i.n = getelementptr i8, ptr %1, i64 8          ; 16 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 35, ptr noundef @.str.167)
  %i.p = tail call ptr @wmem_file_scope()
  %i.q = load i32, ptr @proto_pdcp_lte, align 4
  %i.r = tail call ptr @p_get_proto_data(ptr noundef %i.p, ptr noundef %1, i32 noundef %i.q, i32 noundef 0) ; 41 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge430, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr @global_pdcp_lte_layer_to_show, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call ptr @wmem_file_scope()
  %i.w = load i32, ptr @proto_rlc_lte, align 4
  %i.x = tail call ptr @p_get_proto_data(ptr noundef %i.v, ptr noundef %1, i32 noundef %i.w, i32 noundef 0)
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr %i.n, align 8
  tail call void @col_clear(ptr noundef %i.y, i32 noundef 25)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink699 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  %i.z = load ptr, ptr %i.n, align 8
  tail call void @col_set_writable(ptr noundef %i.z, i32 noundef 25, i1 noundef zeroext %.sink699)
  %.not396 = icmp eq ptr %2, null
  br i1 %.not396, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.r, i64 32
  %i.ab = getelementptr i8, ptr %i.r, i64 36
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call ptr @val_to_str_const(i32 noundef %i.ac, ptr noundef @rohc_mode_vals, ptr noundef @.str.268)
  br label %bb.as

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr @proto_pdcp_lte, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.ag = load i32, ptr @ett_pdcp, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag) ; 3 uses
  %i.ai = getelementptr i8, ptr %i.r, i64 32      ; 5 uses
  %i.aj = getelementptr i8, ptr %i.r, i64 36      ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call ptr @val_to_str_const(i32 noundef %i.ak, ptr noundef @rohc_mode_vals, ptr noundef @.str.268) ; 2 uses
  %.not397 = icmp eq ptr %i.ah, null
  br i1 %.not397, label %bb.as, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr @hf_pdcp_lte_configuration, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.ah, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 6 uses
  %i.ao = load i32, ptr @ett_pdcp_configuration, align 4
  %i.ap = tail call ptr @proto_item_add_subtree(ptr noundef %i.an, i32 noundef %i.ao) ; 14 uses
  %i.aq = load i32, ptr @hf_pdcp_lte_direction, align 4
  %i.ar = load i8, ptr %i.r, align 8
  %i.as = zext i8 %i.ar to i32
  %i.at = tail call ptr @proto_tree_add_uint(ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.as) ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.av, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.av, i64 28     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = or i32 %i.ax, 2
  store i32 %i.ay, ptr %i.aw, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.i, %bb.h, %bb.g
  %i.az = load i32, ptr @hf_pdcp_lte_plane, align 4
  %i.ba = getelementptr i8, ptr %i.r, i64 20      ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call ptr @proto_tree_add_uint(ptr noundef %i.ap, i32 noundef %i.az, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bb) ; 2 uses
  %.not.i78.i = icmp eq ptr %i.bc, null
  br i1 %.not.i78.i, label %proto_item_set_generated.exit80.i, label %bb.j

bb.j:                                             ; preds = %proto_item_set_generated.exit.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not5.i79.i = icmp eq ptr %i.be, null
  br i1 %.not5.i79.i, label %proto_item_set_generated.exit80.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.be, i64 28     ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 2
  store i32 %i.bh, ptr %i.bf, align 4
  br label %proto_item_set_generated.exit80.i

proto_item_set_generated.exit80.i:                ; preds = %bb.k, %bb.j, %proto_item_set_generated.exit.i
  %i.bi = getelementptr i8, ptr %i.r, i64 2
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %.not.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i, label %proto_item_set_generated.exit83.i, label %bb.l

bb.l:                                             ; preds = %proto_item_set_generated.exit80.i
  %i.bk = zext i16 %i.bj to i32
  %i.bl = load i32, ptr @hf_pdcp_lte_ueid, align 4
  %i.bm = tail call ptr @proto_tree_add_uint(ptr noundef %i.ap, i32 noundef %i.bl, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bk) ; 2 uses
  %.not.i81.i = icmp eq ptr %i.bm, null
  br i1 %.not.i81.i, label %proto_item_set_generated.exit83.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not5.i82.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i82.i, label %proto_item_set_generated.exit83.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %i.bo, i64 28     ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = or i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4
  br label %proto_item_set_generated.exit83.i

proto_item_set_generated.exit83.i:                ; preds = %bb.n, %bb.m, %bb.l, %proto_item_set_generated.exit80.i
  %i.bs = load i32, ptr @hf_pdcp_lte_channel_type, align 4
  %i.bt = getelementptr i8, ptr %i.r, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = tail call ptr @proto_tree_add_uint(ptr noundef %i.ap, i32 noundef %i.bs, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bu) ; 2 uses
  %.not.i84.i = icmp eq ptr %i.bv, null
  br i1 %.not.i84.i, label %proto_item_set_generated.exit86.i, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit83.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not5.i85.i = icmp eq ptr %i.bx, null
  br i1 %.not5.i85.i, label %proto_item_set_generated.exit86.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr i8, ptr %i.bx, i64 28     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = or i32 %i.bz, 2
  store i32 %i.ca, ptr %i.by, align 4
  br label %proto_item_set_generated.exit86.i

proto_item_set_generated.exit86.i:                ; preds = %bb.p, %bb.o, %proto_item_set_generated.exit83.i
  %i.cb = getelementptr i8, ptr %i.r, i64 8
  %i.cc = load i16, ptr %i.cb, align 8            ; 2 uses
  %.not77.i = icmp eq i16 %i.cc, 0
  br i1 %.not77.i, label %proto_item_set_generated.exit89.i, label %bb.q

bb.q:                                             ; preds = %proto_item_set_generated.exit86.i
  %i.cd = zext i16 %i.cc to i32
  %i.ce = load i32, ptr @hf_pdcp_lte_channel_id, align 4
  %i.cf = tail call ptr @proto_tree_add_uint(ptr noundef %i.ap, i32 noundef %i.ce, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cd) ; 2 uses
  %.not.i87.i = icmp eq ptr %i.cf, null
  br i1 %.not.i87.i, label %proto_item_set_generated.exit89.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not5.i88.i = icmp eq ptr %i.ch, null
  br i1 %.not5.i88.i, label %proto_item_set_generated.exit89.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr i8, ptr %i.ch, i64 28     ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = or i32 %i.cj, 2
  store i32 %i.ck, ptr %i.ci, align 4
  br label %proto_item_set_generated.exit89.i

proto_item_set_generated.exit89.i:                ; preds = %bb.s, %bb.r, %bb.q, %proto_item_set_generated.exit86.i
  %i.cl = load i32, ptr %i.ba, align 4
  %i.cm = icmp eq i32 %i.cl, 2
  br i1 %i.cm, label %bb.t, label %proto_item_set_generated.exit95.i

bb.t:                                             ; preds = %proto_item_set_generated.exit89.i
  %i.cn = load i32, ptr @hf_pdcp_lte_no_header_pdu, align 4
  %i.co = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !range !7, !noundef !8
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = tail call ptr @proto_tree_add_uint(ptr noundef %i.ap, i32 noundef %i.cn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cq) ; 2 uses
  %.not.i90.i = icmp eq ptr %i.cr, null
  br i1 %.not.i90.i, label %proto_item_set_generated.exit92.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not5.i91.i = icmp eq ptr %i.ct, null
end_hunk_0
begin_hunk_1_@dissect_pdcp_lte:bb.a
bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.tu = load i32, ptr @hf_pdcp_lte_fms3, align 4
  %i.tv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.tu, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %i.tw = load i32, ptr @hf_pdcp_lte_hrw3, align 4
  %i.tx = call ptr @proto_tree_add_item(ptr noundef %.0365536, i32 noundef %i.tw, ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ty = load i32, ptr @hf_pdcp_lte_reserved8, align 4
  %i.tz = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.ty, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.f)
  %i.ua = load i32, ptr %i.f, align 4             ; 2 uses
  %.not405 = icmp eq i32 %i.ua, 0
  br i1 %.not405, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ub = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.tz, ptr noundef @ei_pdcp_lte_reserved_bits_not_zero, ptr noundef @.str.275, i32 noundef %i.ua) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.uc = load i32, ptr @hf_pdcp_lte_nmp3, align 4
  %i.ud = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.uc, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dn, %bb.ds, %bb.dg
  %i.ue = load i32, ptr %i.j, align 4
  %i.uf = load i32, ptr %i.k, align 4
  call void (ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %.0366535, ptr noundef %1, ptr noundef @.str.283, i32 noundef %i.ue, i32 noundef %i.uf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %.critedge

bb.du:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.ug = getelementptr i8, ptr %i.r, i64 24
  %i.uh = load i8, ptr %i.ug, align 8
  switch i8 %i.uh, label %bb.dz [
    i8 12, label %bb.dv
    i8 15, label %bb.dw
  ]

bb.dv:                                            ; preds = %bb.du
  %i.ui = load i32, ptr @hf_pdcp_lte_lsn, align 4
  %i.uj = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.ui, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.ec

bb.dw:                                            ; preds = %bb.du
  %i.uk = load i32, ptr @hf_pdcp_lte_reserved4, align 4
  %i.ul = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.uk, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.f)
  %i.um = load i32, ptr %i.f, align 4             ; 2 uses
  %.not403 = icmp eq i32 %i.um, 0
  br i1 %.not403, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.un = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ul, ptr noundef @ei_pdcp_lte_reserved_bits_not_zero, ptr noundef @.str.275, i32 noundef %i.um) ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.uo = load i32, ptr @hf_pdcp_lte_lsn2, align 4
  %i.up = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.uo, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.ec

bb.dz:                                            ; preds = %bb.du
  %i.uq = load i32, ptr @hf_pdcp_lte_reserved6, align 4
  %i.ur = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.uq, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.f)
  %i.us = load i32, ptr %i.f, align 4             ; 2 uses
  %.not402 = icmp eq i32 %i.us, 0
  br i1 %.not402, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ut = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ur, ptr noundef @ei_pdcp_lte_reserved_bits_not_zero, ptr noundef @.str.275, i32 noundef %i.us) ; 0 uses
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.uu = load i32, ptr @hf_pdcp_lte_lsn3, align 4
  %i.uv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.uu, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dy, %bb.eb, %bb.dv
  %i.uw = load i32, ptr %i.l, align 4
  call void (ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %.0366535, ptr noundef %1, ptr noundef @.str.284, i32 noundef %i.uw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.bw, %bb.dt, %.thread538, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %.critedge430

bb.ed:                                            ; preds = %bb.bl
  tail call void (ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %.0366535, ptr noundef %1, ptr noundef @.str.285, i32 noundef %i.km)
  br label %.critedge430

bb.ee:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %.critedge430.thread

.thread547:                                       ; preds = %bb.bo, %.thread551
  %.6531550 = phi i32 [ %.sink709, %.thread551 ], [ 1, %bb.bo ] ; 5 uses
  %i.ux = load i32, ptr @global_pdcp_check_sequence_numbers, align 4
  switch i32 %i.ux, label %.critedge430.thread [
    i32 2, label %.split
    i32 1, label %bb.ef
  ]

bb.ef:                                            ; preds = %.thread547
  %i.uy = call ptr @wmem_file_scope()
  %i.uz = load i32, ptr @proto_rlc_lte, align 4
  %i.va = call ptr @p_get_proto_data(ptr noundef %i.uy, ptr noundef %1, i32 noundef %i.uz, i32 noundef 0)
  %.not421 = icmp eq ptr %i.va, null
  br i1 %.not421, label %.critedge430.thread, label %bb.eg

.split:                                           ; preds = %.thread547
  %i.vb = call ptr @wmem_file_scope()
  %i.vc = load i32, ptr @proto_rlc_lte, align 4
  %i.vd = call ptr @p_get_proto_data(ptr noundef %i.vb, ptr noundef %1, i32 noundef %i.vc, i32 noundef 0)
  %i.ve = icmp eq ptr %i.vd, null
  br i1 %i.ve, label %bb.eh, label %.critedge430.thread

bb.eg:                                            ; preds = %bb.ef
  %i.vf = getelementptr i8, ptr %i.r, i64 56
  %i.vg = load i8, ptr %i.vf, align 8
  %.not422 = icmp eq i8 %i.vg, 0
  br i1 %.not422, label %bb.eh, label %.critedge430.thread

bb.eh:                                            ; preds = %.split, %bb.eg
  %i.vh = load i32, ptr %i.g, align 4
  call fastcc void @checkChannelSequenceInfo(ptr noundef %1, ptr noundef %0, ptr noundef %i.r, i32 noundef %i.vh, ptr noundef %.0365536, ptr noundef %.0371, ptr noundef nonnull %4)
  br label %.critedge430.thread

bb.ei:                                            ; preds = %bb.bk
  tail call void (ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %.0366535, ptr noundef %1, ptr noundef @.str.286)
  br label %.critedge430.thread

.critedge430.thread:                              ; preds = %.split, %.thread547, %bb.ef, %bb.eh, %bb.eg, %bb.ee, %bb.ei
  %.8 = phi i32 [ 0, %bb.ei ], [ %.6531550, %.split ], [ 1, %bb.ee ], [ %.6531550, %bb.ef ], [ %.6531550, %bb.eg ], [ %.6531550, %bb.eh ], [ %.6531550, %.thread547 ] ; 10 uses
  br i1 %.not400, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.critedge430.thread
  %i.vi = getelementptr i8, ptr %i.ip, i64 4
  %i.vj = load i8, ptr %i.vi, align 4, !range !7, !noundef !8
  %i.vk = icmp ne i8 %i.vj, 0
  br label %bb.ek

bb.ek:                                            ; preds = %.critedge430.thread, %bb.ej
  %i.vl = phi i1 [ %i.vk, %bb.ej ], [ false, %.critedge430.thread ] ; 2 uses
  %i.vm = load i32, ptr %4, align 8               ; 2 uses
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %decipher_payload.exit.thread, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.vp = load i8, ptr %i.vo, align 8, !range !7, !noundef !8
  %i.vq = trunc nuw i8 %i.vp to i1
  %cond.i = icmp eq i32 %i.vm, 2
  %or.cond69.i = and i1 %cond.i, %i.vq
  br i1 %or.cond69.i, label %bb.em, label %decipher_payload.exit.thread

bb.em:                                            ; preds = %bb.el
  %i.vr = getelementptr i8, ptr %i.r, i64 20      ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4            ; 3 uses
  %i.vt = icmp ne i32 %i.vs, 1
  %i.vu = load i8, ptr @global_pdcp_decipher_signalling, align 1, !range !7
  %i.vv = trunc nuw i8 %i.vu to i1
  %or.cond.i = select i1 %i.vt, i1 true, i1 %i.vv
  br i1 %or.cond.i, label %bb.en, label %decipher_payload.exit.thread

bb.en:                                            ; preds = %bb.em
  %i.vw = icmp ne i32 %i.vs, 2                    ; 2 uses
  %i.vx = load i8, ptr @global_pdcp_decipher_userplane, align 1, !range !7
  %i.vy = trunc nuw i8 %i.vx to i1
  %or.cond3.i = select i1 %i.vw, i1 true, i1 %i.vy
  br i1 %or.cond3.i, label %bb.eo, label %decipher_payload.exit.thread

bb.eo:                                            ; preds = %bb.en
  br i1 %i.vw, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.vz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.wa = icmp sgt i8 %i.vz, -1
  br i1 %i.wa, label %decipher_payload.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ep
  %.pre.i = load i32, ptr %i.vr, align 4
  br label %bb.eq

bb.eq:                                            ; preds = %._crit_edge.i, %bb.eo
  %i.wb = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.vs, %bb.eo ]
  %i.wc = icmp eq i32 %i.wb, 1
  br i1 %i.wc, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.wd = getelementptr i8, ptr %i.r, i64 4
  %i.we = load i32, ptr %i.wd, align 4
  %.not64.i = icmp eq i32 %i.we, 1
  %brmerge.not.i = and i1 %i.vl, %.not64.i
  br i1 %brmerge.not.i, label %bb.et, label %decipher_payload.exit.thread

bb.es:                                            ; preds = %bb.eq
  br i1 %i.vl, label %bb.et, label %decipher_payload.exit.thread

bb.et:                                            ; preds = %bb.er, %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.wf = getelementptr inbounds nuw i8, ptr %4, i64 31
  %6 = load i8, ptr %i.wf, align 1
  store i8 %6, ptr %i.d, align 16
  %i.wg = load i32, ptr %5, align 4               ; 3 uses
  %7 = lshr i32 %i.wg, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %8, ptr %9, align 1
  %10 = lshr i32 %i.wg, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %11, ptr %12, align 2
  %13 = trunc i32 %i.wg to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %13, ptr %14, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.wi = load i8, ptr %i.wh, align 8
  %i.wj = shl i8 %i.wi, 3
  %i.wk = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.wl = load i8, ptr %i.wk, align 1
  %i.wm = shl i8 %i.wl, 2
  %i.wn = add i8 %i.wm, %i.wj
  %i.wo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.wn, ptr %i.wo, align 4
  %i.wp = call i32 @gcry_cipher_open(ptr noundef nonnull %i.e, i32 noundef 7, i32 noundef 6, i32 noundef 0)
  %.not65.i = icmp eq i32 %i.wp, 0
  br i1 %.not65.i, label %bb.eu, label %.critedge.i

bb.eu:                                            ; preds = %bb.et
  %i.wq = load ptr, ptr %i.e, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = call i32 @gcry_cipher_setkey(ptr noundef %i.wq, ptr noundef %i.ws, i64 noundef 16)
  %.not66.i = icmp eq i32 %i.wt, 0
  %i.wu = load ptr, ptr %i.e, align 8             ; 2 uses
  br i1 %.not66.i, label %bb.ev, label %.critedge.sink.split.i

bb.ev:                                            ; preds = %bb.eu
  %i.wv = call i32 @gcry_cipher_setctr(ptr noundef %i.wu, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not67.i = icmp eq i32 %i.wv, 0
  br i1 %.not67.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ww = load ptr, ptr %i.e, align 8
  br label %.critedge.sink.split.i

bb.ex:                                            ; preds = %bb.ev
  %i.wx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.8) ; 3 uses
  %i.wy = getelementptr i8, ptr %1, i64 416
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = sext i32 %i.wx to i64                   ; 2 uses
  %i.xb = call ptr @tvb_memdup(ptr noundef %i.wz, ptr noundef %0, i32 noundef %.8, i64 noundef %i.xa) ; 2 uses
  %i.xc = load ptr, ptr %i.e, align 8
  %i.xd = call i32 @gcry_cipher_decrypt(ptr noundef %i.xc, ptr noundef %i.xb, i64 noundef %i.xa, ptr noundef null, i64 noundef 0)
  %.not68.i = icmp eq i32 %i.xd, 0
  %i.xe = load ptr, ptr %i.e, align 8
  call void @gcry_cipher_close(ptr noundef %i.xe)
  br i1 %.not68.i, label %bb.ey, label %.critedge.i

.critedge.sink.split.i:                           ; preds = %bb.ew, %bb.eu
  %.sink.i = phi ptr [ %i.ww, %bb.ew ], [ %i.wu, %bb.eu ]
  call void @gcry_cipher_close(ptr noundef %.sink.i)
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.ex, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %decipher_payload.exit.thread

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.xf = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.xb, i32 noundef %i.wx, i32 noundef %i.wx) ; 4 uses
  %i.xg = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.xf, ptr noundef @.str.308) ; 0 uses
  %i.xh = load i32, ptr @hf_pdcp_lte_security_deciphered_data, align 4
  %i.xi = call i32 @tvb_reported_length(ptr noundef %i.xf)
  %i.xj = call ptr @proto_tree_add_item(ptr noundef %.0365536, i32 noundef %i.xh, ptr noundef %i.xf, i32 noundef 0, i32 noundef %i.xi, i32 noundef 0) ; 0 uses
  br label %decipher_payload.exit.thread

decipher_payload.exit.thread:                     ; preds = %bb.el, %bb.em, %bb.en, %bb.ep, %bb.es, %bb.er, %.critedge.i, %bb.ek, %bb.ey
  %i.xk = phi i1 [ true, %bb.ey ], [ false, %bb.ek ], [ false, %.critedge.i ], [ false, %bb.er ], [ false, %bb.es ], [ false, %bb.ep ], [ false, %bb.en ], [ false, %bb.em ], [ false, %bb.el ] ; 2 uses
  %.162.i562 = phi ptr [ %i.xf, %bb.ey ], [ %0, %bb.ek ], [ %0, %.critedge.i ], [ %0, %bb.er ], [ %0, %bb.es ], [ %0, %bb.ep ], [ %0, %bb.en ], [ %0, %bb.em ], [ %0, %bb.el ] ; 12 uses
  %.9560 = phi i32 [ 0, %bb.ey ], [ %.8, %bb.ek ], [ %.8, %.critedge.i ], [ %.8, %bb.er ], [ %.8, %bb.es ], [ %.8, %bb.ep ], [ %.8, %bb.en ], [ %.8, %bb.em ], [ %.8, %bb.el ] ; 12 uses
  %i.xl = getelementptr i8, ptr %i.r, i64 20      ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4
  %i.xn = icmp eq i32 %i.xm, 1
  br i1 %i.xn, label %bb.ez, label %bb.gn

bb.ez:                                            ; preds = %decipher_payload.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.xo = call i32 @tvb_reported_length_remaining(ptr noundef %.162.i562, i32 noundef %.9560)
  %i.xp = getelementptr i8, ptr %i.r, i64 4       ; 3 uses
  %i.xq = load i32, ptr %i.xp, align 4
  %i.xr = icmp eq i32 %i.xq, 1                    ; 2 uses
  %.neg = select i1 %i.xr, i32 -4, i32 0
  %i.xs = add i32 %.neg, %i.xo                    ; 6 uses
  %i.xt = load i8, ptr @global_pdcp_check_integrity, align 1, !range !7, !noundef !8
  %i.xu = trunc nuw i8 %i.xt to i1
  %brmerge.not = select i1 %i.xu, i1 %i.xr, i1 false
  br i1 %brmerge.not, label %bb.fa, label %calculate_digest.exit

bb.fa:                                            ; preds = %bb.ez
  %i.xv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.xw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.xx = load i32, ptr %i.xw, align 4            ; 2 uses
  %i.xy = icmp eq i32 %i.xx, 0
  br i1 %i.xy, label %calculate_digest.exit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xz = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.ya = load i8, ptr %i.xz, align 1, !range !7, !noundef !8
  %i.yb = trunc nuw i8 %i.ya to i1
  %i.yc = load i8, ptr @global_pdcp_check_integrity, align 1, !range !7
  %i.yd = trunc nuw i8 %i.yc to i1
  %or.cond.i443 = select i1 %i.yb, i1 %i.yd, i1 false
  br i1 %or.cond.i443, label %bb.fc, label %calculate_digest.exit

bb.fc:                                            ; preds = %bb.fb
  %i.ye = call i32 @tvb_captured_length_remaining(ptr noundef %.162.i562, i32 noundef %.9560) ; 3 uses
  %i.yf = icmp ult i32 %i.ye, 4
  br i1 %i.yf, label %calculate_digest.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.yg = add i32 %i.ye, -4
  %cond.i444 = icmp eq i32 %i.xx, 2
  br i1 %cond.i444, label %bb.fe, label %calculate_digest.exit

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 4, ptr %i.c, align 8
  %i.yh = call i32 @gcry_mac_open(ptr noundef nonnull %i.a, i32 noundef 201, i32 noundef 0, ptr noundef null)
  %.not.i445 = icmp eq i32 %i.yh, 0
  br i1 %.not.i445, label %bb.ff, label %bb.fl

bb.ff:                                            ; preds = %bb.fe
  %i.yi = load ptr, ptr %i.a, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8
  %i.yl = call i32 @gcry_mac_setkey(ptr noundef %i.yi, ptr noundef %i.yk, i64 noundef 16)
  %.not38.i = icmp eq i32 %i.yl, 0
  br i1 %.not38.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ym = load ptr, ptr %i.a, align 8
  call void @gcry_mac_close(ptr noundef %i.ym)
  br label %bb.fl

bb.fh:                                            ; preds = %bb.ff
  %i.yn = getelementptr i8, ptr %1, i64 416
  %i.yo = load ptr, ptr %i.yn, align 8
  %i.yp = add i32 %i.ye, 5
  %i.yq = zext i32 %i.yp to i64                   ; 2 uses
  %i.yr = call noalias ptr @wmem_alloc0(ptr noundef %i.yo, i64 noundef %i.yq) #15 ; 8 uses
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 31
  %16 = load i8, ptr %i.ys, align 1
  store i8 %16, ptr %i.yr, align 1
  %i.yt = load i32, ptr %15, align 4              ; 3 uses
  %17 = lshr i32 %i.yt, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr i8, ptr %i.yr, i64 1
  store i8 %18, ptr %19, align 1
  %20 = lshr i32 %i.yt, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr i8, ptr %i.yr, i64 2
  store i8 %21, ptr %22, align 1
  %23 = trunc i32 %i.yt to i8
  %24 = getelementptr i8, ptr %i.yr, i64 3
  store i8 %23, ptr %24, align 1
  %i.yu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yv = load i8, ptr %i.yu, align 8
  %i.yw = shl i8 %i.yv, 3
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = shl i8 %i.yy, 2
  %i.za = add i8 %i.yz, %i.yw
  %i.zb = getelementptr i8, ptr %i.yr, i64 4
  store i8 %i.za, ptr %i.zb, align 1
  %i.zc = getelementptr i8, ptr %i.yr, i64 8
  store i8 %i.xv, ptr %i.zc, align 1
  %i.zd = getelementptr i8, ptr %i.yr, i64 9
  %i.ze = zext i32 %i.yg to i64
  %i.zf = call ptr @tvb_memcpy(ptr noundef %.162.i562, ptr noundef %i.zd, i32 noundef %.9560, i64 noundef %i.ze) ; 0 uses
  %i.zg = load ptr, ptr %i.a, align 8
  %i.zh = call i32 @gcry_mac_write(ptr noundef %i.zg, ptr noundef %i.yr, i64 noundef %i.yq)
  %.not39.i = icmp eq i32 %i.zh, 0
  %i.zi = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not39.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @gcry_mac_close(ptr noundef %i.zi)
  br label %bb.fl

bb.fj:                                            ; preds = %bb.fh
  %i.zj = call i32 @gcry_mac_read(ptr noundef %i.zi, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not40.i = icmp eq i32 %i.zj, 0
  %i.zk = load ptr, ptr %i.a, align 8
  call void @gcry_mac_close(ptr noundef %i.zk)
  br i1 %.not40.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.zl = load i32, ptr %i.b, align 4
  %i.zm = call i32 @llvm.bswap.i32(i32 %i.zl)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.fe
  %.1 = phi i1 [ true, %bb.fk ], [ false, %bb.fj ], [ false, %bb.fi ], [ false, %bb.fg ], [ false, %bb.fe ]
  %.0.i = phi i32 [ %i.zm, %bb.fk ], [ 0, %bb.fj ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %calculate_digest.exit

calculate_digest.exit:                            ; preds = %bb.fl, %bb.fc, %bb.fb, %bb.fa, %bb.fd, %bb.ez
  %.0524 = phi i1 [ false, %bb.ez ], [ false, %bb.fb ], [ false, %bb.fc ], [ %.1, %bb.fl ], [ true, %bb.fa ], [ false, %bb.fd ]
  %.0346 = phi i32 [ 0, %bb.ez ], [ 0, %bb.fb ], [ 0, %bb.fc ], [ %.0.i, %bb.fl ], [ 0, %bb.fa ], [ 0, %bb.fd ] ; 3 uses
  %i.zn = load i8, ptr @global_pdcp_dissect_signalling_plane_as_rrc, align 1, !range !7, !noundef !8
  %i.zo = trunc nuw i8 %i.zn to i1
  br i1 %i.zo, label %bb.fm, label %bb.ge

bb.fm:                                            ; preds = %calculate_digest.exit
  br i1 %.not400, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zp = getelementptr i8, ptr %i.ip, i64 12
  %i.zq = load i32, ptr %i.zp, align 4
  %i.zr = icmp eq i32 %i.zq, 0
  %or.cond6 = or i1 %i.xk, %i.zr
  br i1 %or.cond6, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.zs = getelementptr i8, ptr %i.ip, i64 4
  %i.zt = load i8, ptr %i.zs, align 4, !range !7, !noundef !8
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %bb.ge, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.zv = load i32, ptr %i.xp, align 4
  switch i32 %i.zv, label %lookup_rrc_dissector_handle.exit.thread [
    i32 3, label %bb.fq
    i32 4, label %lookup_rrc_dissector_handle.exit
    i32 2, label %bb.fr
    i32 1, label %bb.ft
    i32 7, label %bb.fu
    i32 8, label %bb.fv
    i32 6, label %bb.fw
    i32 5, label %bb.fy
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.zw = load i8, ptr %i.r, align 8
  %i.zx = icmp eq i8 %i.zw, 0
  %lte_rrc_ul_ccch.lte_rrc_dl_ccch = select i1 %i.zx, ptr @lte_rrc_ul_ccch, ptr @lte_rrc_dl_ccch
  br label %lookup_rrc_dissector_handle.exit

bb.fr:                                            ; preds = %bb.fp
  %i.zy = getelementptr i8, ptr %i.r, i64 12
  %i.zz = load i32, ptr %i.zy, align 4
  switch i32 %i.zz, label %lookup_rrc_dissector_handle.exit.thread [
    i32 1, label %lookup_rrc_dissector_handle.exit
    i32 2, label %bb.fs
  ]

bb.fs:                                            ; preds = %bb.fr
  br label %lookup_rrc_dissector_handle.exit

bb.ft:                                            ; preds = %bb.fp
  %i.aaa = load i8, ptr %i.r, align 8
  %i.aab = icmp eq i8 %i.aaa, 0
  %lte_rrc_ul_dcch.lte_rrc_dl_dcch = select i1 %i.aab, ptr @lte_rrc_ul_dcch, ptr @lte_rrc_dl_dcch
  br label %lookup_rrc_dissector_handle.exit

bb.fu:                                            ; preds = %bb.fp
  %i.aac = load i8, ptr %i.r, align 8
  %i.aad = icmp eq i8 %i.aac, 0
  %lte_rrc_ul_ccch_nb.lte_rrc_dl_ccch_nb = select i1 %i.aad, ptr @lte_rrc_ul_ccch_nb, ptr @lte_rrc_dl_ccch_nb
  br label %lookup_rrc_dissector_handle.exit

bb.fv:                                            ; preds = %bb.fp
  br label %lookup_rrc_dissector_handle.exit

bb.fw:                                            ; preds = %bb.fp
  %i.aae = getelementptr i8, ptr %i.r, i64 12
  %i.aaf = load i32, ptr %i.aae, align 4
  switch i32 %i.aaf, label %lookup_rrc_dissector_handle.exit.thread [
    i32 1, label %lookup_rrc_dissector_handle.exit
    i32 2, label %bb.fx
  ]

bb.fx:                                            ; preds = %bb.fw
  br label %lookup_rrc_dissector_handle.exit

bb.fy:                                            ; preds = %bb.fp
  %i.aag = load i8, ptr %i.r, align 8
  %i.aah = icmp eq i8 %i.aag, 0
  %lte_rrc_ul_dcch_nb.lte_rrc_dl_dcch_nb = select i1 %i.aah, ptr @lte_rrc_ul_dcch_nb, ptr @lte_rrc_dl_dcch_nb
  br label %lookup_rrc_dissector_handle.exit

lookup_rrc_dissector_handle.exit:                 ; preds = %bb.fy, %bb.fw, %bb.fu, %bb.ft, %bb.fr, %bb.fp, %bb.fq, %bb.fs, %bb.fv, %bb.fx
  %.0.i446.in = phi ptr [ @lte_rrc_bcch_dl_sch_nb, %bb.fx ], [ %lte_rrc_ul_ccch.lte_rrc_dl_ccch, %bb.fq ], [ @lte_rrc_pcch_nb, %bb.fv ], [ @lte_rrc_bcch_bch_nb, %bb.fw ], [ %lte_rrc_ul_dcch_nb.lte_rrc_dl_dcch_nb, %bb.fy ], [ @lte_rrc_pcch, %bb.fp ], [ @lte_rrc_bcch_dl_sch, %bb.fs ], [ %lte_rrc_ul_dcch.lte_rrc_dl_dcch, %bb.ft ], [ @lte_rrc_bcch_bch, %bb.fr ], [ %lte_rrc_ul_ccch_nb.lte_rrc_dl_ccch_nb, %bb.fu ]
  %.0.i446 = load ptr, ptr %.0.i446.in, align 8   ; 2 uses
  %.not426 = icmp eq ptr %.0.i446, null
  br i1 %.not426, label %lookup_rrc_dissector_handle.exit.thread, label %bb.fz

bb.fz:                                            ; preds = %lookup_rrc_dissector_handle.exit
  %i.aai = call ptr @tvb_new_subset_length(ptr noundef %.162.i562, i32 noundef %.9560, i32 noundef %i.xs)
  %i.aaj = load ptr, ptr %i.n, align 8
  %i.aak = call zeroext i1 @col_get_writable(ptr noundef %i.aaj, i32 noundef 25)
  %i.aal = load ptr, ptr %i.n, align 8
  call void @col_set_writable(ptr noundef %i.aal, i32 noundef 25, i1 noundef zeroext true)
  %i.aam = call i32 @call_dissector_only(ptr noundef nonnull %.0.i446, ptr noundef %i.aai, ptr noundef %1, ptr noundef %.0365536, ptr noundef null) ; 0 uses
  %i.aan = load ptr, ptr %i.n, align 8
  call void @col_set_writable(ptr noundef %i.aan, i32 noundef 25, i1 noundef zeroext %i.aak)
  br label %bb.ga

lookup_rrc_dissector_handle.exit.thread:          ; preds = %bb.fw, %bb.fr, %bb.fp, %lookup_rrc_dissector_handle.exit
  %i.aao = load i32, ptr @hf_pdcp_lte_signalling_data, align 4
  %i.aap = call ptr @proto_tree_add_item(ptr noundef %.0365536, i32 noundef %i.aao, ptr noundef %.162.i562, i32 noundef %.9560, i32 noundef %i.xs, i32 noundef 0) ; 0 uses
  br label %bb.ga

bb.ga:                                            ; preds = %lookup_rrc_dissector_handle.exit.thread, %bb.fz
  %i.aaq = load ptr, ptr %i.he, align 8
  %i.aar = getelementptr i8, ptr %i.aaq, i64 53
  %i.aas = load i16, ptr %i.aar, align 1
  %i.aat = and i16 %i.aas, 8
  %i.aau = icmp eq i16 %i.aat, 0
  %i.aav = icmp ne ptr %.0372, null
  %or.cond8 = and i1 %i.aav, %i.aau
  br i1 %or.cond8, label %bb.gb, label %bb.gf

bb.gb:                                            ; preds = %bb.ga
  %i.aaw = getelementptr i8, ptr %.0372, i64 4    ; 2 uses
  %i.aax = load i8, ptr %i.aaw, align 4, !range !7, !noundef !8
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aaz = load i8, ptr %i.r, align 8
  %i.aba = icmp eq i8 %i.aaz, 0
  br i1 %i.aba, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  store i8 1, ptr %i.aaw, align 4
  br label %bb.gf

bb.ge:                                            ; preds = %bb.fo, %calculate_digest.exit
  %i.abb = load i32, ptr @hf_pdcp_lte_signalling_data, align 4
  %i.abc = call ptr @proto_tree_add_item(ptr noundef %.0365536, i32 noundef %i.abb, ptr noundef %.162.i562, i32 noundef %.9560, i32 noundef %i.xs, i32 noundef 0) ; 0 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge
  %i.abd = load i32, ptr %i.xp, align 4
  %i.abe = icmp eq i32 %i.abd, 1
  br i1 %i.abe, label %bb.gg, label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.abf = add i32 %i.xs, %.9560
  %i.abg = load i32, ptr @hf_pdcp_lte_mac, align 4
  %i.abh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0365536, i32 noundef %i.abg, ptr noundef %.162.i562, i32 noundef %i.abf, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.m) ; 3 uses
  br i1 %.0524, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.abi = load i32, ptr %i.m, align 4            ; 2 uses
  %.not427 = icmp eq i32 %i.abi, %.0346
  br i1 %.not427, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.abj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.abh, ptr noundef @ei_pdcp_lte_digest_wrong, ptr noundef @.str.287, i32 noundef %.0346, i32 noundef %i.abi) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.abh, ptr noundef @.str.288, i32 noundef %.0346)
end_hunk_1
