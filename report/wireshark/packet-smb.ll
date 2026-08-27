Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-smb?download=true
inline.NumInlined: 279
inline.NumDeleted: 72
begin_hunk_0_@smb_eo_packet:bb.a

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr i8, ptr %i.bs, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i8, ptr %i.bt, align 8
  %i.cj = zext i8 %i.ci to i32
  %i.ck = tail call ptr @try_val_to_str(i32 noundef %i.cj, ptr noundef nonnull @smb_eo_contains_string)
  %i.cl = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2846, ptr noundef %.0103, i64 noundef %i.cf, i64 noundef %i.ch, ptr noundef %i.ck)
  %i.cm = getelementptr i8, ptr %i.ca, i64 16
  store ptr %i.cl, ptr %i.cm, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cn = mul i64 %i.cf, 100
  %i.co = getelementptr i8, ptr %i.bs, i64 8
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = udiv i64 %i.cn, %i.cp
  %i.cr = uitofp i64 %i.cq to float
  %i.cs = load i8, ptr %i.bt, align 8
  %i.ct = zext i8 %i.cs to i32
  %i.cu = tail call ptr @try_val_to_str(i32 noundef %i.ct, ptr noundef nonnull @smb_eo_contains_string)
  %i.cv = fpext float %i.cr to double
  %i.cw = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2847, ptr noundef %.0103, i64 noundef %i.cf, i64 noundef %i.cp, ptr noundef %i.cu, double noundef %i.cv)
  %i.cx = getelementptr i8, ptr %i.ca, i64 16
  store ptr %i.cw, ptr %i.cx, align 8
  br label %bb.s

bb.s:                                             ; preds = %find_incoming_file.exit, %bb.r, %bb.q, %bb.o
  ret i32 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @smb_eo_cleanup() #0 {
bb.a:
  %i.a = load ptr, ptr @GSL_active_files, align 8
  %i.b = tail call i32 @g_slist_length(ptr noundef %i.a)
  %i.c = load ptr, ptr @GSL_active_files, align 8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.09 = add i32 %i.b, -1                         ; 2 uses
  %i.d = icmp sgt i32 %.09, -1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.010 = phi i32 [ %.0, %bb.c ], [ %.09, %.preheader ] ; 3 uses
  %i.e = load ptr, ptr @GSL_active_files, align 8
  %i.f = tail call ptr @g_slist_nth_data(ptr noundef %i.e, i32 noundef %.010) ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @g_slist_free(ptr noundef nonnull %i.h)
  store ptr null, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @g_free(ptr noundef %i.f)
  %.0 = add nsw i32 %.010, -1
  %i.i = icmp sgt i32 %.010, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr @GSL_active_files, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %.preheader ]
  tail call void @g_slist_free(ptr noundef %i.j)
  store ptr null, ptr @GSL_active_files, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_smb() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_smb, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1800, i32 noundef %i.a)
  store ptr %i.b, ptr @gssapi_handle, align 8
  %i.c = load i32, ptr @proto_smb, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1801, i32 noundef %i.c)
  store ptr %i.d, ptr @ntlmssp_handle, align 8
  %i.e = load i32, ptr @proto_smb, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.1802, ptr noundef nonnull @dissect_smb_heur, ptr noundef nonnull @.str.1803, ptr noundef nonnull @.str.1804, i32 noundef %i.e, i32 noundef 1)
  %i.f = load i32, ptr @proto_smb, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.1805, ptr noundef nonnull @dissect_smb_heur, ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1807, i32 noundef %i.f, i32 noundef 1)
  %i.g = load i32, ptr @proto_smb, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.1808, ptr noundef nonnull @dissect_smb_heur, ptr noundef nonnull @.str.1809, ptr noundef nonnull @.str.1810, i32 noundef %i.g, i32 noundef 1)
  %i.h = load i32, ptr @proto_smb, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.1811, ptr noundef nonnull @dissect_smb_heur, ptr noundef nonnull @.str.1812, ptr noundef nonnull @.str.1813, i32 noundef %i.h, i32 noundef 1)
  %i.i = load ptr, ptr @smb_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1814, i32 noundef 1360, ptr noundef %i.i)
  %i.j = load ptr, ptr @smb_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1814, i32 noundef 1362, ptr noundef %i.j)
  %i.k = load ptr, ptr @smb_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1814, i32 noundef 1364, ptr noundef %i.k)
  %i.l = load ptr, ptr @smb_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1815, i32 noundef 3004, ptr noundef %i.l)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_smb_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 4
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %.not10 = icmp eq i8 %i.d, 83
  br i1 %.not10, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %.not11 = icmp eq i8 %i.e, 77
  br i1 %.not11, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %.not12 = icmp eq i8 %i.f, 66
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @dissect_smb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_dfs_referral_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef zeroext %7, i1 noundef zeroext %8, ptr nofree noundef captures(address_is_null) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %4, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not.i = icmp sgt i32 %4, %5
  br i1 %.not.i, label %bb.b, label %dissect_dfs_referral_strings.exit

