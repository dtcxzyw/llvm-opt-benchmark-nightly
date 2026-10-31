Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gtk?download=true
inline.NumInlined: 219
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dt_gui_gtk_load_config:bb.a

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ar = call i32 @dt_conf_key_exists(ptr noundef nonnull @.str.13) #16
  %.not18 = icmp eq i32 %i.ar, 0
  br i1 %.not18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.13) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink = phi i32 [ %i.as, %bb.p ], [ 0, %bb.o ]
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1376
  store i32 %.sink, ptr %i.au, align 8, !tbaa !81
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @dt_ui_main_window(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  ret ptr %i.b
}

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_fullscreen(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_unfullscreen(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_maximize(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_unmaximize(ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_key_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dt_gui_gtk_write_config() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @gtk_window_get_size(ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #16
  call void @gtk_window_get_position(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.i = load i32, ptr %i.a, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.9, i32 noundef %i.i) #16
  %i.j = load i32, ptr %i.b, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.10, i32 noundef %i.j) #16
  %i.k = load i32, ptr %i.c, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.7, i32 noundef %i.k) #16
  %i.l = load i32, ptr %i.d, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.8, i32 noundef %i.l) #16
  %i.m = call ptr @gtk_widget_get_window(ptr noundef %i.h) #16
  %i.n = call i32 @gdk_window_get_state(ptr noundef %i.m) #16
  %i.o = and i32 %i.n, 4
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.12, i32 noundef %i.o) #16
  %i.p = call ptr @gtk_widget_get_window(ptr noundef %i.h) #16
  %i.q = call i32 @gdk_window_get_state(ptr noundef %i.p) #16
  %i.r = and i32 %i.q, 16
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.11, i32 noundef %i.r) #16
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1376
  %i.u = load i32, ptr %i.t, align 8, !tbaa !81
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.13, i32 noundef %i.u) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

declare void @gtk_window_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_window_get_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_conf_set_bool(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gdk_window_get_state(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_gui_gtk_set_source_rgb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.d, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_gui_gtk_set_source_rgba(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %.sroa.0.0.copyload = load double, ptr %i.d, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !69
  %i.e = fpext reassoc nsz arcp contract afn float %2 to double
  %i.f = fmul reassoc nsz arcp contract afn double %.sroa.6.0.copyload, %i.e
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %i.f) #16
  ret void
}

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_gui_gtk_quit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = tail call ptr @gtk_widget_get_style_context(ptr noundef %i.d) #16
  tail call void @gtk_style_context_add_class(ptr noundef %i.e, ptr noundef nonnull @.str.14) #16
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #16
  tail call void @gtk_window_set_title(ptr noundef %i.d, ptr noundef %i.f) #16
  %i.g = tail call i32 @dt_gui_gtk_write_config() ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.k = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.j, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_draw_borders, ptr noundef nonnull inttoptr (i64 2 to ptr)) #16 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !219
  %i.n = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.m, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_draw_borders, ptr noundef nonnull inttoptr (i64 3 to ptr)) #16 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !220
  %i.q = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.p, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_draw_borders, ptr noundef null) #16 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !221
  %i.t = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.s, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_draw_borders, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16 ; 0 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  tail call void @gtk_widget_hide(ptr noundef %i.x) #16
  ret void
}

