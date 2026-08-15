inline.NumInlined: 79
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@recent_set_column_xalign:bb.a

bb.c:                                             ; preds = %.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @recent_init() local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) @recent, i8 noundef 0, i64 noundef 272, i1 noundef false) #13
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @recent_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 136), align 8
  tail call void @g_list_free_full(ptr noundef %i.a, ptr noundef nonnull @free_col_width_data)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 136), align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 104), align 8
  tail call void @g_free(ptr noundef %i.b)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 112), align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 120), align 8
  tail call void @g_free(ptr noundef %i.d)
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 184), align 8
  tail call void @g_free(ptr noundef %i.e)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 256), align 8
  tail call void @g_free(ptr noundef %i.f)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 208), align 8
  tail call void @g_list_free_full(ptr noundef %i.g, ptr noundef nonnull @g_free)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 216), align 8
  tail call void @g_list_free_full(ptr noundef %i.h, ptr noundef nonnull @g_free)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 144), align 8
  tail call void @prefs_clear_string_list(ptr noundef %i.i)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 152), align 8
  tail call void @prefs_clear_string_list(ptr noundef %i.j)
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 160), align 8
  tail call void @prefs_clear_string_list(ptr noundef %i.k)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 168), align 8
  tail call void @prefs_clear_string_list(ptr noundef %i.l)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 200), align 8
  tail call void @prefs_clear_string_list(ptr noundef %i.m)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_clear_string_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cfilter_recent_write_all_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_list_first(ptr noundef %2) ; 3 uses
  %.not18 = icmp eq ptr %i.a, null
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %i.i, %bb.d ], [ 1, %.lr.ph ]  ; 2 uses
  %.01319.us32 = phi ptr [ %i.h, %bb.d ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.d = load ptr, ptr %.01319.us32, align 8      ; 3 uses
  %.not16.us = icmp eq ptr %i.d, null
  br i1 %.not16.us, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.preheader
  %char0.us = load i8, ptr %i.d, align 1
  %.not17.us = icmp eq i8 %char0.us, 0
  br i1 %.not17.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @prefs_sanitize_string(ptr noundef nonnull %i.d) ; 2 uses
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.163, ptr noundef %i.e) ; 0 uses
  tail call void @g_free(ptr noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us.preheader
  %i.g = getelementptr i8, ptr %.01319.us32, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.us = icmp eq ptr %i.h, null
  %i.i = add nuw nsw i32 %i.c, 1
  %exitcond23.not = icmp eq i32 %i.c, 21
  %or.cond = select i1 %.not.us, i1 true, i1 %exitcond23.not
  br i1 %or.cond, label %.critedge, label %.lr.ph.split.us.preheader, !llvm.loop !8

.lr.ph.split.preheader:                           ; preds = %.lr.ph, %bb.g
  %i.j = phi i32 [ %i.p, %bb.g ], [ 1, %.lr.ph ]  ; 2 uses
  %.0131931 = phi ptr [ %i.o, %bb.g ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %.0131931, align 8         ; 3 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %char0 = load i8, ptr %i.k, align 1
  %.not17 = icmp eq i8 %char0, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @prefs_sanitize_string(ptr noundef nonnull %i.k) ; 2 uses
  %i.m = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull %1, ptr noundef %i.l) ; 0 uses
  tail call void @g_free(ptr noundef %i.l)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.split.preheader
  %i.n = getelementptr i8, ptr %.0131931, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %i.p = add nuw nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.j, 21
  %or.cond33 = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond33, label %.critedge, label %.lr.ph.split.preheader, !llvm.loop !8

.critedge:                                        ; preds = %bb.g, %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @cfilter_recent_write_all_hash_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @cfilter_recent_write_all_list(ptr noundef %2, ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_sanitize_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_recent_geom(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.186, ptr noundef %i.a) ; 0 uses
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.187) ; 0 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.188, ptr noundef %i.d, i32 noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.189, ptr noundef %i.h, i32 noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8
  %i.o = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.190, ptr noundef %i.l, i32 noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr i8, ptr %1, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef %i.p, i32 noundef %i.r) ; 0 uses
  %i.t = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.165) ; 0 uses
  %i.u = load ptr, ptr %1, align 8
  %i.v = getelementptr i8, ptr %1, i64 33
  %i.w = load i8, ptr %i.v, align 1, !range !9, !noundef !10
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.x, ptr @.str.166, ptr @.str.167
  %i.z = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.192, ptr noundef %i.u, ptr noundef nonnull %i.y) ; 0 uses
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.193) ; 0 uses
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.194, ptr noundef %i.ab, ptr noundef %i.ad) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_iter_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_ascii_dtostr(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @str_to_val(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @application_flavor_is_wireshark() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtoi32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @window_geom_recent_read_pair(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.sroa.8 = alloca [3 x i8], align 1             ; 4 uses
  %.sroa.15 = alloca [3 x i8], align 1            ; 4 uses
  %.sroa.21 = alloca [6 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  %i.a = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(9) @.str.269) #12
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @window_splitter_hash, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %g_strdup_inline.exit6.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @g_free) ; 2 uses
  store ptr %i.d, ptr @window_splitter_hash, align 8
  br label %g_strdup_inline.exit6.i

g_strdup_inline.exit6.i:                          ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  %i.f = tail call noalias ptr @g_strdup(ptr noundef %0)
  %i.g = tail call noalias ptr @g_strdup(ptr noundef %2)
  %i.h = tail call i32 @g_hash_table_replace(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g) ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @window_geom_hash, align 8 ; 2 uses
  %.not.i17 = icmp eq ptr %i.i, null
  br i1 %.not.i17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef null, ptr noundef nonnull @window_geom_free) ; 2 uses
  store ptr %i.j, ptr @window_geom_hash, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  %i.l = tail call ptr @g_hash_table_lookup(ptr noundef %i.k, ptr noundef %0) ; 14 uses
  %.not6.i.not = icmp eq ptr %i.l, null
  br i1 %.not6.i.not, label %sub_0, label %window_geom_load.exit.thread

window_geom_load.exit.thread:                     ; preds = %bb.f
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx, i64 3, i1 false)
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.827.0.copyload = load i32, ptr %.sroa.827.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx, i64 3, i1 false)
  %.sroa.1535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.1535.0.copyload = load i32, ptr %.sroa.1535.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.19.0.copyload = load i8, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %.sroa.20.0.copyload = load i8, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.21, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.21.0..sroa_idx, i64 6, i1 false)
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.2145.0.copyload = load ptr, ptr %.sroa.2145.0..sroa_idx, align 8
  br label %sub_0

