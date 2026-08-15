inline.NumInlined: 92
inline.NumDeleted: 39
begin_hunk_0_@proto_register_wg:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @gcry_md_hash_buffer(i32 noundef 322, ptr noundef nonnull @hash_of_construction, ptr noundef nonnull @wg_decrypt_init.construction, i64 noundef 37)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) @hash_of_c_identifier, ptr noundef nonnull align 1 dereferenceable(32) @hash_of_construction, i64 noundef 32, i1 noundef false) #17
  tail call fastcc void @wg_mix_hash(ptr noundef nonnull @hash_of_c_identifier, ptr noundef nonnull @wg_decrypt_init.wg_identifier, i64 noundef 34)
  store i1 true, ptr @wg_decryption_supported, align 1
  tail call void @secrets_register_type(i32 noundef 1464290124, ptr noundef nonnull @wg_keylog_process_lines)
  br label %bb.e

bb.e:                                             ; preds = %wg_decrypt_init.exit.thread, %bb.d
  %i.l = tail call ptr @wmem_epan_scope()
  %i.m = tail call ptr @wmem_file_scope()
  %i.n = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull @g_int_hash, ptr noundef nonnull @wg_pubkey_equal)
  store ptr %i.n, ptr @wg_ephemeral_keys, align 8
  tail call void @register_init_routine(ptr noundef nonnull @wg_init)
  tail call void @register_cleanup_routine(ptr noundef nonnull @wg_keylog_reset)
  %i.o = tail call ptr @wmem_epan_scope()
  %i.p = tail call ptr @wmem_file_scope()
  %i.q = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull @g_direct_hash, ptr noundef nonnull @g_direct_equal)
  store ptr %i.q, ptr @sessions, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_enum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_key_uat_key_type_set_cb(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 3 uses
  store i32 0, ptr %0, align 8
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef %i.b) #18
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.01520 = phi i32 [ %i.g, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = add i32 %.01520, 1                       ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.lr.ph21
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef %i.b) #18
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph._crit_edge, label %.lr.ph21, !llvm.loop !6

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi ptr [ %3, %.lr.ph.preheader ], [ %i.i, %.lr.ph ]
  %i.n = load i32, ptr %.lcssa, align 8
  store i32 %i.n, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph21, %bb.a, %.lr.ph._crit_edge
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_key_uat_key_type_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %g_strdup_inline.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = load i32, ptr %3, align 8
  %i.e = icmp eq i32 %i.d, %i.c
  br i1 %i.e, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %.01722 = phi i32 [ %i.f, %bb.b ], [ 0, %.lr.ph ]
  %i.f = add i32 %.01722, 1                       ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr [16 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b, !llvm.loop !8

bb.b:                                             ; preds = %.lr.ph23
  %i.k = load i32, ptr %i.h, align 8
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %._crit_edge, label %.lr.ph23, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi ptr [ %i.b, %.lr.ph ], [ %i.j, %bb.b ]
  %i.m = tail call noalias ptr @g_strdup(ptr noundef nonnull %.lcssa) ; 2 uses
  store ptr %i.m, ptr %1, align 8
  %i.n = tail call i64 @strlen(ptr noundef %i.m) #18
  %i.o = trunc i64 %i.n to i32
  br label %bb.c

g_strdup_inline.exit:                             ; preds = %.lr.ph23, %bb.a
  %i.p = tail call noalias dereferenceable_or_null(7) ptr @g_malloc(i64 noundef 7) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(7) %i.p, ptr noundef nonnull align 1 dereferenceable(7) @.str.100, i64 noundef 7, i1 noundef false) #17
  store ptr %i.p, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %g_strdup_inline.exit, %._crit_edge
  %storemerge = phi i32 [ 6, %g_strdup_inline.exit ], [ %i.o, %._crit_edge ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_str(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_key_uat_key_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
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
define internal void @wg_key_uat_key_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #18
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #19 ; 2 uses
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
define internal i32 @dissect_wg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca [32 x i8], align 16               ; 4 uses
  %i.h = alloca [32 x i8], align 16               ; 32 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [32 x i8], align 16               ; 4 uses
  %i.k = alloca [32 x i8], align 16               ; 4 uses
  %4 = alloca [3 x %struct.wg_qqword], align 16   ; 37 uses
  %5 = alloca %struct.wg_qqword, align 1          ; 30 uses
  %6 = alloca %struct.wg_qqword, align 1          ; 5 uses
  %7 = alloca %struct.wg_qqword, align 1          ; 5 uses
  %8 = alloca %struct.wg_qqword, align 1          ; 18 uses
  %9 = alloca [2 x %struct.wg_qqword], align 16   ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %10 = alloca %struct.nstime_t, align 8          ; 6 uses
  %i.n = alloca [32 x i8], align 16               ; 4 uses
  %i.o = alloca [32 x i8], align 16               ; 4 uses
  %i.p = alloca [32 x i8], align 16               ; 4 uses
  %11 = alloca %struct.wg_qqword, align 1         ; 6 uses
  %12 = alloca [2 x %struct.wg_qqword], align 16  ; 11 uses
  %13 = alloca %struct.wg_qqword, align 1         ; 11 uses
  %14 = alloca %struct.wg_qqword, align 1         ; 6 uses
  %15 = alloca %struct.wg_qqword, align 1         ; 8 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.s = zext i8 %i.r to i32
  %i.t = tail call ptr @try_val_to_str(i32 noundef %i.s, ptr noundef nonnull @wg_type_names) ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %wg_is_valid_message_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  switch i8 %i.r, label %wg_is_valid_message_length.exit.thread [
    i8 1, label %wg_is_valid_message_length.exit
    i8 2, label %.split62
    i8 3, label %.split61
    i8 4, label %.split
  ]

.split62:                                         ; preds = %bb.b
  %i.v = icmp eq i32 %i.u, 92
  br i1 %i.v, label %.thread, label %wg_is_valid_message_length.exit.thread

.split61:                                         ; preds = %bb.b
  %i.w = icmp eq i32 %i.u, 64
  br i1 %i.w, label %.thread, label %wg_is_valid_message_length.exit.thread

.split:                                           ; preds = %bb.b
  %i.x = icmp ugt i32 %i.u, 31
  br i1 %i.x, label %bb.c, label %wg_is_valid_message_length.exit.thread

wg_is_valid_message_length.exit:                  ; preds = %bb.b
  %i.y = icmp eq i32 %i.u, 148
  br i1 %i.y, label %.thread, label %wg_is_valid_message_length.exit.thread

bb.c:                                             ; preds = %.split
  %i.z = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.aa = icmp eq i32 %i.z, 32
  %spec.select = select i1 %i.aa, ptr @.str.104, ptr %i.t
  br label %.thread

.thread:                                          ; preds = %wg_is_valid_message_length.exit, %.split61, %.split62, %bb.c
  %.038 = phi ptr [ %spec.select, %bb.c ], [ %i.t, %.split62 ], [ %i.t, %.split61 ], [ %i.t, %wg_is_valid_message_length.exit ]
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 9 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @col_set_str(ptr noundef %i.ac, i32 noundef 35, ptr noundef nonnull @.str.80)
  %i.ad = load ptr, ptr %i.ab, align 8
  tail call void @col_set_str(ptr noundef %i.ad, i32 noundef 25, ptr noundef nonnull %.038)
  %i.ae = load i32, ptr @proto_wg, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.ag = load i32, ptr @ett_wg, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag) ; 38 uses
  %i.ai = load i32, ptr @hf_wg_type, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = load i32, ptr @hf_wg_reserved, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ak, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.am = getelementptr i8, ptr %1, i64 80        ; 11 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 53
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = and i16 %i.ap, 8
  %.not41 = icmp eq i16 %i.aq, 0
  %i.ar = tail call ptr @wmem_file_scope()        ; 2 uses
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.ar, i64 noundef 16) #20 ; 2 uses
  %i.at = tail call ptr @wmem_file_scope()
  %i.au = load i32, ptr @proto_wg, align 4
  tail call void @p_add_proto_data(ptr noundef %i.at, ptr noundef %1, i32 noundef %i.au, i32 noundef 0, ptr noundef %i.as)
  br label %bb.f

