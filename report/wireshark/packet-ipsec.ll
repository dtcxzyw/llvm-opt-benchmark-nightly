Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipsec?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dissect_ipcomp:bb.a
  %i.ap = load ptr, ptr @ip_dissector_table, align 8
  %i.aq = call ptr @dissector_get_uint_handle(ptr noundef %i.ap, i32 noundef %i.k) ; 2 uses
  %.not45 = icmp eq ptr %i.aq, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.k, ptr %i.an, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr @data_handle, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.aq, %bb.d ], [ %i.ar, %bb.e ] ; 2 uses
  %i.as = load i32, ptr @exported_pdu_tap, align 4
  %i.at = call zeroext i1 @have_tap_listener(i32 noundef %i.as)
  br i1 %i.at, label %bb.g, label %export_ipsec_pdu.exit46

bb.g:                                             ; preds = %bb.f
  %i.au = call ptr @dissector_handle_get_dissector_name(ptr noundef %.0)
  %i.av = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef %i.au, i16 noundef zeroext 12) ; 4 uses
  %i.aw = call i32 @tvb_captured_length(ptr noundef nonnull %i.al)
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = call i32 @tvb_reported_length(ptr noundef nonnull %i.al)
  %i.az = getelementptr i8, ptr %i.av, i64 20
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.av, i64 24
  store ptr %i.al, ptr %i.ba, align 8
  %i.bb = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.bb, ptr noundef %1, ptr noundef %i.av)
  br label %export_ipsec_pdu.exit46

export_ipsec_pdu.exit46:                          ; preds = %bb.f, %bb.g
  %i.bc = call i32 @call_dissector(ptr noundef %.0, ptr noundef nonnull %i.al, ptr noundef %1, ptr noundef %2) ; 0 uses
  store i32 %i.ao, ptr %i.an, align 8
  br label %bb.h