sub_0:                                            ; preds = %window_geom_load.exit.thread, %bb.f
  %.sroa.19.159 = phi i8 [ %.sroa.19.0.copyload, %window_geom_load.exit.thread ], [ undef, %bb.f ] ; 5 uses
  %.sroa.20.158 = phi i8 [ %.sroa.20.0.copyload, %window_geom_load.exit.thread ], [ undef, %bb.f ] ; 5 uses
  %.sroa.2145.0 = phi ptr [ %.sroa.2145.0.copyload, %window_geom_load.exit.thread ], [ null, %bb.f ] ; 5 uses
  %.sroa.17.0 = phi i32 [ %.sroa.17.0.copyload, %window_geom_load.exit.thread ], [ -1, %bb.f ] ; 5 uses
  %.sroa.1535.0 = phi i32 [ %.sroa.1535.0.copyload, %window_geom_load.exit.thread ], [ -1, %bb.f ] ; 5 uses
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload, %window_geom_load.exit.thread ], [ 0, %bb.f ] ; 4 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %window_geom_load.exit.thread ], [ -1, %bb.f ] ; 5 uses
  %.sroa.827.0 = phi i32 [ %.sroa.827.0.copyload, %window_geom_load.exit.thread ], [ -1, %bb.f ] ; 5 uses
  %.sroa.5.0 = phi i8 [ %.sroa.5.0.copyload, %window_geom_load.exit.thread ], [ 0, %bb.f ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %window_geom_load.exit.thread ], [ null, %bb.f ]
  %i.m = load i8, ptr %1, align 1
  switch i8 %i.m, label %.tail.thread [
    i8 120, label %window_geom_load.exit.tail
    i8 121, label %.tail
  ]

window_geom_load.exit.tail:                       ; preds = %sub_0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %.tail.thread

bb.g:                                             ; preds = %window_geom_load.exit.tail
  %i.q = tail call i64 @strtol(ptr noundef captures(none) %2, ptr noundef null, i32 noundef 10) #13
  %i.r = trunc i64 %i.q to i32
  br label %bb.o

.tail:                                            ; preds = %sub_0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.h, label %.tail.thread

bb.h:                                             ; preds = %.tail
  %i.v = tail call i64 @strtol(ptr noundef captures(none) %2, ptr noundef null, i32 noundef 10) #13
  %i.w = trunc i64 %i.v to i32
  br label %bb.o

.tail.thread:                                     ; preds = %sub_0, %window_geom_load.exit.tail, %.tail
  %i.x = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.272) #12
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.tail.thread
  %i.z = tail call i64 @strtol(ptr noundef captures(none) %2, ptr noundef null, i32 noundef 10) #13
  %i.aa = trunc i64 %i.z to i32
  br label %bb.o

