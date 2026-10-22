Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-zbee-direct?download=true
inline.NumInlined: 28
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@uat_key_record_update_cb:bb.a
g_strdup_inline.exit28:                           ; preds = %bb.d
  %i.z = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.z, ptr noundef align 1 dereferenceable(24) @.str.113, i64 noundef 24, i1 noundef false) #13
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %g_strdup_inline.exit26, label %bb.f

g_strdup_inline.exit26:                           ; preds = %bb.e
  %i.ad = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.ad, ptr noundef align 1 dereferenceable(24) @.str.114, i64 noundef 24, i1 noundef false) #13
  br label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %g_strdup_inline.exit, label %bb.g

g_strdup_inline.exit:                             ; preds = %bb.f
  %i.ah = tail call noalias dereferenceable_or_null(19) ptr @g_malloc(i64 noundef 19) #12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(19) %i.ah, ptr noundef align 1 dereferenceable(19) @.str.115, i64 noundef 19, i1 noundef false) #13
  br label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ai = call fastcc zeroext i1 @zbd_parse_uat_hexline(ptr noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 8)
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef @.str.116, i32 noundef 8, i32 noundef 8)
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.ak = call fastcc zeroext i1 @zbd_parse_uat_hexline(ptr noundef %i.aa, ptr noundef nonnull %i.b, i32 noundef 8)
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef @.str.116, i32 noundef 8, i32 noundef 8)
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.am = call fastcc zeroext i1 @zbd_parse_uat_hexline(ptr noundef %i.ae, ptr noundef nonnull %i.c, i32 noundef 16)
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef @.str.116, i32 noundef 16, i32 noundef 16)
  br label %.sink.split

.sink.split:                                      ; preds = %g_strdup_inline.exit34, %g_strdup_inline.exit32, %g_strdup_inline.exit30, %g_strdup_inline.exit28, %g_strdup_inline.exit26, %g_strdup_inline.exit, %bb.h, %bb.j, %bb.l
  %.sink = phi ptr [ %i.an, %bb.l ], [ %i.al, %bb.j ], [ %i.aj, %bb.h ], [ %i.ah, %g_strdup_inline.exit ], [ %i.ad, %g_strdup_inline.exit26 ], [ %i.z, %g_strdup_inline.exit28 ], [ %i.n, %g_strdup_inline.exit30 ], [ %i.j, %g_strdup_inline.exit32 ], [ %i.f, %g_strdup_inline.exit34 ]
  store ptr %.sink, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ false, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_key_record_free_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_key_record_post_update() #0 {
