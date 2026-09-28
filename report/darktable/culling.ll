Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/culling?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_culling_set_overlays_mode:bb.a
  %.0 = load ptr, ptr %i.ai, align 8, !tbaa !73   ; 2 uses
  %.not44 = icmp eq ptr %.0, null
  br i1 %.not44, label %._crit_edge, label %bb.c

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_remove_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_thumbnail_set_overlay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_culling_force_overlay(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !18
  %i.b = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.1, i32 noundef %i.a) #13 ; 2 uses
  %i.c = tail call i32 @dt_conf_get_int(ptr noundef %i.b) #13 ; 2 uses
  tail call void @g_free(ptr noundef %i.b) #13
  %i.d = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #14 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) @.str.41, i64 24, i1 false)
  %i.e = tail call fastcc ptr @_thumbs_get_overlays_class(i32 noundef %i.c) ; 3 uses
  %.not41 = icmp eq i32 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  br i1 %.not41, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @dt_gui_remove_class(ptr noundef %i.g, ptr noundef nonnull %i.d) #13
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !19
  tail call void @dt_gui_add_class(ptr noundef %i.h, ptr noundef %i.e) #13
  %i.i = load i32, ptr %0, align 8, !tbaa !18
  %i.j = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.2, i32 noundef %i.i) #13 ; 3 uses
  %i.k = tail call i32 @dt_conf_key_exists(ptr noundef %i.j) #13
  %.not42 = icmp eq i32 %i.k, 0
  %.str.3. = select i1 %.not42, ptr @.str.3, ptr %i.j
  %i.l = tail call i32 @dt_conf_get_int(ptr noundef %.str.3.) #13
  tail call void @g_free(ptr noundef %i.j) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @dt_gui_remove_class(ptr noundef %i.g, ptr noundef %i.e) #13
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !19
  tail call void @dt_gui_add_class(ptr noundef %i.m, ptr noundef nonnull %i.d) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ -1, %bb.d ], [ %i.l, %bb.c ]
  %.037 = phi i32 [ 6, %bb.d ], [ %i.c, %bb.c ]   ; 2 uses
  tail call void @g_free(ptr noundef nonnull %i.d) #13
  tail call void @g_free(ptr noundef %i.e) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.044 = load ptr, ptr %i.n, align 8, !tbaa !73  ; 2 uses
  %.not4345 = icmp eq ptr %.044, null
  br i1 %.not4345, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.037, ptr %i.p, align 4, !tbaa !20
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %.046 = phi ptr [ %.044, %.lr.ph ], [ %.0, %bb.i ] ; 2 uses
  %i.q = load ptr, ptr %.046, align 8, !tbaa !75  ; 6 uses
  tail call void @dt_thumbnail_set_overlay(ptr noundef %i.q, i32 noundef %.037, i32 noundef %.1) #13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.s = load float, ptr %i.r, align 8, !tbaa !94 ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, 1.000000e+00
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 388
  %i.v = load float, ptr %i.u, align 4, !tbaa !81
  %i.w = fdiv reassoc nsz arcp contract afn float %i.v, %i.s
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = load float, ptr %i.o, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi reassoc nsz arcp contract afn float [ %i.w, %bb.g ], [ %i.x, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !108
  tail call void @dt_thumbnail_resize(ptr noundef nonnull %i.q, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef 1, float noundef %i.y) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %.0 = load ptr, ptr %i.ad, align 8, !tbaa !73   ; 2 uses
  %.not43 = icmp eq ptr %.0, null
  br i1 %.not43, label %._crit_edge, label %bb.f

bb.j:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @dt_view_manager_gesture_pinch(ptr noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

declare ptr @gdk_event_get_source_device(ptr noundef) local_unnamed_addr #3

declare ptr @gdk_device_get_name(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_device_get_source(ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_deltas(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_container_get_type() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @g_type_check_instance_is_a(ptr noundef, i64 noundef) local_unnamed_addr #10

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #3

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gtk_widget_is_visible(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #3

declare ptr @dt_ui_center(ptr noundef) local_unnamed_addr #3

declare i32 @dt_view_manager_switch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dt_thumbnail_get_zoom100(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_zoom_and_shift(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !81 ; 3 uses
  %i.c = fadd reassoc nsz arcp contract afn float %i.b, %3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.e = load float, ptr %i.d, align 8, !tbaa !94 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.c, %i.e
  %i.g = fcmp reassoc nsz arcp contract afn olt float %i.c, 1.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.g, float 1.000000e+00, float %i.c
  %i.h = select reassoc nsz arcp contract afn i1 %i.f, float %i.e, float %spec.select ; 4 uses
  %i.i = fcmp reassoc nsz arcp contract afn oeq float %i.h, %i.b
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fdiv reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  store float %i.h, ptr %i.a, align 4, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %i.l) #13 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.o = tail call i32 @gtk_widget_get_allocated_height(ptr noundef %i.n) #13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.r = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %i.q) #13 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.t = tail call i32 @gtk_widget_get_allocated_height(ptr noundef %i.s) #13 ; 2 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !66
  %i.v = and i32 %i.u, 16384
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load float, ptr %i.a, align 4, !tbaa !81
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %i.j
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.z = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.aa = fpext reassoc nsz arcp contract afn float %i.j to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.57, i32 noundef %1, i32 noundef %2, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.t, double noundef %i.y, double noundef %i.z, double noundef %i.aa) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = or i32 %2, %1
  %or.cond = icmp sgt i32 %i.ab, -1
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i32 %i.r, %i.m
  %5 = sub nsw i32 %i.t, %i.o
  %.neg = sdiv i32 %i.ac, -2
  %6 = add i32 %.neg, %1
  %.neg66 = sdiv i32 %5, -2
  %i.ad = add i32 %.neg66, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.058 = phi i32 [ %6, %bb.e ], [ %1, %bb.d ]    ; 2 uses
  %.0 = phi i32 [ %i.ad, %bb.e ], [ %2, %bb.d ]   ; 2 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !66
  %i.af = and i32 %i.ae, 16384
  %.not67 = icmp eq i32 %i.af, 0
  br i1 %.not67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !105
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.58, i32 noundef %.058, i32 noundef %.0, double noundef %i.ah, double noundef %i.aj) #13
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !66
  %.pre70 = and i32 %.pre, 16384
  %i.ak = icmp eq i32 %.pre70, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i1 [ %i.ak, %bb.g ], [ true, %bb.f ]
  %7 = insertelement <2 x i32> poison, i32 %.058, i64 0
  %8 = insertelement <2 x i32> %7, i32 %.0, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x double>        ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.al = fpext reassoc nsz arcp contract afn float %i.j to double
  %11 = load <2 x double>, ptr %10, align 8, !tbaa !80
  %12 = fsub reassoc nsz arcp contract afn <2 x double> %9, %11
  %13 = insertelement <2 x double> poison, double %i.al, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fmul reassoc nsz arcp contract afn <2 x double> %12, %14
  %16 = fsub reassoc nsz arcp contract afn <2 x double> %9, %15 ; 3 uses
  store <2 x double> %16, ptr %10, align 8, !tbaa !80
  br i1 %.pre-phi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %17 = extractelement <2 x double> %16, i64 0
  %18 = extractelement <2 x double> %16, i64 1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.59, double noundef %17, double noundef %18) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not69 = icmp eq i32 %4, 0
  br i1 %.not69, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @dt_thumbnail_image_preview_zoom(ptr noundef nonnull %0) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @dt_thumbnail_image_refresh_zoom(ptr noundef nonnull %0) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ 1, %bb.l ], [ 1, %bb.k ]
  ret i32 %.059
}

declare void @dt_thumbnail_image_preview_zoom(ptr noundef) local_unnamed_addr #3

declare i32 @dt_act_on_use_culling_selection(...) local_unnamed_addr #3

declare void @dt_thumbnail_set_mouseover(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_thumbnail_image_refresh(ptr noundef) local_unnamed_addr #3

declare void @dt_thumbnail_reload_infos(ptr noundef) local_unnamed_addr #3

declare void @dt_get_sysresource_level(...) local_unnamed_addr #3

declare void @dt_configure_ppd_dpi(ptr noundef) local_unnamed_addr #3

declare void @dt_view_lighttable_set_zoom(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_int_hash(ptr noundef) #3

declare i32 @g_int_equal(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_list_remove_thumb(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = tail call ptr @gtk_widget_get_parent(ptr noundef %i.b) #13
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call void @gtk_container_remove(ptr noundef %i.c, ptr noundef %i.d) #13
  tail call void @dt_thumbnail_destroy(ptr noundef %0) #13
  ret void
}

declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_hash_table_steal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_thumbnail_new(i32 noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @dt_image_set_aspect_ratio(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #3

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_thumbnail_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #3

declare ptr @g_list_first(ptr noundef) local_unnamed_addr #3

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #3

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare float @dt_thumbnail_get_zoom_ratio(ptr noundef) local_unnamed_addr #3

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_zoom_finalize_timeout(ptr nofree noundef captures(none) initializes((100, 104)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.a, align 4, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.016.i = load ptr, ptr %i.b, align 8, !tbaa !73 ; 2 uses
  %.not1417.i = icmp eq ptr %.016.i, null
  br i1 %.not1417.i, label %dt_culling_zoom_end.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.018.i = phi ptr [ %.0.i, %bb.c ], [ %.016.i, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.018.i, align 8, !tbaa !75 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79
  %.not15.i = icmp eq i32 %i.e, 0
  br i1 %.not15.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @dt_thumbnail_image_refresh_zoom(ptr noundef nonnull %i.c) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !73  ; 2 uses
  %.not14.i = icmp eq ptr %.0.i, null
  br i1 %.not14.i, label %dt_culling_zoom_end.exit, label %.lr.ph.i

dt_culling_zoom_end.exit:                         ; preds = %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!13 = !{!"p1 _ZTS6_GList", !11, i64 0}
!14 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!15 = !{!"float", !7, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = !{!"dt_culling_t", !8, i64 0, !12, i64 8, !13, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !8, i64 60, !8, i64 64, !8, i64 68, !15, i64 72, !8, i64 76, !16, i64 80, !16, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120}
!18 = !{!17, !8, i64 0}
!19 = !{!17, !12, i64 8}
!20 = !{!17, !8, i64 108}
!21 = !{!17, !8, i64 112}
!22 = !{!17, !8, i64 116}
!23 = !{!"dt_codepath_t", !8, i64 0}
!24 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!25 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!26 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!27 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!28 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!29 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!30 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!31 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
end_hunk_0