declare void @gtk_window_set_title(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @g_signal_handlers_block_matched(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_draw_borders(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %4 = alloca %struct._GdkRGBA, align 8           ; 4 uses
  %i.a = tail call i32 @dt_control_running() #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1440
  %i.g = load double, ptr %i.f, align 8, !tbaa !82 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.d, align 4, !tbaa !72
  %i.i = sitofp reassoc nsz arcp contract afn <2 x i32> %i.h to <2 x float> ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 1   ; 17 uses
  %i.k = extractelement <2 x float> %i.i, i64 0   ; 17 uses
  %i.l = fptosi <2 x float> %i.i to <2 x i32>
  %i.m = sitofp reassoc nsz arcp contract afn <2 x i32> %i.l to <2 x double> ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fmul reassoc nsz arcp contract afn double %i.g, %i.n
  %i.p = fptosi double %i.o to i32
  %i.q = extractelement <2 x double> %i.m, i64 1
  %i.r = fmul reassoc nsz arcp contract afn double %i.g, %i.q
  %i.s = fptosi double %i.r to i32
  %i.t = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.p, i32 noundef %i.s) #16 ; 4 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1440
  %i.w = load double, ptr %i.v, align 8, !tbaa !82 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.t, double noundef %i.w, double noundef %i.w) #16
  %i.x = call ptr @cairo_create(ptr noundef %i.t) #16 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.y = call ptr @gtk_widget_get_style_context(ptr noundef %0) #16 ; 2 uses
  %i.z = fpext reassoc nsz arcp contract afn float %i.k to double ; 5 uses
  %i.aa = fpext reassoc nsz arcp contract afn float %i.j to double ; 5 uses
  call void @gtk_render_background(ptr noundef %i.y, ptr noundef %i.x, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.z, double noundef %i.aa) #16
  %i.ab = call i32 @gtk_widget_get_state_flags(ptr noundef %0) #16
  call void @gtk_style_context_get_color(ptr noundef %i.y, i32 noundef %i.ab, ptr noundef nonnull %4) #16
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.x, ptr noundef nonnull %4) #16
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77 ; 4 uses
  %i.ae = tail call i64 @gtk_widget_get_type() #17 ; 8 uses
  switch i32 %i.c, label %bb.u [
    i32 2, label %bb.c
    i32 3, label %bb.i
    i32 0, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83 ; 4 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %dt_ui_panel_visible.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %.not18.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88
  %i.aj = icmp eq i64 %i.ai, %i.ae
  br i1 %i.aj, label %dt_ui_panel_visible.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.ag, i64 noundef %i.ae) #18
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %dt_ui_panel_visible.exit.thread, label %dt_ui_panel_visible.exit, !prof !89

dt_ui_panel_visible.exit.thread:                  ; preds = %bb.c, %bb.f
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %bb.h

dt_ui_panel_visible.exit:                         ; preds = %bb.e, %bb.f
  %i.am = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.ag) #16
  %.not91 = icmp eq i32 %i.am, 0
  br i1 %.not91, label %bb.h, label %bb.g

bb.g:                                             ; preds = %dt_ui_panel_visible.exit
  %i.an = fmul reassoc nnan nsz arcp contract afn float %i.j, 5.000000e-01
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %i.k
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double
  call void @cairo_move_to(ptr noundef %i.x, double noundef %i.z, double noundef %i.ap) #16
  %i.aq = fmul reassoc nnan nsz arcp contract afn float %i.k, 2.000000e+00
  %i.ar = fpext reassoc nsz arcp contract afn float %i.aq to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef 0.000000e+00, double noundef %i.ar) #16
  %i.as = fneg reassoc nsz arcp contract afn float %i.k
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double ; 2 uses
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.at, double noundef %i.at) #16
  br label %bb.aa

bb.h:                                             ; preds = %dt_ui_panel_visible.exit.thread, %dt_ui_panel_visible.exit
  %i.au = fmul reassoc nnan nsz arcp contract afn float %i.j, 5.000000e-01
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.k
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  call void @cairo_move_to(ptr noundef %i.x, double noundef 0.000000e+00, double noundef %i.aw) #16
  %i.ax = fmul reassoc nnan nsz arcp contract afn float %i.k, 2.000000e+00
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef 0.000000e+00, double noundef %i.ay) #16
  %i.az = fneg reassoc nsz arcp contract afn float %i.k
  %i.ba = fpext reassoc nsz arcp contract afn float %i.az to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.z, double noundef %i.ba) #16
  br label %bb.aa

bb.i:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83 ; 4 uses
  %.not.i93 = icmp eq ptr %i.bc, null
  br i1 %.not.i93, label %dt_ui_panel_visible.exit98.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 2 uses
  %.not18.i94 = icmp eq ptr %i.bd, null
  br i1 %.not18.i94, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88
  %i.bf = icmp eq i64 %i.be, %i.ae
  br i1 %i.bf, label %dt_ui_panel_visible.exit98, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.bc, i64 noundef %i.ae) #18
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %dt_ui_panel_visible.exit98.thread, label %dt_ui_panel_visible.exit98, !prof !89

dt_ui_panel_visible.exit98.thread:                ; preds = %bb.i, %bb.l
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %bb.n

dt_ui_panel_visible.exit98:                       ; preds = %bb.k, %bb.l
  %i.bi = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.bc) #16
  %.not90 = icmp eq i32 %i.bi, 0
  br i1 %.not90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %dt_ui_panel_visible.exit98
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.j, 5.000000e-01
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bj, %i.k
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  call void @cairo_move_to(ptr noundef %i.x, double noundef 0.000000e+00, double noundef %i.bl) #16
  %i.bm = fmul reassoc nnan nsz arcp contract afn float %i.k, 2.000000e+00
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef 0.000000e+00, double noundef %i.bn) #16
  %i.bo = fneg reassoc nsz arcp contract afn float %i.k
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bo to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.z, double noundef %i.bp) #16
  br label %bb.aa

