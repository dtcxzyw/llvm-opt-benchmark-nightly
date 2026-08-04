inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@gui_init:bb.a
  %i.ct = fmul reassoc nsz arcp contract afn double %i.cs, 2.000000e+00
  %i.cu = fptosi double %i.ct to i32
  %i.cv = fptosi double %i.cs to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.ck, i32 noundef %i.cu, i32 noundef %i.cv) #22
  %i.cw = load ptr, ptr %i.cj, align 16, !tbaa !213
  %i.cx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cw, ptr noundef %i.cx) #22
  %i.cy = load ptr, ptr %i.cj, align 16, !tbaa !213
  %i.cz = call i64 @g_signal_connect_data(ptr noundef %i.cy, ptr noundef nonnull @.str.40, ptr noundef nonnull @_origin_color_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.da = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #22
  %i.db = call ptr @gtk_label_new(ptr noundef %i.da) #22 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 16, !tbaa !205
  %i.dd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.db, ptr noundef %i.dd) #22
  %i.de = call ptr @gtk_drawing_area_new() #22    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 5 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !229
  call void @gtk_widget_set_vexpand(ptr noundef %i.de, i32 noundef 1) #22
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !229
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !214
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 332
  %i.dj = load float, ptr %i.di, align 4, !tbaa !215
  %i.dk = fpext reassoc nsz arcp contract afn float %i.dj to double
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1432
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !223
  %i.do = fmul reassoc nsz arcp contract afn double %i.dn, %i.dk ; 2 uses
  %i.dp = fmul reassoc nsz arcp contract afn double %i.do, 2.000000e+00
  %i.dq = fptosi double %i.dp to i32
  %i.dr = fptosi double %i.do to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.dg, i32 noundef %i.dq, i32 noundef %i.dr) #22
  %i.ds = load ptr, ptr %i.df, align 8, !tbaa !229
  %i.dt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #22
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ds, ptr noundef %i.dt) #22
  %i.du = load ptr, ptr %i.df, align 8, !tbaa !229
  %i.dv = call i64 @g_signal_connect_data(ptr noundef %i.du, ptr noundef nonnull @.str.40, ptr noundef nonnull @_target_color_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.dw = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef %0, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 0.000000e+00, float noundef 5.000000e+01, i32 noundef 1) #22 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !184
  %i.dy = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.dw, ptr noundef null, ptr noundef nonnull @.str.44) #22 ; 0 uses
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !184
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.dz, ptr noundef nonnull @.str.23) #22
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !184
  %i.eb = call i64 @g_signal_connect_data(ptr noundef %i.ea, ptr noundef nonnull @.str.45, ptr noundef nonnull @_spot_settings_changed_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !230
  %i.ee = load ptr, ptr %i.ch, align 16, !tbaa !187
  store ptr %i.ee, ptr %i.g, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #22
  %i.eh = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #22
  %i.ei = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.46, i64 noundef 8) #22
  %i.ej = call ptr @gtk_label_new(ptr noundef %i.ei) #22 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ej, i32 noundef 0) #22
  call void @gtk_label_set_xalign(ptr noundef %i.ej, float noundef 5.000000e-01) #22
  call void @gtk_label_set_ellipsize(ptr noundef %i.ej, i32 noundef 3) #22
  call void @dt_gui_add_class(ptr noundef %i.ej, ptr noundef nonnull @.str.58) #22
  store ptr %i.ej, ptr %i.i, align 8, !tbaa !26
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.el = load ptr, ptr %i.cj, align 16, !tbaa !213
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.en = load ptr, ptr %i.dc, align 16, !tbaa !205
  store ptr %i.en, ptr %i.em, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.eo, align 8, !tbaa !26
  %i.ep = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.14, i32 noundef 1323, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.eh, ptr noundef nonnull %i.i) #22
  store ptr %i.ep, ptr %i.h, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.er = call ptr @gtk_label_new(ptr noundef nonnull @.str.47) #22
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.et = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #22
  %i.eu = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.48, i64 noundef 8) #22
  %i.ev = call ptr @gtk_label_new(ptr noundef %i.eu) #22 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ev, i32 noundef 0) #22
  call void @gtk_label_set_xalign(ptr noundef %i.ev, float noundef 5.000000e-01) #22
  call void @gtk_label_set_ellipsize(ptr noundef %i.ev, i32 noundef 3) #22
  call void @dt_gui_add_class(ptr noundef %i.ev, ptr noundef nonnull @.str.58) #22
  store ptr %i.ev, ptr %i.j, align 8, !tbaa !26
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ex = load ptr, ptr %i.df, align 8, !tbaa !229
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ez = load ptr, ptr %i.dx, align 8, !tbaa !184
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fa, align 8, !tbaa !26
  %i.fb = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.14, i32 noundef 1326, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.et, ptr noundef nonnull %i.j) #22 ; 2 uses
  call void @gtk_widget_set_hexpand(ptr noundef %i.fb, i32 noundef 1) #22
  store ptr %i.fb, ptr %i.es, align 8, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fc, align 8, !tbaa !26
  %i.fd = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.14, i32 noundef 1326, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.eg, ptr noundef nonnull %i.h) #22
  store ptr %i.fd, ptr %i.ef, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fe, align 8, !tbaa !26
  %i.ff = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.14, i32 noundef 1326, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ed, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !144 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2224
  store ptr %0, ptr %i.fh, align 8, !tbaa !231
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 2232
  store ptr @_exposure_proxy_get_exposure, ptr %i.fi, align 8, !tbaa !232
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 2240
  store ptr @_exposure_proxy_get_effective_exposure, ptr %i.fj, align 8, !tbaa !233
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 2248
  store ptr @_exposure_proxy_get_black, ptr %i.fk, align 8, !tbaa !234
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 2256
  store ptr @_exposure_proxy_handle_event, ptr %i.fl, align 8, !tbaa !235
  ret void
}

