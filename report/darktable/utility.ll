Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utility?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@dt_util_float_to_str:bb.a
  %i.a = tail call ptr @newlocale(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef null) #25 ; 2 uses
  %i.b = tail call ptr @uselocale(ptr noundef %i.a) #25
  %i.c = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %0, double noundef %1) #25
  %i.d = tail call ptr @uselocale(ptr noundef %i.b) #25 ; 0 uses
  tail call void @freelocale(ptr noundef %i.a) #25
  ret ptr %i.c
}

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @uselocale(ptr noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freelocale(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noalias ptr @dt_util_str_replace(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.i47 = and i1 %i.a, %i.b
  br i1 %or.cond.i47, label %bb.b, label %dt_util_str_occurence.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.d = tail call ptr @g_strstr_len(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef nonnull %1) #25 ; 2 uses
  %.not.i48 = icmp eq ptr %i.d, null
  br i1 %.not.i48, label %dt_util_str_occurence.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.011.i = phi i32 [ %i.e, %.preheader.i ], [ 0, %bb.b ]
  %.0.i49 = phi ptr [ %i.h, %.preheader.i ], [ %i.d, %bb.b ]
  %i.e = add i32 %.011.i, 1                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i49, i64 1 ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #24
  %i.h = tail call ptr @g_strstr_len(ptr noundef nonnull %i.f, i64 noundef %i.g, ptr noundef nonnull %1) #25 ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %dt_util_str_occurence.exit, label %.preheader.i

dt_util_str_occurence.exit:                       ; preds = %.preheader.i
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %dt_util_str_occurence.exit.thread, label %bb.c

bb.c:                                             ; preds = %dt_util_str_occurence.exit
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.j = sext i32 %i.e to i64
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.l = mul i64 %i.k, %i.j
  %i.m = add i64 %i.i, 1
  %i.n = add i64 %i.m, %i.l
  %i.o = tail call noalias ptr @g_malloc_n(i64 noundef %i.n, i64 noundef 1) #26 ; 3 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = tail call ptr @g_strstr_len(ptr noundef nonnull %0, i64 noundef %i.p, ptr noundef nonnull %1) #25 ; 2 uses
  %.not45 = icmp eq ptr %i.r, null
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.041 = phi ptr [ %i.ac, %.preheader ], [ %i.r, %bb.c ] ; 3 uses
  %.039 = phi ptr [ %i.z, %.preheader ], [ %0, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %i.x, %.preheader ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = ptrtoint ptr %.041 to i64
  %i.t = ptrtoint ptr %.039 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr nonnull align 1 %.039, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.0, i64 %i.u ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %2, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.z = getelementptr inbounds nuw i8, ptr %.041, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #24
  %i.ac = tail call ptr @g_strstr_len(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull %1) #25 ; 2 uses
  %.not46 = icmp eq ptr %i.ac, null
  br i1 %.not46, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.c
  %.140 = phi ptr [ %0, %bb.c ], [ %i.z, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.o, %bb.c ], [ %i.x, %.preheader ] ; 2 uses
  %i.ad = ptrtoint ptr %i.q to i64
  %i.ae = ptrtoint ptr %.140 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr nonnull align 1 %.140, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %.1, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !19
  br label %g_strdup_inline.exit

dt_util_str_occurence.exit.thread:                ; preds = %bb.b, %bb.a, %dt_util_str_occurence.exit
  %i.ah = tail call noalias ptr @g_strdup(ptr noundef %0) #25
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %dt_util_str_occurence.exit.thread, %.loopexit
  %.042 = phi ptr [ %i.o, %.loopexit ], [ %i.ah, %dt_util_str_occurence.exit.thread ]
  ret ptr %.042
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #6

declare noalias ptr @g_strjoinv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @dt_util_glist_uniq(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @g_list_sort(ptr noundef nonnull %0, ptr noundef nonnull @g_strcmp0) #25 ; 3 uses
  %.not2538 = icmp eq ptr %i.a, null
  br i1 %.not2538, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.042 = phi ptr [ %i.f, %bb.d ], [ %i.a, %bb.b ] ; 3 uses
  %.01741 = phi ptr [ %.136, %bb.d ], [ null, %bb.b ] ; 2 uses
  %.01940 = phi ptr [ %.12034, %bb.d ], [ null, %bb.b ] ; 2 uses
  %.02139 = phi ptr [ %.12232, %bb.d ], [ %i.a, %bb.b ] ; 2 uses
  %i.b = load ptr, ptr %.042, align 8, !tbaa !15  ; 3 uses
  %i.c = tail call i32 @g_strcmp0(ptr noundef %.01940, ptr noundef %i.b) #25
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @g_free(ptr noundef %i.b) #25
  %i.d = tail call ptr @g_list_delete_link(ptr noundef %.02139, ptr noundef nonnull %.042) #25 ; 2 uses
  %.not27 = icmp eq ptr %.01741, null
  br i1 %.not27, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.136 = phi ptr [ %.01741, %bb.c ], [ %.042, %.lr.ph ] ; 2 uses
  %.12034 = phi ptr [ %.01940, %bb.c ], [ %i.b, %.lr.ph ]
  %.12232 = phi ptr [ %i.d, %bb.c ], [ %.02139, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.136, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.023 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %bb.c ], [ %.12232, %bb.d ]
  ret ptr %.023
}

declare ptr @g_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_strcmp0(ptr noundef, ptr noundef) #2

declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias ptr @dt_util_fix_path(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %g_strdup_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !19
  switch i8 %i.b, label %bb.i [
    i8 0, label %g_strdup_inline.exit
    i8 126, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.f, 47
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %i.g = phi i8 [ %.pre, %bb.e ], [ %i.f, %bb.d ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 1, %bb.d ] ; 3 uses
  switch i8 %i.g, label %bb.e [
    i8 0, label %.critedge
    i8 47, label %.critedge
  ]

bb.e:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !19
  br label %.preheader

.critedge:                                        ; preds = %.preheader, %.preheader
  %1 = shl i64 %indvars.iv, 32
  %sext = add i64 %1, -4294967296
  %2 = ashr exact i64 %sext, 32
  %i.h = tail call noalias ptr @g_strndup(ptr noundef nonnull %i.e, i64 noundef %2) #25
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.d, %bb.c
  %.025 = phi ptr [ %i.h, %.critedge ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %indvars.iv, %.critedge ], [ 1, %bb.d ], [ 1, %bb.c ]
  %i.i = tail call ptr @dt_loc_get_home_dir(ptr noundef %.025) #25 ; 3 uses
  tail call void @g_free(ptr noundef %.025) #25
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noalias ptr @g_strdup(ptr noundef nonnull %0) #25
  br label %g_strdup_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.1
  %i.l = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef null) #25
  tail call void @g_free(ptr noundef nonnull %i.i) #25
  br label %g_strdup_inline.exit

bb.i:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @g_strdup(ptr noundef nonnull %0) #25
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.h, %bb.g, %bb.i, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.m, %bb.i ], [ %i.j, %bb.g ], [ %i.l, %bb.h ]
  ret ptr %.2
}

declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @dt_loc_get_home_dir(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, argmem: readwrite) uwtable
define noundef i64 @dt_utf8_strlcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not43 = icmp eq i64 %2, 0
  br i1 %.not43, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @g_utf8_skip, align 8
  %i.c = load i8, ptr %1, align 1, !tbaa !19      ; 2 uses
  %.not59 = icmp eq i8 %i.c, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph61

bb.b:                                             ; preds = %.lr.ph61
  %i.d = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph, %bb.b
  %i.e = phi i8 [ %i.d, %bb.b ], [ %i.c, %.lr.ph ]
  %.03760 = phi ptr [ %i.j, %bb.b ], [ %1, %.lr.ph ]
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %.03760, i64 %i.i ; 5 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.a                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %2
  br i1 %i.m, label %bb.b, label %.critedge

.critedge:                                        ; preds = %.lr.ph61, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %.lr.ph61 ]
  %i.n = tail call ptr @g_utf8_prev_char(ptr noundef %.0.lcssa) #24 ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = tail call ptr @strncpy(ptr noundef %0, ptr noundef %1, i64 noundef %i.p) #25 ; 0 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !19
  %i.s = load i8, ptr %i.n, align 1, !tbaa !19    ; 2 uses
  %.not3239 = icmp eq i8 %i.s, 0
  br i1 %.not3239, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %.critedge
  %i.t = load ptr, ptr @g_utf8_skip, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %bb.c
  %i.u = phi i8 [ %i.s, %.lr.ph41 ], [ %i.aa, %bb.c ]
  %.140 = phi ptr [ %i.n, %.lr.ph41 ], [ %i.z, %bb.c ]
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %.140, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %.not32 = icmp eq i8 %i.aa, 0
  br i1 %.not32, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa56 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.037.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.j, %bb.b ]
  %i.ab = tail call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.lcssa56) #25 ; 0 uses
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %.lcssa56
  store i8 0, ptr %i.ac, align 1, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge, %._crit_edge
  %.2 = phi ptr [ %.037.lcssa, %._crit_edge ], [ %i.n, %.critedge ], [ %i.z, %bb.c ]
  %i.ad = ptrtoint ptr %.2 to i64
  %i.ae = sub i64 %i.ad, %i.a
  ret i64 %i.ae
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @g_utf8_prev_char(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define i64 @dt_strlcpy_to_fixed(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %2, i1 false)
  %i.a = tail call i64 @g_strlcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #25
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_util_test_image_file(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = tail call i32 @g_access(ptr noundef %0, i32 noundef 4) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #25
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 32768
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = icmp sgt i64 %i.h, 0
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = zext i1 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @g_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_util_test_writable_dir(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #25
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = and i32 %i.d, 61440
  %.not4 = icmp eq i32 %i.e, 16384
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @g_access(ptr noundef nonnull %0, i32 noundef 3) #25
  %.not5 = icmp eq i32 %i.f, 0
  %. = zext i1 %.not5 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %., %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

end_hunk_0