bb.e:                                             ; preds = %.thread
  %i.av = load i32, ptr @proto_wg, align 4
  %i.aw = tail call ptr @p_get_proto_data(ptr noundef %i.ar, ptr noundef %1, i32 noundef %i.av, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.aw, %bb.e ], [ %i.as, %bb.d ] ; 17 uses
  switch i8 %i.r, label %default.unreachable [
    i8 1, label %bb.g
    i8 2, label %bb.bk
    i8 3, label %bb.eo
    i8 4, label %bb.fb
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  tail call fastcc void @wg_keylog_read()
  %i.ax = getelementptr i8, ptr %1, i64 416
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call fastcc ptr @wg_mac1_key_probe(ptr noundef %i.ay, ptr noundef %0, i1 noundef zeroext true) ; 4 uses
  %i.ba = load ptr, ptr %i.am, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 53
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = and i16 %i.bc, 8
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %bb.h, label %bb.ap

bb.h:                                             ; preds = %bb.g
  %.not69.i = icmp eq ptr %i.az, null
  br i1 %.not69.i, label %wg_prepare_handshake_keys.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr i8, ptr %i.az, i64 95
  %.val.i.i = load i8, ptr %i.be, align 1
  %i.bf = and i8 %.val.i.i, 64
  %i.bg = icmp ne i8 %i.bf, 0
  %i.bh = load ptr, ptr @wg_ephemeral_keys, align 8
  %i.bi = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 8, i32 noundef 32)
  %i.bj = tail call ptr @wmem_map_lookup(ptr noundef %i.bh, ptr noundef %i.bi) ; 2 uses
  %i.bk = icmp ne ptr %i.bj, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bk
  br i1 %or.cond.i.i, label %bb.j, label %wg_prepare_handshake_keys.exit.thread.i

bb.j:                                             ; preds = %bb.i
  br i1 %i.bk, label %wg_prepare_handshake_keys.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = tail call ptr @wmem_file_scope()
  %i.bm = tail call noalias dereferenceable_or_null(72) ptr @wmem_alloc0(ptr noundef %i.bl, i64 noundef 72) #20 ; 2 uses
  %i.bn = tail call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.bm, i32 noundef 8, i64 noundef 32) ; 0 uses
  br label %wg_prepare_handshake_keys.exit.i