bb.h:                                             ; preds = %export_ipsec_pdu.exit46, %export_ipsec_pdu.exit
  %i.bd = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.bd
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_capture_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @capture_ah(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp ugt i32 %1, -3
  %i.b = add i32 %1, 2
  %.not = icmp ugt i32 %i.b, %2
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %1, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 2
  %i.i = add i32 %1, 4
  %i.j = add i32 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ule i32 %i.j, %1
  %.not26 = icmp ugt i32 %i.j, %2
  %or.cond27 = or i1 %i.k, %.not26
  br i1 %or.cond27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = tail call zeroext i1 @try_capture_dissector(ptr noundef nonnull @.str.100, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.j, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.p, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @register_decode_as(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @secrets_register_type(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @esp_secrets_block_callback(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr @esp_uat, align 8
  %i.c = call zeroext i1 @uat_load_str(ptr noundef %i.b, ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @secrets_register_inject_type(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @esp_export_secret_count() #0 {
bb.a:
  %i.a = load ptr, ptr @esp_used_sa_map, align 8
  %i.b = tail call i32 @wmem_map_size(ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @esp_export_dsb(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp_used_sa_map, align 8
  %i.b = tail call i32 @wmem_map_size(ptr noundef %i.a)
  %.not = icmp ne i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @wmem_strbuf_new(ptr noundef null, ptr noundef nonnull @.str.138) ; 2 uses
  %i.d = load ptr, ptr @esp_used_sa_map, align 8
  tail call void @wmem_map_foreach(ptr noundef %i.d, ptr noundef nonnull @esp_print_record, ptr noundef %i.c)
  %i.e = tail call ptr @wtap_block_create(i32 noundef 4) ; 2 uses
  %i.f = tail call ptr @wtap_block_get_mandatory_data(ptr noundef %i.e) ; 3 uses
  store i32 1163087955, ptr %i.f, align 8
  %i.g = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.c) ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = tail call i64 @strlen(ptr noundef %i.g) #21
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %i.f, i64 4
  store i32 %i.j, ptr %i.k, align 4
  tail call void @wtap_file_add_decryption_secrets(ptr noundef %0, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ipsec() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_dissector(ptr noundef nonnull @.str.130)
  store ptr %i.a, ptr @data_handle, align 8
  %i.b = tail call ptr @find_dissector(ptr noundef nonnull @.str.99)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.100, i32 noundef 51, ptr noundef %i.b)
  %i.c = tail call ptr @find_dissector(ptr noundef nonnull @.str.105)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.100, i32 noundef 50, ptr noundef %i.c)
  %i.d = load ptr, ptr @ipcomp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.100, i32 noundef 108, ptr noundef %i.d)
  %i.e = tail call ptr @find_dissector_table(ptr noundef nonnull @.str.100)
  store ptr %i.e, ptr @ip_dissector_table, align 8
  %i.f = load ptr, ptr @ah_cap_handle, align 8
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.100, i32 noundef 51, ptr noundef %i.f)
  %i.g = tail call i32 @find_tap_id(ptr noundef nonnull @.str.131)
  store i32 %i.g, ptr @exported_pdu_tap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @find_tap_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @compute_ascii_key(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.b = trunc i64 %i.a to i32                    ; 7 uses
  %i.c = icmp ugt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1
  %i.e = icmp eq i8 %i.d, 48
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = and i32 %i.b, 1
  %.not = icmp eq i32 %i.h, 0
  %i.i = add i32 %i.b, -2
  %i.j = lshr i32 %i.i, 1                         ; 4 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %i.j, 2
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noalias ptr @g_malloc(i64 noundef %i.l) #18 ; 4 uses
  store ptr %i.m, ptr %0, align 8
  %i.n = getelementptr i8, ptr %1, i64 2          ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.o) #24 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @g_free(ptr noundef %i.m)
  store ptr null, ptr %0, align 8
  %i.r = load i8, ptr %i.n, align 1
  %i.s = sext i8 %i.r to i32
  %i.t = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull %1, i32 noundef %i.s)
  store ptr %i.t, ptr %2, align 8
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.u = add nuw nsw i32 %i.j, 1
  %i.v = trunc i32 %i.p to i8
  store i8 %i.v, ptr %i.m, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.w = add nuw nsw i32 %i.j, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = tail call noalias ptr @g_malloc(i64 noundef %i.x) #18 ; 2 uses
  store ptr %i.y, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.m, %bb.g ], [ %i.y, %bb.h ]
  %.069 = phi i32 [ %i.u, %bb.g ], [ %i.j, %bb.h ]
  %.067 = phi i32 [ 3, %bb.g ], [ 2, %bb.h ]      ; 3 uses
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.h ]        ; 2 uses
  %i.aa = add i32 %i.b, -1
  %i.ab = icmp ult i32 %.067, %i.aa
  %3 = zext nneg i32 %.0 to i64                   ; 2 uses
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ac = zext nneg i32 %.067 to i64
  %4 = add i32 %i.b, -2
  %5 = sub i32 %4, %.067
  %6 = lshr i32 %5, 1
  %7 = add nuw i32 %.0, %6
  %8 = add nuw i32 %7, 1
  %i.ad = zext i32 %8 to i64                      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv.a = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next.a, %bb.m ] ; 3 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 %indvars.iv.a
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.af) #24 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  %i.ai = getelementptr i8, ptr %1, i64 %indvars.iv.a ; 3 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.aj)
  store ptr null, ptr %0, align 8
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull %1, i32 noundef %i.al)
  store ptr %i.am, ptr %2, align 8
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph
  %i.an = getelementptr i8, ptr %i.ai, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.ao) #24 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %i.ai, i64 1
  %i.as = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.as)
  store ptr null, ptr %0, align 8
  %i.at = load i8, ptr %i.ar, align 1
  %i.au = sext i8 %i.at to i32
  %i.av = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull %1, i32 noundef %i.au)
  store ptr %i.av, ptr %2, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 2
  %i.aw = shl i32 %i.ag, 4
  %i.ax = or i32 %i.ap, %i.aw
  %i.ay = trunc i32 %i.ax to i8
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 %indvars.iv
  store i8 %i.ay, ptr %i.ba, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.ad, %._crit_edge.loopexit ], [ %3, %bb.i ]
  %9 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.z, %bb.i ]
  %i.bb = getelementptr i8, ptr %9, i64 %.pre-phi
  store i8 0, ptr %i.bb, align 1
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.bc = icmp eq i32 %i.b, 2
  br i1 %i.bc, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = load i8, ptr %1, align 1
  %i.be = icmp eq i8 %i.bd, 48
  br i1 %i.be, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %1, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  switch i8 %i.bg, label %.thread [
    i8 120, label %bb.q
    i8 88, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  store ptr null, ptr %0, align 8
  br label %bb.r

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p, %bb.c, %bb.b
  %i.bh = tail call noalias ptr @g_strdup(ptr noundef nonnull %1)
  store ptr %i.bh, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %.thread, %._crit_edge, %bb.q, %bb.l, %bb.j, %bb.f
  %.071 = phi i32 [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.q ], [ %.069, %._crit_edge ], [ %i.b, %.thread ]
  ret i32 %.071
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_ascii_xdigit_value(i8 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_hexstrtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @address_to_str(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare ptr @gcry_md_algo_name(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_get_algo_dlen(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @bytes_to_str_maxlen(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i64 @gcry_cipher_get_algo_keylen(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @tvb_ensure_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare ptr @gcry_cipher_algo_name(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setctr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setiv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_authenticate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i64 @gcry_cipher_get_algo_blklen(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_gettag(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_uint_handle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @ipprotostr(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
end_hunk_0