bb.n:                                             ; preds = %dt_ui_panel_visible.exit98.thread, %dt_ui_panel_visible.exit98
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %i.j, 5.000000e-01
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.k
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double
  call void @cairo_move_to(ptr noundef %i.x, double noundef %i.z, double noundef %i.bs) #16
  %i.bt = fmul reassoc nnan nsz arcp contract afn float %i.k, 2.000000e+00
  %i.bu = fpext reassoc nsz arcp contract afn float %i.bt to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef 0.000000e+00, double noundef %i.bu) #16
  %i.bv = fneg reassoc nsz arcp contract afn float %i.k
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bv to double ; 2 uses
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.bw, double noundef %i.bw) #16
  br label %bb.aa

bb.o:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 4 uses
  %.not.i99 = icmp eq ptr %i.by, null
  br i1 %.not.i99, label %dt_ui_panel_visible.exit104.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !86 ; 2 uses
  %.not18.i100 = icmp eq ptr %i.bz, null
  br i1 %.not18.i100, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !88
  %i.cb = icmp eq i64 %i.ca, %i.ae
  br i1 %i.cb, label %dt_ui_panel_visible.exit104, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.by, i64 noundef %i.ae) #18
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %dt_ui_panel_visible.exit104.thread, label %dt_ui_panel_visible.exit104, !prof !89

dt_ui_panel_visible.exit104.thread:               ; preds = %bb.o, %bb.r
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %bb.t

dt_ui_panel_visible.exit104:                      ; preds = %bb.q, %bb.r
  %i.ce = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.by) #16
  %.not89 = icmp eq i32 %i.ce, 0
  br i1 %.not89, label %bb.t, label %bb.s

bb.s:                                             ; preds = %dt_ui_panel_visible.exit104
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.k, 5.000000e-01
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cf, %i.j
  %i.ch = fpext reassoc nsz arcp contract afn float %i.cg to double
  call void @cairo_move_to(ptr noundef %i.x, double noundef %i.ch, double noundef %i.aa) #16
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.j, 2.000000e+00
  %i.cj = fpext reassoc nsz arcp contract afn float %i.ci to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.cj, double noundef 0.000000e+00) #16
  %i.ck = fneg reassoc nsz arcp contract afn float %i.j
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double ; 2 uses
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.cl, double noundef %i.cl) #16
  br label %bb.aa

bb.t:                                             ; preds = %dt_ui_panel_visible.exit104.thread, %dt_ui_panel_visible.exit104
  %i.cm = fmul reassoc nnan nsz arcp contract afn float %i.k, 5.000000e-01
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cm, %i.j
  %i.co = fpext reassoc nsz arcp contract afn float %i.cn to double
  call void @cairo_move_to(ptr noundef %i.x, double noundef %i.co, double noundef 0.000000e+00) #16
  %i.cp = fmul reassoc nnan nsz arcp contract afn float %i.j, 2.000000e+00
  %i.cq = fpext reassoc nsz arcp contract afn float %i.cp to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.cq, double noundef 0.000000e+00) #16
  %i.cr = fneg reassoc nsz arcp contract afn float %i.j
  %i.cs = fpext reassoc nsz arcp contract afn float %i.cr to double
  call void @cairo_rel_line_to(ptr noundef %i.x, double noundef %i.cs, double noundef %i.aa) #16
  br label %bb.aa

bb.u:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 4 uses
end_hunk_0
begin_hunk_1_@dt_ui_panel_show:bb.a
.preheader.2:                                     ; preds = %dt_ui_panel_visible.exit.thread.1, %dt_ui_panel_visible.exit.1
  %.not83.2 = icmp eq i32 %1, 2
  br i1 %.not83.2, label %.preheader.3.thread, label %.preheader.2.thread

.preheader.2.thread:                              ; preds = %.preheader.1, %.preheader.2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !83 ; 4 uses
  %.not.i96.2 = icmp eq ptr %i.en, null
  br i1 %.not.i96.2, label %dt_ui_panel_visible.exit.thread.2, label %bb.ao