wg_prepare_handshake_keys.exit.i:                 ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.bj, %bb.j ], [ %i.bm, %bb.k ]
  %i.bo = tail call ptr @wmem_file_scope()
  %i.bp = tail call noalias dereferenceable_or_null(128) ptr @wmem_alloc0(ptr noundef %i.bo, i64 noundef 128) #20 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 7 uses
  store ptr %i.az, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 32     ; 3 uses
  store ptr %.0.i.i, ptr %i.br, align 8
  %i.bs = tail call ptr @wmem_file_scope()
  %i.bt = tail call i32 @wmem_register_callback(ptr noundef %i.bs, ptr noundef nonnull @wg_handshake_state_destroy_cb, ptr noundef %i.bp) ; 0 uses
  %.not70.i = icmp eq ptr %i.bp, null
  br i1 %.not70.i, label %wg_prepare_handshake_keys.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %wg_prepare_handshake_keys.exit.i
  %i.bu = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 856, ptr noundef nonnull @.str.111) #21
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not46.i.i = icmp eq ptr %i.bv, null
  br i1 %.not46.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 857, ptr noundef nonnull @.str.112) #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.bp, align 8
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 858, ptr noundef nonnull @.str.113) #21
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.by = getelementptr i8, ptr %i.bu, i64 95
  %.val49.i.i = load i8, ptr %i.by, align 1
  %i.bz = and i8 %.val49.i.i, 64
  %i.ca = icmp ne i8 %i.bz, 0                     ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bv, i64 63
  %.val48.i.i = load i8, ptr %i.cb, align 1
  %i.cc = and i8 %.val48.i.i, 64
  %i.cd = icmp ne i8 %i.cc, 0
  %or.cond.i77.i = select i1 %i.ca, i1 true, i1 %i.cd
  br i1 %or.cond.i77.i, label %bb.s, label %wg_process_initiation.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ce = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 8, i32 noundef 32) ; 3 uses
  %i.cf = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 40, i32 noundef 48) ; 3 uses
  %i.cg = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 88, i32 noundef 28) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(32) @hash_of_construction, i64 noundef 32, i1 noundef false) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(32) @hash_of_c_identifier, i64 noundef 32, i1 noundef false) #17
  %i.ci = load ptr, ptr %i.bq, align 8
  call fastcc void @wg_mix_hash(ptr noundef nonnull %13, ptr noundef %i.ci, i64 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #17
end_hunk_0
begin_hunk_1_@dissect_wg:bb.a
  %i.il = getelementptr i8, ptr %i.ik, i64 72     ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  %.not61.i = icmp eq ptr %i.im, null
  br i1 %.not61.i, label %wg_process_response.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.in = load ptr, ptr @wg_ephemeral_keys, align 8
  %i.io = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 12, i32 noundef 32)
  %i.ip = call ptr @wmem_map_lookup(ptr noundef %i.in, ptr noundef %i.io) ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i48, label %bb.bo, label %wg_prepare_handshake_responder_keys.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.iq = call ptr @wmem_file_scope()
  %i.ir = call noalias dereferenceable_or_null(72) ptr @wmem_alloc0(ptr noundef %i.iq, i64 noundef 72) #20 ; 2 uses
  %i.is = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.ir, i32 noundef 12, i64 noundef 32) ; 0 uses
  br label %wg_prepare_handshake_responder_keys.exit.i

wg_prepare_handshake_responder_keys.exit.i:       ; preds = %bb.bo, %bb.bn
  %.0.i.i49 = phi ptr [ %i.ip, %bb.bn ], [ %i.ir, %bb.bo ]
  %i.it = getelementptr i8, ptr %i.im, i64 40
  store ptr %.0.i.i49, ptr %i.it, align 8
  %i.iu = load ptr, ptr %i.il, align 8            ; 12 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 32     ; 4 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %.not.i64.i = icmp eq ptr %i.iw, null
  br i1 %.not.i64.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %wg_prepare_handshake_responder_keys.exit.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 942, ptr noundef nonnull @.str.112) #21
  unreachable

