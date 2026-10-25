Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-wsp?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0_@dissect_wsp_fromwap_cl
define internal i32 @dissect_wsp_fromwap_cl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.b, i32 noundef 25)
  %i.c = load ptr, ptr @wtp_fromudp_handle, align 8
  tail call fastcc void @dissect_wsp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.c, i1 noundef zeroext true)
  %i.d = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_wsp_fromudp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.546)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load ptr, ptr @wsp_fromudp_handle, align 8
  tail call fastcc void @dissect_wsp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.d, i1 noundef zeroext true)
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid
declare void @register_external_value_string_ext(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_wsp() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @proto_wsp, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.554, i32 noundef %i.a)
  store ptr %i.b, ptr @wtp_fromudp_handle, align 8
  %i.c = load i32, ptr @proto_wsp, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.555, i32 noundef %i.c)
  store ptr %i.d, ptr @media_handle, align 8
  %i.e = load i32, ptr @proto_wsp, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.556, i32 noundef %i.e)
  store ptr %i.f, ptr @coap_handle, align 8
  %i.g = load i32, ptr @proto_wsp, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.557, i32 noundef %i.g)
  store ptr %i.h, ptr @wbxml_uaprof_handle, align 8
  %i.i = load ptr, ptr @wsp_fromudp_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef @.str.558, ptr noundef @.str.559, ptr noundef %i.i)
  %i.j = load ptr, ptr @wsp_fromudp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.560, i32 noundef 9200, ptr noundef %i.j)
  %i.k = load ptr, ptr @wsp_fromudp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.560, i32 noundef 2948, ptr noundef %i.k)
  %i.l = load ptr, ptr @wsp_fromudp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.561, i32 noundef 9200, ptr noundef %i.l)
  %i.m = load ptr, ptr @wsp_fromudp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.561, i32 noundef 2948, ptr noundef %i.m)
  %i.n = tail call ptr @find_dissector_table(ptr noundef @.str.562)
  store ptr %i.n, ptr @media_type_table, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_sir() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.607, ptr noundef @.str.608, ptr noundef @.str.609) ; 2 uses
  store i32 %i.a, ptr @proto_sir, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_sir.hf, i32 noundef 14)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_sir.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_sir, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef @.str.609, ptr noundef @dissect_sir, i32 noundef %i.b)
  store ptr %i.c, ptr @sir_handle, align 8
  tail call void @register_stat_tap_table_ui(ptr noundef @proto_register_sir.wsp_stat_table)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wsp_stat_init(ptr noundef %0) #1 {
bb.a:
  %1 = alloca [2 x %struct._stat_tap_table_item_type], align 16 ; 9 uses
  %2 = alloca [2 x %struct._stat_tap_table_item_type], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call ptr @stat_tap_find_table(ptr noundef %0, ptr noundef @.str.1302) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not48 = icmp eq ptr %i.c, null
  br i1 %.not48, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @stat_tap_init_table(ptr noundef @.str.1302, i32 noundef 2, i32 noundef 0, ptr noundef null) ; 3 uses
  tail call void @stat_tap_add_table(ptr noundef %0, ptr noundef %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %1, i8 noundef 0, i64 noundef 48, i1 noundef false) #6
  store i32 3, ptr %1, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %g_strdup_inline.exit60