bb.ao:                                            ; preds = %.preheader.2.thread
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86 ; 2 uses
  %.not18.i.2 = icmp eq ptr %i.eo, null
  br i1 %.not18.i.2, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !88
  %i.eq = icmp eq i64 %i.ep, %i.i
  br i1 %i.eq, label %dt_ui_panel_visible.exit.2, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.er = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.en, i64 noundef %i.i) #18
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %dt_ui_panel_visible.exit.thread.2, label %dt_ui_panel_visible.exit.2, !prof !89

dt_ui_panel_visible.exit.2:                       ; preds = %bb.aq, %bb.ap
  %i.et = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.en) #16
  %.not84.2 = icmp eq i32 %i.et, 0
  br i1 %.not84.2, label %.preheader.3, label %bb.ba

dt_ui_panel_visible.exit.thread.2:                ; preds = %bb.aq, %.preheader.2.thread
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %.preheader.3

.preheader.3:                                     ; preds = %dt_ui_panel_visible.exit.thread.2, %dt_ui_panel_visible.exit.2
  %.not83.3 = icmp eq i32 %1, 3
  br i1 %.not83.3, label %.preheader.4.thread, label %.preheader.3.thread

.preheader.3.thread:                              ; preds = %.preheader.2, %.preheader.3
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !83 ; 4 uses
  %.not.i96.3 = icmp eq ptr %i.ev, null
  br i1 %.not.i96.3, label %dt_ui_panel_visible.exit.thread.3, label %bb.ar

bb.ar:                                            ; preds = %.preheader.3.thread
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !86 ; 2 uses
  %.not18.i.3 = icmp eq ptr %i.ew, null
  br i1 %.not18.i.3, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !88
  %i.ey = icmp eq i64 %i.ex, %i.i
  br i1 %i.ey, label %dt_ui_panel_visible.exit.3, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ez = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.ev, i64 noundef %i.i) #18
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %dt_ui_panel_visible.exit.thread.3, label %dt_ui_panel_visible.exit.3, !prof !89

dt_ui_panel_visible.exit.3:                       ; preds = %bb.at, %bb.as
  %i.fb = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.ev) #16
  %.not84.3 = icmp eq i32 %i.fb, 0
  br i1 %.not84.3, label %.preheader.4, label %bb.ba

dt_ui_panel_visible.exit.thread.3:                ; preds = %bb.at, %.preheader.3.thread
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %.preheader.4

.preheader.4:                                     ; preds = %dt_ui_panel_visible.exit.thread.3, %dt_ui_panel_visible.exit.3
  %.not83.4 = icmp eq i32 %1, 4
  br i1 %.not83.4, label %.preheader.5.thread, label %.preheader.4.thread

.preheader.4.thread:                              ; preds = %.preheader.3, %.preheader.4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !83 ; 4 uses
  %.not.i96.4 = icmp eq ptr %i.fd, null
  br i1 %.not.i96.4, label %dt_ui_panel_visible.exit.thread.4, label %bb.au

bb.au:                                            ; preds = %.preheader.4.thread
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !86 ; 2 uses
  %.not18.i.4 = icmp eq ptr %i.fe, null
  br i1 %.not18.i.4, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !88
  %i.fg = icmp eq i64 %i.ff, %i.i
  br i1 %i.fg, label %dt_ui_panel_visible.exit.4, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fh = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.fd, i64 noundef %i.i) #18
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %dt_ui_panel_visible.exit.thread.4, label %dt_ui_panel_visible.exit.4, !prof !89

dt_ui_panel_visible.exit.4:                       ; preds = %bb.aw, %bb.av
  %i.fj = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.fd) #16
  %.not84.4 = icmp eq i32 %i.fj, 0
  br i1 %.not84.4, label %.preheader.5, label %bb.ba

dt_ui_panel_visible.exit.thread.4:                ; preds = %bb.aw, %.preheader.4.thread
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %.preheader.5

.preheader.5:                                     ; preds = %dt_ui_panel_visible.exit.thread.4, %dt_ui_panel_visible.exit.4
  %.not83.5 = icmp eq i32 %1, 5
  br i1 %.not83.5, label %.critedge, label %.preheader.5.thread

.preheader.5.thread:                              ; preds = %.preheader.4, %.preheader.5
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !83 ; 4 uses
  %.not.i96.5 = icmp eq ptr %i.fl, null
  br i1 %.not.i96.5, label %dt_ui_panel_visible.exit.thread.5, label %bb.ax