bb.bq:                                            ; preds = %wg_prepare_handshake_responder_keys.exit.i
  %i.ix = load ptr, ptr %i.iu, align 8            ; 2 uses
  %.not59.i.i = icmp eq ptr %i.ix, null
  br i1 %.not59.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 943, ptr noundef nonnull @.str.121) #21
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.iy = getelementptr i8, ptr %i.iu, i64 40     ; 4 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %.not60.i.i = icmp eq ptr %i.iz, null
  br i1 %.not60.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 944, ptr noundef nonnull @.str.122) #21
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ja = getelementptr i8, ptr %i.iu, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  %.not61.i.i = icmp eq ptr %i.jb, null
  br i1 %.not61.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 945, ptr noundef nonnull @.str.111) #21
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.jc = getelementptr i8, ptr %i.iu, i64 112    ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8
  %.not62.i.i = icmp eq ptr %i.jd, null
  br i1 %.not62.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.je = getelementptr i8, ptr %i.iu, i64 120    ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %.not63.i.i = icmp eq ptr %i.jf, null
  br i1 %.not63.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.123, i32 noundef 5, ptr noundef nonnull @.str.106, i64 noundef 949, ptr noundef nonnull @__func__.wg_process_response, ptr noundef nonnull @.str.124)
  br label %wg_process_response.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.jg = getelementptr i8, ptr %i.iw, i64 63
  %.val66.i.i = load i8, ptr %i.jg, align 1
  %i.jh = and i8 %.val66.i.i, 64
  %i.ji = icmp ne i8 %i.jh, 0
  %i.jj = getelementptr i8, ptr %i.ix, i64 95
  %.val65.i.i = load i8, ptr %i.jj, align 1
  %i.jk = and i8 %.val65.i.i, 64
  %i.jl = icmp ne i8 %i.jk, 0
  %i.jm = getelementptr i8, ptr %i.iz, i64 63
  %.val.i.i50 = load i8, ptr %i.jm, align 1
  %i.jn = and i8 %.val.i.i50, 64
  %i.jo = icmp ne i8 %i.jn, 0
  %or.cond.i.i51 = select i1 %i.ji, i1 %i.jl, i1 false ; 3 uses
  %or.cond3.i.i = select i1 %or.cond.i.i51, i1 true, i1 %i.jo
  br i1 %or.cond3.i.i, label %bb.ca, label %wg_process_response.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.jp = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 12, i32 noundef 32) ; 4 uses
  %i.jq = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 44, i32 noundef 16) ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 8 uses
  %i.jt = getelementptr i8, ptr %i.iu, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef align 8 dereferenceable(32) %i.jt, i64 32, i1 false)
  %i.ju = getelementptr i8, ptr %i.iu, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef align 8 dereferenceable(32) %i.ju, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.jv = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.k, ptr noundef %i.jp, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.jx = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.k, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 32)
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %wg_kdf.exit.i.i52, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit.i.i52:                                ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef %i.jp, i64 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  br i1 %or.cond.i.i51, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %wg_kdf.exit.i.i52
  %i.jz = load ptr, ptr %i.iv, align 8
  %i.ka = getelementptr i8, ptr %i.jz, i64 32
  %i.kb = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %6, ptr noundef %i.ka, ptr noundef %i.jp) ; 0 uses
  br label %bb.cg

bb.cf:                                            ; preds = %wg_kdf.exit.i.i52
  %i.kc = load ptr, ptr %i.iy, align 8
  %i.kd = getelementptr i8, ptr %i.kc, i64 32
  %i.ke = load ptr, ptr %i.iv, align 8
  %i.kf = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %6, ptr noundef %i.kd, ptr noundef %i.ke) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %i.kg = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.j, ptr noundef nonnull %6, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ki = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.j, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 32)
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %wg_kdf.exit67.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit67.i.i:                                ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  br i1 %or.cond.i.i51, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %wg_kdf.exit67.i.i
  %i.kk = load ptr, ptr %i.iu, align 8
  %i.kl = getelementptr i8, ptr %i.kk, i64 64
  %i.km = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %7, ptr noundef %i.kl, ptr noundef %i.jp) ; 0 uses
  br label %bb.cm

bb.cl:                                            ; preds = %wg_kdf.exit67.i.i
  %i.kn = load ptr, ptr %i.iy, align 8
  %i.ko = getelementptr i8, ptr %i.kn, i64 32
  %i.kp = load ptr, ptr %i.iu, align 8
  %i.kq = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %7, ptr noundef %i.ko, ptr noundef %i.kp) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.kr = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.i, ptr noundef nonnull %7, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.kt = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.i, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 32)
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %wg_kdf.exit68.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit68.i.i:                                ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  %.sroa.08.i.i.sroa.0.0.copyload = load <32 x i8>, ptr %5, align 1 ; 8 uses
  %.sroa.0.i.i.sroa.0.0.copyload = load <32 x i8>, ptr %4, align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  br label %bb.cq

bb.cq:                                            ; preds = %bb.dn, %wg_kdf.exit68.i.i
  %.sroa.077.0.i.i = phi i32 [ 0, %wg_kdf.exit68.i.i ], [ %.sroa.077.1.i.i, %bb.dn ] ; 2 uses
  %.sroa.778.0.i.i = phi ptr [ null, %wg_kdf.exit68.i.i ], [ %i.le, %bb.dn ] ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.sroa.778.0.i.i, null
  br i1 %.not17.i.i.i, label %.lr.ph.i.i.i, label %bb.cy

bb.cr:                                            ; preds = %wg_kdf.exit69.i.i.jt1
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.not17.i.i.i.jt1 = icmp eq ptr %i.li, null
  br i1 %.not17.i.i.i.jt1, label %.loopexit19.i.i.i, label %bb.cy

bb.cs:                                            ; preds = %wg_kdf.exit69.i.i.jt2
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.not17.i.i.i.jt2 = icmp eq ptr %i.lm, null
  br i1 %.not17.i.i.i.jt2, label %.lr.ph.i.i.jt2.i, label %bb.cy

bb.ct:                                            ; preds = %wg_kdf.exit69.i.jt1.i
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.not17.i.i.jt1.i = icmp eq ptr %i.lq, null
  br i1 %.not17.i.i.jt1.i, label %.loopexit19.i.i.i, label %bb.cz

bb.cu:                                            ; preds = %wg_kdf.exit69.i.jt2.i
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.not17.i.i.jt2.i = icmp eq ptr %i.lu, null
  br i1 %.not17.i.i.jt2.i, label %.lr.ph.i.i.jt2.i, label %bb.da

bb.cv:                                            ; preds = %wg_kdf.exit69.jt1.i.i
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.not17.i.jt1.i.i = icmp eq ptr %i.ma, null
  br i1 %.not17.i.jt1.i.i, label %.loopexit19.i.i.i, label %bb.db

