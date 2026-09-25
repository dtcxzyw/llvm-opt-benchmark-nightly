Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/color_filters?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@color_filters_set_tmp:bb.a
  call void @g_free(ptr noundef %i.f)
  br label %.loopexit

g_strdup_inline.exit:                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  call void @g_free(ptr noundef %i.u)
  %i.v = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  call void @dfilter_free(ptr noundef %i.w)
  %i.x = call noalias ptr @g_strdup(ptr noundef nonnull %spec.select43)
  store ptr %i.x, ptr %i.t, align 8
  %i.y = load ptr, ptr %i.a, align 8
  store ptr %i.y, ptr %i.v, align 8
  %narrow = or i1 %2, %i.e
  %i.z = getelementptr i8, ptr %i.i, i64 28
  %i.aa = zext i1 %narrow to i8
  store i8 %i.aa, ptr %i.z, align 4
  br i1 %i.c, label %bb.i, label %bb.h

bb.h:                                             ; preds = %g_strdup_inline.exit
  store i1 true, ptr @tmp_colors_set, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %g_strdup_inline.exit, %bb.e, %bb.c
  call void @g_free(ptr noundef %i.f)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i32 %indvars.iv.next, 11
  br i1 %exitcond, label %.loopexit, label %bb.b, !llvm.loop !9