bb.a:
  %0 = alloca %struct.zb_direct_key_record_t, align 8 ; 7 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %.01522 = load ptr, ptr @zbee_pc_keyring, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.01522, null
  br i1 %.not23, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01524 = phi ptr [ %.015, %bb.b ], [ %.01522, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.01524, align 8
  %i.e = load i32, ptr %i.d, align 8
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %.lr.ph29, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.01524, i64 8
  %.015 = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not = icmp eq ptr %.015, null
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !11

.preheader:                                       ; preds = %bb.b, %.lr.ph29, %bb.a
  %i.g = load ptr, ptr @uat_key_records, align 8  ; 2 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = load i32, ptr @num_uat_key_records, align 4 ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = select i1 %i.h, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph31, label %._crit_edge

.lr.ph31:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.c

.lr.ph29:                                         ; preds = %.lr.ph, %.lr.ph29
  %.128 = phi ptr [ %i.p, %.lr.ph29 ], [ %.01524, %.lr.ph ] ; 3 uses
  %i.o = getelementptr i8, ptr %.128, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr @zbee_pc_keyring, align 8
  %i.r = tail call ptr @g_slist_remove_link(ptr noundef %i.q, ptr noundef nonnull %.128)
  store ptr %i.r, ptr @zbee_pc_keyring, align 8
  tail call void @g_slist_free_full(ptr noundef nonnull %.128, ptr noundef @zbd_free_key_record)
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %.preheader, label %.lr.ph29, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  ret void

bb.c:                                             ; preds = %.lr.ph31, %bb.d
  %i.s = phi i32 [ %i.i, %.lr.ph31 ], [ %i.ao, %bb.d ]
  %i.t = phi ptr [ %i.g, %.lr.ph31 ], [ %i.ap, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.u = getelementptr [32 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call fastcc zeroext i1 @zbd_parse_uat_hexline(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 8)
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call fastcc zeroext i1 @zbd_parse_uat_hexline(ptr noundef %i.y, ptr noundef nonnull %i.b, i32 noundef 8)
  %i.aa = or i1 %i.w, %i.z
  %i.ab = getelementptr i8, ptr %i.u, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call fastcc zeroext i1 @zbd_parse_uat_hexline(ptr noundef %i.ac, ptr noundef nonnull %i.c, i32 noundef 16)
  %i.ae = or i1 %i.aa, %i.ad
  br i1 %i.ae, label %g_strdup_inline.exit, label %bb.d

g_strdup_inline.exit:                             ; preds = %bb.c
  store i32 0, ptr %0, align 8
  %i.af = getelementptr i8, ptr %i.u, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noalias ptr @g_strdup(ptr noundef %i.ag)
  store ptr %i.ah, ptr %i.l, align 8
  %i.ai = load <8 x i8>, ptr %i.a, align 8
  %i.aj = load <8 x i8>, ptr %i.b, align 8
  %i.ak = shufflevector <8 x i8> %i.ai, <8 x i8> %i.aj, <16 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  store <16 x i8> %i.ak, ptr %i.m, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 noundef 16, i1 noundef false) #13
  %i.al = load ptr, ptr @zbee_pc_keyring, align 8
  %i.am = call dereferenceable_or_null(48) ptr @g_memdup2(ptr noundef nonnull %0, i64 noundef 48) #14
  %i.an = call ptr @g_slist_append(ptr noundef %i.al, ptr noundef %i.am)
  store ptr %i.an, ptr @zbee_pc_keyring, align 8
  %.pre = load ptr, ptr @uat_key_records, align 8
  %.pre33 = load i32, ptr @num_uat_key_records, align 4
  br label %bb.d

bb.d:                                             ; preds = %g_strdup_inline.exit, %bb.c
  %i.ao = phi i32 [ %.pre33, %g_strdup_inline.exit ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %g_strdup_inline.exit ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = icmp ne ptr %i.ap, null
  %i.ar = zext i32 %i.ao to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  %i.at = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %i.at, label %bb.c, label %._crit_edge, !llvm.loop !13
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uat_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_zb_direct() local_unnamed_addr #0 {
bb.a:
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.75, ptr noundef @.str.76, i1 noundef zeroext false)
  %i.a = load i32, ptr @proto_zb_direct, align 4
  %i.b = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_dump_info, i32 noundef %i.a, ptr noundef null, ptr noundef @.str.76)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.75, ptr noundef %i.b)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.77, ptr noundef @.str.78, i1 noundef zeroext false)
  %i.c = load i32, ptr @proto_zb_direct, align 4
  %i.d = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_secur_c25519_aesmmo, i32 noundef %i.c, ptr noundef null, ptr noundef @.str.78)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.77, ptr noundef %i.d)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.79, ptr noundef @.str.80, i1 noundef zeroext false)
  %i.e = load i32, ptr @proto_zb_direct, align 4
  %i.f = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_secur_c25519_sha256, i32 noundef %i.e, ptr noundef null, ptr noundef @.str.80)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.79, ptr noundef %i.f)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.81, ptr noundef @.str.82, i1 noundef zeroext false)
  %i.g = load i32, ptr @proto_zb_direct, align 4
  %i.h = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_secur_p256, i32 noundef %i.g, ptr noundef null, ptr noundef @.str.82)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.81, ptr noundef %i.h)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.83, ptr noundef @.str.84, i1 noundef zeroext false)
  %i.i = load i32, ptr @proto_zb_direct, align 4
  %i.j = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_formation, i32 noundef %i.i, ptr noundef null, ptr noundef @.str.84)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.83, ptr noundef %i.j)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.85, ptr noundef @.str.86, i1 noundef zeroext false)
  %i.k = load i32, ptr @proto_zb_direct, align 4
  %i.l = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_join, i32 noundef %i.k, ptr noundef null, ptr noundef @.str.86)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.85, ptr noundef %i.l)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.87, ptr noundef @.str.88, i1 noundef zeroext false)
  %i.m = load i32, ptr @proto_zb_direct, align 4
  %i.n = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_permit_join, i32 noundef %i.m, ptr noundef null, ptr noundef @.str.88)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.87, ptr noundef %i.n)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.89, ptr noundef @.str.90, i1 noundef zeroext false)
  %i.o = load i32, ptr @proto_zb_direct, align 4
  %i.p = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_leave, i32 noundef %i.o, ptr noundef null, ptr noundef @.str.90)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.89, ptr noundef %i.p)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.91, ptr noundef @.str.92, i1 noundef zeroext false)
  %i.q = load i32, ptr @proto_zb_direct, align 4
  %i.r = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_status, i32 noundef %i.q, ptr noundef null, ptr noundef @.str.92)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.91, ptr noundef %i.r)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.93, ptr noundef @.str.94, i1 noundef zeroext false)
  %i.s = load i32, ptr @proto_zb_direct, align 4
  %i.t = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_manage_joiners, i32 noundef %i.s, ptr noundef null, ptr noundef @.str.94)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.93, ptr noundef %i.t)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.95, ptr noundef @.str.96, i1 noundef zeroext false)
  %i.u = load i32, ptr @proto_zb_direct, align 4
  %i.v = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_identify, i32 noundef %i.u, ptr noundef null, ptr noundef @.str.96)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.95, ptr noundef %i.v)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.97, ptr noundef @.str.98, i1 noundef zeroext false)
  %i.w = load i32, ptr @proto_zb_direct, align 4
  %i.x = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_finding_binding, i32 noundef %i.w, ptr noundef null, ptr noundef @.str.98)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.97, ptr noundef %i.x)
  tail call void @bluetooth_add_custom_uuid(ptr noundef nonnull @.str.99, ptr noundef @.str.100, i1 noundef zeroext false)
  %i.y = load i32, ptr @proto_zb_direct, align 4
  %i.z = tail call ptr @create_dissector_handle_with_name_and_description(ptr noundef @dissect_zb_direct_tunneling, i32 noundef %i.y, ptr noundef null, ptr noundef @.str.100)
  tail call void @dissector_add_string(ptr noundef @.str.101, ptr noundef nonnull @.str.99, ptr noundef %i.z)
  %i.aa = tail call ptr @find_dissector(ptr noundef @.str.102)
  store ptr %i.aa, ptr @zbee_nwk_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 1, 34) i32 @dissect_zb_direct_dump_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.zb_direct_key_record_t, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.55)
  %i.d = load i32, ptr @proto_zb_direct, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef -2147483648) ; 2 uses
  %i.f = load i32, ptr @ett_zb_direct, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 7 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef @.str.121, i32 noundef 0)
  %i.h = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.h, i32 noundef 25, ptr noundef @.str.14)
  %i.i = load i32, ptr @hf_zb_direct_char_info, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.l, i64 28       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.p = load i32, ptr @hf_zb_direct_info_type, align 4
  %i.q = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.g, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4
  switch i32 %i.r, label %bb.q [
    i32 2, label %bb.h
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %proto_item_set_generated.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.s = load ptr, ptr %i.b, align 8
  call void @col_append_str(ptr noundef %i.s, i32 noundef 25, ptr noundef @.str.117)
  %i.t = load i32, ptr @hf_zb_direct_info_key, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.w = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.v, i32 noundef 1, i64 noundef 16) ; 0 uses
  %i.x = load i32, ptr @hf_zb_direct_info_zdd_ieee, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.x, ptr noundef %0, i32 noundef 17, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aa = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.z, i32 noundef 17, i64 noundef 8) ; 0 uses
  %i.ab = load i32, ptr @hf_zb_direct_info_zvd_ieee, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ab, ptr noundef %0, i32 noundef 25, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ae = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.ad, i32 noundef 25, i64 noundef 8) ; 0 uses
  %i.af = load ptr, ptr @zbee_pc_keyring, align 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %1, i64 20
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.am = phi i32 [ %.pre, %._crit_edge ], [ %i.ak, %bb.e ] ; 2 uses
  store i32 %i.am, ptr %4, align 8
  %i.an = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef @.str.118, i32 noundef %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr @zbee_pc_keyring, align 8
  %i.aq = call dereferenceable_or_null(48) ptr @g_memdup2(ptr noundef nonnull %4, i64 noundef 48) #14
  %i.ar = call ptr @g_slist_prepend(ptr noundef %i.ap, ptr noundef %i.aq)
  store ptr %i.ar, ptr @zbee_pc_keyring, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.q

