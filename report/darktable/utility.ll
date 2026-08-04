inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@dt_util_normalize_path:bb.a
  %i.w = call noalias ptr @g_strdup(ptr noundef nonnull %i.a) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not42 = icmp eq ptr %i.w, null
  call void @g_free(ptr noundef %i.t) #25
  call void @g_free(ptr noundef %i.u) #25
  br i1 %.not42, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !96
  %i.y = tail call ptr @__errno_location() #28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  %i.aa = call ptr @strerror(i32 noundef %i.z) #25
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.41, ptr noundef %i.u, ptr noundef %i.aa) #29 ; 0 uses
  call void @exit(i32 noundef 1) #30
  unreachable

bb.h:                                             ; preds = %g_realpath.exit
  call void @g_free(ptr noundef null) #25
  br label %bb.i

bb.i:                                             ; preds = %g_realpath.exit, %bb.h, %g_strdup_inline.exit
  %.1 = phi ptr [ %.032, %g_strdup_inline.exit ], [ null, %bb.h ], [ %i.w, %g_realpath.exit ]
  ret ptr %.1
}

declare noalias ptr @g_filename_from_uri(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @g_uri_unescape_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_path_is_absolute(ptr noundef) local_unnamed_addr #2

declare ptr @g_get_current_dir() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @dt_util_path_get_dirname(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @g_path_get_dirname(ptr noundef %0) #25 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.d = shl i64 %i.c, 32
  %sext = add i64 %i.d, -4294967296
  %i.e = ashr exact i64 %sext, 32
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19    ; 2 uses
  %i.h = icmp eq i8 %i.g, 47
  %spec.store.select = select i1 %i.h, i8 0, i8 %i.g
  store i8 %spec.store.select, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare noalias ptr @g_path_get_dirname(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @dt_util_string_count_char(ptr nofree noundef readonly captures(none) %0, i8 noundef signext %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i8 [ %i.f, %.lr.ph ], [ %i.a, %bb.a ]
  %.09 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %.058 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ]
  %i.c = icmp eq i8 %i.b, %1
  %i.d = zext i1 %i.c to i32
  %spec.select = add i32 %.09, %i.d               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define void @dt_util_str_to_loc_numbers_format(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @localeconv() #25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = tail call ptr @g_strdelimit(ptr noundef %0, ptr noundef nonnull @.str.20, i8 noundef signext %i.c) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #4

declare ptr @g_strdelimit(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @dt_util_str_to_glist(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %g_strdup_inline.exit46

g_strdup_inline.exit46:                           ; preds = %bb.a
  %i.b = tail call noalias ptr @g_strdup(ptr noundef nonnull %1) #25 ; 3 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24
  %i.d = and i64 %i.c, 4294967295
  %.not47 = icmp eq i64 %i.d, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %g_strdup_inline.exit46, %g_strdup_inline.exit41
  %.02649 = phi ptr [ %i.k, %g_strdup_inline.exit41 ], [ null, %g_strdup_inline.exit46 ] ; 2 uses
  %.02948 = phi ptr [ %i.i, %g_strdup_inline.exit41 ], [ %i.b, %g_strdup_inline.exit46 ] ; 3 uses
  %i.e = tail call ptr @g_strstr_len(ptr noundef nonnull %.02948, i64 noundef -1, ptr noundef %0) #25 ; 5 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %g_strdup_inline.exit, label %g_strdup_inline.exit41

g_strdup_inline.exit41:                           ; preds = %.lr.ph
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.g = tail call noalias ptr @g_strdup(ptr noundef nonnull %.02948) #25
  store i8 %i.f, ptr %i.e, align 1, !tbaa !19
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #24
  %i.k = tail call ptr @g_list_prepend(ptr noundef %.02649, ptr noundef %i.g) #25 ; 2 uses
  %i.l = and i64 %i.j, 4294967295
  %.not34 = icmp eq i64 %i.l, 0
  br i1 %.not34, label %g_strdup_inline.exit36, label %.lr.ph

g_strdup_inline.exit36:                           ; preds = %g_strdup_inline.exit41
  %i.m = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #27 ; 2 uses
  store i8 0, ptr %i.m, align 1
  %i.n = tail call ptr @g_list_prepend(ptr noundef %i.k, ptr noundef nonnull %i.m) #25
  br label %._crit_edge

g_strdup_inline.exit:                             ; preds = %.lr.ph
  %i.o = tail call noalias ptr @g_strdup(ptr noundef nonnull %.02948) #25
  %i.p = tail call ptr @g_list_prepend(ptr noundef %.02649, ptr noundef %i.o) #25
  br label %._crit_edge

._crit_edge:                                      ; preds = %g_strdup_inline.exit36, %g_strdup_inline.exit, %g_strdup_inline.exit46
  %.026.lcssa = phi ptr [ null, %g_strdup_inline.exit46 ], [ %i.n, %g_strdup_inline.exit36 ], [ %i.p, %g_strdup_inline.exit ]
  %i.q = tail call ptr @g_list_reverse(ptr noundef %.026.lcssa) #25
  tail call void @g_free(ptr noundef nonnull %i.b) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi ptr [ %i.q, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @g_list_reverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias ptr @dt_util_format_exposure(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ult float %0, 1.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call reassoc nsz arcp contract afn float @llvm.nearbyint.f32(float %0)
  %i.c = fcmp reassoc nsz arcp contract afn oeq float %i.b, %0
  %i.d = fpext reassoc nsz arcp contract afn float %0 to double ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.21, double noundef %i.d) #25
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.22, double noundef %i.d) #25
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.g = fcmp reassoc nsz arcp contract afn olt float %0, 2.900000e-01
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = fpext reassoc nsz arcp contract afn float %0 to double
  %i.i = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.h
  %i.j = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, double noundef %i.i) #25
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.k = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %0 ; 2 uses
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.nearbyint.f32(float %i.k)
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.k
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = fpext reassoc nsz arcp contract afn float %0 to double
  %i.o = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.n
  %i.p = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, double noundef %i.o) #25
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %1 = insertelement <2 x float> poison, float %0, i64 0
  %2 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %3 = fdiv reassoc nsz arcp contract afn <2 x float> <float 1.000000e+01, float 1.000000e+02>, %2
  %4 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.nearbyint.v2f32(<2 x float> %3) ; 2 uses
  %5 = extractelement <2 x float> %4, i64 0
  %6 = fmul reassoc nsz arcp contract afn float %5, 1.000000e+01
  %7 = extractelement <2 x float> %4, i64 1
  %i.q = fcmp reassoc nsz arcp contract afn oeq float %6, %7
  %i.r = fpext reassoc nsz arcp contract afn float %0 to double ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.r
  %i.t = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.24, double noundef %i.s) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.u = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.22, double noundef %i.r) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.j, %bb.k, %bb.h, %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.j, %bb.f ], [ %i.p, %bb.h ], [ %i.t, %bb.j ], [ %i.u, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nearbyint.f32(float) #13

; Function Attrs: nounwind uwtable
define noundef ptr @dt_read_file(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.25) ; 6 uses
  %.not25 = icmp eq ptr %i.a, null
  br i1 %.not25, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.c = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 4 uses
  tail call void @rewind(ptr noundef nonnull %i.a)
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #27 ; 5 uses
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef %i.c, ptr noundef nonnull %i.a)
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.g = icmp eq i64 %i.e, %i.c
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.c, ptr %1, align 8, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.d) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.c
  %.2 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.h ], [ %i.d, %bb.g ], [ %i.d, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define void @dt_copy_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.25) ; 6 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.26) ; 3 uses
  %i.c = icmp ne ptr %i.a, null                   ; 2 uses
  %i.d = icmp ne ptr %i.b, null                   ; 2 uses
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 5 uses
  tail call void @rewind(ptr noundef nonnull %i.a)
  %i.g = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.f, i64 noundef 1) #26 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, ptr noundef %0) #25
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.a)
  %.not = icmp eq i64 %i.i, %i.f
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.28, ptr noundef %0) #25
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.j = tail call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.b)
  %.not30 = icmp eq i64 %i.j, %i.f
  br i1 %.not30, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef %1) #25
  br label %.thread