bb.cw:                                            ; preds = %wg_kdf.exit69.jt2.i.i
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.not17.i.jt2.i.i = icmp eq ptr %i.me, null
  br i1 %.not17.i.jt2.i.i, label %.lr.ph.i.i.jt2.i, label %bb.dc

default.unreachable128:                           ; preds = %.lr.ph.i.i.i
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.cq
  switch i32 %.sroa.077.0.i.i, label %default.unreachable128 [
    i32 0, label %bb.cx
    i32 1, label %.loopexit19.i.i.i
    i32 2, label %.lr.ph.i.i.jt2.i
  ], !llvm.loop !9

.lr.ph.i.jt3.i.i:                                 ; preds = %wg_kdf.exit69.jt3.i.i
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.iu, i64 28
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4
  %i.kv = and i8 %.pre.i.i, 2
  %i.kw = icmp eq i8 %i.kv, 0
  br i1 %i.kw, label %bb.dw, label %bb.do

.loopexit19.i.i.i:                                ; preds = %bb.cr, %bb.cx, %.lr.ph.i.i.i, %bb.cv, %bb.ct
  %i.kx = load ptr, ptr %i.iy, align 8
  %i.ky = getelementptr i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8            ; 3 uses
  %.not.jt2.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.jt2.i.i.i, label %.lr.ph.i.i.jt2.i, label %bb.de, !llvm.loop !9

bb.cx:                                            ; preds = %.lr.ph.i.i.i
  %i.la = load ptr, ptr %i.iv, align 8
  %i.lb = getelementptr i8, ptr %i.la, i64 64
  %i.lc = load ptr, ptr %i.lb, align 8            ; 3 uses
  %.not.jt1.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.jt1.i.i.i, label %.loopexit19.i.i.i, label %bb.dd, !llvm.loop !9

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %bb.cq
  %.sroa.077.1.i.i = phi i32 [ %.sroa.077.0.i.i, %bb.cq ], [ 2, %bb.cs ], [ 1, %bb.cr ]
  %.0.lcssa.i.i.i = phi ptr [ %.sroa.778.0.i.i, %bb.cq ], [ %i.lm, %bb.cs ], [ %i.li, %bb.cr ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i, i64 32, i1 false)
  %i.ld = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 32
  %i.le = load ptr, ptr %i.ld, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lf = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.df, label %.loopexit.i.i

bb.cz:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lq, i64 32, i1 false)
  %i.lh = getelementptr i8, ptr %i.lq, i64 32
  %i.li = load ptr, ptr %i.lh, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lj = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.dg, label %.loopexit.i.i

bb.da:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lu, i64 32, i1 false)
  %i.ll = getelementptr i8, ptr %i.lu, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.ln = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.dh, label %.loopexit.i.i

bb.db:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ma, i64 32, i1 false)
  %i.lp = getelementptr i8, ptr %i.ma, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lr = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.di, label %.loopexit.i.i

bb.dc:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.me, i64 32, i1 false)
  %i.lt = getelementptr i8, ptr %i.me, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lv = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.dj, label %.loopexit.i.i

.lr.ph.i.i.jt2.i:                                 ; preds = %bb.cs, %.loopexit19.i.i.i, %.lr.ph.i.i.i, %bb.cw, %bb.cu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, i8 noundef 0, i64 noundef 32, i1 noundef false) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lx = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.dk, label %.loopexit.i.i

bb.dd:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i64 32, i1 false)
  %i.lz = getelementptr i8, ptr %i.lc, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.mb = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.dl, label %.loopexit.i.i

bb.de:                                            ; preds = %.loopexit19.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.kz, i64 32, i1 false)
  %i.md = getelementptr i8, ptr %i.kz, i64 32
  %i.me = load ptr, ptr %i.md, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.mf = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.dm, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.cy, %bb.da, %bb.cz, %.lr.ph.i.i.jt2.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.df:                                            ; preds = %bb.cy
  %i.mh = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %wg_kdf.exit69.i.i, label %.loopexit89.i.i

bb.dg:                                            ; preds = %bb.cz
  %i.mj = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %wg_kdf.exit69.i.i.jt1, label %.loopexit89.i.i

bb.dh:                                            ; preds = %bb.da
  %i.ml = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %wg_kdf.exit69.i.i.jt2, label %.loopexit89.i.i

bb.di:                                            ; preds = %bb.db
  %i.mn = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %wg_kdf.exit69.i.jt1.i, label %.loopexit89.i.i

bb.dj:                                            ; preds = %bb.dc
  %i.mp = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %wg_kdf.exit69.i.jt2.i, label %.loopexit89.i.i

bb.dk:                                            ; preds = %.lr.ph.i.i.jt2.i
  %i.mr = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %wg_kdf.exit69.jt3.i.i, label %.loopexit89.i.i

bb.dl:                                            ; preds = %bb.dd
  %i.mt = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %wg_kdf.exit69.jt1.i.i, label %.loopexit89.i.i

bb.dm:                                            ; preds = %bb.de
  %i.mv = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %wg_kdf.exit69.jt2.i.i, label %.loopexit89.i.i

.loopexit89.i.i:                                  ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.df, %bb.dh, %bb.dg, %bb.dk
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit69.i.i:                                ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.mx = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.mx, label %wg_psk_iter_next.exit.thread.i.i, label %bb.dn