bb.h:                                             ; preds = %proto_item_set_generated.exit
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %.not = icmp eq i8 %i.as, 0
  %i.at = load i16, ptr @enc_h, align 16          ; 7 uses
  %i.au = and i16 %i.at, 1
  %i.av = icmp eq i16 %i.au, 0                    ; 2 uses
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not9.i = icmp eq i16 %i.at, 0
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 20
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  br i1 %.not9.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = zext i16 %i.at to i64                   ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @enc_h, i64 4), i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 8
  %.not10.i = icmp ule i32 %.pre.i, %i.az
  %i.ba = icmp ugt i16 %i.at, 4095
  %or.cond.i = or i1 %i.ba, %.not10.i
  br i1 %or.cond.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.pre-phi.i = phi i64 [ %i.aw, %bb.k ], [ 0, %bb.j ]
  %i.bb = or disjoint i16 %i.at, 1
  store i16 %i.bb, ptr @enc_h, align 16
  %i.bc = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @enc_h, i64 4), i64 %.pre-phi.i
  store i32 %.pre.i, ptr %i.bc, align 4
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  br i1 %i.av, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = zext i16 %i.at to i64
  %i.bg = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @enc_h, i64 4), i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4
  %.not.i32 = icmp ugt i32 %i.be, %i.bi
  br i1 %.not.i32, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bj = add i16 %i.at, 1
  store i16 %i.bj, ptr @enc_h, align 16
  store i32 %i.be, ptr %i.bg, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.i, %bb.k, %.thread.i
  %i.bk = load i32, ptr @hf_zb_direct_info_encryption, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bk, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bm = load ptr, ptr %i.b, align 8
  call void @col_append_str(ptr noundef %i.bm, i32 noundef 25, ptr noundef @.str.119)
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = load i32, ptr @hf_zb_direct_info_encryption, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bn, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bp = load ptr, ptr %i.b, align 8
  call void @col_append_str(ptr noundef %i.bp, i32 noundef 25, ptr noundef @.str.120)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.g, %proto_item_set_generated.exit
  %.0 = phi i32 [ 1, %proto_item_set_generated.exit ], [ 33, %bb.g ], [ 2, %bb.p ], [ 2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_zb_direct_secur_c25519_aesmmo(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_zb_direct_secur_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 9)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_zb_direct_secur_c25519_sha256(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_zb_direct_secur_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 10)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_zb_direct_secur_p256(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_zb_direct_secur_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 11)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_zb_direct_formation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %2, ptr %i.b, align 8
  %i.c = call fastcc i32 @dissect_zb_direct_common(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef @serv_comm_uuid, ptr noundef @char_form_uuid) ; 3 uses
end_hunk_0