bb.b:                                             ; preds = %bb.a
  %.neg.i = sub i32 %6, %4
  %i.d = trunc i32 %.neg.i to i16
  %i.e = add i16 %7, %i.d                         ; 2 uses
  store i16 %i.e, ptr %i.b, align 2
  %i.f = icmp sgt i16 %i.e, 0
  br i1 %i.f, label %.lr.ph.split.i.preheader, label %dissect_dfs_referral_strings.exit

.lr.ph.split.i.preheader:                         ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 416
  %.not25.i = icmp eq ptr %9, null
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @smb_get_unicode_or_ascii_string(ptr noundef %i.h, ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext %8, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %i.b) ; 3 uses
  %i.j = icmp eq ptr %i.i, null                   ; 2 uses
  br i1 %.not25.i, label %.lr.ph.split.i.us.preheader, label %.lr.ph.split.i.preheader9

.lr.ph.split.i.us.preheader:                      ; preds = %.lr.ph.split.i.preheader
  br i1 %i.j, label %dissect_dfs_referral_strings.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i.us.preheader
  %i.k = load i32, ptr %i.a, align 4
  %i.l = load i32, ptr %i.c, align 4
  %i.m = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.i) ; 0 uses
  br label %dissect_dfs_referral_strings.exit, !llvm.loop !18

.lr.ph.split.i.preheader9:                        ; preds = %.lr.ph.split.i.preheader
  br i1 %i.j, label %dissect_dfs_referral_strings.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i.preheader9
  %i.n = load i32, ptr %i.a, align 4              ; 2 uses
  %i.o = load i32, ptr %i.c, align 4
  %i.p = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull %i.i) ; 0 uses
  %i.q = load i32, ptr %i.c, align 4
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = load i32, ptr %9, align 4
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %bb.e, label %dissect_dfs_referral_strings.exit, !llvm.loop !18

bb.e:                                             ; preds = %bb.d
  store i32 %i.r, ptr %9, align 4
  br label %dissect_dfs_referral_strings.exit, !llvm.loop !18

dissect_dfs_referral_strings.exit:                ; preds = %bb.d, %bb.e, %bb.c, %.lr.ph.split.i.us.preheader, %.lr.ph.split.i.preheader9, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_dfs_referral_strings(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65536) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef zeroext %8, i1 noundef zeroext %9, ptr nofree noundef captures(address_is_null) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i32 %5, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp sgt i32 %5, %6
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.neg = sub i32 %7, %5
  %i.d = trunc i32 %.neg to i16
  %i.e = add i16 %8, %i.d                         ; 3 uses
  store i16 %i.e, ptr %i.b, align 2
  %i.f = getelementptr i8, ptr %1, i64 416
  %.not28 = icmp eq i32 %4, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.not25 = icmp eq ptr %10, null
  %i.g = icmp sgt i16 %i.e, 0
  br i1 %i.g, label %.lr.ph.split, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %i.h = phi i16 [ %i.w, %bb.g ], [ %i.e, %.lr.ph ] ; 2 uses
  %.026 = phi i32 [ %i.x, %bb.g ], [ 0, %.lr.ph ]
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.split
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = call ptr @smb_get_unicode_or_ascii_string(ptr noundef %i.j, ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext %9, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %i.b) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %i.n = load i32, ptr %i.c, align 4
  %i.o = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %i.k) ; 0 uses
  %i.p = load i32, ptr %i.c, align 4              ; 2 uses
  %i.q = add i32 %i.p, %i.m                       ; 3 uses
  store i32 %i.q, ptr %i.a, align 4
  %i.r = load i16, ptr %i.b, align 2
  %i.s = trunc i32 %i.p to i16
  %i.t = sub i16 %i.r, %i.s                       ; 4 uses
  store i16 %i.t, ptr %i.b, align 2
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %10, align 4
  %i.v = icmp slt i32 %i.u, %i.q
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.q, ptr %10, align 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split, %bb.f, %bb.e, %bb.d
  %i.w = phi i16 [ %i.h, %.lr.ph.split ], [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %bb.d ]
  %i.x = add nuw nsw i32 %.026, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !18

.loopexit:                                        ; preds = %bb.c, %bb.g, %.lr.ph, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_slist_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @free_hash_tables(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.c, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.e, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = getelementptr i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @g_slist_free(ptr noundef %i.k)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @col_get_text(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @smb_saved_info_hash_matched(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, %i.a
  ret i32 %i.d
end_hunk_0