bb.j:                                             ; preds = %.tail.thread
  %i.ab = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.273) #12
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i64 @strtol(ptr noundef captures(none) %2, ptr noundef null, i32 noundef 10) #13
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.af = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.274) #12
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i32 @g_ascii_strcasecmp(ptr noundef %2, ptr noundef nonnull @.str.166)
  %i.ai = icmp eq i32 %i.ah, 0
  %..i = zext i1 %i.ai to i8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.275) #12
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.k, %bb.m, %bb.i, %bb.g
  %.sroa.2145.1 = phi ptr [ %.sroa.2145.0, %bb.g ], [ %.sroa.2145.0, %bb.h ], [ %.sroa.2145.0, %bb.i ], [ %.sroa.2145.0, %bb.k ], [ %.sroa.2145.0, %bb.m ], [ %2, %bb.n ] ; 2 uses
  %.sroa.20.0 = phi i8 [ %.sroa.20.158, %bb.g ], [ %.sroa.20.158, %bb.h ], [ %.sroa.20.158, %bb.i ], [ %.sroa.20.158, %bb.k ], [ %..i, %bb.m ], [ %.sroa.20.158, %bb.n ]
  %.sroa.19.0 = phi i8 [ %.sroa.19.159, %bb.g ], [ %.sroa.19.159, %bb.h ], [ %.sroa.19.159, %bb.i ], [ %.sroa.19.159, %bb.k ], [ 1, %bb.m ], [ %.sroa.19.159, %bb.n ]
  %.sroa.17.1 = phi i32 [ %.sroa.17.0, %bb.g ], [ %.sroa.17.0, %bb.h ], [ %.sroa.17.0, %bb.i ], [ %i.ae, %bb.k ], [ %.sroa.17.0, %bb.m ], [ %.sroa.17.0, %bb.n ]
  %.sroa.1535.1 = phi i32 [ %.sroa.1535.0, %bb.g ], [ %.sroa.1535.0, %bb.h ], [ %i.aa, %bb.i ], [ %.sroa.1535.0, %bb.k ], [ %.sroa.1535.0, %bb.m ], [ %.sroa.1535.0, %bb.n ]
  %.sroa.12.1 = phi i8 [ %.sroa.12.0, %bb.g ], [ %.sroa.12.0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.k ], [ %.sroa.12.0, %bb.m ], [ %.sroa.12.0, %bb.n ]
  %.sroa.10.1 = phi i32 [ %.sroa.10.0, %bb.g ], [ %i.w, %bb.h ], [ %.sroa.10.0, %bb.i ], [ %.sroa.10.0, %bb.k ], [ %.sroa.10.0, %bb.m ], [ %.sroa.10.0, %bb.n ]
  %.sroa.827.1 = phi i32 [ %i.r, %bb.g ], [ %.sroa.827.0, %bb.h ], [ %.sroa.827.0, %bb.i ], [ %.sroa.827.0, %bb.k ], [ %.sroa.827.0, %bb.m ], [ %.sroa.827.0, %bb.n ]
  %.sroa.5.1 = phi i8 [ 1, %bb.g ], [ 1, %bb.h ], [ %.sroa.5.0, %bb.i ], [ %.sroa.5.0, %bb.k ], [ %.sroa.5.0, %bb.m ], [ %.sroa.5.0, %bb.n ]
  %i.al = load ptr, ptr @window_geom_hash, align 8
  %.not.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i18, label %bb.p, label %g_strdup_inline.exit24.i

bb.p:                                             ; preds = %bb.o
  %i.am = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef null, ptr noundef nonnull @window_geom_free)
  store ptr %i.am, ptr @window_geom_hash, align 8
  br label %g_strdup_inline.exit24.i

g_strdup_inline.exit24.i:                         ; preds = %bb.p, %bb.o
  %i.an = tail call noalias dereferenceable_or_null(48) ptr @g_malloc(i64 noundef 48) #11 ; 15 uses
  store ptr %.sroa.0.0, ptr %i.an, align 8
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %.sroa.5.1, ptr %.sroa.5.0..sroa_idx24, align 8
  %.sroa.8.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx26, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8, i64 3, i1 false)
  %.sroa.827.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %.sroa.827.1, ptr %.sroa.827.0..sroa_idx28, align 4
  %.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx30, align 8
  %.sroa.12.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i8 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx32, align 4
  %.sroa.15.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.an, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx34, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, i64 3, i1 false)
  %.sroa.1535.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 %.sroa.1535.1, ptr %.sroa.1535.0..sroa_idx36, align 8
  %.sroa.17.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store i32 %.sroa.17.1, ptr %.sroa.17.0..sroa_idx38, align 4
  %.sroa.19.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx40, align 8
  %.sroa.20.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.an, i64 33
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx42, align 1
  %.sroa.21.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.an, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.21.0..sroa_idx44, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.21, i64 6, i1 false)
  %.sroa.2145.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  store ptr %.sroa.2145.1, ptr %.sroa.2145.0..sroa_idx46, align 8
  %i.ao = tail call noalias ptr @g_strdup(ptr noundef %0) ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = tail call noalias ptr @g_strdup(ptr noundef %.sroa.2145.1)
  store ptr %i.ap, ptr %.sroa.2145.0..sroa_idx46, align 8
  %i.aq = load ptr, ptr @window_geom_hash, align 8
  %i.ar = tail call i32 @g_hash_table_replace(ptr noundef %i.aq, ptr noundef %i.ao, ptr noundef %i.an) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %g_strdup_inline.exit24.i, %g_strdup_inline.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_get_string_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @profile_exists(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @set_profile_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_utf8_validate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_recent_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_has_prefix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_reverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_iter_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
end_hunk_0
