Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee802154?download=true
inline.NumInlined: 96
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uat_fld_chk_num_dec

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @key_uat_key_index_set_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = tail call zeroext i1 @ws_strtou32(ptr noundef %i.b, ptr noundef null, ptr noundef %i.c) ; 0 uses
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @key_uat_key_index_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1138, i32 noundef %i.b) ; 2 uses
  store ptr %i.c, ptr %1, align 8
  %i.d = tail call i64 @strlen(ptr noundef %i.c) #23
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_enum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @key_uat_hash_type_set_cb(ptr nofree noundef writeonly captures(none) initializes((12, 16)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 12         ; 2 uses
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef %i.b) #23
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.01520 = phi i32 [ %i.h, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.h = add i32 %.01520, 1                       ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr [16 x i8], ptr %3, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

.lr.ph:                                           ; preds = %.lr.ph21
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef %i.b) #23
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph._crit_edge, label %.lr.ph21, !llvm.loop !27

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi ptr [ %3, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %i.o = load i32, ptr %.lcssa, align 8
  store i32 %i.o, ptr %i.c, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph21, %bb.a, %.lr.ph._crit_edge
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @key_uat_hash_type_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %g_strdup_inline.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = load i32, ptr %3, align 8
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %.01722 = phi i32 [ %i.g, %bb.b ], [ 0, %.lr.ph ]
  %i.g = add i32 %.01722, 1                       ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b, !llvm.loop !28

bb.b:                                             ; preds = %.lr.ph23
  %i.l = load i32, ptr %i.i, align 8
  %i.m = icmp eq i32 %i.l, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph23, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi ptr [ %i.b, %.lr.ph ], [ %i.k, %bb.b ]
  %i.n = tail call noalias ptr @g_strdup(ptr noundef nonnull %.lcssa) ; 2 uses
  store ptr %i.n, ptr %1, align 8
  %i.o = tail call i64 @strlen(ptr noundef %i.n) #23
  %i.p = trunc i64 %i.o to i32
  br label %bb.c

g_strdup_inline.exit:                             ; preds = %.lr.ph23, %bb.a
  %i.q = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #24 ; 2 uses
  store i64 29400259773886286, ptr %i.q, align 1
  store ptr %i.q, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %g_strdup_inline.exit, %._crit_edge
  %storemerge = phi i32 [ 7, %g_strdup_inline.exit ], [ %i.p, %._crit_edge ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @ieee802154_da_value(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = load i32, ptr @proto_ieee802154, align 4
  %i.c = tail call ptr @p_get_proto_data(ptr noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ieee802154_da_prompt(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = load i32, ptr @proto_ieee802154, align 4
  %i.c = tail call ptr @p_get_proto_data(ptr noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i32
  %i.f = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 200, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1143, i32 noundef %i.e) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 200, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1144) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @decode_as_default_populate_list(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @decode_as_default_reset(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @decode_as_default_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @register_init_routine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @proto_init_ieee802154() #0 {
bb.a:
  %i.a = tail call ptr @g_hash_table_new(ptr noundef nonnull @ieee802154_short_addr_hash, ptr noundef nonnull @ieee802154_short_addr_equal)
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @ieee802154_map, i64 8), align 8
  %i.b = tail call ptr @g_hash_table_new(ptr noundef nonnull @ieee802154_long_addr_hash, ptr noundef nonnull @ieee802154_long_addr_equal)
  store ptr %i.b, ptr @ieee802154_map, align 8
  %i.c = load i32, ptr @num_static_addrs, align 4
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load ptr, ptr @static_addrs, align 8     ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.u, %.lr.ph ], [ %i.e, %bb.a ]
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i16
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = trunc i32 %i.n to i16
  %i.p = load ptr, ptr %i.i, align 8              ; 8 uses
  %0 = load i8, ptr %i.p, align 1
  %1 = zext i8 %0 to i64
  %2 = shl nuw i64 %1, 56
  %3 = getelementptr i8, ptr %i.p, i64 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 48
  %7 = or disjoint i64 %6, %2
  %8 = getelementptr i8, ptr %i.p, i64 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 40
  %12 = or disjoint i64 %7, %11
  %13 = getelementptr i8, ptr %i.p, i64 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 32
  %17 = or disjoint i64 %12, %16
  %18 = getelementptr i8, ptr %i.p, i64 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = or disjoint i64 %17, %21
  %23 = getelementptr i8, ptr %i.p, i64 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 16
  %27 = or disjoint i64 %22, %26
  %28 = getelementptr i8, ptr %i.p, i64 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 8
  %32 = or i64 %27, %31
  %33 = getelementptr i8, ptr %i.p, i64 7
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = or i64 %32, %35
  %i.q = tail call ptr @ieee802154_addr_update(ptr noundef nonnull @ieee802154_map, i16 noundef zeroext %i.l, i16 noundef zeroext %i.o, i64 noundef %36, ptr noundef nonnull @.str.1145, i32 noundef 0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr @num_static_addrs, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  %i.u = load ptr, ptr @static_addrs, align 8     ; 2 uses
  %i.v = icmp ne ptr %i.u, null
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_cleanup_routine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @proto_cleanup_ieee802154() #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ieee802154_map, i64 8), align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.a)
  %i.b = load ptr, ptr @ieee802154_map, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @address_type_dissector_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 7, 11) i32 @ieee802_15_4_short_address_to_str(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.val = load i16, ptr %i.b, align 1             ; 2 uses
  %i.c = icmp eq i16 %.val, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @g_strlcpy(ptr noundef %1, ptr noundef nonnull @.str.1146, i64 noundef %i.d) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  %i.g = getelementptr i8, ptr %1, i64 2
  store i8 120, ptr %i.f, align 1
  %i.h = tail call ptr @word_to_hex(ptr noundef %i.g, i16 noundef zeroext %.val)
  store i8 0, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.b ], [ 7, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @ieee802_15_4_short_address_str_len(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret i32 11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @ieee802_15_4_short_address_len() #9 {
bb.a:
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ieee802154() #0 {
bb.a:
  %.b = load i1, ptr @proto_reg_handoff_ieee802154.prefs_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @proto_ieee802154, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.782, i32 noundef %i.a)
  store ptr %i.b, ptr @zigbee_ie_handle, align 8
  %i.c = tail call ptr @find_dissector(ptr noundef nonnull @.str.783)
  store ptr %i.c, ptr @zigbee_nwk_handle, align 8
  %i.d = load i32, ptr @proto_ieee802154, align 4
  %i.e = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.784, i32 noundef %i.d)
  store ptr %i.e, ptr @thread_ie_handle, align 8
  %i.f = load ptr, ptr @ieee802154_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.785, i32 noundef 104, ptr noundef %i.f)
  %i.g = load ptr, ptr @ieee802154_nonask_phy_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.785, i32 noundef 113, ptr noundef %i.g)
  %i.h = load ptr, ptr @ieee802154_nofcs_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.785, i32 noundef 127, ptr noundef %i.h)
  %i.i = load ptr, ptr @ieee802154_tap_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.785, i32 noundef 206, ptr noundef %i.i)
  %i.j = load ptr, ptr @ieee802154_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.786, i32 noundef 246, ptr noundef %i.j)
  %i.k = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_hie_time_correction, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.125, i32 noundef 30, ptr noundef %i.k)
  %i.l = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_hie_csl, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.125, i32 noundef 26, ptr noundef %i.l)
  %i.m = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_hie_rendezvous_time, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.125, i32 noundef 29, ptr noundef %i.m)
  %i.n = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_hie_global_time, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.125, i32 noundef 41, ptr noundef %i.n)
  %i.o = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_hie_vendor_specific, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef %i.o)
  %i.p = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_pie_mlme, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.178, i32 noundef 1, ptr noundef %i.p)
  %i.q = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_pie_vendor, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.178, i32 noundef 2, ptr noundef %i.q)
  %i.r = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_mpx_ie, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.178, i32 noundef 3, ptr noundef %i.r)
  %i.s = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ietf_ie, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.178, i32 noundef 5, ptr noundef %i.s)
  %i.t = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_802154_channel_hopping, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.776, i32 noundef 9, ptr noundef %i.t)
  %i.u = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_802154_tsch_time_sync, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.776, i32 noundef 26, ptr noundef %i.u)
  %i.v = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_802154_tsch_slotframe_link, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.776, i32 noundef 27, ptr noundef %i.v)
  %i.w = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_802154_tsch_timeslot, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.776, i32 noundef 28, ptr noundef %i.w)
  %i.x = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_802154_eb_filter, i32 noundef -1)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.776, i32 noundef 30, ptr noundef %i.x)
  %i.y = tail call ptr @find_dissector_table(ptr noundef nonnull @.str.787)
  store ptr %i.y, ptr @ethertype_table, align 8
  %i.z = tail call ptr @find_dissector(ptr noundef nonnull @.str.788)
  store ptr %i.z, ptr @eapol_handle, align 8
  %i.aa = tail call ptr @find_dissector(ptr noundef nonnull @.str.789)
  store ptr %i.aa, ptr @lowpan_handle, align 8
  %i.ab = tail call ptr @find_dissector(ptr noundef nonnull @.str.790)
  store ptr %i.ab, ptr @wisun_sec_handle, align 8
  store i1 true, ptr @proto_reg_handoff_ieee802154.prefs_initialized, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = load i32, ptr @proto_reg_handoff_ieee802154.old_ieee802154_ethertype, align 4
  %i.ad = load ptr, ptr @ieee802154_handle, align 8
  tail call void @dissector_delete_uint(ptr noundef nonnull @.str.787, i32 noundef %i.ac, ptr noundef %i.ad)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = load i32, ptr @ieee802154_ethertype, align 4 ; 2 uses
  store i32 %i.ae, ptr @proto_reg_handoff_ieee802154.old_ieee802154_ethertype, align 4
  %i.af = load ptr, ptr @ieee802154_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.787, i32 noundef %i.ae, ptr noundef %i.af)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uint_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_obsolete_preference(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @uat_new(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @addr_uat_copy_cb(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 20)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @g_memdup2(ptr noundef %i.a, i64 noundef %i.d) #20
  store ptr %i.e, ptr %0, align 8
  %i.f = load i32, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 12
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 16
  store i32 %i.l, ptr %i.m, align 8
end_hunk_0