wg_kdf.exit69.i.i.jt1:                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.my = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.my, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cr

wg_kdf.exit69.i.i.jt2:                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.mz = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.mz, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cs

wg_kdf.exit69.i.jt1.i:                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.na = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.na, label %wg_psk_iter_next.exit.thread.i.i, label %bb.ct

wg_kdf.exit69.i.jt2.i:                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.nb = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.nb, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cu

wg_kdf.exit69.jt3.i.i:                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.nc = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.nc, label %wg_psk_iter_next.exit.thread.i.i, label %.lr.ph.i.jt3.i.i

wg_kdf.exit69.jt1.i.i:                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.nd = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.nd, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cv

wg_kdf.exit69.jt2.i.i:                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.ne = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.ne, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cw

bb.dn:                                            ; preds = %wg_kdf.exit69.i.i
  store <32 x i8> %.sroa.08.i.i.sroa.0.0.copyload, ptr %5, align 1
  store <32 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %4, align 16
  br label %bb.cq, !llvm.loop !10

wg_psk_iter_next.exit.thread.i.i:                 ; preds = %wg_kdf.exit69.jt2.i.i, %wg_kdf.exit69.jt1.i.i, %wg_kdf.exit69.i.jt2.i, %wg_kdf.exit69.i.jt1.i, %wg_kdf.exit69.i.i, %wg_kdf.exit69.i.i.jt2, %wg_kdf.exit69.i.i.jt1, %wg_kdf.exit69.jt3.i.i
  %i.nf = getelementptr i8, ptr %i.iu, i64 28     ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 4
  %i.nh = or i8 %i.ng, 2
  store i8 %i.nh, ptr %i.nf, align 4
  br label %bb.do

bb.do:                                            ; preds = %wg_psk_iter_next.exit.thread.i.i, %.lr.ph.i.jt3.i.i
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef %i.jq, i64 noundef 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.ni = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef range(i64 0, 33) 0, ptr noundef nonnull %4, i64 noundef 32)
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.nk = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.g, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 64)
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %wg_kdf.exit70.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit70.i.i:                                ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.nm = call i32 @gcry_cipher_open(ptr noundef nonnull %i.f, i32 noundef 316, i32 noundef 10, i32 noundef 0)
  %.not.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i.i, label %bb.ds, label %wg_create_cipher.exit.i.i

bb.ds:                                            ; preds = %wg_kdf.exit70.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.no = load ptr, ptr %i.f, align 8
  %i.np = call i32 @gcry_cipher_setkey(ptr noundef %i.no, ptr noundef nonnull %i.nn, i64 noundef 32)
  %.not2.i.i.i = icmp eq i32 %i.np, 0
  %.pre.i71.i.i = load ptr, ptr %i.f, align 8     ; 2 uses
  br i1 %.not2.i.i.i, label %wg_create_cipher.exit.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @gcry_cipher_close(ptr noundef %.pre.i71.i.i)
  br label %wg_create_cipher.exit.i.i