g_strdup_inline.exit60:                           ; preds = %bb.d, %g_strdup_inline.exit60
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %g_strdup_inline.exit60 ] ; 3 uses
  %i.h = getelementptr [16 x i8], ptr @wsp_vals_pdu_type, i64 %indvars.iv ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noalias ptr @g_strdup(ptr noundef nonnull %i.j)
  store ptr %i.k, ptr %i.f, align 8
  %i.l = load i32, ptr %i.h, align 16
  store i32 %i.l, ptr %i.g, align 16
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  call void @stat_tap_init_table_row(ptr noundef %i.d, i32 noundef %i.m, i32 noundef 2, ptr noundef nonnull %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not47 = icmp eq i64 %indvars.iv.next, 49
  br i1 %.not47, label %g_strdup_inline.exit55, label %g_strdup_inline.exit60, !llvm.loop !10

g_strdup_inline.exit55:                           ; preds = %g_strdup_inline.exit60
  %i.n = call noalias dereferenceable_or_null(17) ptr @g_malloc(i64 noundef 17) #8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(17) %i.n, ptr noundef nonnull align 1 dereferenceable(17) @.str.1304, i64 noundef 17, i1 noundef false) #6
  store ptr %i.n, ptr %i.f, align 8
  store i32 0, ptr %i.g, align 16
  call void @stat_tap_init_table_row(ptr noundef %i.d, i32 noundef 49, i32 noundef 2, ptr noundef nonnull %1)
  store i1 true, ptr @unknown_pt_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %g_strdup_inline.exit55
  %i.o = call ptr @stat_tap_find_table(ptr noundef %0, ptr noundef @.str.1303) ; 2 uses
  %.not49 = icmp eq ptr %i.o, null
  br i1 %.not49, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.q(ptr noundef nonnull %i.o)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = call ptr @stat_tap_init_table(ptr noundef @.str.1303, i32 noundef 2, i32 noundef 0, ptr noundef null) ; 3 uses
  call void @stat_tap_add_table(ptr noundef %0, ptr noundef %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, i8 noundef 0, i64 noundef 48, i1 noundef false) #6
  store i32 3, ptr %2, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %g_strdup_inline.exit53

g_strdup_inline.exit53:                           ; preds = %bb.h, %g_strdup_inline.exit53
  %indvars.iv65 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next66, %g_strdup_inline.exit53 ] ; 3 uses
  %i.v = getelementptr [16 x i8], ptr @wsp_vals_status, i64 %indvars.iv65 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noalias ptr @g_strdup(ptr noundef nonnull %i.x)
  store ptr %i.y, ptr %i.t, align 8
  %i.z = load i32, ptr %i.v, align 16
  store i32 %i.z, ptr %i.u, align 16
  %i.aa = trunc nuw nsw i64 %indvars.iv65 to i32
  call void @stat_tap_init_table_row(ptr noundef %i.r, i32 noundef %i.aa, i32 noundef 2, ptr noundef nonnull %2)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %.not50 = icmp eq i64 %indvars.iv.next66, 40
  br i1 %.not50, label %g_strdup_inline.exit, label %g_strdup_inline.exit53, !llvm.loop !11

g_strdup_inline.exit:                             ; preds = %g_strdup_inline.exit53
  %i.ab = call noalias dereferenceable_or_null(20) ptr @g_malloc(i64 noundef 20) #8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.ab, ptr noundef nonnull align 1 dereferenceable(20) @.str.1305, i64 noundef 20, i1 noundef false) #6
  store ptr %i.ab, ptr %i.t, align 8
  store i32 0, ptr %i.u, align 16
  call void @stat_tap_init_table_row(ptr noundef %i.r, i32 noundef 40, i32 noundef 2, ptr noundef nonnull %2)
  store i1 true, ptr @unknown_sc_idx, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %g_strdup_inline.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef range(i32 0, 2) i32 @wsp_stat_packet(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr i8, ptr %i.e, i64 20       ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %3, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03337 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.c ] ; 3 uses
  %i.k = tail call ptr @stat_tap_get_field_data(ptr noundef %i.e, i32 noundef %.03337, i32 noundef 0)
  %i.l = load i8, ptr %i.j, align 4
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr i8, ptr %i.k, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, %i.m
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw i32 %.03337, 1                   ; 2 uses
  %i.r = load i32, ptr %i.h, align 4
  %i.s = icmp ult i32 %i.q, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge.thread, !llvm.loop !12