.loopexit:                                        ; preds = %bb.j, %bb.g
  %i.ab = phi i1 [ false, %bb.g ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.ab
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_compile_full(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @df_error_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @dfilter_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @color_filters_tmp_color(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %i.a) ; 2 uses
  %i.c = load ptr, ptr @color_filter_list, align 8
  %i.d = tail call ptr @g_slist_find_custom(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull @color_filters_find_by_name_cb) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  tail call void @g_free(ptr noundef %i.b)
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @color_filters_reset_tmp(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 1, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 2, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.b, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 3, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.c, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 4, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.d, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 5, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.e, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.f = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 6, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.f, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.g = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 7, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.g, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.h = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 8, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.h, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.i = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 9, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.j = tail call zeroext i1 @color_filters_set_tmp(i8 noundef zeroext 10, ptr noundef null, i1 noundef zeroext true, ptr noundef %0)
  br i1 %i.j, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i1 false, ptr @tmp_colors_set, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.k = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @color_filter_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @dfilter_free(ptr noundef %i.e)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @color_filter_list_delete(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_slist_free_full(ptr noundef %i.a, ptr noundef nonnull @color_filter_delete_cb)
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @color_filter_delete_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @dfilter_free(ptr noundef %i.e)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @color_filters_init(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @color_filter_list, align 8
  tail call void @g_slist_free_full(ptr noundef %i.a, ptr noundef nonnull @color_filter_delete_cb)
  store ptr null, ptr @color_filter_list, align 8
  %i.b = tail call fastcc zeroext i1 @color_filters_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @color_filter_read_paused(ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @color_filters_get(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 24), align 8
  %i.b = tail call ptr @g_strsplit(ptr noundef %i.a, ptr noundef nonnull @.str.17, i32 noundef -1) ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 32), align 8
  %i.d = tail call ptr @g_strsplit(ptr noundef %i.c, ptr noundef nonnull @.str.17, i32 noundef -1) ; 2 uses
  br label %color_filter_new.exit.i

color_filter_new.exit.i:                          ; preds = %color_filter_new.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i, %color_filter_new.exit.i ] ; 3 uses
  %i.e = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.f = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %i.e) ; 2 uses
  %i.g = add nsw i64 %indvars.iv.i, -1            ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 @strtoul(ptr noundef captures(none) %i.i, ptr noundef null, i32 noundef 16) #13 ; 2 uses
  %i.k = trunc i64 %i.j to i16                    ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.d, i64 %i.g
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 @strtoul(ptr noundef captures(none) %i.m, ptr noundef null, i32 noundef 16) #13 ; 2 uses
  %i.o = lshr i64 %i.j, 16
  %i.p = lshr i64 %i.n, 16
  %i.q = trunc i64 %i.o to i16
  %i.r = trunc i64 %i.n to i16                    ; 2 uses
  %i.s = trunc i64 %i.p to i16
  %i.t = and i16 %i.q, 255
  %i.u = and i16 %i.r, 255
  %i.v = lshr i16 %i.r, 8
  %i.w = and i16 %i.s, 255
  %i.x = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %i.y = insertelement <4 x i16> %i.x, i16 %i.v, i64 1
  %i.z = insertelement <4 x i16> %i.y, i16 %i.u, i64 2
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.t, i64 3
  %i.ab = mul nuw <4 x i16> %i.aa, splat (i16 257)
  %i.ac = tail call noalias dereferenceable_or_null(40) ptr @g_malloc0(i64 noundef 40) #11 ; 6 uses
  %i.ad = tail call noalias ptr @g_strdup(ptr noundef %i.f)
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  store <4 x i16> %i.ab, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ac, i64 24
  %3 = and i16 %i.k, 255
  %4 = lshr i16 %i.k, 8
  %5 = insertelement <2 x i16> poison, i16 %4, i64 0
  %6 = insertelement <2 x i16> %5, i16 %3, i64 1
  %7 = mul nuw <2 x i16> %6, splat (i16 257)
  store <2 x i16> %7, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ag = getelementptr i8, ptr %i.ac, i64 28
  store i8 1, ptr %i.ag, align 4
  %i.ah = tail call noalias dereferenceable_or_null(6) ptr @g_malloc(i64 noundef 6) #11 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 noundef 6, i1 noundef false) #13
  store ptr %i.ah, ptr %i.ae, align 8
  %i.ai = load ptr, ptr @color_filter_list, align 8
  %i.aj = tail call ptr @g_slist_append(ptr noundef %i.ai, ptr noundef %i.ac)
  store ptr %i.aj, ptr @color_filter_list, align 8
  tail call void @g_free(ptr noundef %i.f)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %exitcond.not.i, label %color_filters_add_tmp.exit, label %color_filter_new.exit.i, !llvm.loop !10

color_filters_add_tmp.exit:                       ; preds = %color_filter_new.exit.i
  tail call void @g_strfreev(ptr noundef %i.b)
  tail call void @g_strfreev(ptr noundef %i.d)
  %i.ak = tail call ptr @get_persconffile_path(ptr noundef nonnull @.str.8, i1 noundef zeroext true, ptr noundef %2) ; 8 uses
  %i.al = tail call noalias ptr @fopen(ptr noundef %i.ak, ptr noundef nonnull @.str.6) ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.b, label %bb.e

bb.b:                                             ; preds = %color_filters_add_tmp.exit
  %i.an = tail call ptr @__errno_location() #14
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.not21 = icmp eq i32 %i.ao, 2
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = tail call ptr @g_strerror(i32 noundef %i.ao) #14
  %i.aq = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef %i.ak, ptr noundef %i.ap)
  store ptr %i.aq, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.ak)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @g_free(ptr noundef %i.ak)
  %i.ar = tail call zeroext i1 @color_filters_read_globals(ptr noundef nonnull @color_filter_list, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.h

bb.e:                                             ; preds = %color_filters_add_tmp.exit
  %i.as = tail call fastcc i32 @read_filters_file(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef nonnull @color_filter_list, ptr noundef %1)
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = tail call ptr @__errno_location() #14
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call ptr @g_strerror(i32 noundef %i.au) #14
  %i.aw = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef %i.ak, ptr noundef %i.av)
  store ptr %i.aw, ptr %0, align 8
  %i.ax = tail call i32 @fclose(ptr noundef nonnull %i.al) ; 0 uses
  tail call void @g_free(ptr noundef %i.ak)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ay = tail call i32 @fclose(ptr noundef nonnull %i.al) ; 0 uses
  tail call void @g_free(ptr noundef %i.ak)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ %i.ar, %bb.d ], [ false, %bb.f ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @color_filter_read_paused(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %i.b = tail call ptr @get_persconffile_path(ptr noundef nonnull @.str.19, i1 noundef zeroext true, ptr noundef %0) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.6) ; 4 uses
  tail call void @g_free(ptr noundef nonnull %i.b)
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.c)
  %.not1214 = icmp eq ptr %i.d, null
  br i1 %.not1214, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.e = call i64 @strcspn(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) #12
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  store i8 0, ptr %i.f, align 1
  %i.g = call ptr @g_strchug(ptr noundef nonnull %i.a)
  %i.h = call ptr @g_strchomp(ptr noundef %i.g)   ; 0 uses
  %i.i = load i8, ptr %i.a, align 16
  switch i8 %i.i, label %bb.d [
    i8 35, label %bb.f
    i8 0, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr @session_disabled_filters, align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.j, null
  br i1 %.not13, label %bb.e, label %g_strdup_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef null) ; 2 uses
  store ptr %i.k, ptr @session_disabled_filters, align 8
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  %i.m = call noalias ptr @g_strdup(ptr noundef nonnull %i.a)
  %i.n = call i32 @g_hash_table_insert(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %g_strdup_inline.exit
  %i.o = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.c)
  %.not12 = icmp eq ptr %i.o, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.p = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @color_filters_reload(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @color_filter_deleted_list, align 8
  %i.b = load ptr, ptr @color_filter_list, align 8
  %i.c = tail call ptr @g_slist_concat(ptr noundef %i.a, ptr noundef %i.b)
  store ptr %i.c, ptr @color_filter_deleted_list, align 8
  store ptr null, ptr @color_filter_list, align 8
  %i.d = tail call fastcc zeroext i1 @color_filters_get(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.d
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_concat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @color_filters_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @color_filter_deleted_list, align 8
  tail call void @g_slist_free_full(ptr noundef %i.a, ptr noundef nonnull @color_filter_delete_cb)
  store ptr null, ptr @color_filter_deleted_list, align 8
  %i.b = load ptr, ptr @session_disabled_filters, align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.b)
  store ptr null, ptr @session_disabled_filters, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @color_filters_clone(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._color_clone, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr @color_filter_list, align 8
  call void @g_slist_foreach(ptr noundef %i.b, ptr noundef nonnull @color_filters_clone_cb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_slist_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @color_filters_clone_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
g_strdup_inline.exit27.i:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #11 ; 7 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call noalias ptr @g_strdup(ptr noundef %i.b)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noalias ptr @g_strdup(ptr noundef %i.e)
  %i.g = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(6) %i.h, ptr noundef readonly align 8 dereferenceable(6) %i.i, i64 6, i1 false)
  %i.j = getelementptr i8, ptr %i.a, i64 22
  %i.k = getelementptr i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.j, ptr noundef readonly align 2 dereferenceable(6) %i.k, i64 6, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 28
  %i.m = load i8, ptr %i.l, align 4, !range !6, !noundef !7
end_hunk_0