wg_create_cipher.exit.i.i:                        ; preds = %bb.dt, %bb.ds, %wg_kdf.exit70.i.i
  %.0.i.i.i = phi ptr [ null, %wg_kdf.exit70.i.i ], [ null, %bb.dt ], [ %.pre.i71.i.i, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  store ptr %.0.i.i.i, ptr %i.jc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.nq = call i32 @gcry_cipher_open(ptr noundef nonnull %i.e, i32 noundef 316, i32 noundef 10, i32 noundef 0)
  %.not.i72.i.i = icmp eq i32 %i.nq, 0
  br i1 %.not.i72.i.i, label %bb.du, label %wg_create_cipher.exit76.i.i

bb.du:                                            ; preds = %wg_create_cipher.exit.i.i
  %i.nr = load ptr, ptr %i.e, align 8
  %i.ns = call i32 @gcry_cipher_setkey(ptr noundef %i.nr, ptr noundef nonnull %9, i64 noundef 32)
  %.not2.i74.i.i = icmp eq i32 %i.ns, 0
  %.pre.i75.i.i = load ptr, ptr %i.e, align 8     ; 2 uses
  br i1 %.not2.i74.i.i, label %wg_create_cipher.exit76.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @gcry_cipher_close(ptr noundef %.pre.i75.i.i)
  br label %wg_create_cipher.exit76.i.i

wg_create_cipher.exit76.i.i:                      ; preds = %bb.dv, %bb.du, %wg_create_cipher.exit.i.i
  %.0.i73.i.i = phi ptr [ null, %wg_create_cipher.exit.i.i ], [ null, %bb.dv ], [ %.pre.i75.i.i, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  store ptr %.0.i73.i.i, ptr %i.je, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.dw

bb.dw:                                            ; preds = %wg_create_cipher.exit76.i.i, %.lr.ph.i.jt3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %wg_process_response.exit.i

bb.dx:                                            ; preds = %bb.bk
  %.not62.i = icmp eq ptr %.0, null
  br i1 %.not62.i, label %wg_process_response.exit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nt = load ptr, ptr %.0, align 8
  br label %wg_process_response.exit.i

wg_process_response.exit.i:                       ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.bz, %bb.by, %bb.bm, %bb.bl
  %.0.i44 = phi ptr [ null, %bb.bl ], [ null, %bb.dx ], [ %i.ik, %bb.bm ], [ %i.nt, %bb.dy ], [ %i.ik, %bb.by ], [ %i.ik, %bb.bz ], [ %i.ik, %bb.dw ] ; 12 uses
  call fastcc void @wg_dissect_pubkey(ptr noundef %i.ah, ptr noundef readonly %1, ptr noundef %0, i32 noundef 12, i1 noundef zeroext true)
  %i.nu = load i32, ptr @hf_wg_encrypted_empty, align 4
  %i.nv = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.nu, ptr noundef %0, i32 noundef 44, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.nw = icmp ne ptr %.0.i44, null               ; 3 uses
  br i1 %i.nw, label %bb.dz, label %proto_item_set_generated.exit.i45

bb.dz:                                            ; preds = %wg_process_response.exit.i
  %i.nx = getelementptr i8, ptr %.0.i44, i64 72
  %i.ny = load ptr, ptr %i.nx, align 8            ; 2 uses
  %.not63.i = icmp eq ptr %i.ny, null
  br i1 %.not63.i, label %proto_item_set_generated.exit.i45, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.nz = load i32, ptr @hf_wg_handshake_ok, align 4
  %i.oa = getelementptr i8, ptr %i.ny, i64 28
  %i.ob = load i8, ptr %i.oa, align 4
  %i.oc = lshr i8 %i.ob, 1
  %.lobit.i = and i8 %i.oc, 1
  %i.od = zext nneg i8 %.lobit.i to i64
  %i.oe = call ptr @proto_tree_add_boolean(ptr noundef %i.ah, i32 noundef %i.nz, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.od) ; 2 uses
  %.not.i65.i = icmp eq ptr %i.oe, null
  br i1 %.not.i65.i, label %proto_item_set_generated.exit.i45, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.of = getelementptr i8, ptr %i.oe, i64 40
  %i.og = load ptr, ptr %i.of, align 8            ; 2 uses
  %.not5.i.i47 = icmp eq ptr %i.og, null
  br i1 %.not5.i.i47, label %proto_item_set_generated.exit.i45, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oh = getelementptr i8, ptr %i.og, i64 28     ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = or i32 %i.oi, 2
  store i32 %i.oj, ptr %i.oh, align 4
  br label %proto_item_set_generated.exit.i45

proto_item_set_generated.exit.i45:                ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %wg_process_response.exit.i
  %i.ok = load i32, ptr @hf_wg_mac1, align 4
  %i.ol = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ok, ptr noundef %0, i32 noundef 60, i32 noundef 16, i32 noundef 0) ; 0 uses
  call fastcc void @wg_dissect_mac1_pubkey(ptr noundef %i.ah, ptr noundef readonly %1, ptr noundef %0, ptr noundef %i.hw)
  %i.om = load i32, ptr @hf_wg_mac2, align 4
  %i.on = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.om, ptr noundef %0, i32 noundef 76, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.oo = load ptr, ptr %i.am, align 8
  %i.op = getelementptr i8, ptr %i.oo, i64 53
  %i.oq = load i16, ptr %i.op, align 1
  %i.or = and i16 %i.oq, 8
  %i.os = icmp eq i16 %i.or, 0
  %or.cond.i = and i1 %i.nw, %i.os
  br i1 %or.cond.i, label %bb.ed, label %bb.ei

bb.ed:                                            ; preds = %proto_item_set_generated.exit.i45
  %i.ot = getelementptr i8, ptr %1, i64 20
  %i.ou = load i32, ptr %i.ot, align 4
  %i.ov = getelementptr i8, ptr %.0.i44, i64 8
  store i32 %i.ou, ptr %i.ov, align 8
  %i.ow = load ptr, ptr %i.am, align 8
  %i.ox = getelementptr i8, ptr %i.ow, i64 53
  %i.oy = load i16, ptr %i.ox, align 1
  %i.oz = and i16 %i.oy, 8
  %.not.i66.i = icmp eq i16 %i.oz, 0
  br i1 %.not.i66.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 1052, ptr noundef nonnull @.str.119) #21
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.pa = call ptr @wmem_file_scope()
  %i.pb = getelementptr i8, ptr %1, i64 208
  %i.pc = load i32, ptr %i.pb, align 8
  %i.pd = getelementptr i8, ptr %1, i64 212
  %i.pe = load i32, ptr %i.pd, align 4            ; 3 uses
  %i.pf = getelementptr i8, ptr %1, i64 216
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = icmp eq i32 %i.pe, 0
  %i.pi = getelementptr i8, ptr %.0.i44, i64 40   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.pi, i8 0, i64 24, i1 false)
  store i32 %i.pc, ptr %i.pi, align 8
  br i1 %i.ph, label %wg_session_update_address.exit.i46, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pj = sext i32 %i.pe to i64
  %i.pk = call ptr @wmem_memdup(ptr noundef %i.pa, ptr noundef %i.pg, i64 noundef %i.pj) #22 ; 2 uses
  %i.pl = getelementptr i8, ptr %.0.i44, i64 56
  store ptr %i.pk, ptr %i.pl, align 8
  %i.pm = getelementptr i8, ptr %.0.i44, i64 48
  store ptr %i.pk, ptr %i.pm, align 8
  %i.pn = getelementptr i8, ptr %.0.i44, i64 44
  store i32 %i.pe, ptr %i.pn, align 4
  br label %wg_session_update_address.exit.i46