bb.h:                                             ; preds = %bb.a
  br i1 %i.d, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.f, %bb.g, %bb.e, %bb.c, %bb.h
  %.033 = phi ptr [ null, %bb.h ], [ null, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %bb.g ], [ %i.g, %bb.f ]
  %i.k = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.032 = phi ptr [ %.033, %.thread ], [ null, %bb.h ]
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @g_free(ptr noundef %.032) #25
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_try_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @dt_copy_resource_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.a, i64 noundef 4096) #25
  %i.b = call noalias ptr (ptr, ...) @g_build_filename(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef null) #25 ; 2 uses
  call void @dt_copy_file(ptr noundef %i.b, ptr noundef %1)
  call void @g_free(ptr noundef %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @dt_loc_get_datadir(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_get_svg_dimension(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct._RsvgDimensionData) align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %2 = alloca %struct._RsvgRectangle, align 8     ; 4 uses
  %3 = alloca %struct._RsvgRectangle, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = call i32 @rsvg_handle_get_intrinsic_size_in_pixels(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %i.a, align 8, !tbaa !40
  %i.e = call i64 @llvm.lround.i64.f64(double %i.d)
  %i.f = load double, ptr %i.b, align 8, !tbaa !40
  %i.g = call i64 @llvm.lround.i64.f64(double %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.dt_get_svg_dimension.viewport, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.h = call i32 @rsvg_handle_get_geometry_for_layer(ptr noundef %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #25 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
begin_hunk_1_@dt_filename_change_extension:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = shl i64 %i.g, 32
  %sext = add i64 %i.o, 4294967296
  %i.p = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %1, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define ptr @dt_read_file_pattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.b = call ptr @g_dir_open(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a) #25 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35
  call void @g_error_free(ptr noundef %i.d) #25
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @g_pattern_spec_new(ptr noundef %1) #25 ; 2 uses
  %i.f = call ptr @g_dir_read_name(ptr noundef nonnull %i.b) #25 ; 2 uses
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %.01217 = phi ptr [ %.1, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.h = call i32 @g_pattern_match_string(ptr noundef %i.e, ptr noundef nonnull %i.g) #25
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.d, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %.lr.ph
  %i.i = call noalias ptr @g_strdup(ptr noundef nonnull %i.g) #25
  %i.j = call ptr @g_list_append(ptr noundef %.01217, ptr noundef %i.i) #25
  br label %bb.d

bb.d:                                             ; preds = %g_strdup_inline.exit, %.lr.ph
  %.1 = phi ptr [ %i.j, %g_strdup_inline.exit ], [ %.01217, %.lr.ph ] ; 2 uses
  %i.k = call ptr @g_dir_read_name(ptr noundef nonnull %i.b) #25 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.012.lcssa = phi ptr [ null, %bb.c ], [ %.1, %bb.d ]
  call void @g_dir_close(ptr noundef nonnull %i.b) #25
  call void @g_pattern_spec_free(ptr noundef %i.e) #25
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.012.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0
}

declare void @g_error_free(ptr noundef) local_unnamed_addr #2

declare ptr @g_pattern_spec_new(ptr noundef) local_unnamed_addr #2

declare i32 @g_pattern_match_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_pattern_spec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias ptr @dt_str_replace(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_strsplit(ptr noundef %0, ptr noundef %1, i32 noundef -1) #25 ; 2 uses
  %i.b = tail call noalias ptr @g_strjoinv(ptr noundef %2, ptr noundef %i.a) #25
  tail call void @g_strfreev(ptr noundef %i.a) #25
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_str_commasubstring(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.b = tail call noalias ptr @g_strdup(ptr noundef %0) #25 ; 2 uses
  %i.c = tail call ptr @strtok(ptr noundef %i.b, ptr noundef nonnull @__const.dt_str_commasubstring.delimiter) #25 ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %g_strdup_inline.exit, %bb.b
  %.011 = phi ptr [ %i.f, %bb.b ], [ %i.c, %g_strdup_inline.exit ]
  %i.d = tail call i32 @g_strcmp0(ptr noundef nonnull %1, ptr noundef nonnull %.011) #25
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @__const.dt_str_commasubstring.delimiter) #25 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.sink.split, label %.lr.ph

.sink.split:                                      ; preds = %bb.b, %.lr.ph, %g_strdup_inline.exit
  %.1.ph = phi i32 [ 0, %g_strdup_inline.exit ], [ 1, %.lr.ph ], [ 0, %bb.b ]
  tail call void @g_free(ptr noundef %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_is_scene_referred() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32) #25
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.33) #25
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.e, %bb.c ]
  ret i32 %i.f
}

declare i32 @dt_conf_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dt_is_display_referred() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.34) #25
  ret i32 %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #20

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @rsvg_handle_new_from_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

declare void @g_object_unref(ptr noundef) local_unnamed_addr #2

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cairo_surface_status(ptr noundef) local_unnamed_addr #2

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #2

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #2

declare void @cairo_surface_flush(ptr noundef) local_unnamed_addr #2

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.nearbyint.v2f32(<2 x float>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { allocsize(0,1) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { cold nounwind }
attributes #30 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"_GList", !14, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTS6_GList", !14, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!9, !9, i64 0}
!20 = !{!21, !8, i64 24}
!21 = !{!"stat", !22, i64 0, !22, i64 8, !22, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !23, i64 72, !23, i64 88, !23, i64 104, !9, i64 120}
!22 = !{!"long", !9, i64 0}
!23 = !{!"timespec", !22, i64 0, !22, i64 8}
!24 = !{!21, !22, i64 48}
!25 = !{!26, !8, i64 16}
!26 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !22, i64 40, !13, i64 48}
!27 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 20, i64 4, !28, i64 24, i64 4, !28, i64 28, i64 4, !28, i64 32, i64 4, !28, i64 40, i64 8, !29, i64 48, i64 8, !12}
!28 = !{!8, !8, i64 0}
!29 = !{!22, !22, i64 0}
!30 = !{!26, !8, i64 20}
!31 = !{!26, !8, i64 0}
!32 = !{!26, !8, i64 4}
!33 = !{!26, !8, i64 8}
!34 = !{!26, !8, i64 32}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS7_GError", !14, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"dt_get_svg_dimension: argument 0"}
!39 = distinct !{!39, !"dt_get_svg_dimension"}
!40 = !{!41, !41, i64 0}
!41 = !{!"double", !9, i64 0}
!42 = !{!43, !41, i64 16}
!43 = !{!"_RsvgRectangle", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!44 = !{!43, !41, i64 24}
!45 = !{!46, !55, i64 104}
!46 = !{!"darktable_t", !47, i64 0, !8, i64 4, !8, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !48, i64 48, !49, i64 56, !50, i64 64, !51, i64 72, !52, i64 80, !53, i64 88, !54, i64 96, !55, i64 104, !56, i64 112, !57, i64 120, !58, i64 128, !59, i64 136, !60, i64 144, !61, i64 152, !62, i64 160, !63, i64 168, !64, i64 176, !65, i64 184, !66, i64 192, !67, i64 200, !68, i64 208, !69, i64 216, !70, i64 224, !9, i64 232, !71, i64 2792, !71, i64 2832, !71, i64 2872, !71, i64 2912, !71, i64 2952, !71, i64 2992, !13, i64 3032, !13, i64 3040, !13, i64 3048, !13, i64 3056, !13, i64 3064, !13, i64 3072, !13, i64 3080, !13, i64 3088, !13, i64 3096, !13, i64 3104, !13, i64 3112, !13, i64 3120, !13, i64 3128, !72, i64 3136, !17, i64 3288, !41, i64 3296, !17, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !79, i64 3520, !80, i64 3528, !81, i64 3536, !83, i64 3576, !84, i64 3600, !85, i64 3632, !8, i64 3672}
!47 = !{!"dt_codepath_t", !8, i64 0}
!48 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!49 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!50 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!51 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!52 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!53 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!54 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!55 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!56 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!57 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!58 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!59 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!60 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!61 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!62 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!63 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!64 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!65 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!66 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!67 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!68 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!69 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!70 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!71 = !{!"dt_pthread_mutex_t", !9, i64 0}
!72 = !{!"", !73, i64 0, !71, i64 8, !9, i64 48, !74, i64 96, !74, i64 97, !75, i64 104, !76, i64 112, !77, i64 120, !78, i64 128, !78, i64 136, !78, i64 144}
!73 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!74 = !{!"_Bool", !9, i64 0}
!75 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!76 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!77 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!78 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!79 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!80 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!81 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !82, i64 16, !82, i64 24, !8, i64 32}
!82 = !{!"p1 int", !14, i64 0}
!83 = !{!"dt_backthumb_t", !41, i64 0, !41, i64 8, !8, i64 16, !8, i64 20}
!84 = !{!"dt_gimp_t", !8, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28}
!85 = !{!"dt_splash_t", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !8, i64 32}
!86 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!87 = !{!88, !41, i64 1440}
!88 = !{!"dt_gui_gtk_t", !89, i64 0, !90, i64 8, !91, i64 56, !92, i64 80, !8, i64 88, !13, i64 96, !9, i64 104, !9, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !86, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !8, i64 1456, !8, i64 1460, !9, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!89 = !{!"p1 _ZTS7dt_ui_t", !14, i64 0}
!90 = !{!"dt_gui_widgets_t", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!91 = !{!"dt_gui_scrollbars_t", !86, i64 0, !86, i64 8, !8, i64 16}
!92 = !{!"p1 _ZTS14_cairo_surface", !14, i64 0}
!93 = !{!94, !13, i64 8}
!94 = !{!"_GError", !8, i64 0, !8, i64 4, !13, i64 8}
!95 = !{!82, !82, i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!98 = !{!99, !13, i64 0}
!99 = !{!"lconv", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !9, i64 81, !9, i64 82, !9, i64 83, !9, i64 84, !9, i64 85, !9, i64 86, !9, i64 87, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 93}
!100 = !{!101, !8, i64 0}
!101 = !{!"_RsvgDimensionData", !8, i64 0, !8, i64 4, !41, i64 8, !41, i64 16}
!102 = !{!101, !8, i64 4}
!103 = !{!43, !41, i64 0}
!104 = !{!43, !41, i64 8}
end_hunk_1