declare ptr @gtk_stack_new() local_unnamed_addr #3

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_shortcut_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_action_widget(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_spot_settings_changed_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = cmpxchg ptr %i.b, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !96  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.h) #22
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.10, float noundef %i.i) #22
  %.val = load ptr, ptr %i.e, align 16, !tbaa !96
  tail call fastcc void @_paint_hue(ptr %.val)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !187
  %i.l = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.k) #22
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4 ; 0 uses
  %i.p = icmp eq i32 %i.l, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2760
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !236
  tail call fastcc void @_auto_set_exposure(ptr noundef nonnull %1, ptr noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare ptr @gtk_drawing_area_new() local_unnamed_addr #3

declare void @gtk_widget_set_vexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_origin_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !237
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !238  ; 2 uses
  %i.g = sitofp reassoc nsz arcp contract afn i32 %i.d to double ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.j = load double, ptr %i.i, align 8, !tbaa !239 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptosi double %i.k to i32
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.j, %i.m
  %i.o = fptosi double %i.n to i32
  %i.p = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.o) #22 ; 4 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1440
  %i.s = load double, ptr %i.r, align 8, !tbaa !239 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.p, double noundef %i.s, double noundef %i.s) #22
  %i.t = call ptr @cairo_create(ptr noundef %i.p) #22 ; 5 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !223
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 3.000000e+00
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.g, -8.000000e+00
  %i.aa = fptosi double %i.z to i32
  %i.ab = fmul reassoc nsz arcp contract afn float %i.y, 2.000000e+00
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.ab
  %i.ae = fptosi float %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ag = load float, ptr %i.af, align 16, !tbaa !14
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %4 = load <2 x float>, ptr %i.ai, align 4, !tbaa !14
  %5 = fpext <2 x float> %4 to <2 x double>       ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.t, double noundef %i.ah, double noundef %6, double noundef %7) #22
  %i.aj = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.al = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  call void @cairo_rectangle(ptr noundef %i.t, double noundef 4.000000e+00, double noundef %i.aj, double noundef %i.ak, double noundef %i.al) #22
  call void @cairo_fill(ptr noundef %i.t) #22
  call void @cairo_stroke(ptr noundef %i.t) #22
  call void @cairo_destroy(ptr noundef %i.t) #22
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.p, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_paint(ptr noundef %1) #22
  call void @cairo_surface_destroy(ptr noundef %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 1
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_target_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !237
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !238  ; 2 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !239 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #22 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !239 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #22
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #22 ; 5 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !223
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 3.000000e+00
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 2 uses
  %i.ab = fadd reassoc nsz arcp contract afn double %i.i, -8.000000e+00
  %i.ac = fptosi double %i.ab to i32
  %i.ad = fmul reassoc nsz arcp contract afn float %i.aa, 2.000000e+00
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fptosi float %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !184
  %i.aj = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ai) #22
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 8.620690e-03
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, f0x3E0D3DCB ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, <float f0x3E038026, float 0.000000e+00> ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 0 ; 4 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ap, splat (float f0x3E53DCB1)
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.ap
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float f0xBC911AA6)
  %i.au = select <2 x i1> %i.aq, <2 x float> %i.as, <2 x float> %i.at
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = fmul reassoc nsz arcp contract afn <4 x float> %i.av, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float 0.000000e+00>
  store <4 x float> %i.aw, ptr %i.b, align 16, !tbaa !14
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.ax = load float, ptr %i.a, align 16, !tbaa !14
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %4 = load <2 x float>, ptr %i.az, align 4, !tbaa !14
  %5 = fpext <2 x float> %4 to <2 x double>       ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.ay, double noundef %6, double noundef %7) #22
  %i.ba = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.ac to double
  %i.bc = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  call void @cairo_rectangle(ptr noundef %i.v, double noundef 4.000000e+00, double noundef %i.ba, double noundef %i.bb, double noundef %i.bc) #22
  call void @cairo_fill(ptr noundef %i.v) #22
  call void @cairo_stroke(ptr noundef %i.v) #22
  call void @cairo_destroy(ptr noundef %i.v) #22
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_paint(ptr noundef %1) #22
  call void @cairo_surface_destroy(ptr noundef %i.r) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 1
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_exposure_proxy_get_exposure(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36
  %i.d = icmp eq i32 %i.c, 1
  %.0.in.v = select i1 %i.d, i64 16, i64 8
  %.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.v
  %.0 = load float, ptr %.0.in, align 4, !tbaa !14
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_exposure_proxy_get_effective_exposure(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load float, ptr %i.c, align 8, !tbaa !139
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_exposure_proxy_get_black(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !59
  ret float %i.d
}

; Function Attrs: nounwind uwtable
define internal void @_exposure_proxy_handle_event(i32 noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2224
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !240 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !96  ; 2 uses
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not41 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 1
  %. = select i1 %i.i, i64 40, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %., %bb.d ], [ 8, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 11 uses
  %i.l = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.k) #22 ; 2 uses
  %i.m = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %i.k, i32 noundef %2) #22 ; 2 uses
  %i.n = fneg reassoc nsz arcp contract afn double %1
  %spec.select = select i1 %.not41, double %1, double %i.n ; 2 uses
  switch i32 %0, label %bb.h [
    i32 2, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @dt_bauhaus_widget_reset(ptr noundef %i.k) #22
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_step(ptr noundef %i.k) #22
  %i.p = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.q = fpext reassoc nsz arcp contract afn float %i.o to double
  %i.r = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.s = fmul reassoc nsz arcp contract afn double %spec.select, %i.r
  %i.t = fmul reassoc nsz arcp contract afn double %i.s, %i.q
  %i.u = fadd reassoc nsz arcp contract afn double %i.t, %i.p
  %i.v = fptrunc reassoc nsz arcp contract afn double %i.u to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.k, float noundef %i.v) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.w = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_min(ptr noundef %i.k) #22
  %i.x = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_max(ptr noundef %i.k) #22
  %i.y = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.z = fsub reassoc nsz arcp contract afn float %i.x, %i.w
  %i.aa = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.ab = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.ac = fmul reassoc nsz arcp contract afn double %spec.select, %i.ab
  %i.ad = fmul reassoc nsz arcp contract afn double %i.ac, %i.aa
  %i.ae = fadd reassoc nsz arcp contract afn double %i.ad, %i.y
  %i.af = fptrunc reassoc nsz arcp contract afn double %i.ae to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.k, float noundef %i.af) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ag = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.k) #22
  %i.ah = tail call ptr @dt_bauhaus_slider_get_text(ptr noundef %i.k, float noundef %i.ag) #22 ; 2 uses
  tail call void (ptr, ptr, ptr, ...) @dt_action_widget_toast(ptr noundef nonnull %i.c, ptr noundef %i.k, ptr noundef nonnull @.str.59, ptr noundef %i.ah) #22
  tail call void @g_free(ptr noundef %i.ah) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !240
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 16, !tbaa !240
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !103
  tail call void @free(ptr noundef %i.h) #22
  store ptr null, ptr %i.g, align 16, !tbaa !103
  %i.i = tail call i32 @g_idle_remove_by_data(ptr noundef nonnull %0) #22 ; 0 uses
  ret void
}

declare i32 @g_idle_remove_by_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !242
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !190
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !190
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !190
  store ptr @introspection_init.f7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 688), align 16, !tbaa !190
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
end_hunk_0