bb.ax:                                            ; preds = %.preheader.5.thread
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !86 ; 2 uses
  %.not18.i.5 = icmp eq ptr %i.fm, null
  br i1 %.not18.i.5, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !88
  %i.fo = icmp eq i64 %i.fn, %i.i
  br i1 %i.fo, label %dt_ui_panel_visible.exit.5, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fp = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.fl, i64 noundef %i.i) #18
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %dt_ui_panel_visible.exit.thread.5, label %dt_ui_panel_visible.exit.5, !prof !89

dt_ui_panel_visible.exit.5:                       ; preds = %bb.az, %bb.ay
  %i.fr = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.fl) #16
  %.not84.5 = icmp eq i32 %i.fr, 0
  br i1 %.not84.5, label %.critedge, label %bb.ba

dt_ui_panel_visible.exit.thread.5:                ; preds = %bb.az, %.preheader.5.thread
  call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %.critedge

.critedge:                                        ; preds = %dt_ui_panel_visible.exit.thread.5, %dt_ui_panel_visible.exit.5, %.preheader.5
  %i.fs = call fastcc ptr @_panels_get_view_path(ptr noundef nonnull @.str.83) ; 2 uses
  call void @dt_conf_set_int(ptr noundef %i.fs, i32 noundef 1) #16
  call void @g_free(ptr noundef %i.fs) #16
  br label %bb.bc

bb.ba:                                            ; preds = %dt_ui_panel_visible.exit.5, %dt_ui_panel_visible.exit.4, %dt_ui_panel_visible.exit.3, %dt_ui_panel_visible.exit.2, %dt_ui_panel_visible.exit.1, %dt_ui_panel_visible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ft = call fastcc ptr @_panels_get_view_path(ptr noundef nonnull @.str.86) ; 2 uses
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !97
  %.not.i98 = icmp eq ptr %i.ft, null
  br i1 %.not.i98, label %_panels_get_panel_path.exit100, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @_ui_panel_config_names, i64 %i.f
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !97
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.315, ptr noundef %i.fv, ptr noundef nonnull @.str.88) #16
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_panels_get_panel_path.exit100

_panels_get_panel_path.exit100:                   ; preds = %bb.ba, %bb.bb
  %.0.i99 = phi ptr [ %i.fw, %bb.bb ], [ null, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @dt_conf_set_bool(ptr noundef %.0.i99, i32 noundef 0) #16
  call void @g_free(ptr noundef %.0.i99) #16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.w, %.critedge, %_panels_get_panel_path.exit100, %_panels_get_panel_path.exit95, %.critedge88
  ret void
}

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_ui_update_scrollbars(ptr nofree readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !190
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !132
  %i.e = tail call ptr @dt_view_manager_get_current_view(ptr noundef %i.d) #16 ; 6 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = atomicrmw add ptr %i.g, i32 1 seq_cst, align 4 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 3 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !251
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 328 ; 3 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !252
  %i.m = fcmp reassoc nsz arcp contract afn ogt float %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !119
  %i.q = tail call ptr @gtk_range_get_adjustment(ptr noundef %i.p) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 332
  %i.s = load float, ptr %i.r, align 4, !tbaa !253
  %i.t = fpext reassoc nsz arcp contract afn float %i.s to double
  %i.u = load <2 x float>, ptr %i.i, align 8, !tbaa !254
  %i.v = fpext reassoc nsz arcp contract afn <2 x float> %i.u to <2 x double> ; 2 uses
  %i.w = load float, ptr %i.k, align 8, !tbaa !252
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double ; 2 uses
  %i.y = extractelement <2 x double> %i.v, i64 0
  %i.z = extractelement <2 x double> %i.v, i64 1
  tail call void @gtk_adjustment_configure(ptr noundef %i.q, double noundef %i.t, double noundef %i.z, double noundef %i.y, double noundef 0.000000e+00, double noundef %i.x, double noundef %i.x) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 3 uses
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !255
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 344 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !256
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !120
  %i.ai = tail call ptr @gtk_range_get_adjustment(ptr noundef %i.ah) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 348
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !257
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  %i.am = load <2 x float>, ptr %i.aa, align 8, !tbaa !254
  %i.an = fpext reassoc nsz arcp contract afn <2 x float> %i.am to <2 x double> ; 2 uses
  %i.ao = load float, ptr %i.ac, align 8, !tbaa !256
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double ; 2 uses
  %i.aq = extractelement <2 x double> %i.an, i64 0
  %i.ar = extractelement <2 x double> %i.an, i64 1
  tail call void @gtk_adjustment_configure(ptr noundef %i.ai, double noundef %i.al, double noundef %i.ar, double noundef %i.aq, double noundef 0.000000e+00, double noundef %i.ap, double noundef %i.ap) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = atomicrmw add ptr %i.at, i32 -1 seq_cst, align 4 ; 0 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !119
  %i.ay = load float, ptr %i.i, align 8, !tbaa !251
  %i.az = load float, ptr %i.k, align 8, !tbaa !252
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.ay, %i.az
  %i.bb = zext i1 %i.ba to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.ax, i32 noundef %i.bb) #16
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !120
  %i.bf = load float, ptr %i.aa, align 8, !tbaa !255
  %i.bg = load float, ptr %i.ac, align 8, !tbaa !256
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.bf, %i.bg
  %i.bi = zext i1 %i.bh to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.be, i32 noundef %i.bi) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare ptr @dt_view_manager_get_current_view(ptr noundef) local_unnamed_addr #2

