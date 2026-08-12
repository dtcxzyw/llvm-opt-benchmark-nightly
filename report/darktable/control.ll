inline.NumInlined: 81
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dt_control_shutdown:bb.a
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.41, i32 noundef %i.ak, ptr noundef nonnull %i.aj) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.u, align 8, !tbaa !131
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.g, label %.preheader

bb.j:                                             ; preds = %.preheader
  %.not24 = icmp eq i32 %i.aa, 0
  %i.ao = select i1 %.not24, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull %i.ao) #14
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 3824
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !132
  %i.ar = tail call i32 @dt_pthread_join(i64 noundef %i.aq) #14
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !129
  %i.at = and i32 %i.as, 2
  %.not23.1 = icmp eq i32 %i.at, 0
  br i1 %.not23.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not24.1 = icmp eq i32 %i.ar, 0
  %i.au = select i1 %.not24.1, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %i.au) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3832
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !132
  %i.ax = tail call i32 @dt_pthread_join(i64 noundef %i.aw) #14
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !129
  %i.az = and i32 %i.ay, 2
  %.not23.2 = icmp eq i32 %i.az, 0
  br i1 %.not23.2, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not24.2 = icmp eq i32 %i.ax, 0
  %i.ba = select i1 %.not24.2, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef nonnull %i.ba) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #5

declare i32 @dt_pthread_join(i64 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_control_cleanup(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !80 ; 10 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_jobs_cleanup() #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3496
  %i.c = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3536
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.f) #14 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3352
  %i.i = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.h) #14 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3344 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112  ; 2 uses
  %.not20 = icmp eq ptr %i.k, null
  br i1 %.not20, label %bb.d, label %.preheader

bb.c:                                             ; preds = %.preheader
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !112
  tail call void @g_list_free(ptr noundef %i.l) #14
  br label %bb.d

.preheader:                                       ; preds = %bb.b, %.preheader
  %.024 = phi ptr [ %i.o, %.preheader ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.024, align 8, !tbaa !126
  tail call void @g_free(ptr noundef %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134  ; 2 uses
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %bb.c, label %.preheader

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3744
  %i.q = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.p) #14 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3872
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.r) #14 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %.not22 = icmp eq ptr %i.u, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_sequence_free(ptr noundef nonnull %i.u) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %.not23 = icmp eq ptr %i.w, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_slist_free_full(ptr noundef nonnull %i.w, ptr noundef nonnull @g_free) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !80
  tail call void @free(ptr noundef %i.a) #14
  ret void
}

declare void @dt_control_jobs_cleanup() local_unnamed_addr #3

declare void @g_list_free(ptr noundef) local_unnamed_addr #3

declare void @g_sequence_free(ptr noundef) local_unnamed_addr #3

declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef i32 @dt_control_configure(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !138
  tail call void @dt_view_manager_configure(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #14
  ret i32 1
}

declare void @dt_view_manager_configure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_control_draw_busy_msg(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._PangoRectangle, align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.d = tail call ptr @pango_font_description_copy_static(ptr noundef %i.c) #14 ; 4 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !151
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 1.400000e+01
  %i.i = fptrunc reassoc nsz arcp contract afn double %i.h to float ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 1.024000e+03
  %i.k = fpext reassoc nsz arcp contract afn float %i.j to double
  tail call void @pango_font_description_set_absolute_size(ptr noundef %i.d, double noundef %i.k) #14
  tail call void @pango_font_description_set_weight(ptr noundef %i.d, i32 noundef 700) #14
  %i.l = tail call ptr @pango_cairo_create_layout(ptr noundef %0) #14 ; 7 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.l, ptr noundef %i.d) #14
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #14
  tail call void @pango_layout_set_text(ptr noundef %i.l, ptr noundef %i.m, i32 noundef -1) #14
  call void @pango_layout_get_pixel_extents(ptr noundef %i.l, ptr noundef nonnull %3, ptr noundef null) #14
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !152
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to double ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %1 to double ; 2 uses
  %i.r = fmul reassoc nnan nsz arcp contract afn double %i.q, f0x3FEF5C28F5C28F5C
  %i.s = fcmp reassoc nsz arcp contract afn olt double %i.r, %i.p
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @pango_layout_set_text(ptr noundef %i.l, ptr noundef nonnull @.str.44, i32 noundef -1) #14
  call void @pango_layout_get_pixel_extents(ptr noundef %i.l, ptr noundef nonnull %3, ptr noundef null) #14
  %.pre = load i32, ptr %i.n, align 4, !tbaa !152
  %.pre29 = sitofp reassoc nsz arcp contract afn i32 %.pre to double
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi double [ %.pre29, %bb.b ], [ %i.p, %bb.a ]
  %i.t = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.u = fmul reassoc nnan nsz arcp contract afn double %i.t, 8.500000e-01
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !117
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1432
  %i.x = load double, ptr %i.w, align 8, !tbaa !151
  %i.y = fsub reassoc nnan nsz arcp contract afn double %i.q, %.pre-phi
  %i.z = fmul reassoc nnan nsz arcp contract afn double %i.y, 5.000000e-01
  %i.aa = fpext reassoc nsz arcp contract afn float %i.i to double
  %.neg27 = fmul reassoc nsz arcp contract afn double %i.x, -3.000000e+01
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, f0xBFE5555555555556
  %i.ac = fadd reassoc nsz arcp contract afn double %i.u, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn double %i.ac, %.neg27
  call void @cairo_move_to(ptr noundef %0, double noundef %i.z, double noundef %i.ad) #14
  call void @pango_cairo_layout_path(ptr noundef %0, ptr noundef %i.l) #14
  call void @cairo_set_line_width(ptr noundef %0, double noundef 2.000000e+00) #14
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %0, i32 noundef 29) #14
  call void @cairo_stroke_preserve(ptr noundef %0) #14
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %0, i32 noundef 30) #14
  call void @cairo_fill(ptr noundef %0) #14
  call void @pango_font_description_free(ptr noundef %i.d) #14
  call void @g_object_unref(ptr noundef %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #3

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @pango_cairo_layout_path(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_control_expose(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = tail call ptr @gtk_widget_get_window(ptr noundef %0) #14
  %i.d = tail call ptr @gtk_widget_get_display(ptr noundef %0) #14
  %i.e = tail call ptr @gdk_display_get_default_seat(ptr noundef %i.d) #14
  %i.f = tail call ptr @gdk_seat_get_pointer(ptr noundef %i.e) #14
  %i.g = call ptr @gdk_window_get_device_position(ptr noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #14 ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !80 ; 4 uses
  %i.i = call i32 @gtk_widget_get_allocated_width(ptr noundef %0) #14
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 608 ; 3 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !154
  %i.k = call i32 @gtk_widget_get_allocated_height(ptr noundef %0) #14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 612 ; 2 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !155
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !11
  %i.n = load i32, ptr %i.j, align 8, !tbaa !154
  %i.o = load i32, ptr %i.a, align 4, !tbaa !79
  %i.p = load i32, ptr %i.b, align 4, !tbaa !79
  call void @dt_view_manager_expose(ptr noundef %i.m, ptr noundef %1, i32 noundef %i.n, i32 noundef %i.k, i32 noundef %i.o, i32 noundef %i.p) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 680 ; 2 uses
  %i.r = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #14 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.t = load i32, ptr %i.s, align 8, !tbaa !107
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.j, align 8, !tbaa !154
  %i.w = load i32, ptr %i.l, align 4, !tbaa !155
  call void @dt_control_draw_busy_msg(ptr noundef %1, i32 noundef %i.v, i32 noundef %i.w)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @gdk_window_get_device_position(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gdk_seat_get_pointer(ptr noundef) local_unnamed_addr #3

declare ptr @gdk_display_get_default_seat(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_display(ptr noundef) local_unnamed_addr #3

declare i32 @gtk_widget_get_allocated_width(ptr noundef) local_unnamed_addr #3

declare i32 @gtk_widget_get_allocated_height(ptr noundef) local_unnamed_addr #3

declare void @dt_view_manager_expose(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @dt_control_draw_endmarker(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !156  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !157  ; 2 uses
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.b to double
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1440
  %i.h = load double, ptr %i.g, align 8, !tbaa !158 ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, %i.e
  %i.j = fptosi double %i.i to i32
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.d to double
  %i.l = fmul reassoc nsz arcp contract afn double %i.h, %i.k
  %i.m = fptosi double %i.l to i32
  %i.n = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.j, i32 noundef %i.m) #14 ; 4 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1440
  %i.q = load double, ptr %i.p, align 8, !tbaa !158 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.n, double noundef %i.q, double noundef %i.q) #14
  %i.r = call ptr @cairo_create(ptr noundef %i.n) #14 ; 9 uses
  %i.s = ptrtoint ptr %2 to i64
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.b to float ; 5 uses
  %i.u = and i64 %i.s, 4294967295
  %.not.i = icmp eq i64 %i.u, 0                   ; 2 uses
  %.sroa.93.0.v.i = select i1 %.not.i, float 4.200000e-01, float f0x3F147AE2
  %.sroa.93.0.i = fmul reassoc nnan nsz arcp contract afn float %.sroa.93.0.v.i, %i.t ; 2 uses
  %.sroa.75.0.v.i = select i1 %.not.i, float 3.700000e-01, float 6.300000e-01
  %.sroa.75.0.i = fmul reassoc nnan nsz arcp contract afn float %.sroa.75.0.v.i, %i.t ; 2 uses
  %.sroa.111.0.i = fmul reassoc nnan nsz arcp contract afn float %i.t, 5.000000e-01
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.d to float ; 5 uses
  %i.w = fmul reassoc nnan nsz arcp contract afn float %i.v, 7.400000e-01
  %i.x = fmul reassoc nnan nsz arcp contract afn float %i.v, 5.000000e-01
  %i.y = fmul reassoc nnan nsz arcp contract afn float %i.v, 5.900000e-01
  call void @cairo_set_line_width(ptr noundef %i.r, double noundef 2.000000e+00) #14
  call void @cairo_set_source_rgb(ptr noundef %i.r, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #14
  %i.z = fpext reassoc nsz arcp contract afn float %.sroa.93.0.i to double ; 3 uses
  %i.aa = fpext reassoc nsz arcp contract afn float %i.y to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.r, double noundef %i.z, double noundef %i.aa) #14
  %i.ab = fpext reassoc nsz arcp contract afn float %i.x to double ; 5 uses
  %i.ac = fpext reassoc nsz arcp contract afn float %.sroa.75.0.i to double ; 3 uses
  call void @cairo_curve_to(ptr noundef %i.r, double noundef %i.z, double noundef %i.ab, double noundef %i.ac, double noundef %i.ab, double noundef %i.ac, double noundef %i.aa) #14
  %i.ad = fpext reassoc nsz arcp contract afn float %i.w to double ; 2 uses
  %i.ae = fpext reassoc nsz arcp contract afn float %.sroa.111.0.i to double
  call void @cairo_curve_to(ptr noundef %i.r, double noundef %i.ac, double noundef %i.ad, double noundef %i.z, double noundef %i.ad, double noundef %i.ae, double noundef %i.ab) #14
  %i.af = fsub reassoc nsz arcp contract afn float %i.t, %.sroa.93.0.i
  %i.ag = fsub reassoc nsz arcp contract afn float %i.t, %.sroa.75.0.i
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.v, f0x3ED1EB86
  %i.ai = fmul reassoc nnan nsz arcp contract afn float %i.v, 2.600000e-01
  %i.aj = fpext reassoc nsz arcp contract afn float %i.af to double ; 3 uses
  %i.ak = fpext reassoc nsz arcp contract afn float %i.ai to double ; 2 uses
  %i.al = fpext reassoc nsz arcp contract afn float %i.ag to double ; 3 uses
  %i.am = fpext reassoc nsz arcp contract afn float %i.ah to double ; 2 uses
  call void @cairo_curve_to(ptr noundef %i.r, double noundef %i.aj, double noundef %i.ak, double noundef %i.al, double noundef %i.ak, double noundef %i.al, double noundef %i.am) #14
  call void @cairo_curve_to(ptr noundef %i.r, double noundef %i.al, double noundef %i.ab, double noundef %i.aj, double noundef %i.ab, double noundef %i.aj, double noundef %i.am) #14
  call void @cairo_stroke(ptr noundef %i.r) #14
  call void @cairo_destroy(ptr noundef %i.r) #14
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.n, double noundef 0.000000e+00, double noundef 0.000000e+00) #14
  call void @cairo_paint(ptr noundef %1) #14
  call void @cairo_surface_destroy(ptr noundef %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 1
}

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_control_mouse_leave() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !11
  tail call void @dt_view_manager_mouse_leave(ptr noundef %i.a) #14
  ret void
}

declare void @dt_view_manager_mouse_leave(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_control_mouse_enter() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !11
  tail call void @dt_view_manager_mouse_enter(ptr noundef %i.a) #14
  ret void
}

declare void @dt_view_manager_mouse_enter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
end_hunk_0