._crit_edge.thread:                               ; preds = %bb.c, %bb.a
  %.b = load i1, ptr @unknown_pt_idx, align 4
  %5 = select i1 %.b, i32 49, i32 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.thread
  %.lcssa3757 = phi i32 [ 0, %._crit_edge.thread ], [ 1, %bb.b ]
  %6 = phi i32 [ %5, %._crit_edge.thread ], [ %.03337, %bb.b ] ; 2 uses
  %i.t = tail call ptr @stat_tap_get_field_data(ptr noundef %i.e, i32 noundef %6, i32 noundef 1) ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8        ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  tail call void @stat_tap_set_field_data(ptr noundef %i.e, i32 noundef %6, i32 noundef 1, ptr noundef %i.t)
  %i.x = load i32, ptr %3, align 4
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %i.g, i64 20       ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %.not51 = icmp eq i32 %i.z, 0
  br i1 %.not51, label %._crit_edge45.thread, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader, %bb.d
  %.23542 = phi i32 [ %i.af, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.aa = tail call ptr @stat_tap_get_field_data(ptr noundef %i.g, i32 noundef %.23542, i32 noundef 0)
  %i.ab = load i32, ptr %3, align 4
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %._crit_edge44, label %bb.d

bb.d:                                             ; preds = %.lr.ph43
  %i.af = add nuw i32 %.23542, 1                  ; 2 uses
  %i.ag = load i32, ptr %i.y, align 4
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph43, label %._crit_edge45.thread, !llvm.loop !13

._crit_edge45.thread:                             ; preds = %bb.d, %.preheader
  %.b63 = load i1, ptr @unknown_sc_idx, align 4
  %7 = select i1 %.b63, i32 40, i32 0
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %.lr.ph43, %._crit_edge45.thread
  %.lcssa60 = phi i32 [ 0, %._crit_edge45.thread ], [ 1, %.lr.ph43 ]
  %8 = phi i32 [ %7, %._crit_edge45.thread ], [ %.23542, %.lr.ph43 ] ; 2 uses
  %i.ai = tail call ptr @stat_tap_get_field_data(ptr noundef %i.g, i32 noundef %8, i32 noundef 1) ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  tail call void @stat_tap_set_field_data(ptr noundef %i.g, i32 noundef %8, i32 noundef 1, ptr noundef %i.ai)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge44, %._crit_edge
  %.2 = phi i32 [ %.lcssa60, %._crit_edge44 ], [ %.lcssa3757, %._crit_edge ]
  %9 = and i32 %.2, 1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wsp_stat_reset(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.c = tail call ptr @stat_tap_get_field_data(ptr noundef %0, i32 noundef %.08, i32 noundef 1) ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i32 0, ptr %i.d, align 8
  tail call void @stat_tap_set_field_data(ptr noundef %0, i32 noundef %.08, i32 noundef 1, ptr noundef %i.c)
  %i.e = add nuw i32 %.08, 1                      ; 2 uses
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wsp_stat_free_table_item(ptr nofree readnone captures(none) %0, i32 %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #1 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_sir(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_append_str(ptr noundef %i.c, i32 noundef 25, ptr noundef @.str.1310)
  %i.d = load i32, ptr @hf_sir_section, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_sir, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 12 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.i = load i32, ptr @hf_sir_version, align 4
  %i.j = zext i8 %i.h to i32
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.j) ; 0 uses
  %i.l = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar) ; 3 uses
  %i.m = load i32, ptr @hf_sir_app_id_list_len, align 4
  %i.n = load i32, ptr %i.a, align 4
  %i.o = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.m, ptr noundef %0, i32 noundef 1, i32 noundef %i.n, i32 noundef %i.l) ; 0 uses
  %i.p = load i32, ptr %i.a, align 4
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.l)
  %i.s = load i32, ptr @hf_sir_app_id_list, align 4
  call fastcc void @add_headers(ptr noundef %i.g, ptr noundef %i.r, i32 noundef %i.s, ptr noundef %1)
  %i.t = add i32 %i.q, %i.l                       ; 3 uses
  %i.u = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar) ; 3 uses
  %i.v = load i32, ptr @hf_sir_wsp_contact_points_len, align 4
  %i.w = load i32, ptr %i.a, align 4
  %i.x = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.u) ; 0 uses
  %i.y = load i32, ptr %i.a, align 4
  %i.z = add i32 %i.y, %i.t                       ; 3 uses
  %i.aa = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.z, i32 noundef %i.u)
  %i.ab = load i32, ptr @hf_sir_wsp_contact_points, align 4
  call fastcc void @add_addresses(ptr noundef %i.g, ptr noundef %i.aa, i32 noundef %i.ab)
  %i.ac = icmp eq i8 %i.h, 0
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = add i32 %i.z, %i.u                      ; 3 uses
  %i.ae = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar) ; 3 uses
  %i.af = load i32, ptr @hf_sir_contact_points_len, align 4
  %i.ag = load i32, ptr %i.a, align 4
  %i.ah = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.ae) ; 0 uses
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = add i32 %i.ai, %i.ad                    ; 2 uses
  %i.ak = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ae)
  %i.al = load i32, ptr @hf_sir_contact_points, align 4
  call fastcc void @add_addresses(ptr noundef %i.g, ptr noundef %i.ak, i32 noundef %i.al)
  %i.am = add i32 %i.aj, %i.ae                    ; 3 uses
  %i.an = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar) ; 3 uses
  %i.ao = load i32, ptr @hf_sir_protocol_options_len, align 4
  %i.ap = load i32, ptr %i.a, align 4
  %i.aq = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.an) ; 0 uses
  %i.ar = load i32, ptr %i.a, align 4
  %i.as = add i32 %i.ar, %i.am                    ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0107 = phi i32 [ %i.az, %.lr.ph ], [ 0, %bb.b ]
  %.0103106 = phi i32 [ %i.ay, %.lr.ph ], [ %i.as, %bb.b ] ; 3 uses
  %i.at = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef %.0103106, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar)
  %i.au = load i32, ptr @hf_sir_protocol_options, align 4
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.au, ptr noundef %0, i32 noundef %.0103106, i32 noundef %i.av, i32 noundef %i.at) ; 0 uses
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = add i32 %i.ax, %.0103106                ; 2 uses
  %i.az = add nuw i32 %.0107, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0103.lcssa = phi i32 [ %i.as, %bb.b ], [ %i.ay, %.lr.ph ] ; 3 uses
  %i.ba = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef %.0103.lcssa, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar) ; 3 uses
  %i.bb = load i32, ptr @hf_sir_prov_url_len, align 4
  %i.bc = load i32, ptr %i.a, align 4
  %i.bd = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.bb, ptr noundef %0, i32 noundef %.0103.lcssa, i32 noundef %i.bc, i32 noundef %i.ba) ; 0 uses
  %i.be = load i32, ptr %i.a, align 4
  %i.bf = add i32 %i.be, %.0103.lcssa             ; 2 uses
  %i.bg = load i32, ptr @hf_sir_prov_url, align 4
  %i.bh = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.ba, i32 noundef 0) ; 0 uses
  %i.bi = add i32 %i.bf, %i.ba                    ; 3 uses
  %i.bj = call i32 @tvb_get_uintvar(ptr noundef %0, i32 noundef %i.bi, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef @ei_wsp_oversized_uintvar) ; 3 uses
  %i.bk = load i32, ptr @hf_sir_cpi_tag_len, align 4
  %i.bl = load i32, ptr %i.a, align 4
  %i.bm = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bl, i32 noundef %i.bj) ; 0 uses
  %.not113 = icmp eq i32 %i.bj, 0
  br i1 %.not113, label %._crit_edge112, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %._crit_edge
  %i.bn = load i32, ptr %i.a, align 4
  %i.bo = add i32 %i.bn, %i.bi
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %.1109 = phi i32 [ %i.bs, %.lr.ph111 ], [ 0, %.lr.ph111.preheader ]
  %.1104108 = phi i32 [ %i.br, %.lr.ph111 ], [ %i.bo, %.lr.ph111.preheader ] ; 2 uses
  %i.bp = load i32, ptr @hf_sir_cpi_tag, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bp, ptr noundef %0, i32 noundef %.1104108, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.br = add i32 %.1104108, 4
  %i.bs = add nuw i32 %.1109, 1                   ; 2 uses
  %exitcond114.not = icmp eq i32 %i.bs, %i.bj
  br i1 %exitcond114.not, label %._crit_edge112, label %.lr.ph111, !llvm.loop !16

._crit_edge112:                                   ; preds = %.lr.ph111, %._crit_edge
  %i.bt = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge112
  %.0105 = phi i32 [ %i.bt, %._crit_edge112 ], [ %i.z, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0105
}

; Function Attrs: null_pointer_is_valid
declare void @register_stat_tap_table_ui(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_sir() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @sir_handle, align 8
  tail call void @dissector_add_string(ptr noundef @.str.562, ptr noundef @.str.610, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @parameter_text(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i32, ptr %3, align 4
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.b)
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 4
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.e)
end_hunk_0
