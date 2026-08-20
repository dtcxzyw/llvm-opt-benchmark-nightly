inline.NumInlined: 100
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@set_rlc_lte_drb_pdcp_seqnum_length:bb.a
  call void @wmem_tree_insert32_array(ptr noundef %i.y, ptr noundef nonnull %4, ptr noundef %i.v)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ]
  %i.z = getelementptr i8, ptr %.1, i64 5
  store i8 %3, ptr %i.z, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_array_le(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @set_rlc_lte_drb_li_field(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 53
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 8
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = zext i8 %2 to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = zext i16 %1 to i32
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %i.a, align 4
  store i32 1, ptr %5, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.l, align 16
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.p, align 8
  %i.q = load ptr, ptr @ue_parameters_tree, align 8
  %i.r = call ptr @wmem_tree_lookup32_array_le(ptr noundef %i.q, ptr noundef nonnull %5) ; 3 uses
  %.not15 = icmp eq ptr %i.r, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.r, align 4
  %i.t = load i32, ptr %i.a, align 4
  %.not16 = icmp eq i32 %i.s, %i.t
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = call ptr @wmem_file_scope()
  %i.v = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.u, i64 noundef 8) #16 ; 4 uses
  %i.w = load i32, ptr %i.a, align 4
  store i32 %i.w, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %i.v, i64 5
  store i8 12, ptr %i.x, align 1
  %i.y = load ptr, ptr @ue_parameters_tree, align 8
  call void @wmem_tree_insert32_array(ptr noundef %i.y, ptr noundef nonnull %5, ptr noundef %i.v)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ]
  %i.z = getelementptr i8, ptr %.1, i64 4
  %i.aa = select i1 %4, i8 2, i8 0
  %i.ab = zext i1 %3 to i8
  %i.ac = or disjoint i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.z, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @rlc_lte_reset_ue_bearers(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.channel_hash_key, align 4   ; 21 uses
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 53
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 8
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %.preheader28, label %bb.n

.preheader28:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.f = zext i16 %1 to i32
  %i.g = or disjoint i32 %i.f, 786432
  store i32 %i.g, ptr %2, align 4
  %i.h = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.i = call ptr @wmem_map_lookup(ptr noundef %i.h, ptr noundef nonnull %2) ; 4 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader28
  %i.j = getelementptr i8, ptr %i.i, i64 2
  store i16 -1, ptr %i.j, align 2
  %i.k = getelementptr i8, ptr %i.i, i64 4
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.i, i64 8
  store i8 0, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader28, %bb.b
  %i.m = load i32, ptr %2, align 4
  %i.n = and i32 %i.m, -33030145
  %i.o = or disjoint i32 %i.n, 17301504
  store i32 %i.o, ptr %2, align 4
  %i.p = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.q = call ptr @wmem_map_lookup(ptr noundef %i.p, ptr noundef nonnull %2) ; 4 uses
  %.not27.1 = icmp eq ptr %i.q, null
  br i1 %.not27.1, label %.preheader28.1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 2
  store i16 -1, ptr %i.r, align 2
  %i.s = getelementptr i8, ptr %i.q, i64 4
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.q, i64 8
  store i8 0, ptr %i.t, align 8
  br label %.preheader28.1

.preheader28.1:                                   ; preds = %bb.d, %bb.c
  %i.u = load i32, ptr %2, align 4
  %i.v = and i32 %i.u, -33030145
  %i.w = or disjoint i32 %i.v, 1048576
  store i32 %i.w, ptr %2, align 4
  %i.x = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.y = call ptr @wmem_map_lookup(ptr noundef %i.x, ptr noundef nonnull %2) ; 4 uses
  %.not27.133 = icmp eq ptr %i.y, null
  br i1 %.not27.133, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader28.1
  %i.z = getelementptr i8, ptr %i.y, i64 2
  store i16 -1, ptr %i.z, align 2
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  store i8 0, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader28.1
  %i.ac = load i32, ptr %2, align 4
  %i.ad = and i32 %i.ac, -33030145
  %i.ae = or disjoint i32 %i.ad, 17825792
  store i32 %i.ae, ptr %2, align 4
  %i.af = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.ag = call ptr @wmem_map_lookup(ptr noundef %i.af, ptr noundef nonnull %2) ; 4 uses
  %.not27.1.1 = icmp eq ptr %i.ag, null
  br i1 %.not27.1.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.ag, i64 2
  store i16 -1, ptr %i.ah, align 2
  %i.ai = getelementptr i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  store i8 0, ptr %i.aj, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = load i32, ptr %2, align 4
  %i.al = and i32 %i.ak, -458753
  %i.am = or disjoint i32 %i.al, 327680
  store i32 %i.am, ptr %2, align 4
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.m
  %.02132 = phi i32 [ 1, %bb.h ], [ %i.be, %bb.m ] ; 2 uses
  %i.an = shl nuw nsw i32 %.02132, 19             ; 2 uses
  %i.ao = load i32, ptr %2, align 4
  %i.ap = and i32 %i.ao, -33030145
  %i.aq = or disjoint i32 %i.an, %i.ap
  store i32 %i.aq, ptr %2, align 4
  %i.ar = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.as = call ptr @wmem_map_lookup(ptr noundef %i.ar, ptr noundef nonnull %2) ; 4 uses
  %.not26 = icmp eq ptr %i.as, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.n

bb.j:                                             ; preds = %.preheader
  %i.at = getelementptr i8, ptr %i.as, i64 2
  store i16 -1, ptr %i.at, align 2
  %i.au = getelementptr i8, ptr %i.as, i64 4
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %i.as, i64 8
  store i8 0, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %i.aw = load i32, ptr %2, align 4
  %i.ax = and i32 %i.aw, -33030145
  %i.ay = or disjoint i32 %i.an, %i.ax
  %3 = add nuw nsw i32 %i.ay, 16777216
  store i32 %3, ptr %2, align 4
  %i.az = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.ba = call ptr @wmem_map_lookup(ptr noundef %i.az, ptr noundef nonnull %2) ; 4 uses
  %.not26.1 = icmp eq ptr %i.ba, null
  br i1 %.not26.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.ba, i64 2
  store i16 -1, ptr %i.bb, align 2
  %i.bc = getelementptr i8, ptr %i.ba, i64 4
  store i32 0, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  store i8 0, ptr %i.bd, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = add nuw nsw i32 %.02132, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, 33
  br i1 %exitcond.not, label %bb.i, label %.preheader, !llvm.loop !6

bb.n:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_rlc_lte() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.221) ; 2 uses
  store i32 %i.a, ptr @proto_rlc_lte, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_rlc_lte.hf, i32 noundef 70)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_rlc_lte.ett, i32 noundef 8)
  %i.b = load i32, ptr @proto_rlc_lte, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_rlc_lte.ei, i32 noundef 26)
  %i.d = load i32, ptr @proto_rlc_lte, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.221, ptr noundef nonnull @dissect_rlc_lte, i32 noundef %i.d) ; 0 uses
  %i.f = tail call i32 @register_tap(ptr noundef nonnull @.str.222)
  store i32 %i.f, ptr @rlc_lte_tap, align 4
  %i.g = load i32, ptr @proto_rlc_lte, align 4
  %i.h = tail call ptr @prefs_register_protocol(i32 noundef %i.g, ptr noundef null) ; 10 uses
  tail call void @prefs_register_enum_preference(ptr noundef %i.h, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.225, ptr noundef nonnull @global_rlc_lte_am_sequence_analysis, ptr noundef nonnull @proto_register_rlc_lte.sequence_analysis_vals, i1 noundef zeroext false)
  tail call void @prefs_register_enum_preference(ptr noundef %i.h, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, ptr noundef nonnull @global_rlc_lte_um_sequence_analysis, ptr noundef nonnull @proto_register_rlc_lte.sequence_analysis_vals, i1 noundef zeroext false)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, ptr noundef nonnull @global_rlc_lte_call_pdcp_for_srb)
  tail call void @prefs_register_enum_preference(ptr noundef %i.h, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, ptr noundef nonnull @global_rlc_lte_call_pdcp_for_drb, ptr noundef nonnull @pdcp_drb_col_vals, i1 noundef zeroext false)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.236, ptr noundef nonnull @global_rlc_lte_call_rrc_for_ccch)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239, ptr noundef nonnull @global_rlc_lte_call_rrc_for_mcch)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.242, ptr noundef nonnull @global_rlc_lte_call_ip_for_mtch)
  tail call void @prefs_register_obsolete_preference(ptr noundef %i.h, ptr noundef nonnull @.str.243)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246, ptr noundef nonnull @global_rlc_lte_headers_expected)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.249, ptr noundef nonnull @global_rlc_lte_reassembly)
  %i.i = tail call ptr @wmem_epan_scope()
  %i.j = tail call ptr @wmem_file_scope()
  %i.k = tail call ptr @wmem_tree_new_autoreset(ptr noundef %i.i, ptr noundef %i.j)
  store ptr %i.k, ptr @ue_parameters_tree, align 8
  %i.l = tail call ptr @wmem_epan_scope()
  %i.m = tail call ptr @wmem_file_scope()
  %i.n = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull @rlc_channel_hash_func, ptr noundef nonnull @rlc_channel_equal)
  store ptr %i.n, ptr @sequence_analysis_channel_hash, align 8
  %i.o = tail call ptr @wmem_epan_scope()
  %i.p = tail call ptr @wmem_file_scope()
  %i.q = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull @rlc_result_hash_func, ptr noundef nonnull @rlc_result_hash_equal)
  store ptr %i.q, ptr @sequence_analysis_report_hash, align 8
  %i.r = tail call ptr @wmem_epan_scope()
  %i.s = tail call ptr @wmem_file_scope()
  %i.t = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull @rlc_channel_hash_func, ptr noundef nonnull @rlc_channel_equal)
  store ptr %i.t, ptr @repeated_nack_channel_hash, align 8
  %i.u = tail call ptr @wmem_epan_scope()
  %i.v = tail call ptr @wmem_file_scope()
  %i.w = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.u, ptr noundef %i.v, ptr noundef nonnull @rlc_result_hash_func, ptr noundef nonnull @rlc_result_hash_equal)
  store ptr %i.w, ptr @repeated_nack_report_hash, align 8
  %i.x = tail call ptr @wmem_epan_scope()
  %i.y = tail call ptr @wmem_file_scope()
  %i.z = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull @rlc_result_hash_func, ptr noundef nonnull @rlc_result_hash_equal)
  store ptr %i.z, ptr @reassembly_report_hash, align 8
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
define internal i32 @dissect_rlc_lte(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call fastcc void @dissect_rlc_lte_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_obsolete_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new_autoreset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new_autoreset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 67108352) i32 @rlc_channel_hash_func(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 4 uses
  %i.b = shl i32 %i.a, 10
  %i.c = and i32 %i.b, 67107840
  %i.d = lshr i32 %i.a, 10
  %i.e = and i32 %i.d, 448
  %i.f = or disjoint i32 %i.c, %i.e
  %i.g = lshr i32 %i.a, 18
  %i.h = and i32 %i.g, 62
  %i.i = or disjoint i32 %i.f, %i.h
  %i.j = lshr i32 %i.a, 24
  %i.k = and i32 %i.j, 1
  %i.l = or disjoint i32 %i.i, %i.k
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @rlc_channel_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = xor i32 %i.b, %i.a                       ; 2 uses
  %i.d = and i32 %i.c, 16777215
  %or.cond12 = icmp eq i32 %i.d, 0
  %i.e = lshr i32 %i.c, 24
  %.lobit = and i32 %i.e, 1
  %i.f = xor i32 %.lobit, 1
  %i.g = select i1 %or.cond12, i32 %i.f, i32 0
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @rlc_result_hash_func(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = and i32 %i.c, 1023
  %i.e = add i32 %i.d, %i.a
  %i.f = lshr i32 %i.c, 10
  %i.g = and i32 %i.f, 3
  %i.h = add i32 %i.e, %i.g
  %i.i = lshr i32 %i.c, 12
  %i.j = and i32 %i.i, 31
  %i.k = add i32 %i.h, %i.j
  %i.l = lshr i32 %i.c, 17
  %i.m = and i32 %i.l, 1
  %i.n = add i32 %i.k, %i.m
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @rlc_result_hash_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  %i.b = load i64, ptr %1, align 1
  %i.c = icmp ne i64 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_rlc_lte() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_rlc_lte, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.250, ptr noundef nonnull @dissect_rlc_lte_heur, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef %i.a, i32 noundef 0)
end_hunk_0
