Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/navigation?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
begin_hunk_0_@_entry_select:bb.a
  br i1 %i.w, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp samesign ult i32 %i.p, 200
  br i1 %i.x, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp samesign ult i32 %i.p, 400
  br i1 %i.y, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = icmp samesign ult i32 %i.p, 800
  br i1 %i.z, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = icmp samesign ult i32 %i.p, 1600
  %spec.select14 = select i1 %i.aa, i32 7, i32 -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ 6, %bb.n ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ %spec.select14, %bb.o ], [ %spec.select, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ], [ 4, %bb.l ], [ 5, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.b, ptr %i.c, align 8, !tbaa !21
  %i.d = tail call ptr @dt_ui_resize_wrap(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2) #12 ; 13 uses
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #12
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.d, ptr noundef %i.e) #12
  tail call void @gtk_widget_set_app_paintable(ptr noundef %i.d, i32 noundef 1) #12
  %i.f = tail call i64 @g_signal_connect_data(ptr noundef %i.d, ptr noundef nonnull @.str.4, ptr noundef nonnull @_lib_navigation_draw_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.g = tail call i64 @g_signal_connect_data(ptr noundef %i.d, ptr noundef nonnull @.str.5, ptr noundef nonnull @_lib_navigation_button_press_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.h = tail call i64 @g_signal_connect_data(ptr noundef %i.d, ptr noundef nonnull @.str.6, ptr noundef nonnull @_lib_navigation_button_release_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.i = tail call ptr @dt_gui_connect_scroll(ptr noundef %i.d, i32 noundef 3, ptr noundef nonnull @_lib_navigation_scroll_callback, ptr noundef %0) #12 ; 0 uses
  %i.j = tail call ptr @gtk_gesture_zoom_new(ptr noundef %i.d) #12 ; 3 uses
  tail call void @g_object_weak_ref(ptr noundef %i.d, ptr noundef nonnull @g_object_unref, ptr noundef %i.j) #12
  %i.k = tail call i64 @g_signal_connect_data(ptr noundef %i.j, ptr noundef nonnull @.str.7, ptr noundef nonnull @_lib_navigation_pinch_begin_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.l = tail call i64 @g_signal_connect_data(ptr noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @_lib_navigation_pinch_scale_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %i.d, ptr noundef nonnull @.str.9, ptr noundef nonnull @_lib_navigation_motion_notify_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.n = tail call i64 @g_signal_connect_data(ptr noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull @_lib_navigation_leave_notify_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  tail call void @gtk_widget_set_name(ptr noundef %i.d, ptr noundef nonnull @.str.11) #12
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 392
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  %i.r = tail call ptr @dt_action_define(ptr noundef %i.q, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef %i.d, ptr noundef null) #12
  %i.s = tail call ptr @dt_action_register(ptr noundef %i.r, ptr noundef null, ptr noundef nonnull @_lib_navigation_collapse_callback, i32 noundef 78, i32 noundef 5) #12 ; 0 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !155
  %i.u = and i32 %i.t, 2
  %i.v = icmp ne i32 %i.u, 0
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3400), align 8
  %i.x = icmp ne i32 %i.w, 0
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !156
  %i.z = and i32 %i.y, 1048576
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 260, ptr noundef nonnull @__FUNCTION__.gui_init) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !157
  tail call void @dt_control_signal_connect(ptr noundef %i.aa, i32 noundef 21, ptr noundef nonnull @_lib_navigation_control_redraw_callback, ptr noundef nonnull %0) #12
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !155
  %i.ac = and i32 %i.ab, 2
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3472), align 8
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond3 = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !156
  %i.ah = and i32 %i.ag, 1048576
  %.not49 = icmp eq i32 %i.ah, 0
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 262, ptr noundef nonnull @__FUNCTION__.gui_init) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !157
  tail call void @dt_control_signal_connect(ptr noundef %i.ai, i32 noundef 39, ptr noundef nonnull @_lib_navigation_control_redraw_callback, ptr noundef nonnull %0) #12
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !137
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !154
  %i.am = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #12
  %i.an = tail call ptr @dt_bauhaus_combobox_new_full(ptr noundef %i.al, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef %i.am, i32 noundef -1, ptr noundef nonnull @_zoom_changed, ptr noundef null, ptr noundef nonnull @gui_init.texts) #12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !70
  tail call void @dt_bauhaus_combobox_set_default(ptr noundef %i.an, i32 noundef 1) #12
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  tail call void @dt_bauhaus_combobox_add_entry_select_fct(ptr noundef %i.ap, ptr noundef nonnull @_entry_select) #12
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !137
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 392
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.27, ptr %i.a, align 8, !tbaa !158
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !158
  %i.au = call ptr @dt_action_locate(ptr noundef %i.as, ptr noundef nonnull %i.a, i32 noundef 1) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @dt_shortcut_register(ptr noundef %i.au, i32 noundef 0, i32 noundef 8, i32 noundef 51, i32 noundef 8) #12
  call void @dt_shortcut_register(ptr noundef %i.au, i32 noundef 0, i32 noundef 9, i32 noundef 50, i32 noundef 8) #12
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @dt_bauhaus_combobox_set_editable(ptr noundef %i.av, i32 noundef 1) #12
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @dt_bauhaus_widget_hide_label(ptr noundef %i.aw) #12
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @gtk_widget_set_halign(ptr noundef %i.ax, i32 noundef 2) #12
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @gtk_widget_set_valign(ptr noundef %i.ay, i32 noundef 2) #12
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @gtk_widget_set_name(ptr noundef %i.az, ptr noundef nonnull @.str.29) #12
  %i.ba = call ptr @gtk_overlay_new() #12         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !71
  call void @gtk_container_add(ptr noundef %i.ba, ptr noundef %i.d) #12
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !71
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @gtk_overlay_add_overlay(ptr noundef %i.bc, ptr noundef %i.bd) #12
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !71
  call void @dt_gui_add_class(ptr noundef %i.be, ptr noundef nonnull @.str.30) #12
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !71
  call void @gtk_widget_show_all(ptr noundef %i.bf) #12
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store ptr %0, ptr %i.bh, align 8, !tbaa !80
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #8

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @gtk_widget_set_app_paintable(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_navigation_draw_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83   ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84 ; 3 uses
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.f to double ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1440
  %i.m = load double, ptr %i.l, align 8, !tbaa !91 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, %i.j
  %i.o = fptosi double %i.n to i32
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.q = fmul reassoc nsz arcp contract afn double %i.m, %i.p
  %i.r = fptosi double %i.q to i32
  %i.s = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.o, i32 noundef %i.r) #12 ; 4 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1440
  %i.v = load double, ptr %i.u, align 8, !tbaa !91 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.s, double noundef %i.v, double noundef %i.v) #12
  %i.w = call ptr @cairo_create(ptr noundef %i.s) #12 ; 25 uses
  %i.x = call ptr @gtk_widget_get_style_context(ptr noundef %0) #12
  %i.y = load <2 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.z = sitofp <2 x i32> %i.y to <2 x double>    ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = extractelement <2 x double> %i.z, i64 1
  call void @gtk_render_background(ptr noundef %i.x, ptr noundef %i.w, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.aa, double noundef %i.ab) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !117 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1552
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !128
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 604
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !129
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 464 ; 2 uses
  %i.am = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.al) #12 ; 0 uses
  call void @cairo_save(ptr noundef %i.w) #12
  %i.an = load ptr, ptr %i.ac, align 16, !tbaa !117 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 376
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !159 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 380
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !160 ; 3 uses
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.ap to float ; 4 uses
  %i.au = fdiv reassoc nsz arcp contract afn float %i.as, %i.at
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.h to float ; 2 uses
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.ar to float ; 4 uses
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.av, %i.aw
  %i.ay = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.au, float %i.ax)
  %i.az = call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.ap) #12
  %i.ba = load ptr, ptr %i.ac, align 16, !tbaa !117
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 360
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !127
  %i.bd = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bc, i32 noundef 1, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.az) #12 ; 2 uses
  %i.be = fmul reassoc nnan nsz arcp contract afn double %i.j, 5.000000e-01
  %i.bf = fmul reassoc nnan nsz arcp contract afn float %i.av, 5.000000e-01
  %i.bg = fpext reassoc nsz arcp contract afn float %i.bf to double
  call void @cairo_translate(ptr noundef %i.w, double noundef %i.be, double noundef %i.bg) #12
  %i.bh = fpext reassoc nsz arcp contract afn float %i.ay to double ; 2 uses
  call void @cairo_scale(ptr noundef %i.w, double noundef %i.bh, double noundef %i.bh) #12
  %i.bi = fmul reassoc nnan nsz arcp contract afn float %i.at, -5.000000e-01
  %i.bj = fpext reassoc nsz arcp contract afn float %i.bi to double
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.aw, -5.000000e-01
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  call void @cairo_translate(ptr noundef %i.w, double noundef %i.bj, double noundef %i.bl) #12
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.ap to double ; 2 uses
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.ar to double ; 2 uses
  call void @cairo_rectangle(ptr noundef %i.w, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bm, double noundef %i.bn) #12
  call void @cairo_set_source_surface(ptr noundef %i.w, ptr noundef %i.bd, double noundef 0.000000e+00, double noundef 0.000000e+00) #12
  %i.bo = call ptr @cairo_get_source(ptr noundef %i.w) #12
  call void @cairo_pattern_set_filter(ptr noundef %i.bo, i32 noundef 1) #12
  call void @cairo_fill(ptr noundef %i.w) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 2680
  %i.bq = call i32 @dt_dev_get_zoom_bounds(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #12
  %.not68 = icmp eq i32 %i.bq, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @cairo_rectangle(ptr noundef %i.w, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bm, double noundef %i.bn) #12
  call void @cairo_set_source_rgba(ptr noundef %i.w, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 5.000000e-01) #12
  call void @cairo_fill(ptr noundef %i.w) #12
  call void @cairo_set_source_surface(ptr noundef %i.w, ptr noundef %i.bd, double noundef 0.000000e+00, double noundef 0.000000e+00) #12
  %i.br = load float, ptr %i.a, align 4, !tbaa !130
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, 5.000000e-01
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.at
  %i.bu = fpext reassoc nsz arcp contract afn float %i.bt to double
  %i.bv = load float, ptr %i.b, align 4, !tbaa !130
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, 5.000000e-01
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.aw
  %i.by = fpext reassoc nsz arcp contract afn float %i.bx to double
  call void @cairo_translate(ptr noundef %i.w, double noundef %i.bu, double noundef %i.by) #12
  %i.bz = load float, ptr %i.c, align 4, !tbaa !130
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.at ; 3 uses
  store float %i.ca, ptr %i.c, align 4, !tbaa !130
  %i.cb = load float, ptr %i.d, align 4, !tbaa !130
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.aw ; 3 uses
  store float %i.cc, ptr %i.d, align 4, !tbaa !130
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, 5.000000e-01
  %i.ce = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.cd
  %i.cf = fpext reassoc nsz arcp contract afn float %i.ce to double
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cc, 5.000000e-01
  %i.ch = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.cg
  %i.ci = fpext reassoc nsz arcp contract afn float %i.ch to double
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ca, 2.000000e+00
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cc, 2.000000e+00
  %i.cm = fpext reassoc nsz arcp contract afn float %i.cl to double
  call void @cairo_rectangle(ptr noundef %i.w, double noundef %i.cf, double noundef %i.ci, double noundef %i.ck, double noundef %i.cm) #12
  call void @cairo_clip_preserve(ptr noundef %i.w) #12
  call void @cairo_fill_preserve(ptr noundef %i.w) #12
  call void @cairo_set_source_rgb(ptr noundef %i.w, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #12
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1432
  %i.cp = load double, ptr %i.co, align 8, !tbaa !161
  call void @cairo_set_line_width(ptr noundef %i.w, double noundef %i.cp) #12
  call void @cairo_stroke(ptr noundef %i.w) #12
  call void @cairo_set_source_rgb(ptr noundef %i.w, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #12
  %i.cq = load float, ptr %i.c, align 4, !tbaa !130 ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, -5.000000e-01
  %i.cs = fpext reassoc nsz arcp contract afn float %i.cr to double
  %i.ct = load float, ptr %i.d, align 4, !tbaa !130 ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, -5.000000e-01
  %i.cv = fpext reassoc nsz arcp contract afn float %i.cu to double
  %i.cw = fpext reassoc nsz arcp contract afn float %i.cq to double
  %i.cx = fpext reassoc nsz arcp contract afn float %i.ct to double
  call void @cairo_rectangle(ptr noundef %i.w, double noundef %i.cs, double noundef %i.cv, double noundef %i.cw, double noundef %i.cx) #12
  call void @cairo_stroke(ptr noundef %i.w) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @cairo_restore(ptr noundef %i.w) #12
  %i.cy = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.al) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  call void @cairo_destroy(ptr noundef %i.w) #12
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.s, double noundef 0.000000e+00, double noundef 0.000000e+00) #12
  call void @cairo_paint(ptr noundef %1) #12
  call void @cairo_surface_destroy(ptr noundef %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_lib_navigation_button_press_callback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 6 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #12
  %i.c = load i32, ptr %1, align 8, !tbaa !13
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !83
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %.val.val = load i32, ptr %.val, align 8, !tbaa !131
  call fastcc void @_lib_navigation_set_position(i32 %.val.val, double noundef %i.h, double noundef %i.j, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !85
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !132
  %i.q = call ptr @dt_ui_center(ptr noundef %i.p) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @gtk_widget_get_allocation(ptr noundef %i.q, ptr noundef nonnull %4) #12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.r, align 4, !tbaa !11
  %i.v = sitofp <2 x i32> %i.u to <2 x double>
  %i.w = load <2 x i32>, ptr %i.s, align 4, !tbaa !11
  %i.x = sitofp <2 x i32> %i.w to <2 x double>
  %i.y = load <2 x double>, ptr %i.t, align 8, !tbaa !13
  %i.z = fmul reassoc nsz arcp contract afn <2 x double> %i.y, %i.v
  %i.aa = fdiv reassoc nsz arcp contract afn <2 x double> %i.z, %i.x
  store <2 x double> %i.aa, ptr %i.t, align 8, !tbaa !13
  %i.ab = call i32 @gtk_widget_event(ptr noundef %i.q, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_lib_navigation_button_release_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  store i32 0, ptr %i.b, align 8, !tbaa !131
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @_lib_navigation_scroll_callback(ptr noundef %0, double noundef %1, double noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = tail call ptr @gtk_get_current_event() #12 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @gdk_event_get_source_device(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.d) #12
  %i.f = icmp eq i32 %i.e, 6
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2680
  %i.l = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.m = fptrunc reassoc nsz arcp contract afn double %2 to float
  tail call void @dt_dev_zoom_move(ptr noundef nonnull %i.k, i32 noundef 5, float noundef 1.500000e+01, i32 noundef 0, float noundef %i.l, float noundef %i.m, i32 noundef 1) #12
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call i32 (...) @dt_key_modifier_state() #12
  %i.o = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.p = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !13
  %i.u = call fastcc i32 @_lib_navigation_widget_to_center(ptr noundef %0, double noundef %i.r, double noundef %i.t, ptr noundef %i.a, ptr noundef %i.b)
  %.not15 = icmp eq i32 %i.u, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = or i32 %i.p, %i.n
  %i.w = and i32 %i.v, %i.o
  %i.x = icmp ne i32 %i.w, 4
  %i.y = zext i1 %i.x to i32
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2680
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %2, 0.000000e+00
  %i.ac = zext i1 %i.ab to i32
  %i.ad = load double, ptr %i.a, align 8, !tbaa !133
  %i.ae = fptrunc reassoc nsz arcp contract afn double %i.ad to float
  %i.af = load double, ptr %i.b, align 8, !tbaa !133
  %i.ag = fptrunc reassoc nsz arcp contract afn double %i.af to float
  tail call void @dt_dev_zoom_move(ptr noundef nonnull %i.aa, i32 noundef 6, float noundef 0.000000e+00, i32 noundef %i.ac, float noundef %i.ae, float noundef %i.ag, i32 noundef %i.y) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  tail call void @gdk_event_free(ptr noundef nonnull %i.c) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  ret void
}

declare ptr @dt_gui_connect_scroll(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @gtk_gesture_zoom_new(ptr noundef) local_unnamed_addr #9

declare void @g_object_weak_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @g_object_unref(ptr noundef) #9

; Function Attrs: nounwind uwtable
define internal void @_lib_navigation_pinch_begin_callback(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = tail call i32 @gtk_gesture_set_state(ptr noundef %0, i32 noundef 1) #12 ; 0 uses
  store double 1.000000e+00, ptr @pinch_last_scale, align 8, !tbaa !133
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_lib_navigation_pinch_scale_callback(ptr noundef %0, double noundef %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.e = call i32 @gtk_gesture_get_bounding_box_center(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %i.a, align 8, !tbaa !133
  %i.g = load double, ptr %i.b, align 8, !tbaa !133
  %i.h = call fastcc i32 @_lib_navigation_widget_to_center(ptr noundef %0, double noundef %i.f, double noundef %i.g, ptr noundef %i.c, ptr noundef %i.d)
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr @pinch_last_scale, align 8, !tbaa !133
  %i.j = fdiv reassoc nsz arcp contract afn double %1, %i.i ; 2 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt double %i.j, 1.100000e+00 ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn olt double %i.j, f0x3FED1745D1745D17 ; 2 uses
  %i.m = or i1 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.l, true
  %spec.select9 = sext i1 %not. to i32
  %.0 = select i1 %i.k, i32 1, i32 %spec.select9
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2680
  %i.p = load double, ptr %i.c, align 8, !tbaa !133
  %i.q = fptrunc reassoc nsz arcp contract afn double %i.p to float
  %i.r = load double, ptr %i.d, align 8, !tbaa !133
  %i.s = fptrunc reassoc nsz arcp contract afn double %i.r to float
  call void @dt_dev_zoom_move(ptr noundef nonnull %i.o, i32 noundef 6, float noundef 0.000000e+00, i32 noundef %.0, float noundef %i.q, float noundef %i.s, i32 noundef 1) #12
  store double %1, ptr @pinch_last_scale, align 8, !tbaa !133
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_navigation_motion_notify_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83
  %i.i = getelementptr i8, ptr %2, i64 288
  %.val = load ptr, ptr %i.i, align 8, !tbaa !21
  %.val.val = load i32, ptr %.val, align 8, !tbaa !131
  call fastcc void @_lib_navigation_set_position(i32 %.val.val, double noundef %i.b, double noundef %i.d, i32 noundef %i.f, i32 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_lib_navigation_leave_notify_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  ret i32 1
}

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @dt_action_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9
end_hunk_0
begin_hunk_1_@_zoom_changed:bb.a
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale(ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, 5.000000e-01
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.o = fdiv reassoc nsz arcp contract afn float 5.000000e-01, %i.j
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.l, 4
  %i.q = fcmp reassoc nsz arcp contract afn une float %i.j, 1.000000e+00 ; 2 uses
  %or.cond3 = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.j
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.s = icmp ult i32 %i.l, 9
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.l, -5
  %.not25 = xor i1 %i.q, true
  %i.u = zext i1 %.not25 to i32
  %i.v = add nsw i32 %i.t, %i.u
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.l to float
  %i.x = fmul reassoc nsz arcp contract afn float %i.j, f0x3C23D70A
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.w
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.d, %bb.g, %bb.k, %bb.l, %bb.i, %bb.f, %bb.e
  %.020 = phi nsz float [ %i.n, %bb.e ], [ %i.y, %bb.l ], [ 1.000000e+00, %bb.f ], [ %i.o, %bb.g ], [ %i.r, %bb.i ], [ 1.000000e+00, %bb.k ], [ 1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.d ]
  %.019 = phi i32 [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ %i.v, %bb.k ], [ 0, %bb.d ], [ 0, %bb.d ]
  %i.z = phi i32 [ 0, %bb.e ], [ 0, %bb.l ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %bb.k ], [ 1, %bb.d ], [ 1, %bb.d ]
  %.0 = phi i32 [ 3, %bb.e ], [ 3, %bb.l ], [ 1, %bb.f ], [ 3, %bb.g ], [ 3, %bb.i ], [ 2, %bb.k ], [ 0, %bb.d ], [ 0, %bb.d ]
  call void @dt_dev_zoom_move(ptr noundef nonnull %i.k, i32 noundef %.0, float noundef %.020, i32 noundef %.019, float noundef -1.000000e+00, float noundef -1.000000e+00, i32 noundef %i.z) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @dt_bauhaus_combobox_set_default(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @dt_bauhaus_combobox_add_entry_select_fct(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @dt_shortcut_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @dt_bauhaus_combobox_set_editable(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @dt_bauhaus_widget_hide_label(ptr noundef) local_unnamed_addr #9

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @gtk_widget_set_valign(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @gtk_overlay_new() local_unnamed_addr #9

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @gtk_overlay_add_overlay(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @g_free(ptr noundef %i.b) #12
  store ptr null, ptr %i.a, align 8, !tbaa !21
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #9

declare i32 @dt_lib_is_visible(ptr noundef) local_unnamed_addr #9

declare void @dt_lib_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @dt_dev_get_viewport_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare float @dt_dev_get_zoom_scale(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #9

declare i32 @dt_bauhaus_combobox_set_from_text(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @dt_bauhaus_combobox_set_text(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #9

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #9

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #9

declare ptr @dt_action_locate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #9

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #9

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_save(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #11

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #9

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_pattern_set_filter(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #9

declare void @cairo_fill(ptr noundef) local_unnamed_addr #9

declare i32 @dt_dev_get_zoom_bounds(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_clip_preserve(ptr noundef) local_unnamed_addr #9

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #9

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #9

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #9

declare void @cairo_restore(ptr noundef) local_unnamed_addr #9

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #9

declare void @cairo_paint(ptr noundef) local_unnamed_addr #9

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #9

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_lib_navigation_set_position(i32 %.288.val.0.val, double noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %.288.val.0.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %3, i64 1 ; 2 uses
  %i.e = add nsw <2 x i32> %i.d, splat (i32 -10)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2680 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = fadd reassoc nsz arcp contract afn <2 x double> %i.j, splat (double -5.000000e+00)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !11
  %i.m = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !11
  %i.o = sitofp <2 x i32> %i.e to <2 x float>
  %i.p = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.n, i64 1
  %i.r = sitofp <2 x i32> %i.q to <2 x float>     ; 2 uses
  %i.s = fdiv reassoc nsz arcp contract afn <2 x float> %i.m, %i.r ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.t, float %i.u)
  %i.w = fpext <2 x float> %i.o to <2 x double>
  %i.x = fdiv reassoc nsz arcp contract afn <2 x double> %i.k, %i.w
  %i.y = fadd reassoc nsz arcp contract afn <2 x double> %i.x, splat (double -5.000000e-01)
  %i.z = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, %i.r
  %i.ac = fdiv reassoc nsz arcp contract afn <2 x float> %i.ab, %i.m
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  %i.ae = fdiv reassoc nsz arcp contract afn <2 x double> %i.y, %i.ad
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  %i.ag = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.af, <2 x float> splat (float 5.000000e-01))
  %i.ah = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ag, <2 x float> splat (float -5.000000e-01)) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  call void @dt_dev_zoom_move(ptr noundef nonnull %i.g, i32 noundef 4, float noundef 0.000000e+00, i32 noundef 0, float noundef %i.ai, float noundef %i.aj, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @dt_dev_get_processed_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @dt_dev_zoom_move(ptr noundef, i32 noundef, float noundef, i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #9

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #9

declare ptr @dt_bauhaus_combobox_get_text(ptr noundef) local_unnamed_addr #9

declare ptr @gtk_get_current_event() local_unnamed_addr #9

declare ptr @gdk_event_get_source_device(ptr noundef) local_unnamed_addr #9

declare i32 @gdk_device_get_source(ptr noundef) local_unnamed_addr #9

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_lib_navigation_widget_to_center(ptr noundef %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %6 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !117 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1552
  %i.m = load i32, ptr %i.l, align 16, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 604
  %i.o = load i32, ptr %i.n, align 4, !tbaa !129
  %.not31 = icmp eq i32 %i.m, %i.o
  br i1 %.not31, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2680 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.q = tail call ptr @gtk_event_controller_get_widget(ptr noundef %0) #12
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !85
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132
  %i.t = tail call ptr @dt_ui_center(ptr noundef %i.s) #12
  call void @gtk_widget_get_allocation(ptr noundef %i.q, ptr noundef nonnull %5) #12
  call void @gtk_widget_get_allocation(ptr noundef %i.t, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.u = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.a, align 4, !tbaa !11
  %i.x = load i32, ptr %i.b, align 4, !tbaa !11
  %i.y = load <2 x i32>, ptr %i.v, align 4, !tbaa !11
  %i.z = sitofp <2 x i32> %i.y to <2 x double>    ; 2 uses
  %i.aa = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 2 uses
  %i.ad = fdiv reassoc nsz arcp contract afn <2 x double> %i.z, %i.ac ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.af = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt double %i.ae, %i.af
  %. = select reassoc nsz arcp contract afn i1 %i.ag, double %i.ae, double %i.af
  %i.ah = insertelement <2 x double> poison, double %., i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <2 x double> %i.ai, %i.ac ; 4 uses
  %i.ak = fsub reassoc nsz arcp contract afn <2 x double> %i.aj, %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.al = call i32 @dt_dev_get_zoom_bounds(ptr noundef nonnull %i.p, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12
  %.not32 = icmp eq i32 %i.al, 0
  br i1 %.not32, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load float, ptr %i.e, align 4, !tbaa !130
  %.pre39 = load float, ptr %i.f, align 4, !tbaa !130
  %.pre40 = load float, ptr %i.c, align 4, !tbaa !130
  %.pre41 = load float, ptr %i.d, align 4, !tbaa !130
  %i.am = insertelement <2 x float> poison, float %.pre, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.pre39, i64 1
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.ao
  %i.aq = insertelement <2 x float> poison, float %.pre40, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %.pre41, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fadd reassoc nsz arcp contract afn <2 x double> %i.as, splat (double 5.000000e-01)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.au = phi <2 x double> [ %i.ap, %._crit_edge ], [ %i.aj, %bb.c ] ; 2 uses
  %i.av = phi <2 x double> [ %i.at, %._crit_edge ], [ splat (double 5.000000e-01), %bb.c ]
  %i.aw = fadd reassoc nsz arcp contract afn <2 x double> %i.au, %i.ak
  %i.ax = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = fmul reassoc nsz arcp contract afn <2 x double> %i.aw, splat (double 5.000000e-01)
  %i.ba = insertelement <2 x double> poison, double %1, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %2, i64 1
  %i.bc = fsub reassoc nsz arcp contract afn <2 x double> %i.bb, %i.ax
  %i.bd = fadd reassoc nsz arcp contract afn <2 x double> %i.az, %i.bc
  %i.be = load <2 x i32>, ptr %i.ay, align 4, !tbaa !11
  %i.bf = sitofp <2 x i32> %i.be to <2 x double>
  %i.bg = fmul reassoc nsz arcp contract afn <2 x double> %i.bd, %i.bf
  %i.bh = fdiv reassoc nsz arcp contract afn <2 x double> %i.bg, %i.au ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  store double %i.bi, ptr %3, align 8, !tbaa !133
  %i.bj = extractelement <2 x double> %i.bh, i64 1
  store double %i.bj, ptr %4, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @gdk_event_free(ptr noundef) local_unnamed_addr #9

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #9

declare ptr @gtk_event_controller_get_widget(ptr noundef) local_unnamed_addr #9

declare ptr @dt_ui_center(ptr noundef) local_unnamed_addr #9

declare i32 @gtk_gesture_set_state(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @gtk_gesture_get_bounding_box_center(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }

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
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTS11dt_action_t", !12, i64 0}
!17 = !{!"dt_action_t", !8, i64 0, !15, i64 8, !15, i64 16, !12, i64 24, !16, i64 32, !16, i64 40}
!18 = !{!"p1 _ZTS8_GModule", !12, i64 0}
!19 = !{!"p1 _ZTS10_GtkWidget", !12, i64 0}
!20 = !{!"dt_lib_module_t", !17, i64 0, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !18, i64 280, !12, i64 288, !7, i64 296, !19, i64 424, !19, i64 432, !8, i64 440, !19, i64 448, !19, i64 456, !19, i64 464, !19, i64 472, !8, i64 480}
!21 = !{!20, !12, i64 288}
!22 = !{!"dt_codepath_t", !8, i64 0}
!23 = !{!"p1 _ZTS6_GList", !12, i64 0}
!24 = !{!"p1 _ZTS11_JsonParser", !12, i64 0}
!25 = !{!"p1 _ZTS9dt_conf_t", !12, i64 0}
!26 = !{!"p1 _ZTS12dt_develop_t", !12, i64 0}
!27 = !{!"p1 _ZTS8dt_lib_t", !12, i64 0}
!28 = !{!"p1 _ZTS17dt_view_manager_t", !12, i64 0}
!29 = !{!"p1 _ZTS12dt_control_t", !12, i64 0}
!30 = !{!"p1 _ZTS19dt_control_signal_t", !12, i64 0}
!31 = !{!"p1 _ZTS12dt_gui_gtk_t", !12, i64 0}
!32 = !{!"p1 _ZTS17dt_mipmap_cache_t", !12, i64 0}
!33 = !{!"p1 _ZTS16dt_image_cache_t", !12, i64 0}
!34 = !{!"p1 _ZTS12dt_bauhaus_t", !12, i64 0}
!35 = !{!"p1 _ZTS13dt_database_t", !12, i64 0}
!36 = !{!"p1 _ZTS14dt_pwstorage_t", !12, i64 0}
!37 = !{!"p1 _ZTS11dt_camctl_t", !12, i64 0}
!38 = !{!"p1 _ZTS15dt_collection_t", !12, i64 0}
!39 = !{!"p1 _ZTS14dt_selection_t", !12, i64 0}
!40 = !{!"p1 _ZTS11dt_points_t", !12, i64 0}
!41 = !{!"p1 _ZTS12dt_imageio_t", !12, i64 0}
!42 = !{!"p1 _ZTS11dt_opencl_t", !12, i64 0}
!43 = !{!"p1 _ZTS9dt_dbus_t", !12, i64 0}
!44 = !{!"p1 _ZTS9dt_undo_t", !12, i64 0}
!45 = !{!"p1 _ZTS16dt_colorspaces_t", !12, i64 0}
!46 = !{!"p1 _ZTS9dt_l10n_t", !12, i64 0}
!47 = !{!"dt_pthread_mutex_t", !7, i64 0}
!48 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!49 = !{!"_Bool", !7, i64 0}
!50 = !{!"p1 _ZTS10_GMainLoop", !12, i64 0}
!51 = !{!"p1 _ZTS13_GMainContext", !12, i64 0}
!52 = !{!"p1 _ZTS12_GThreadPool", !12, i64 0}
!53 = !{!"p1 _ZTS12_GAsyncQueue", !12, i64 0}
!54 = !{!"", !48, i64 0, !47, i64 8, !7, i64 48, !49, i64 96, !49, i64 97, !50, i64 104, !51, i64 112, !52, i64 120, !53, i64 128, !53, i64 136, !53, i64 144}
!55 = !{!"double", !7, i64 0}
!56 = !{!"p1 _ZTS10_GTimeZone", !12, i64 0}
!57 = !{!"p1 _ZTS10_GDateTime", !12, i64 0}
!58 = !{!"long", !7, i64 0}
!59 = !{!"p1 int", !12, i64 0}
!60 = !{!"dt_sys_resources_t", !58, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !8, i64 32}
!61 = !{!"dt_backthumb_t", !55, i64 0, !55, i64 8, !8, i64 16, !8, i64 20}
!62 = !{!"dt_gimp_t", !8, i64 0, !15, i64 8, !15, i64 16, !8, i64 24, !8, i64 28}
!63 = !{!"dt_splash_t", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !8, i64 32}
!64 = !{!"darktable_t", !22, i64 0, !8, i64 4, !8, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !24, i64 48, !25, i64 56, !26, i64 64, !27, i64 72, !28, i64 80, !29, i64 88, !30, i64 96, !31, i64 104, !32, i64 112, !33, i64 120, !34, i64 128, !35, i64 136, !36, i64 144, !37, i64 152, !38, i64 160, !39, i64 168, !40, i64 176, !41, i64 184, !42, i64 192, !43, i64 200, !44, i64 208, !45, i64 216, !46, i64 224, !7, i64 232, !47, i64 2792, !47, i64 2832, !47, i64 2872, !47, i64 2912, !47, i64 2952, !47, i64 2992, !15, i64 3032, !15, i64 3040, !15, i64 3048, !15, i64 3056, !15, i64 3064, !15, i64 3072, !15, i64 3080, !15, i64 3088, !15, i64 3096, !15, i64 3104, !15, i64 3112, !15, i64 3120, !15, i64 3128, !54, i64 3136, !23, i64 3288, !55, i64 3296, !23, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !56, i64 3520, !57, i64 3528, !60, i64 3536, !61, i64 3576, !62, i64 3600, !63, i64 3632, !8, i64 3672}
!65 = !{!"p1 _ZTS7_GSList", !12, i64 0}
!66 = !{!"p1 _ZTS15dt_lib_module_t", !12, i64 0}
!67 = !{!"", !66, i64 0}
!68 = !{!"", !66, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!69 = !{!"dt_lib_navigation_t", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 16}
!70 = !{!69, !19, i64 16}
!71 = !{!20, !19, i64 424}
!72 = !{!64, !27, i64 72}
!73 = !{!"p1 _ZTS23dt_colorpicker_sample_t", !12, i64 0}
!74 = !{!"p1 _ZTS21dt_iop_color_picker_t", !12, i64 0}
!75 = !{!"", !66, i64 0, !73, i64 8, !74, i64 16, !65, i64 24, !73, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!76 = !{!"", !66, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !8, i64 64}
!77 = !{!"", !8, i64 0}
!78 = !{!"", !75, i64 0, !76, i64 96, !67, i64 168, !77, i64 176}
!79 = !{!"dt_lib_t", !23, i64 0, !66, i64 8, !78, i64 16}
!80 = !{!79, !66, i64 184}
!81 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!82 = !{!81, !8, i64 8}
!83 = !{!81, !8, i64 12}
!84 = !{!64, !26, i64 64}
!85 = !{!64, !31, i64 104}
!86 = !{!"p1 _ZTS7dt_ui_t", !12, i64 0}
!87 = !{!"dt_gui_widgets_t", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!88 = !{!"dt_gui_scrollbars_t", !19, i64 0, !19, i64 8, !8, i64 16}
!89 = !{!"p1 _ZTS14_cairo_surface", !12, i64 0}
!90 = !{!"dt_gui_gtk_t", !86, i64 0, !87, i64 8, !88, i64 56, !89, i64 80, !8, i64 88, !15, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !55, i64 1384, !55, i64 1392, !55, i64 1400, !55, i64 1408, !19, i64 1416, !55, i64 1424, !55, i64 1432, !55, i64 1440, !55, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!91 = !{!90, !55, i64 1440}
!92 = !{!"p1 _ZTS15dt_iop_module_t", !12, i64 0}
!93 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !12, i64 0}
!94 = !{!"float", !7, i64 0}
!95 = !{!"", !14, i64 0, !14, i64 2}
!96 = !{!"", !8, i64 0, !7, i64 16}
!97 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !95, i64 48, !96, i64 64, !7, i64 96, !8, i64 112}
!98 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!99 = !{!"dt_image_geoloc_t", !55, i64 0, !55, i64 8, !55, i64 16}
!100 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!101 = !{!"p1 _ZTS16dt_cache_entry_t", !12, i64 0}
!102 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !94, i64 8, !94, i64 12, !94, i64 16, !94, i64 20, !94, i64 24, !94, i64 28, !94, i64 32, !94, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !58, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !94, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !58, i64 1448, !58, i64 1456, !58, i64 1464, !58, i64 1472, !8, i64 1480, !97, i64 1488, !7, i64 1616, !15, i64 1656, !8, i64 1664, !8, i64 1668, !98, i64 1672, !99, i64 1680, !100, i64 1704, !14, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !94, i64 1756, !94, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !23, i64 1856, !101, i64 1864, !8, i64 1872, !8, i64 1876}
!103 = !{!"p1 _ZTS15dt_masks_form_t", !12, i64 0}
!104 = !{!"p1 _ZTS19dt_masks_form_gui_t", !12, i64 0}
!105 = !{!"dt_dev_proxy_exposure_t", !92, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!106 = !{!"", !66, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!107 = !{!"", !105, i64 0, !92, i64 40, !106, i64 48, !68, i64 120}
!108 = !{!"dt_dev_chroma_t", !92, i64 0, !92, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!109 = !{!"", !92, i64 0, !92, i64 8, !12, i64 16}
!110 = !{!"", !19, i64 0, !19, i64 8, !8, i64 16, !8, i64 20, !94, i64 24, !94, i64 28, !8, i64 32}
!111 = !{!"", !19, i64 0, !19, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !94, i64 28}
!112 = !{!"", !19, i64 0, !19, i64 8}
!113 = !{!"", !19, i64 0, !8, i64 8}
!114 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!115 = !{!"dt_dev_viewport_t", !19, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !94, i64 68, !94, i64 72, !94, i64 76, !93, i64 80, !19, i64 88, !26, i64 96}
!116 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !55, i64 24, !55, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !55, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !92, i64 88, !93, i64 96, !102, i64 112, !8, i64 2000, !8, i64 2004, !47, i64 2008, !8, i64 2048, !23, i64 2056, !8, i64 2064, !92, i64 2072, !8, i64 2080, !23, i64 2088, !23, i64 2096, !8, i64 2104, !23, i64 2112, !23, i64 2120, !59, i64 2128, !59, i64 2136, !8, i64 2144, !8, i64 2148, !23, i64 2152, !103, i64 2160, !104, i64 2168, !23, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !94, i64 2196, !94, i64 2200, !92, i64 2208, !8, i64 2216, !107, i64 2224, !108, i64 2384, !109, i64 2496, !110, i64 2520, !111, i64 2560, !112, i64 2592, !113, i64 2608, !114, i64 2624, !19, i64 2664, !19, i64 2672, !115, i64 2680, !115, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !23, i64 2904, !8, i64 2912, !26, i64 2920}
!117 = !{!116, !93, i64 96}
!118 = !{!"any p2 pointer", !12, i64 0}
!119 = !{!"p1 long", !12, i64 0}
!120 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !12, i64 0}
!121 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !58, i64 8, !58, i64 16, !118, i64 24, !119, i64 32, !120, i64 40, !119, i64 48, !59, i64 56, !59, i64 64, !58, i64 72, !8, i64 80, !58, i64 88, !58, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!122 = !{!"p1 float", !12, i64 0}
!123 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !12, i64 0}
!124 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !94, i64 16}
!125 = !{!"dt_dev_detail_mask_t", !124, i64 0, !58, i64 24, !122, i64 32}
!126 = !{!"dt_dev_pixelpipe_t", !121, i64 0, !8, i64 120, !58, i64 128, !122, i64 136, !8, i64 144, !8, i64 148, !94, i64 152, !8, i64 156, !8, i64 160, !97, i64 176, !123, i64 304, !123, i64 312, !123, i64 320, !123, i64 328, !23, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !15, i64 360, !58, i64 368, !8, i64 376, !8, i64 380, !94, i64 384, !7, i64 388, !58, i64 416, !47, i64 424, !47, i64 464, !47, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !125, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !102, i64 656, !8, i64 2544, !15, i64 2552, !8, i64 2560, !23, i64 2568, !23, i64 2576, !23, i64 2584, !8, i64 2592, !122, i64 2600, !58, i64 2608, !7, i64 2616, !7, i64 2632}
!127 = !{!126, !15, i64 360}
!128 = !{!116, !8, i64 1552}
!129 = !{!126, !8, i64 604}
!130 = !{!94, !94, i64 0}
!131 = !{!69, !8, i64 0}
!132 = !{!90, !86, i64 0}
!133 = !{!55, !55, i64 0}
!134 = !{!"p1 short", !12, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!14, !14, i64 0}
!137 = !{!64, !28, i64 80}
end_hunk_1