wg_session_update_address.exit.i46:               ; preds = %bb.eg, %bb.ef
  %i.po = getelementptr i8, ptr %1, i64 288
  %i.pp = load i32, ptr %i.po, align 8
  %i.pq = trunc i32 %i.pp to i16
  %i.pr = getelementptr i8, ptr %.0.i44, i64 66
  store i16 %i.pq, ptr %i.pr, align 2
  %i.ps = load i32, ptr %i.l, align 4
  %i.pt = load ptr, ptr @sessions, align 8
  %i.pu = zext i32 %i.ps to i64
  %i.pv = inttoptr i64 %i.pu to ptr               ; 2 uses
  %i.pw = call ptr @wmem_map_lookup(ptr noundef %i.pt, ptr noundef %i.pv) ; 2 uses
  %.not.i67.i = icmp eq ptr %i.pw, null
  br i1 %.not.i67.i, label %bb.eh, label %.thread.i

bb.eh:                                            ; preds = %wg_session_update_address.exit.i46
  %i.px = call ptr @wmem_file_scope()
  %i.py = call ptr @wmem_list_new(ptr noundef %i.px) ; 2 uses
  %i.pz = load ptr, ptr @sessions, align 8
  %i.qa = call ptr @wmem_map_insert(ptr noundef %i.pz, ptr noundef %i.pv, ptr noundef %i.py) ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.eh, %wg_session_update_address.exit.i46
  %.0.i68.i = phi ptr [ %i.pw, %wg_session_update_address.exit.i46 ], [ %i.py, %bb.eh ]
  call void @wmem_list_append(ptr noundef %.0.i68.i, ptr noundef nonnull %.0.i44)
  store ptr %.0.i44, ptr %.0, align 8
  br label %bb.ej

bb.ei:                                            ; preds = %proto_item_set_generated.exit.i45
  br i1 %i.nw, label %bb.ej, label %wg_dissect_handshake_response.exit

bb.ej:                                            ; preds = %bb.ei, %.thread.i
  %i.qb = load i32, ptr @hf_wg_stream, align 4
  %i.qc = load i32, ptr %.0.i44, align 8
  %i.qd = call ptr @proto_tree_add_uint(ptr noundef %i.ah, i32 noundef %i.qb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.qc) ; 2 uses
  %.not.i69.i = icmp eq ptr %i.qd, null
  br i1 %.not.i69.i, label %proto_item_set_generated.exit71.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qe = getelementptr i8, ptr %i.qd, i64 40
  %i.qf = load ptr, ptr %i.qe, align 8            ; 2 uses
  %.not5.i70.i = icmp eq ptr %i.qf, null
  br i1 %.not5.i70.i, label %proto_item_set_generated.exit71.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qg = getelementptr i8, ptr %i.qf, i64 28     ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = or i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qg, align 4
  br label %proto_item_set_generated.exit71.i

proto_item_set_generated.exit71.i:                ; preds = %bb.el, %bb.ek, %bb.ej
  %i.qj = load i32, ptr @hf_wg_response_to, align 4
  %i.qk = getelementptr i8, ptr %.0.i44, i64 4
  %i.ql = load i32, ptr %i.qk, align 4
  %i.qm = call ptr @proto_tree_add_uint(ptr noundef %i.ah, i32 noundef %i.qj, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ql) ; 2 uses
  %.not.i72.i = icmp eq ptr %i.qm, null
  br i1 %.not.i72.i, label %wg_dissect_handshake_response.exit, label %bb.em

bb.em:                                            ; preds = %proto_item_set_generated.exit71.i
  %i.qn = getelementptr i8, ptr %i.qm, i64 40
  %i.qo = load ptr, ptr %i.qn, align 8            ; 2 uses
  %.not5.i73.i = icmp eq ptr %i.qo, null
  br i1 %.not5.i73.i, label %wg_dissect_handshake_response.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qp = getelementptr i8, ptr %i.qo, i64 28     ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4
  %i.qr = or i32 %i.qq, 2
  store i32 %i.qr, ptr %i.qp, align 4
  br label %wg_dissect_handshake_response.exit

wg_dissect_handshake_response.exit:               ; preds = %bb.ei, %proto_item_set_generated.exit71.i, %bb.em, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %wg_is_valid_message_length.exit.thread

bb.eo:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.qs = load i32, ptr @hf_wg_receiver, align 4
  %i.qt = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ah, i32 noundef %i.qs, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.qu = load ptr, ptr %i.ab, align 8
  %i.qv = load i32, ptr %i.d, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.qu, i32 noundef 25, ptr noundef nonnull @.str.120, i32 noundef %i.qv)
  %i.qw = load i32, ptr @hf_wg_nonce, align 4
  %i.qx = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.qw, ptr noundef %0, i32 noundef 8, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.qy = load i32, ptr @hf_wg_encrypted_cookie, align 4
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.qy, ptr noundef %0, i32 noundef 32, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ra = load ptr, ptr %i.am, align 8
  %i.rb = getelementptr i8, ptr %i.ra, i64 53
  %i.rc = load i16, ptr %i.rb, align 1
  %i.rd = and i16 %i.rc, 8
  %.not.i53 = icmp eq i16 %i.rd, 0
  br i1 %.not.i53, label %bb.ep, label %bb.eu
end_hunk_1