declare void @gtk_adjustment_configure(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @gtk_range_get_adjustment(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_ui_scrollbars_show(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.b, align 8, !tbaa !190
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_ui_update_scrollbars(ptr poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  tail call void @gtk_widget_hide(ptr noundef %i.d) #16
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  tail call void @gtk_widget_hide(ptr noundef %i.g) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dt_ui_panel_visible(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 4 uses
  %i.e = tail call i64 @gtk_widget_get_type() #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !86   ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %.critedge22, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.d, i64 noundef %i.e) #18
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %.critedge22, !prof !89

.critedge:                                        ; preds = %bb.a, %bb.d
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_visible, ptr noundef nonnull @.str.90) #16
  br label %bb.e

.critedge22:                                      ; preds = %bb.c, %bb.d
  %i.k = tail call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.d) #16
  br label %bb.e

bb.e:                                             ; preds = %.critedge22, %.critedge
  %.0 = phi i32 [ %i.k, %.critedge22 ], [ 0, %.critedge ]
  ret i32 %.0
}

declare i32 @gtk_widget_get_visible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dt_ui_panel_get_size(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = icmp eq i32 %1, 5
  %i.c = add i32 %1, -3
  %or.cond3 = icmp ult i32 %i.c, 3
  br i1 %or.cond3, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = tail call fastcc ptr @_panels_get_view_path(ptr noundef nonnull @.str.86) ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !97
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_panels_get_panel_path.exit.thread, label %_panels_get_panel_path.exit

_panels_get_panel_path.exit.thread:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

_panels_get_panel_path.exit:                      ; preds = %bb.b
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ui_panel_config_names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.315, ptr noundef %i.g, ptr noundef nonnull @.str.91) #16
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !97   ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_panels_get_panel_path.exit
  %i.i = call i32 @dt_conf_key_exists(ptr noundef nonnull %i.h) #16
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @dt_conf_get_int(ptr noundef nonnull %i.h) #16
  br label %bb.f

bb.e:                                             ; preds = %_panels_get_panel_path.exit.thread, %bb.c, %_panels_get_panel_path.exit
  %.0.i19 = phi ptr [ null, %_panels_get_panel_path.exit.thread ], [ %i.h, %bb.c ], [ null, %_panels_get_panel_path.exit ]
  %spec.select = select i1 %i.b, i32 120, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i18 = phi ptr [ %i.h, %bb.d ], [ %.0.i19, %bb.e ]
  %.0 = phi i32 [ %i.j, %bb.d ], [ %spec.select, %bb.e ]
  call void @g_free(ptr noundef %.0.i18) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.013 = phi i32 [ %.0, %bb.f ], [ -1, %bb.a ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define void @dt_ui_panel_set_size(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add i32 %1, -3
  %or.cond3 = icmp ult i32 %i.c, 3
  br i1 %or.cond3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 5
  br i1 %i.d, label %.split, label %.split17

.split:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  tail call void @gtk_widget_set_size_request(ptr noundef %i.f, i32 noundef -1, i32 noundef %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.g = tail call fastcc ptr @_panels_get_view_path(ptr noundef nonnull @.str.86) ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !97
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_panels_get_panel_path.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ui_panel_config_names, i64 40), align 8, !tbaa !97
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.315, ptr noundef %i.h, ptr noundef nonnull @.str.91) #16
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !97
  br label %_panels_get_panel_path.exit

_panels_get_panel_path.exit:                      ; preds = %.split, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.c ], [ null, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.e

.split17:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_1
