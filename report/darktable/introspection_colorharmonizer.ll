Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorharmonizer?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@gui_init:bb.a
  call void @g_object_set_data(ptr noundef %i.ee, ptr noundef nonnull @.str.19, ptr noundef %i.ea) #25
  %i.ef = call i64 @g_signal_connect_data(ptr noundef %i.ee, ptr noundef nonnull @.str.14, ptr noundef nonnull @_custom_hue_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.eg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ee, ptr noundef %i.eg) #25
  %i.eh = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.ee) #25 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv ; 3 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !124
  %i.ej = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #25
  call void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef %i.eh, ptr noundef %i.ej) #25
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !124
  call void @gtk_widget_set_hexpand(ptr noundef %i.ek, i32 noundef 1) #25
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !124
  store ptr %i.el, ptr %i.k, align 8, !tbaa !155
  store ptr inttoptr (i64 -1 to ptr), ptr %i.dg, align 8, !tbaa !155
  %i.em = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1505, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.dt, ptr noundef nonnull %i.k) #25 ; 0 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  store ptr %i.dt, ptr %i.en, align 8, !tbaa !124
  %i.eo = load ptr, ptr %i.v, align 8, !tbaa !156
  store ptr %i.dt, ptr %i.l, align 8, !tbaa !155
  store ptr inttoptr (i64 -1 to ptr), ptr %i.di, align 8, !tbaa !155
  %i.ep = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1508, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.eo, ptr noundef nonnull %i.l) #25 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.e:                                             ; preds = %bb.c
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.23, i32 noundef 1) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.eq = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.er = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.23) #25
  call void @gtk_toggle_button_set_active(ptr noundef %i.eq, i32 noundef %i.er) #25
  %i.es = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.et = call i64 @g_signal_connect_data(ptr noundef %i.es, ptr noundef nonnull @.str.24, ptr noundef nonnull @_sync_to_vectorscope_toggled, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.eu = call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_refresh, i32 noundef 0, ptr noundef null) #25 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !128
  %i.ew = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.eu, ptr noundef %i.ew) #25
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !128
  %i.ey = call i64 @g_signal_connect_data(ptr noundef %i.ex, ptr noundef nonnull @.str.10, ptr noundef nonnull @_set_from_vectorscope_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.ez = load ptr, ptr %i.dn, align 8, !tbaa !125
  call void @gtk_widget_set_hexpand(ptr noundef %i.ez, i32 noundef 1) #25
  %i.fa = load ptr, ptr %i.dn, align 8, !tbaa !125
  store ptr %i.fa, ptr %i.n, align 8, !tbaa !155
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fb, align 8, !tbaa !155
  %i.fc = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1537, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.dk, ptr noundef nonnull %i.n) #25 ; 0 uses
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !128
  store ptr %i.fd, ptr %i.o, align 8, !tbaa !155
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fe, align 8, !tbaa !155
  %i.ff = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1538, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.dk, ptr noundef nonnull %i.o) #25 ; 0 uses
  %i.fg = load ptr, ptr %i.v, align 8, !tbaa !156
  store ptr %i.dk, ptr %i.p, align 8, !tbaa !155
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fh, align 8, !tbaa !155
  %i.fi = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1539, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.fg, ptr noundef nonnull %i.p) #25 ; 0 uses
  %i.fj = load ptr, ptr %i.ev, align 8, !tbaa !128
  %i.fk = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.fl = call i32 @gtk_toggle_button_get_active(ptr noundef %i.fk) #25
  %.not152 = icmp eq i32 %i.fl, 0
  %i.fm = zext i1 %.not152 to i32
  call void @gtk_widget_set_sensitive(ptr noundef %i.fj, i32 noundef %i.fm) #25
  %i.fn = getelementptr inbounds nuw i8, ptr %i.r, i64 1776
  store i32 0, ptr %i.fn, align 8, !tbaa !73
  %i.fo = getelementptr inbounds nuw i8, ptr %i.r, i64 1784
  call void @g_mutex_init(ptr noundef nonnull %i.fo) #25
  %i.fp = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #25 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !163
  %i.fr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fp, ptr noundef %i.fr) #25
  %i.fs = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #25 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !164
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.fs, i32 noundef 2) #25
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !164
  %i.fv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fu, ptr noundef %i.fv) #25
  %i.fw = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #25 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !165
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.fw, i32 noundef 2) #25
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !165
  %i.fz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fy, ptr noundef %i.fz) #25
  %i.ga = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #25 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !166
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ga, i32 noundef 2) #25
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !166
  %i.gd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gc, ptr noundef %i.gd) #25
  %i.ge = getelementptr inbounds nuw i8, ptr %i.r, i64 280
  %i.gf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #25
  call void @dt_gui_new_collapsible_section(ptr noundef nonnull %i.ge, ptr noundef nonnull @.str.34, ptr noundef %i.gf, ptr noundef %i.u, ptr noundef nonnull %0) #25
  %i.gg = getelementptr inbounds nuw i8, ptr %i.r, i64 320
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !167
  store ptr %i.gh, ptr %i.v, align 8, !tbaa !156
  %i.gi = getelementptr inbounds nuw i8, ptr %i.r, i64 248
  %i.gj = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.gk = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.gl = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef f0x3C23D70A, float noundef 1.000000e+00, i32 noundef 2) #25 ; 10 uses
  %i.gm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #25
  %i.gn = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.gl, ptr noundef null, ptr noundef %i.gm) #25 ; 0 uses
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.gl, float noundef 1.000000e+02) #25
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.gl, ptr noundef nonnull @.str.40) #25
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.gl, i32 noundef 0) #25
  call void @g_object_set_data(ptr noundef %i.gl, ptr noundef nonnull @.str.19, ptr noundef null) #25
  %i.go = call i64 @g_signal_connect_data(ptr noundef %i.gl, ptr noundef nonnull @.str.14, ptr noundef nonnull @_node_saturation_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.gp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gl, ptr noundef %i.gp) #25
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !124
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !124
  %i.gq = load ptr, ptr %i.v, align 8, !tbaa !156
  store ptr %i.gl, ptr %i.q, align 8, !tbaa !155
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gk, align 8, !tbaa !155
  %i.gr = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1628, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.gq, ptr noundef nonnull %i.q) #25 ; 0 uses
  %i.gs = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef f0x3C23D70A, float noundef 1.000000e+00, i32 noundef 2) #25 ; 10 uses
  %i.gt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #25
  %i.gu = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.gs, ptr noundef null, ptr noundef %i.gt) #25 ; 0 uses
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.gs, float noundef 1.000000e+02) #25
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.gs, ptr noundef nonnull @.str.40) #25
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.gs, i32 noundef 0) #25
  call void @g_object_set_data(ptr noundef %i.gs, ptr noundef nonnull @.str.19, ptr noundef nonnull inttoptr (i64 1 to ptr)) #25
  %i.gv = call i64 @g_signal_connect_data(ptr noundef %i.gs, ptr noundef nonnull @.str.14, ptr noundef nonnull @_node_saturation_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.gw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gs, ptr noundef %i.gw) #25
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  store ptr %i.gs, ptr %i.gx, align 8, !tbaa !124
  %i.gy = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !124
  %i.gz = load ptr, ptr %i.v, align 8, !tbaa !156
  store ptr %i.gs, ptr %i.q, align 8, !tbaa !155
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gk, align 8, !tbaa !155
  %i.ha = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1628, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.gz, ptr noundef nonnull %i.q) #25 ; 0 uses
  %i.hb = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef f0x3C23D70A, float noundef 1.000000e+00, i32 noundef 2) #25 ; 10 uses
  %i.hc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #25
  %i.hd = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.hb, ptr noundef null, ptr noundef %i.hc) #25 ; 0 uses
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.hb, float noundef 1.000000e+02) #25
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.hb, ptr noundef nonnull @.str.40) #25
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.hb, i32 noundef 0) #25
  call void @g_object_set_data(ptr noundef %i.hb, ptr noundef nonnull @.str.19, ptr noundef nonnull inttoptr (i64 2 to ptr)) #25
  %i.he = call i64 @g_signal_connect_data(ptr noundef %i.hb, ptr noundef nonnull @.str.14, ptr noundef nonnull @_node_saturation_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.hf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.hb, ptr noundef %i.hf) #25
  %i.hg = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  store ptr %i.hb, ptr %i.hg, align 8, !tbaa !124
  %i.hh = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  store ptr %i.hb, ptr %i.hh, align 8, !tbaa !124
  %i.hi = load ptr, ptr %i.v, align 8, !tbaa !156
  store ptr %i.hb, ptr %i.q, align 8, !tbaa !155
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gk, align 8, !tbaa !155
  %i.hj = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1628, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.hi, ptr noundef nonnull %i.q) #25 ; 0 uses
  %i.hk = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef f0x3C23D70A, float noundef 1.000000e+00, i32 noundef 2) #25 ; 10 uses
  %i.hl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #25
  %i.hm = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.hk, ptr noundef null, ptr noundef %i.hl) #25 ; 0 uses
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.hk, float noundef 1.000000e+02) #25
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.hk, ptr noundef nonnull @.str.40) #25
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.hk, i32 noundef 0) #25
  call void @g_object_set_data(ptr noundef %i.hk, ptr noundef nonnull @.str.19, ptr noundef nonnull inttoptr (i64 3 to ptr)) #25
  %i.hn = call i64 @g_signal_connect_data(ptr noundef %i.hk, ptr noundef nonnull @.str.14, ptr noundef nonnull @_node_saturation_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.ho = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.hk, ptr noundef %i.ho) #25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  store ptr %i.hk, ptr %i.hp, align 8, !tbaa !124
  %i.hq = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  store ptr %i.hk, ptr %i.hq, align 8, !tbaa !124
  %i.hr = load ptr, ptr %i.v, align 8, !tbaa !156
  store ptr %i.hk, ptr %i.q, align 8, !tbaa !155
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gk, align 8, !tbaa !155
  %i.hs = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 1628, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.hr, ptr noundef nonnull %i.q) #25 ; 0 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !156
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_camera(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_auto_detect_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
vector.ph:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = alloca [360 x float], align 16           ; 55 uses
  %i.d = alloca [360 x float], align 16           ; 34 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !53  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1784 ; 2 uses
  tail call void @g_mutex_lock(ptr noundef nonnull %i.i) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.c, ptr noundef nonnull align 8 dereferenceable(1440) %i.j, i64 1440, i1 false)
  tail call void @g_mutex_unlock(ptr noundef nonnull %i.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1436 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !31
  %i.m = load float, ptr %i.c, align 16, !tbaa !31
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !31 ; 2 uses
  %i.q = fadd reassoc nsz arcp contract afn float %i.n, %i.p
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, f0x3EAAAAAB
  store float %i.r, ptr %i.d, align 16, !tbaa !31
  %vector.recur.init = insertelement <8 x float> poison, float %i.p, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load30, %vector.body ]
  %i.s = and i64 %index, 4294967264
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %wide.load = load <8 x float>, ptr %i.t, align 16, !tbaa !31
  %wide.load24 = load <8 x float>, ptr %i.u, align 16, !tbaa !31
  %wide.load25 = load <8 x float>, ptr %i.v, align 16, !tbaa !31
  %wide.load26 = load <8 x float>, ptr %i.w, align 16, !tbaa !31
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %wide.load27 = load <8 x float>, ptr %i.y, align 8, !tbaa !31 ; 3 uses
  %wide.load28 = load <8 x float>, ptr %i.z, align 8, !tbaa !31 ; 3 uses
  %wide.load29 = load <8 x float>, ptr %i.aa, align 8, !tbaa !31 ; 3 uses
  %wide.load30 = load <8 x float>, ptr %i.ab, align 8, !tbaa !31 ; 4 uses
  %i.ac = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load27, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ad = shufflevector <8 x float> %wide.load27, <8 x float> %wide.load28, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ae = shufflevector <8 x float> %wide.load28, <8 x float> %wide.load29, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.af = shufflevector <8 x float> %wide.load29, <8 x float> %wide.load30, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %wide.load, %i.ac
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %wide.load24, %i.ad
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %wide.load25, %i.ae
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load26, %i.af
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %wide.load27
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.ah, %wide.load28
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %wide.load29
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %wide.load30
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, splat (float f0x3EAAAAAB)
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.al, splat (float f0x3EAAAAAB)
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.am, splat (float f0x3EAAAAAB)
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.an, splat (float f0x3EAAAAAB)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  store <8 x float> %i.ao, ptr %i.at, align 4, !tbaa !31
  store <8 x float> %i.ap, ptr %i.au, align 4, !tbaa !31
  store <8 x float> %i.aq, ptr %i.av, align 4, !tbaa !31
  store <8 x float> %i.ar, ptr %i.aw, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, 352
  br i1 %i.ax, label %.peel.next.1.i, label %vector.body, !llvm.loop !168

vector.body33:                                    ; preds = %vector.body33, %.peel.next.1.i
  %index34 = phi i64 [ 0, %.peel.next.1.i ], [ %index.next45, %vector.body33 ] ; 4 uses
  %vector.recur36 = phi <8 x float> [ %vector.recur.init35, %.peel.next.1.i ], [ %wide.load44, %vector.body33 ]
  %i.ay = and i64 %index34, 4294967264
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %wide.load37 = load <8 x float>, ptr %i.az, align 16, !tbaa !31
  %wide.load38 = load <8 x float>, ptr %i.ba, align 16, !tbaa !31
  %wide.load39 = load <8 x float>, ptr %i.bb, align 16, !tbaa !31
  %wide.load40 = load <8 x float>, ptr %i.bc, align 16, !tbaa !31
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index34 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %wide.load41 = load <8 x float>, ptr %i.be, align 8, !tbaa !31 ; 3 uses
  %wide.load42 = load <8 x float>, ptr %i.bf, align 8, !tbaa !31 ; 3 uses
  %wide.load43 = load <8 x float>, ptr %i.bg, align 8, !tbaa !31 ; 3 uses
  %wide.load44 = load <8 x float>, ptr %i.bh, align 8, !tbaa !31 ; 4 uses
  %i.bi = shufflevector <8 x float> %vector.recur36, <8 x float> %wide.load41, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bj = shufflevector <8 x float> %wide.load41, <8 x float> %wide.load42, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bk = shufflevector <8 x float> %wide.load42, <8 x float> %wide.load43, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bl = shufflevector <8 x float> %wide.load43, <8 x float> %wide.load44, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bi, %wide.load37
  %i.bn = fadd reassoc nsz arcp contract afn <8 x float> %i.bj, %wide.load38
  %i.bo = fadd reassoc nsz arcp contract afn <8 x float> %i.bk, %wide.load39
  %i.bp = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %wide.load40
  %i.bq = fadd reassoc nsz arcp contract afn <8 x float> %i.bm, %wide.load41
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bn, %wide.load42
  %i.bs = fadd reassoc nsz arcp contract afn <8 x float> %i.bo, %wide.load43
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bp, %wide.load44
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %i.bq, splat (float f0x3EAAAAAB)
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.br, splat (float f0x3EAAAAAB)
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %i.bs, splat (float f0x3EAAAAAB)
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %i.bt, splat (float f0x3EAAAAAB)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index34 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 68
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 100
  store <8 x float> %i.bu, ptr %i.bz, align 4, !tbaa !31
  store <8 x float> %i.bv, ptr %i.ca, align 4, !tbaa !31
  store <8 x float> %i.bw, ptr %i.cb, align 4, !tbaa !31
  store <8 x float> %i.bx, ptr %i.cc, align 4, !tbaa !31
  %index.next45 = add nuw i64 %index34, 32        ; 2 uses
  %i.cd = icmp eq i64 %index.next45, 352
  br i1 %i.cd, label %.peel.next.2.i, label %vector.body33, !llvm.loop !169

.peel.next.2.i:                                   ; preds = %vector.body33
  %vector.recur.extract47 = extractelement <8 x float> %wide.load44, i64 7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 1408
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !31
  %i.cg = fadd reassoc nsz arcp contract afn float %vector.recur.extract47, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 1416
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
  %i.cj = fadd reassoc nsz arcp contract afn float %i.cg, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, f0x3EAAAAAB
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 1412
  store float %i.ck, ptr %i.cl, align 4, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 1412
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !31
  %i.co = fadd reassoc nsz arcp contract afn float %i.ci, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 1420
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !31 ; 2 uses
  %i.cr = fadd reassoc nsz arcp contract afn float %i.co, %i.cq
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, f0x3EAAAAAB
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 1416
  store float %i.cs, ptr %i.ct, align 8, !tbaa !31
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 1416
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !31
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cq, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.cy = load float, ptr %i.cx, align 16, !tbaa !31 ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cw, %i.cy
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, f0x3EAAAAAB
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 1420
  store float %i.da, ptr %i.db, align 4, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 1420
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !31
  %i.de = fadd reassoc nsz arcp contract afn float %i.cy, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 1428
  %i.dg = load float, ptr %i.df, align 4, !tbaa !31 ; 2 uses
  %i.dh = fadd reassoc nsz arcp contract afn float %i.de, %i.dg
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3EAAAAAB
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 1424
  store float %i.di, ptr %i.dj, align 16, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.dl = load float, ptr %i.dk, align 16, !tbaa !31
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dg, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.do = load float, ptr %i.dn, align 8, !tbaa !31 ; 2 uses
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dm, %i.do
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, f0x3EAAAAAB
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 1428
  store float %i.dq, ptr %i.dr, align 4, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 1428
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !31
  %i.du = fadd reassoc nsz arcp contract afn float %i.do, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 1436
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !31
  %i.dx = fadd reassoc nsz arcp contract afn float %i.du, %i.dw
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3EAAAAAB
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 1432
  store float %i.dy, ptr %i.dz, align 8, !tbaa !31
  %i.ea = load float, ptr %i.jk, align 8, !tbaa !31
  %i.eb = fadd reassoc nsz arcp contract afn float %i.jr, %i.ea
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, f0x3EAAAAAB
  store float %i.ec, ptr %i.jo, align 4, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.c, ptr noundef nonnull align 16 dereferenceable(1440) %i.d, i64 1440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ed = load float, ptr %i.k, align 4, !tbaa !31
  %i.ee = load float, ptr %i.c, align 16, !tbaa !31
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ed ; 2 uses
  %i.eg = load float, ptr %i.o, align 4, !tbaa !31 ; 2 uses
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ef, %i.eg
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, f0x3EAAAAAB
  store float %i.ei, ptr %i.d, align 16, !tbaa !31
  %vector.recur.init52 = insertelement <8 x float> poison, float %i.eg, i64 7
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %.peel.next.2.i
  %index51 = phi i64 [ 0, %.peel.next.2.i ], [ %index.next62, %vector.body50 ] ; 4 uses
  %vector.recur53 = phi <8 x float> [ %vector.recur.init52, %.peel.next.2.i ], [ %wide.load61, %vector.body50 ]
  %i.ej = and i64 %index51, 4294967264
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ej ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %wide.load54 = load <8 x float>, ptr %i.ek, align 16, !tbaa !31
  %wide.load55 = load <8 x float>, ptr %i.el, align 16, !tbaa !31
  %wide.load56 = load <8 x float>, ptr %i.em, align 16, !tbaa !31
  %wide.load57 = load <8 x float>, ptr %i.en, align 16, !tbaa !31
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index51 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %wide.load58 = load <8 x float>, ptr %i.ep, align 8, !tbaa !31 ; 3 uses
  %wide.load59 = load <8 x float>, ptr %i.eq, align 8, !tbaa !31 ; 3 uses
  %wide.load60 = load <8 x float>, ptr %i.er, align 8, !tbaa !31 ; 3 uses
  %wide.load61 = load <8 x float>, ptr %i.es, align 8, !tbaa !31 ; 4 uses
  %i.et = shufflevector <8 x float> %vector.recur53, <8 x float> %wide.load58, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.eu = shufflevector <8 x float> %wide.load58, <8 x float> %wide.load59, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ev = shufflevector <8 x float> %wide.load59, <8 x float> %wide.load60, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ew = shufflevector <8 x float> %wide.load60, <8 x float> %wide.load61, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ex = fadd reassoc nsz arcp contract afn <8 x float> %i.et, %wide.load54
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %i.eu, %wide.load55
  %i.ez = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %wide.load56
  %i.fa = fadd reassoc nsz arcp contract afn <8 x float> %i.ew, %wide.load57
  %i.fb = fadd reassoc nsz arcp contract afn <8 x float> %i.ex, %wide.load58
  %i.fc = fadd reassoc nsz arcp contract afn <8 x float> %i.ey, %wide.load59
  %i.fd = fadd reassoc nsz arcp contract afn <8 x float> %i.ez, %wide.load60
  %i.fe = fadd reassoc nsz arcp contract afn <8 x float> %i.fa, %wide.load61
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.fb, splat (float f0x3EAAAAAB)
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, splat (float f0x3EAAAAAB)
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.fd, splat (float f0x3EAAAAAB)
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, splat (float f0x3EAAAAAB)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index51 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 68
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 100
  store <8 x float> %i.ff, ptr %i.fk, align 4, !tbaa !31
  store <8 x float> %i.fg, ptr %i.fl, align 4, !tbaa !31
  store <8 x float> %i.fh, ptr %i.fm, align 4, !tbaa !31
  store <8 x float> %i.fi, ptr %i.fn, align 4, !tbaa !31
  %index.next62 = add nuw i64 %index51, 32        ; 2 uses
  %i.fo = icmp eq i64 %index.next62, 352
  br i1 %i.fo, label %scalar.ph48, label %vector.body50, !llvm.loop !170

scalar.ph48:                                      ; preds = %vector.body50
  %vector.recur.extract64 = extractelement <8 x float> %wide.load61, i64 7
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 1408
  %i.fq = load float, ptr %i.fp, align 16, !tbaa !31
  %i.fr = fadd reassoc nsz arcp contract afn float %vector.recur.extract64, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 1416
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !31 ; 2 uses
  %i.fu = fadd reassoc nsz arcp contract afn float %i.fr, %i.ft
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, f0x3EAAAAAB
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 1412
  store float %i.fv, ptr %i.fw, align 4, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 1412
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !31
  %i.fz = fadd reassoc nsz arcp contract afn float %i.ft, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 1420
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !31 ; 2 uses
  %i.gc = fadd reassoc nsz arcp contract afn float %i.fz, %i.gb
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, f0x3EAAAAAB
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 1416
  store float %i.gd, ptr %i.ge, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 1416
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !31
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gb, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.gj = load float, ptr %i.gi, align 16, !tbaa !31 ; 2 uses
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gh, %i.gj
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, f0x3EAAAAAB
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 1420
  store float %i.gl, ptr %i.gm, align 4, !tbaa !31
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 1420
  %i.go = load float, ptr %i.gn, align 4, !tbaa !31
  %i.gp = fadd reassoc nsz arcp contract afn float %i.gj, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 1428
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !31 ; 2 uses
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gp, %i.gr
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, f0x3EAAAAAB
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 1424
  store float %i.gt, ptr %i.gu, align 16, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.gw = load float, ptr %i.gv, align 16, !tbaa !31
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gr, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !31 ; 2 uses
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gx, %i.gz
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, f0x3EAAAAAB
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 1428
  store float %i.hb, ptr %i.hc, align 4, !tbaa !31
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 1428
  %i.he = load float, ptr %i.hd, align 4, !tbaa !31
  %i.hf = fadd reassoc nsz arcp contract afn float %i.gz, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 1436
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !31
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hf, %i.hh
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, f0x3EAAAAAB
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 1432
  store float %i.hj, ptr %i.hk, align 8, !tbaa !31
  %i.hl = load float, ptr %i.jk, align 8, !tbaa !31
  %i.hm = fadd reassoc nsz arcp contract afn float %i.ef, %i.hl
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, f0x3EAAAAAB
  store float %i.hn, ptr %i.jo, align 4, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.c, ptr noundef nonnull align 16 dereferenceable(1440) %i.d, i64 1440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.preheader.i

.peel.next.1.i:                                   ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load30, i64 7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 1408
  %i.hp = load float, ptr %i.ho, align 16, !tbaa !31
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, %vector.recur.extract
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 1416
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !31 ; 2 uses
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hq, %i.hs
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, f0x3EAAAAAB
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 1412
  store float %i.hu, ptr %i.hv, align 4, !tbaa !31
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 1412
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !31
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.hs
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 1420
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !31 ; 2 uses
  %i.ib = fadd reassoc nsz arcp contract afn float %i.hy, %i.ia
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, f0x3EAAAAAB
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 1416
  store float %i.ic, ptr %i.id, align 8, !tbaa !31
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 1416
  %i.if = load float, ptr %i.ie, align 8, !tbaa !31
  %i.ig = fadd reassoc nsz arcp contract afn float %i.if, %i.ia
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.ii = load float, ptr %i.ih, align 16, !tbaa !31 ; 2 uses
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ig, %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, f0x3EAAAAAB
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 1420
  store float %i.ik, ptr %i.il, align 4, !tbaa !31
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 1420
  %i.in = load float, ptr %i.im, align 4, !tbaa !31
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.ii
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 1428
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !31 ; 2 uses
  %i.ir = fadd reassoc nsz arcp contract afn float %i.io, %i.iq
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, f0x3EAAAAAB
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 1424
  store float %i.is, ptr %i.it, align 16, !tbaa !31
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.iv = load float, ptr %i.iu, align 16, !tbaa !31
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, %i.iq
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !31 ; 2 uses
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iw, %i.iy
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, f0x3EAAAAAB
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 1428
  store float %i.ja, ptr %i.jb, align 4, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 1428
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !31
  %i.je = fadd reassoc nsz arcp contract afn float %i.jd, %i.iy
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 1436
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !31
  %i.jh = fadd reassoc nsz arcp contract afn float %i.je, %i.jg
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, f0x3EAAAAAB
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 1432
  store float %i.ji, ptr %i.jj, align 8, !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 1432 ; 3 uses
  %i.jl = load float, ptr %i.jk, align 8, !tbaa !31
  %i.jm = fadd reassoc nsz arcp contract afn float %i.n, %i.jl
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, f0x3EAAAAAB
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 1436 ; 3 uses
  store float %i.jn, ptr %i.jo, align 4, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.c, ptr noundef nonnull align 16 dereferenceable(1440) %i.d, i64 1440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.jp = load float, ptr %i.k, align 4, !tbaa !31
  %i.jq = load float, ptr %i.c, align 16, !tbaa !31
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, %i.jp ; 2 uses
  %i.js = load float, ptr %i.o, align 4, !tbaa !31 ; 2 uses
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jr, %i.js
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, f0x3EAAAAAB
  store float %i.ju, ptr %i.d, align 16, !tbaa !31
  %vector.recur.init35 = insertelement <8 x float> poison, float %i.js, i64 7
  br label %vector.body33

.preheader.i:                                     ; preds = %bb.a, %scalar.ph48
  %.018 = phi i32 [ 3, %scalar.ph48 ], [ %.220, %bb.a ]
  %.0 = phi nsz float [ 0.000000e+00, %scalar.ph48 ], [ %.2, %bb.a ]
  %indvars.iv65.i = phi i64 [ 0, %scalar.ph48 ], [ %indvars.iv.next66.i, %bb.a ] ; 3 uses
  %.03455.i = phi float [ -1.000000e+00, %scalar.ph48 ], [ %.2.i, %bb.a ]
  %i.jv = getelementptr inbounds nuw [20 x i8], ptr @dt_color_harmony_get_sector_angles.table, i64 %indvars.iv65.i ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !38 ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 3 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 1)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 6 uses
  %i.jz = icmp sgt i32 %i.jx, 0
  %wide.trip.count.i39.i = zext i32 %i.jx to i64  ; 6 uses
  %i.ka = uitofp nneg i32 %i.jx to float
  %i.kb = fdiv reassoc nsz arcp contract afn float 5.000000e-01, %i.ka ; 2 uses
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.kb ; 2 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv65.i to i32
  %min.iters.check76 = icmp slt i32 %i.jx, 4
  %min.iters.check77 = icmp slt i32 %i.jx, 32
  %i.ke = and i64 %wide.trip.count.i.i.i, 28
  %n.vec79 = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %cmp.n88 = icmp eq i64 %n.vec79, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.ke, 0
  %n.vec89 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n95 = icmp eq i64 %n.vec89, %wide.trip.count.i.i.i
  %min.iters.check.a = icmp ult i32 %i.jx, 8
  %n.vec.a = and i64 %wide.trip.count.i39.i, 2147483640 ; 3 uses
  %cmp.n.a = icmp eq i64 %n.vec.a, %wide.trip.count.i39.i
  %min.iters.check = icmp ult i32 %i.jx, 32
  %xtraiter = and i64 %wide.trip.count.i39.i, 2147483616 ; 3 uses
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %i.kc, i64 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %2 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat68
  %3 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat68
  %4 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat68
  %5 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat68
  %cmp.n = icmp ne i64 %xtraiter, %wide.trip.count.i39.i
  %i.kf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kc
  br label %bb.b

bb.a:                                             ; preds = %_score_harmony.exit.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next66.i, 9
  br i1 %exitcond68.not.i, label %_auto_detect_harmony.exit, label %.preheader.i

bb.b:                                             ; preds = %_score_harmony.exit.i, %.preheader.i
  %.119 = phi i32 [ %.018, %.preheader.i ], [ %.220, %_score_harmony.exit.i ]
  %.1 = phi nsz float [ %.0, %.preheader.i ], [ %.2, %_score_harmony.exit.i ]
  %.054.i = phi i32 [ 0, %.preheader.i ], [ %i.pv, %_score_harmony.exit.i ] ; 2 uses
  %.153.i = phi float [ %.03455.i, %.preheader.i ], [ %.2.i, %_score_harmony.exit.i ] ; 2 uses
  %i.kg = uitofp nsz nneg i32 %.054.i to float    ; 2 uses
  %i.kh = fmul reassoc nnan nsz arcp contract afn float %i.kg, f0x3B360B61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ki = fmul reassoc nnan nsz arcp contract afn float %i.kg, 2.000000e+00 ; 2 uses
  %i.kj = fptosi float %i.ki to i32
  %.fr.i = freeze i32 %i.kj                       ; 2 uses
  %i.kk = urem i32 %.fr.i, 720                    ; 2 uses
  %i.kl = trunc nuw nsw i32 %i.kk to i16
  %.lhs.trunc.i.i.i = add nuw nsw i16 %i.kl, 1    ; 2 uses
  %i.km = icmp eq i16 %.lhs.trunc.i.i.i, 720
  %i.kn = select i1 %i.km, i16 0, i16 %.lhs.trunc.i.i.i
  %i.ko = zext nneg i32 %i.kk to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ko
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !31 ; 5 uses
  %i.kr = zext nneg i16 %i.kn to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.kr
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !31 ; 4 uses
  %i.ku = fsub reassoc nsz arcp contract afn float %i.kt, %i.kq
  %i.kv = fcmp reassoc nsz arcp contract afn ogt float %i.ku, 5.000000e-01
  br i1 %i.kv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.kw = fadd reassoc nsz arcp contract afn float %i.kt, -1.000000e+00
  br label %iter.check

bb.d:                                             ; preds = %bb.b
  %i.kx = fsub reassoc nsz arcp contract afn float %i.kq, %i.kt
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kx, 5.000000e-01
  %i.kz = fadd reassoc nsz arcp contract afn float %i.kq, -1.000000e+00
  %spec.select.i.i.i.i = select nsz i1 %i.ky, float %i.kz, float %i.kq
  br label %iter.check

iter.check:                                       ; preds = %bb.d, %bb.c
  %.014.i.i.i.i = phi nsz float [ %i.kw, %bb.c ], [ %i.kt, %bb.d ]
  %.013.i.i.i.i = phi nsz float [ %i.kq, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.la = fsub reassoc nsz arcp contract afn float %.014.i.i.i.i, %.013.i.i.i.i
  %i.lb = sitofp reassoc nsz arcp contract afn i32 %.fr.i to float
  %i.lc = fsub reassoc nnan nsz arcp contract afn float %i.ki, %i.lb
  %i.ld = fmul reassoc nsz arcp contract afn float %i.la, %i.lc
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %.013.i.i.i.i ; 3 uses
  %i.lf = fcmp reassoc nsz arcp contract afn olt float %i.le, 0.000000e+00
  %i.lg = fadd reassoc nsz arcp contract afn float %i.le, 1.000000e+00
  %spec.select16.i.i.i.i = select nsz i1 %i.lf, float %i.lg, float %i.le
  %i.lh = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.i.i, 3.600000e+02
  %i.li = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.lh)
  %i.lj = fptosi float %i.li to i32
  %i.lk = srem i32 %i.lj, 360
  %i.ll = sitofp reassoc nsz arcp contract afn i32 %i.lk to float
  %i.lm = fmul reassoc nnan nsz arcp contract afn float %i.ll, f0x3B360B61 ; 3 uses
  br i1 %min.iters.check76, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph78

vector.ph78:                                      ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert.a = insertelement <8 x float> poison, float %i.lm, i64 0
  %broadcast.splat.a = shufflevector <8 x float> %broadcast.splatinsert.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.ph78, %vector.body80
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %index81 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 96
  %wide.load82 = load <8 x float>, ptr %i.ln, align 4, !tbaa !31
  %wide.load83 = load <8 x float>, ptr %i.lo, align 4, !tbaa !31
  %wide.load84 = load <8 x float>, ptr %i.lp, align 4, !tbaa !31
  %wide.load85 = load <8 x float>, ptr %i.lq, align 4, !tbaa !31
  %i.lr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load82, %broadcast.splat.a ; 2 uses
  %i.ls = fadd reassoc nsz arcp contract afn <8 x float> %wide.load83, %broadcast.splat.a ; 2 uses
  %i.lt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load84, %broadcast.splat.a ; 2 uses
  %i.lu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load85, %broadcast.splat.a ; 2 uses
  %i.lv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.lr)
  %i.lw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ls)
  %i.lx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.lt)
  %i.ly = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.lu)
  %i.lz = fsub reassoc nsz arcp contract afn <8 x float> %i.lr, %i.lv
  %i.ma = fsub reassoc nsz arcp contract afn <8 x float> %i.ls, %i.lw
  %i.mb = fsub reassoc nsz arcp contract afn <8 x float> %i.lt, %i.lx
  %i.mc = fsub reassoc nsz arcp contract afn <8 x float> %i.lu, %i.ly
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index81 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 96
  store <8 x float> %i.lz, ptr %i.md, align 16, !tbaa !31
  store <8 x float> %i.ma, ptr %i.me, align 16, !tbaa !31
  store <8 x float> %i.mb, ptr %i.mf, align 16, !tbaa !31
  store <8 x float> %i.mc, ptr %i.mg, align 16, !tbaa !31
  %index.next86 = add nuw i64 %index81, 32        ; 2 uses
  %i.mh = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.mh, label %middle.block87, label %vector.body80, !llvm.loop !171

middle.block87:                                   ; preds = %vector.body80
  br i1 %cmp.n88, label %dt_color_harmony_get_sector_angles.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block87
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec79, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert90 = insertelement <4 x float> poison, float %i.lm, i64 0
  %broadcast.splat91 = shufflevector <4 x float> %broadcast.splatinsert90, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %index92
  %wide.load93 = load <4 x float>, ptr %i.mi, align 4, !tbaa !31
  %i.mj = fadd reassoc nsz arcp contract afn <4 x float> %wide.load93, %broadcast.splat91 ; 2 uses
  %i.mk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.floor.v4f32(<4 x float> %i.mj)
  %i.ml = fsub reassoc nsz arcp contract afn <4 x float> %i.mj, %i.mk
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index92
  store <4 x float> %i.ml, ptr %i.mm, align 16, !tbaa !31
  %index.next94 = add nuw i64 %index92, 4         ; 2 uses
  %i.mn = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.mn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n95, label %dt_color_harmony_get_sector_angles.exit.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec79, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i.i.i
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !31
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, %i.lm ; 2 uses
  %i.mr = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.mq)
  %i.ms = fsub reassoc nsz arcp contract afn float %i.mq, %i.mr
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  store float %i.ms, ptr %i.mt, align 4, !tbaa !31
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %dt_color_harmony_get_sector_angles.exit.i.i, label %vec.epilog.scalar.ph, !llvm.loop !173

dt_color_harmony_get_sector_angles.exit.i.i:      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block87
  br i1 %i.jz, label %.lr.ph.i.i.preheader, label %get_harmony_nodes.exit.thread48.i

.lr.ph.i.i.preheader:                             ; preds = %dt_color_harmony_get_sector_angles.exit.i.i
  br i1 %min.iters.check.a, label %.lr.ph.i.i.preheader97, label %vector.body67

vector.body67:                                    ; preds = %.lr.ph.i.i.preheader, %vector.body67
  %index68 = phi i64 [ %index.next73, %vector.body67 ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index68
  %wide.load69 = load <8 x float>, ptr %i.mu, align 16, !tbaa !31
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %wide.load69, splat (float 7.200000e+02) ; 2 uses
  %i.mw = fptosi <8 x float> %i.mv to <8 x i32>   ; 2 uses
  %i.mx = srem <8 x i32> %i.mw, splat (i32 720)   ; 2 uses
  %i.my = trunc nsw <8 x i32> %i.mx to <8 x i16>
  %i.mz = add nsw <8 x i16> %i.my, splat (i16 1)
  %i.na = srem <8 x i16> %i.mz, splat (i16 720)
  %i.nb = sext <8 x i32> %i.mx to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, <8 x i64> %i.nb
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31 ; 4 uses
  %i.nc = sext <8 x i16> %i.na to <8 x i64>
  %wide.gep70 = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, <8 x i64> %i.nc
  %wide.masked.gather71 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep70, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31 ; 4 uses
  %i.nd = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather71, %wide.masked.gather
  %i.ne = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nd, splat (float 5.000000e-01) ; 2 uses
  %i.nf = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather71
  %i.ng = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.nf, splat (float 5.000000e-01)
  %i.nh = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float -1.000000e+00)
  %i.ni = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather71, splat (float -1.000000e+00)
  %predphi = select nsz <8 x i1> %i.ne, <8 x float> %i.ni, <8 x float> %wide.masked.gather71
  %i.nj = or <8 x i1> %i.ne, %i.ng
  %predphi72 = select nsz <8 x i1> %i.nj, <8 x float> %wide.masked.gather, <8 x float> %i.nh ; 2 uses
  %i.nk = sitofp reassoc nsz arcp contract afn <8 x i32> %i.mw to <8 x float>
  %i.nl = fsub reassoc nsz arcp contract afn <8 x float> %i.mv, %i.nk
  %i.nm = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %predphi72
  %i.nn = fmul reassoc nsz arcp contract afn <8 x float> %i.nm, %i.nl
  %i.no = fadd reassoc nsz arcp contract afn <8 x float> %i.nn, %predphi72 ; 3 uses
  %i.np = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.no, zeroinitializer
  %i.nq = fadd reassoc nsz arcp contract afn <8 x float> %i.no, splat (float 1.000000e+00)
  %i.nr = select nsz <8 x i1> %i.np, <8 x float> %i.nq, <8 x float> %i.no
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index68
  store <8 x float> %i.nr, ptr %i.ns, align 16, !tbaa !31
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.nt = icmp eq i64 %index.next73, %n.vec.a
  br i1 %i.nt, label %middle.block74, label %vector.body67, !llvm.loop !174

middle.block74:                                   ; preds = %vector.body67
  br i1 %cmp.n.a, label %get_harmony_nodes.exit.i, label %.lr.ph.i.i.preheader97

.lr.ph.i.i.preheader97:                           ; preds = %.lr.ph.i.i.preheader, %middle.block74
  %indvars.iv.i40.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec.a, %middle.block74 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader97, %_ryb_to_ucs_fast.exit.i.i
  %indvars.iv.i40.i = phi i64 [ %indvars.iv.next.i41.i, %_ryb_to_ucs_fast.exit.i.i ], [ %indvars.iv.i40.i.ph, %.lr.ph.i.i.preheader97 ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i40.i
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !31
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, 7.200000e+02 ; 2 uses
  %i.nx = fptosi float %i.nw to i32               ; 2 uses
  %i.ny = srem i32 %i.nx, 720                     ; 2 uses
  %i.nz = trunc nsw i32 %i.ny to i16
  %.lhs.trunc.i27.i.i = add nsw i16 %i.nz, 1
  %i.oa = srem i16 %.lhs.trunc.i27.i.i, 720
  %i.ob = sext i32 %i.ny to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !31 ; 5 uses
  %i.oe = sext i16 %i.oa to i64
  %i.of = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.oe
  %i.og = load float, ptr %i.of, align 4, !tbaa !31 ; 4 uses
  %i.oh = fsub reassoc nsz arcp contract afn float %i.og, %i.od
  %i.oi = fcmp reassoc nsz arcp contract afn ogt float %i.oh, 5.000000e-01
  br i1 %i.oi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.oj = fadd reassoc nsz arcp contract afn float %i.og, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ok = fsub reassoc nsz arcp contract afn float %i.od, %i.og
  %i.ol = fcmp reassoc nsz arcp contract afn ogt float %i.ok, 5.000000e-01
  %i.om = fadd reassoc nsz arcp contract afn float %i.od, -1.000000e+00
  %spec.select.i.i28.i.i = select nsz i1 %i.ol, float %i.om, float %i.od
  br label %_ryb_to_ucs_fast.exit.i.i

_ryb_to_ucs_fast.exit.i.i:                        ; preds = %bb.f, %bb.e
  %.014.i.i29.i.i = phi nsz float [ %i.oj, %bb.e ], [ %i.og, %bb.f ]
  %.013.i.i30.i.i = phi nsz float [ %i.od, %bb.e ], [ %spec.select.i.i28.i.i, %bb.f ] ; 2 uses
  %i.on = sitofp reassoc nsz arcp contract afn i32 %i.nx to float
  %i.oo = fsub reassoc nsz arcp contract afn float %i.nw, %i.on
  %i.op = fsub reassoc nsz arcp contract afn float %.014.i.i29.i.i, %.013.i.i30.i.i
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, %i.oo
  %i.or = fadd reassoc nsz arcp contract afn float %i.oq, %.013.i.i30.i.i ; 3 uses
  %i.os = fcmp reassoc nsz arcp contract afn olt float %i.or, 0.000000e+00
  %i.ot = fadd reassoc nsz arcp contract afn float %i.or, 1.000000e+00
  %spec.select16.i.i31.i.i = select nsz i1 %i.os, float %i.ot, float %i.or
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i40.i
  store float %spec.select16.i.i31.i.i, ptr %i.ou, align 4, !tbaa !31
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i40.i, 1 ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %indvars.iv.next.i41.i, %wide.trip.count.i39.i
  br i1 %exitcond.not.i42.i, label %get_harmony_nodes.exit.i, label %.lr.ph.i.i, !llvm.loop !175

get_harmony_nodes.exit.thread48.i:                ; preds = %dt_color_harmony_get_sector_angles.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_score_harmony.exit.i

get_harmony_nodes.exit.i:                         ; preds = %_ryb_to_ucs_fast.exit.i.i, %middle.block74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %65, %get_harmony_nodes.exit.i
  %indvars.iv56.i.i = phi i64 [ 0, %get_harmony_nodes.exit.i ], [ %indvars.iv.next57.i.i, %65 ] ; 3 uses
  %.03649.us.i.i = phi float [ 0.000000e+00, %get_harmony_nodes.exit.i ], [ %.137.us.i.i, %65 ] ; 2 uses
  %.03848.us.i.i = phi float [ 0.000000e+00, %get_harmony_nodes.exit.i ], [ %.139.us.i.i, %65 ] ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv56.i.i
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !31 ; 3 uses
  %i.ox = fcmp reassoc nsz arcp contract afn ugt float %i.ow, 0.000000e+00
  br i1 %i.ox, label %.lr.ph.us.i.i, label %65

.lr.ph.us.i.i:                                    ; preds = %.split.us.i.i
  %i.oy = trunc nuw nsw i64 %indvars.iv56.i.i to i32
  %i.oz = uitofp nsz nneg i32 %i.oy to float
  %i.pa = fmul reassoc nnan nsz arcp contract afn float %i.oz, f0x3B360B61
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, f0x3AB60B61 ; 2 uses
  br i1 %min.iters.check, label %._crit_edge.us.i.i.unr-lcssa, label %vector.ph66

vector.ph66:                                      ; preds = %.lr.ph.us.i.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.pb, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph.us.i.i.new

.lr.ph.us.i.i.new:                                ; preds = %.lr.ph.us.i.i.new, %vector.ph66
  %indvars.iv.i.i.a = phi i64 [ 0, %vector.ph66 ], [ %indvars.iv.next.i.i.1, %.lr.ph.us.i.i.new ] ; 3 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph66 ], [ %49, %.lr.ph.us.i.i.new ] ; 3 uses
  %vec.phi71 = phi <8 x float> [ zeroinitializer, %vector.ph66 ], [ %50, %.lr.ph.us.i.i.new ] ; 3 uses
  %vec.phi72 = phi <8 x float> [ zeroinitializer, %vector.ph66 ], [ %51, %.lr.ph.us.i.i.new ] ; 3 uses
  %vec.phi73 = phi <8 x float> [ zeroinitializer, %vector.ph66 ], [ %52, %.lr.ph.us.i.i.new ] ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.a ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %i.pc, i64 96
  %wide.load74 = load <8 x float>, ptr %i.pc, align 16, !tbaa !31
  %wide.load75 = load <8 x float>, ptr %6, align 16, !tbaa !31
  %wide.load76 = load <8 x float>, ptr %7, align 16, !tbaa !31
  %wide.load77 = load <8 x float>, ptr %8, align 16, !tbaa !31
  %9 = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %wide.load74
  %10 = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %wide.load75
  %11 = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %wide.load76
  %12 = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %wide.load77
  %13 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %9) ; 3 uses
  %14 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %10) ; 3 uses
  %15 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %11) ; 3 uses
  %16 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %12) ; 3 uses
  %17 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %13, splat (float 5.000000e-01)
  %18 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %14, splat (float 5.000000e-01)
  %19 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %15, splat (float 5.000000e-01)
  %20 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %16, splat (float 5.000000e-01)
  %21 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %13
  %22 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %14
  %23 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %15
  %24 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %16
  %25 = select nsz <8 x i1> %17, <8 x float> %21, <8 x float> %13 ; 2 uses
  %26 = select nsz <8 x i1> %18, <8 x float> %22, <8 x float> %14 ; 2 uses
  %27 = select nsz <8 x i1> %19, <8 x float> %23, <8 x float> %15 ; 2 uses
  %28 = select nsz <8 x i1> %20, <8 x float> %24, <8 x float> %16 ; 2 uses
  %29 = fmul reassoc nsz arcp contract afn <8 x float> %25, %25
  %30 = fmul reassoc nsz arcp contract afn <8 x float> %26, %26
  %31 = fmul reassoc nsz arcp contract afn <8 x float> %27, %27
  %32 = fmul reassoc nsz arcp contract afn <8 x float> %28, %28
  %33 = fmul reassoc nsz arcp contract afn <8 x float> %29, splat (float -5.000000e-01)
  %34 = fmul reassoc nsz arcp contract afn <8 x float> %30, splat (float -5.000000e-01)
  %35 = fmul reassoc nsz arcp contract afn <8 x float> %31, splat (float -5.000000e-01)
  %36 = fmul reassoc nsz arcp contract afn <8 x float> %32, splat (float -5.000000e-01)
  %37 = fmul reassoc nsz arcp contract afn <8 x float> %33, %2
  %38 = fmul reassoc nsz arcp contract afn <8 x float> %34, %3
  %39 = fmul reassoc nsz arcp contract afn <8 x float> %35, %4
  %40 = fmul reassoc nsz arcp contract afn <8 x float> %36, %5
  %.fr = freeze <8 x float> %37
  %41 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %.fr) ; 3 uses
  %.fr120 = freeze <8 x float> %38
  %42 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %.fr120) ; 3 uses
  %.fr121 = freeze <8 x float> %39
  %43 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %.fr121) ; 3 uses
  %.fr122 = freeze <8 x float> %40
  %44 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %.fr122) ; 3 uses
  %45 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %41, %vec.phi
  %46 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %42, %vec.phi71
  %47 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %43, %vec.phi72
  %48 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %44, %vec.phi73
  %49 = select nsz <8 x i1> %45, <8 x float> %41, <8 x float> %vec.phi ; 2 uses
  %50 = select nsz <8 x i1> %46, <8 x float> %42, <8 x float> %vec.phi71 ; 2 uses
  %51 = select nsz <8 x i1> %47, <8 x float> %43, <8 x float> %vec.phi72 ; 2 uses
  %52 = select nsz <8 x i1> %48, <8 x float> %44, <8 x float> %vec.phi73 ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw i64 %indvars.iv.i.i.a, 32 ; 2 uses
  %53 = fcmp uno <8 x float> %41, %42
  %54 = fcmp uno <8 x float> %44, %43
  %55 = or <8 x i1> %53, %54
  %56 = bitcast <8 x i1> %55 to i8
  %57 = icmp ne i8 %56, 0                         ; 7 uses
  %niter.ncmp.1 = icmp eq i64 %indvars.iv.next.i.i.1, %xtraiter
  %58 = or i1 %57, %niter.ncmp.1
  br i1 %58, label %bb.g, label %.lr.ph.us.i.i.new, !llvm.loop !176

bb.g:                                             ; preds = %.lr.ph.us.i.i.new
  %59 = select i1 %57, <8 x float> %vec.phi, <8 x float> %49
  %60 = select i1 %57, <8 x float> %vec.phi71, <8 x float> %50
  %61 = select i1 %57, <8 x float> %vec.phi72, <8 x float> %51
  %62 = select i1 %57, <8 x float> %vec.phi73, <8 x float> %52
  %63 = select i1 %57, i64 %indvars.iv.i.i.a, i64 %xtraiter
  %rdx.minmax = tail call nnan nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %59, <8 x float> %60)
  %rdx.minmax80 = tail call nnan nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %61)
  %rdx.minmax81 = tail call nnan nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax80, <8 x float> %62)
  %64 = tail call nnan nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax81) ; 2 uses
  %.not123 = or i1 %cmp.n, %57
  br i1 %.not123, label %._crit_edge.us.i.i.unr-lcssa, label %._crit_edge.us.i.i

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.lr.ph.us.i.i, %bb.g
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %63, %bb.g ]
  %.03446.us.i.i.ph = phi float [ 0.000000e+00, %.lr.ph.us.i.i ], [ %64, %bb.g ]
  br label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ %indvars.iv.next.i.i, %.epil.preheader ], [ %indvars.iv.i.i.ph, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.03446.us.i.i.epil.init = phi float [ %.1.us.i.i.epil, %.epil.preheader ], [ %.03446.us.i.i.ph, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !31
  %i.pf = fsub reassoc nsz arcp contract afn float %i.pb, %i.pe
  %i.pg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.pf) ; 3 uses
  %i.ph = fcmp reassoc nsz arcp contract afn ogt float %i.pg, 5.000000e-01
  %i.pi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pg
  %spec.select.us.i.i.epil = select nsz i1 %i.ph, float %i.pi, float %i.pg ; 2 uses
  %i.pj = fmul reassoc nsz arcp contract afn float %spec.select.us.i.i.epil, %spec.select.us.i.i.epil
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pj, -5.000000e-01
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.kf
  %i.pm = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.pl) ; 2 uses
  %i.pn = fcmp reassoc nsz arcp contract afn ogt float %i.pm, %.03446.us.i.i.epil.init
  %.1.us.i.i.epil = select nsz i1 %i.pn, float %i.pm, float %.03446.us.i.i.epil.init ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i.epil.init, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i39.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %.epil.preheader, !llvm.loop !177

65:                                               ; preds = %._crit_edge.us.i.i, %.split.us.i.i
  %.139.us.i.i = phi nsz float [ %.03848.us.i.i, %.split.us.i.i ], [ %i.pq, %._crit_edge.us.i.i ] ; 3 uses
  %.137.us.i.i = phi nsz float [ %.03649.us.i.i, %.split.us.i.i ], [ %i.pp, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, 360
  br i1 %exitcond59.not.i.i, label %.split52.us.i.i, label %.split.us.i.i

._crit_edge.us.i.i:                               ; preds = %.epil.preheader, %bb.g
  %.1.us.i.i.lcssa = phi float [ %64, %bb.g ], [ %.1.us.i.i.epil, %.epil.preheader ]
  %i.po = fmul reassoc nsz arcp contract afn float %.1.us.i.i.lcssa, %i.ow
  %i.pp = fadd reassoc nsz arcp contract afn float %i.po, %.03649.us.i.i
  %i.pq = fadd reassoc nsz arcp contract afn float %i.ow, %.03848.us.i.i
  br label %65

.split52.us.i.i:                                  ; preds = %65
  %i.pr = fcmp reassoc nsz arcp contract afn ogt float %.139.us.i.i, f0x358637BD
  %i.ps = fdiv reassoc nsz arcp contract afn float %.137.us.i.i, %.139.us.i.i
  %i.pt = select reassoc nsz arcp contract afn i1 %i.pr, float %i.ps, float 0.000000e+00
  br label %_score_harmony.exit.i

_score_harmony.exit.i:                            ; preds = %.split52.us.i.i, %get_harmony_nodes.exit.thread48.i
  %.040.i.i = phi nsz float [ %i.pt, %.split52.us.i.i ], [ 0.000000e+00, %get_harmony_nodes.exit.thread48.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.pu = fcmp reassoc nsz arcp contract afn ogt float %.040.i.i, %.153.i ; 3 uses
  %.220 = select i1 %i.pu, i32 %i.kd, i32 %.119   ; 3 uses
  %.2 = select nsz i1 %i.pu, float %i.kh, float %.1 ; 3 uses
  %.2.i = select nsz i1 %i.pu, float %.040.i.i, float %.153.i ; 2 uses
  %i.pv = add nuw nsw i32 %.054.i, 1              ; 2 uses
  %exitcond64.not.i = icmp eq i32 %i.pv, 360
  br i1 %exitcond64.not.i, label %bb.a, label %bb.b

_auto_detect_harmony.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  store i32 %.220, ptr %i.h, align 4, !tbaa !34
  %i.pw = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store float %.2, ptr %i.pw, align 4, !tbaa !35
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 104
  %i.pz = atomicrmw add ptr %i.py, i32 1 seq_cst, align 4 ; 0 uses
  %i.qa = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.qb = load i32, ptr %i.h, align 4, !tbaa !34
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.qa, i32 noundef %i.qb) #25
  %i.qc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !122
  %i.qe = load float, ptr %i.pw, align 4, !tbaa !35
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, 7.200000e+02 ; 2 uses
  %i.qg = fptosi float %i.qf to i32               ; 2 uses
  %i.qh = srem i32 %i.qg, 720                     ; 2 uses
  %i.qi = trunc nsw i32 %i.qh to i16
  %.lhs.trunc.i = add nsw i16 %i.qi, 1
  %i.qj = srem i16 %.lhs.trunc.i, 720
  %i.qk = sext i32 %i.qh to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.qk
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !31 ; 5 uses
  %i.qn = sext i16 %i.qj to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.qn
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !31 ; 4 uses
  %i.qq = fsub reassoc nsz arcp contract afn float %i.qp, %i.qm
  %i.qr = fcmp reassoc nsz arcp contract afn ogt float %i.qq, 5.000000e-01
  br i1 %i.qr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_auto_detect_harmony.exit
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qp, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

bb.i:                                             ; preds = %_auto_detect_harmony.exit
  %i.qt = fsub reassoc nsz arcp contract afn float %i.qm, %i.qp
  %i.qu = fcmp reassoc nsz arcp contract afn ogt float %i.qt, 5.000000e-01
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qm, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.qu, float %i.qv, float %i.qm
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.h, %bb.i
  %.014.i.i = phi nsz float [ %i.qs, %bb.h ], [ %i.qp, %bb.i ]
  %.013.i.i = phi nsz float [ %i.qm, %bb.h ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %i.qw = sitofp reassoc nsz arcp contract afn i32 %i.qg to float
  %i.qx = fsub reassoc nsz arcp contract afn float %i.qf, %i.qw
  %i.qy = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, %i.qx
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qz, %.013.i.i ; 3 uses
  %i.rb = fcmp reassoc nsz arcp contract afn olt float %i.ra, 0.000000e+00
  %i.rc = fadd reassoc nsz arcp contract afn float %i.ra, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.rb, float %i.rc, float %i.ra
  %i.rd = fmul reassoc nsz arcp contract afn float %spec.select16.i.i, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.qd, float noundef %i.rd) #25
  %i.re = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 104
  %i.rg = atomicrmw add ptr %i.rf, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef %1, ptr noundef null, ptr noundef null)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.ri, ptr noundef %1, i32 noundef 1) #25
  %i.rj = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !125 ; 2 uses
  %.not = icmp eq ptr %i.rk, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.rl = tail call i32 @gtk_toggle_button_get_active(ptr noundef nonnull %i.rk) #25
  %.not17 = icmp eq i32 %i.rl, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %i.g, align 8, !tbaa !75
  tail call fastcc void @_push_to_vectorscope(ptr %.val)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ucs_to_ryb_fast.exit
  ret void
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_feedback(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_anchor_hue_slider_changed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #25
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, 2.000000e+00 ; 2 uses
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %i.i = srem i32 %i.h, 720                       ; 2 uses
  %i.j = trunc nsw i32 %i.i to i16
  %.lhs.trunc.i = add nsw i16 %i.j, 1
  %i.k = srem i16 %.lhs.trunc.i, 720
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !31 ; 5 uses
  %i.o = sext i16 %i.k to i64
  %i.p = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !31 ; 4 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.q, %i.n
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.r, 5.000000e-01
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fadd reassoc nsz arcp contract afn float %i.q, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.d:                                             ; preds = %bb.b
  %i.u = fsub reassoc nsz arcp contract afn float %i.n, %i.q
  %i.v = fcmp reassoc nsz arcp contract afn ogt float %i.u, 5.000000e-01
  %i.w = fadd reassoc nsz arcp contract afn float %i.n, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.v, float %i.w, float %i.n
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.c, %bb.d
  %.014.i.i = phi nsz float [ %i.t, %bb.c ], [ %i.q, %bb.d ]
  %.013.i.i = phi nsz float [ %i.n, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.y = fsub reassoc nsz arcp contract afn float %i.g, %i.x
  %i.z = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.y
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %.013.i.i ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.ab, 0.000000e+00
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ab, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ac, float %i.ad, float %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %spec.select16.i.i, ptr %i.ae, align 4, !tbaa !35
  tail call void @gui_changed(ptr noundef nonnull %1, ptr noundef %0, ptr noundef null)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.ag, ptr noundef nonnull %1, i32 noundef 1) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ryb_to_ucs_fast.exit
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_new_with_range_and_feedback(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_custom_hue_changed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !53  ; 4 uses
  %i.h = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.19) #25
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #25
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, 2.000000e+00 ; 2 uses
  %i.l = fptosi float %i.k to i32                 ; 2 uses
end_hunk_0
begin_hunk_1_@_sync_to_vectorscope_toggled:bb.a
  %.not13 = icmp eq ptr %i.o, null
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = zext i1 %.not to i32
  call void @gtk_widget_set_sensitive(ptr noundef nonnull %i.o, i32 noundef %i.p) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  ret void
}

declare void @dtgtk_cairo_paint_refresh(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_set_from_vectorscope_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._color_harmony_t, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  call void @dt_lib_histogram_get_harmony(ptr noundef %i.a, ptr noundef nonnull %2) #25
  %i.b = load i32, ptr %2, align 4, !tbaa !118
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !53
  call fastcc void @_apply_harmony_guide(ptr noundef %1, ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  call void @dt_lib_histogram_set_scope(ptr noundef %i.g, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_init(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_node_saturation_changed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.19) #25
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #25
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = shl i64 %i.g, 32
  %i.k = ashr exact i64 %i.j, 30
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  store float %i.h, ptr %i.l, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.n, ptr noundef %1, i32 noundef 1) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @gtk_toggle_button_get_active(ptr noundef nonnull %i.d) #25
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %bb.g, label %bb.d

.thread:                                          ; preds = %bb.b
  %.not1214 = icmp eq i32 %1, 0
  br i1 %.not1214, label %bb.g, label %.thread15

bb.d:                                             ; preds = %bb.c
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %.thread15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.g = load i32, ptr %i.f, align 16, !tbaa !126
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %.thread15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.h, align 8, !tbaa !75
  tail call fastcc void @_push_to_vectorscope(ptr %.val)
  br label %.thread15

.thread15:                                        ; preds = %.thread, %bb.f, %bb.e, %bb.d
  %i.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ null, %bb.d ], [ null, %.thread ]
  %i.j = phi ptr [ @_on_vectorscope_harmony_changed, %bb.f ], [ @_on_vectorscope_harmony_changed, %bb.e ], [ null, %bb.d ], [ null, %.thread ]
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  tail call void @dt_lib_histogram_set_harmony_callback(ptr noundef %i.k, ptr noundef %i.j, ptr noundef %i.i) #25
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  tail call void @dt_lib_histogram_set_harmony_callback(ptr noundef %i.l, ptr noundef null, ptr noundef null) #25
  br label %bb.h

bb.h:                                             ; preds = %.thread15, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_push_to_vectorscope(ptr nofree readonly captures(none) %.680.val) unnamed_addr #1 {
bb.a:
  %0 = alloca %struct._color_harmony_t, align 4   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  call void @dt_lib_histogram_get_harmony(ptr noundef %i.a, ptr noundef nonnull %0) #25
  %i.b = load i32, ptr %.680.val, align 4, !tbaa !34 ; 2 uses
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %.680.val, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !129
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.680.val, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  %wide.load = load <8 x float>, ptr %i.j, align 4, !tbaa !31
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 7.200000e+02) ; 2 uses
  %i.l = fptosi <8 x float> %i.k to <8 x i32>     ; 2 uses
  %i.m = srem <8 x i32> %i.l, splat (i32 720)     ; 2 uses
  %i.n = trunc nsw <8 x i32> %i.m to <8 x i16>
  %i.o = add nsw <8 x i16> %i.n, splat (i16 1)
  %i.p = srem <8 x i16> %i.o, splat (i16 720)
  %i.q = sext <8 x i32> %i.m to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, <8 x i64> %i.q
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31 ; 4 uses
  %i.r = sext <8 x i16> %i.p to <8 x i64>
  %wide.gep6 = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, <8 x i64> %i.r
  %wide.masked.gather7 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep6, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31 ; 4 uses
  %i.s = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather7, %wide.masked.gather
  %i.t = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.s, splat (float 5.000000e-01) ; 2 uses
  %i.u = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather7
  %i.v = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.u, splat (float 5.000000e-01)
  %i.w = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float -1.000000e+00)
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather7, splat (float -1.000000e+00)
  %predphi = select nsz <8 x i1> %i.t, <8 x float> %wide.masked.gather7, <8 x float> %i.x
  %i.y = and <8 x i1> %i.t, %i.v
  %i.z = select <8 x i1> %i.y, <8 x float> %i.w, <8 x float> %wide.masked.gather ; 2 uses
  %i.aa = sitofp reassoc nsz arcp contract afn <8 x i32> %i.l to <8 x float>
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %i.k, %i.aa
  %i.ac = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.z
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %i.ab
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.z ; 3 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ae, zeroinitializer
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = select nsz <8 x i1> %i.af, <8 x float> %i.ag, <8 x float> %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <8 x float> %i.ah, ptr %i.ai, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ucs_to_ryb_fast.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ucs_to_ryb_fast.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.al = load float, ptr %i.ak, align 4, !tbaa !31
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, 7.200000e+02 ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 2 uses
  %i.ao = srem i32 %i.an, 720                     ; 2 uses
  %i.ap = trunc nsw i32 %i.ao to i16
  %.lhs.trunc.i = add nsw i16 %i.ap, 1
  %i.aq = srem i16 %.lhs.trunc.i, 720
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !31 ; 5 uses
  %i.au = sext i16 %i.aq to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !31 ; 4 uses
  %i.ax = fsub reassoc nsz arcp contract afn float %i.aw, %i.at
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, 5.000000e-01
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %scalar.ph
  %i.az = fadd reassoc nsz arcp contract afn float %i.aw, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

bb.d:                                             ; preds = %scalar.ph
  %i.ba = fsub reassoc nsz arcp contract afn float %i.at, %i.aw
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.ba, 5.000000e-01
  %i.bc = fadd reassoc nsz arcp contract afn float %i.at, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.bb, float %i.bc, float %i.at
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.c, %bb.d
  %.014.i.i = phi nsz float [ %i.az, %bb.c ], [ %i.aw, %bb.d ]
  %.013.i.i = phi nsz float [ %i.at, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.an to float
  %i.be = fsub reassoc nsz arcp contract afn float %i.am, %i.bd
  %i.bf = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.be
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %.013.i.i ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bh, 0.000000e+00
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bh, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.bi, float %i.bj, float %i.bh
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %spec.select16.i.i, ptr %i.bk, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !180

bb.e:                                             ; preds = %bb.a
  %i.bl = add i32 %i.b, 1
  store i32 %i.bl, ptr %0, align 4, !tbaa !118
  %i.bm = getelementptr inbounds nuw i8, ptr %.680.val, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !35
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, 7.200000e+02 ; 2 uses
  %i.bp = fptosi float %i.bo to i32               ; 2 uses
  %i.bq = srem i32 %i.bp, 720                     ; 2 uses
  %i.br = trunc nsw i32 %i.bq to i16
  %.lhs.trunc.i17 = add nsw i16 %i.br, 1
  %i.bs = srem i16 %.lhs.trunc.i17, 720
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !31 ; 5 uses
  %i.bw = sext i16 %i.bs to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !31 ; 4 uses
  %i.bz = fsub reassoc nsz arcp contract afn float %i.by, %i.bv
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 5.000000e-01
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit22

bb.g:                                             ; preds = %bb.e
  %i.cc = fsub reassoc nsz arcp contract afn float %i.bv, %i.by
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 5.000000e-01
  %i.ce = fadd reassoc nsz arcp contract afn float %i.bv, -1.000000e+00
  %spec.select.i.i18 = select nsz i1 %i.cd, float %i.ce, float %i.bv
  br label %_ucs_to_ryb_fast.exit22

_ucs_to_ryb_fast.exit22:                          ; preds = %bb.f, %bb.g
  %.014.i.i19 = phi nsz float [ %i.cb, %bb.f ], [ %i.by, %bb.g ]
  %.013.i.i20 = phi nsz float [ %i.bv, %bb.f ], [ %spec.select.i.i18, %bb.g ] ; 2 uses
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.bp to float
  %i.cg = fsub reassoc nsz arcp contract afn float %i.bo, %i.cf
  %i.ch = fsub reassoc nsz arcp contract afn float %.014.i.i19, %.013.i.i20
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cg
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %.013.i.i20 ; 3 uses
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.cj, 0.000000e+00
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cj, 1.000000e+00
  %spec.select16.i.i21 = select nsz i1 %i.ck, float %i.cl, float %i.cj
  %i.cm = fmul reassoc nsz arcp contract afn float %spec.select16.i.i21, 3.600000e+02
  %i.cn = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cm)
  %i.co = fptosi float %i.cn to i32
  %i.cp = srem i32 %i.co, 360
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !119
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !129
  br label %.loopexit

.loopexit:                                        ; preds = %_ucs_to_ryb_fast.exit, %middle.block, %bb.b, %_ucs_to_ryb_fast.exit22
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !190 ; 2 uses
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 288
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !192 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !195
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %.not1 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not1, label %bb.i, label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.h
  call void @dt_lib_histogram_set_scope(ptr noundef nonnull %i.cs, i32 noundef 0) #25
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  %i.cz = phi ptr [ %.pre, %.critedge ], [ %i.cs, %bb.h ]
  call void @dt_lib_histogram_set_type(ptr noundef %i.cz, i32 noundef 2) #25
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  call void @dt_lib_histogram_set_harmony(ptr noundef %i.da, ptr noundef nonnull %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void
}

declare void @dt_lib_histogram_set_harmony_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_on_vectorscope_harmony_changed(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !53  ; 12 uses
  %.not39 = icmp eq ptr %i.c, null
  br i1 %.not39, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.e = load i32, ptr %i.d, align 16, !tbaa !126
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 4, !tbaa !118
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !129  ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 5 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.o) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.t = sub i64 %i.m, %i.a
  %i.u = add i64 %i.t, 3
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !31
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 7.200000e+02) ; 2 uses
  %i.x = fptosi <8 x float> %i.w to <8 x i32>     ; 2 uses
  %i.y = srem <8 x i32> %i.x, splat (i32 720)     ; 2 uses
  %i.z = trunc nsw <8 x i32> %i.y to <8 x i16>
  %i.aa = add nsw <8 x i16> %i.z, splat (i16 1)
  %i.ab = srem <8 x i16> %i.aa, splat (i16 720)
  %i.ac = sext <8 x i32> %i.y to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, <8 x i64> %i.ac
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31 ; 4 uses
  %i.ad = sext <8 x i16> %i.ab to <8 x i64>
  %wide.gep50 = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, <8 x i64> %i.ad
  %wide.masked.gather51 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep50, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31 ; 4 uses
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather51, %wide.masked.gather
  %i.af = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ae, splat (float 5.000000e-01) ; 2 uses
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather51
  %i.ah = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float -1.000000e+00)
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather51, splat (float -1.000000e+00)
  %predphi = select nsz <8 x i1> %i.af, <8 x float> %wide.masked.gather51, <8 x float> %i.aj
  %i.ak = and <8 x i1> %i.af, %i.ah
  %i.al = select <8 x i1> %i.ak, <8 x float> %i.ai, <8 x float> %wide.masked.gather ; 2 uses
  %i.am = sitofp reassoc nsz arcp contract afn <8 x i32> %i.x to <8 x float>
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %i.am
  %i.ao = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.al
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.an
  %i.aq = fadd reassoc nsz arcp contract afn <8 x float> %i.ap, %i.al ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.aq, zeroinitializer
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.at = select nsz <8 x i1> %i.ar, <8 x float> %i.as, <8 x float> %i.aq
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  store <8 x float> %i.at, ptr %i.au, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ryb_to_ucs_fast.exit, %middle.block, %bb.f
  tail call fastcc void @_sync_custom_sliders(ptr noundef nonnull %i.l, ptr noundef %i.c)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ay) #25
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.az) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bb) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bd) #25
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bf) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bh) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bj) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !124
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bl) #25
  tail call fastcc void @_paint_all_sat_sliders(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.bn, ptr noundef nonnull %1, i32 noundef 1) #25
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ryb_to_ucs_fast.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ryb_to_ucs_fast.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !31
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 7.200000e+02 ; 2 uses
  %i.br = fptosi float %i.bq to i32               ; 2 uses
  %i.bs = srem i32 %i.br, 720                     ; 2 uses
  %i.bt = trunc nsw i32 %i.bs to i16
  %.lhs.trunc.i = add nsw i16 %i.bt, 1
  %i.bu = srem i16 %.lhs.trunc.i, 720
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !31 ; 5 uses
  %i.by = sext i16 %i.bu to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !31 ; 4 uses
  %i.cb = fsub reassoc nsz arcp contract afn float %i.ca, %i.bx
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.cb, 5.000000e-01
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph
  %i.cd = fadd reassoc nsz arcp contract afn float %i.ca, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.h:                                             ; preds = %scalar.ph
  %i.ce = fsub reassoc nsz arcp contract afn float %i.bx, %i.ca
  %i.cf = fcmp reassoc nsz arcp contract afn ogt float %i.ce, 5.000000e-01
  %i.cg = fadd reassoc nsz arcp contract afn float %i.bx, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.cf, float %i.cg, float %i.bx
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.g, %bb.h
  %.014.i.i = phi nsz float [ %i.cd, %bb.g ], [ %i.ca, %bb.h ]
  %.013.i.i = phi nsz float [ %i.bx, %bb.g ], [ %spec.select.i.i, %bb.h ] ; 2 uses
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.br to float
  %i.ci = fsub reassoc nsz arcp contract afn float %i.bq, %i.ch
  %i.cj = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %.013.i.i ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.cl, 0.000000e+00
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cl, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.cm, float %i.cn, float %i.cl
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %spec.select16.i.i, ptr %i.co, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !197

bb.i:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !75
  tail call fastcc void @_apply_harmony_guide(ptr noundef nonnull %1, ptr noundef %i.cq, ptr noundef nonnull %i.c, ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.b, %bb.i, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  tail call void @dt_lib_histogram_set_harmony_callback(ptr noundef %i.c, ptr noundef null, ptr noundef null) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1784
  tail call void @g_mutex_clear(ptr noundef nonnull %i.d) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @dt_iop_default_cleanup(ptr noundef nonnull %0) #25
  ret void
}

declare void @g_mutex_clear(ptr noundef) local_unnamed_addr #3

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !200
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !32
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !32
  store ptr @introspection_init.f11, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1040), align 16, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.8) #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.62) #28
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.26) #28
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.30) #28
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.28) #28
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.63) #28
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.64) #28
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.17) #28
  %.not30 = icmp eq i32 %i.n, 0
  br i1 %.not30, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.65) #28
  %.not31 = icmp eq i32 %i.p, 0
  br i1 %.not31, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.66) #28
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.32) #28
  %.not33 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %spec.select = select i1 %.not33, ptr %i.u, ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.t ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.62) #25
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.26) #25
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #25
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #25
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.63) #25
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #25
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.17) #25
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #25
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.66) #25
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.32) #25
  %.not21 = icmp eq i32 %i.k, 0
  %. = select i1 %.not21, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ %., %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
begin_hunk_2_@dt_bauhaus_combobox_set

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_drawing_area_new() local_unnamed_addr #3

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_swatch_draw_callback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %i.h = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.68) #25
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !34   ; 2 uses
  %i.k = icmp eq i32 %i.j, 9
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %sext20 = shl i64 %i.i, 32
  %i.m = ashr exact i64 %sext20, 30
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !35
  call fastcc void @get_harmony_nodes(i32 noundef %i.j, float noundef %i.r, ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !30
  %.not = icmp sgt i32 %i.s, %i.p
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.i, 32
  %i.t = ashr exact i64 %sext, 30
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.500000e-01, double noundef 2.500000e-01, double noundef 2.500000e-01) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread
  %.11723 = phi float [ %i.o, %.thread ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call fastcc void @_hue_to_srgb(float noundef %.11723, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.w = load float, ptr %i.c, align 4, !tbaa !31
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = load float, ptr %i.d, align 4, !tbaa !31
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = load float, ptr %i.e, align 4, !tbaa !31
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef %i.x, double noundef %i.z, double noundef %i.ab) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 1
}

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_set_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_apply_harmony_guide(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !118
  %i.b = add i32 %i.a, -1
  store i32 %i.b, ptr %1, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !119
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.e, 2.000000e+00 ; 2 uses
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = srem i32 %i.g, 720                       ; 2 uses
  %i.i = trunc nsw i32 %i.h to i16
  %.lhs.trunc.i = add nsw i16 %i.i, 1
  %i.j = srem i16 %.lhs.trunc.i, 720
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !31 ; 5 uses
  %i.n = sext i16 %i.j to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !31 ; 4 uses
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %i.m
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 5.000000e-01
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.t = fsub reassoc nsz arcp contract afn float %i.m, %i.p
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 5.000000e-01
  %i.v = fadd reassoc nsz arcp contract afn float %i.m, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.u, float %i.v, float %i.m
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.s, %bb.b ], [ %i.p, %bb.c ]
  %.013.i.i = phi nsz float [ %i.m, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.f, %i.w
  %i.y = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.013.i.i ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ab, float %i.ac, float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %spec.select16.i.i, ptr %i.ad, align 4, !tbaa !35
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !79
  %i.ai = load i32, ptr %1, align 4, !tbaa !34
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ah, i32 noundef %i.ai) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  %i.al = load i32, ptr %i.c, align 4, !tbaa !119
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.am) #25
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.ar, ptr noundef %0, i32 noundef 1) #25
  ret void
}

declare void @dt_lib_histogram_set_scope(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_set_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.maxnum.v3f32(<3 x float>, <3 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v3f32(float, <3 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

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
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!8, !8, i64 0}
!31 = !{!19, !19, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!"dt_iop_colorharmonizer_params_t", !8, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !7, i64 20, !8, i64 36, !7, i64 40, !19, i64 56}
!34 = !{!33, !8, i64 0}
!35 = !{!33, !19, i64 4}
!36 = !{!33, !8, i64 36}
!37 = !{!"", !8, i64 0, !7, i64 4}
!38 = !{!37, !8, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!43 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!44 = !{!"dt_pthread_mutex_t", !7, i64 0}
!45 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!46 = !{!"", !25, i64 0, !25, i64 8}
!47 = !{!"", !12, i64 0, !8, i64 8}
!48 = !{!"", !46, i64 0, !47, i64 16}
!49 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!50 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!51 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!52 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !42, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !43, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !44, i64 712, !11, i64 752, !11, i64 760, !45, i64 768, !45, i64 776, !11, i64 784, !48, i64 792, !49, i64 824, !49, i64 832, !49, i64 840, !49, i64 848, !49, i64 856, !49, i64 864, !49, i64 872, !8, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !50, i64 912, !50, i64 920, !49, i64 928, !49, i64 936, !8, i64 944, !51, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !49, i64 1096, !11, i64 1104, !8, i64 1112}
!53 = !{!52, !11, i64 704}
!54 = !{!"any p2 pointer", !11, i64 0}
!55 = !{!"p1 long", !11, i64 0}
!56 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !11, i64 0}
!57 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !17, i64 8, !17, i64 16, !54, i64 24, !55, i64 32, !56, i64 40, !55, i64 48, !16, i64 56, !16, i64 64, !17, i64 72, !8, i64 80, !17, i64 88, !17, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!58 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !11, i64 0}
!59 = !{!"p1 _ZTS6_GList", !11, i64 0}
!60 = !{!"p1 omnipotent char", !11, i64 0}
!61 = !{!"dt_dev_detail_mask_t", !20, i64 0, !17, i64 24, !26, i64 32}
!62 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!63 = !{!"double", !7, i64 0}
!64 = !{!"dt_image_geoloc_t", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!66 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!67 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !19, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !24, i64 1488, !7, i64 1616, !60, i64 1656, !8, i64 1664, !8, i64 1668, !62, i64 1672, !64, i64 1680, !65, i64 1704, !21, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !19, i64 1756, !19, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !59, i64 1856, !66, i64 1864, !8, i64 1872, !8, i64 1876}
!68 = !{!"dt_dev_pixelpipe_t", !57, i64 0, !8, i64 120, !17, i64 128, !26, i64 136, !8, i64 144, !8, i64 148, !19, i64 152, !8, i64 156, !8, i64 160, !24, i64 176, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !59, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !60, i64 360, !17, i64 368, !8, i64 376, !8, i64 380, !19, i64 384, !7, i64 388, !17, i64 416, !44, i64 424, !44, i64 464, !44, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !61, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !67, i64 656, !8, i64 2544, !60, i64 2552, !8, i64 2560, !59, i64 2568, !59, i64 2576, !59, i64 2584, !8, i64 2592, !26, i64 2600, !17, i64 2608, !7, i64 2616, !7, i64 2632}
!69 = !{!"p1 _ZTS7_GtkBox", !11, i64 0}
!70 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!71 = !{!"_gui_collapsible_section_t", !69, i64 0, !60, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !69, i64 40, !70, i64 48}
!72 = !{!"dt_iop_colorharmonizer_gui_data_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 216, !7, i64 248, !71, i64 280, !7, i64 336, !8, i64 1776, !7, i64 1784}
!73 = !{!72, !8, i64 1776}
!74 = !{!72, !49, i64 64}
!75 = !{!52, !11, i64 680}
!76 = !{!"dt_action_t", !8, i64 0, !60, i64 8, !60, i64 16, !11, i64 24, !70, i64 32, !70, i64 40}
!77 = !{!"dt_iop_module_so_t", !76, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !42, i64 488, !7, i64 496, !11, i64 520, !8, i64 528, !11, i64 536, !8, i64 544, !8, i64 548}
!78 = !{!77, !11, i64 520}
!79 = !{!72, !49, i64 0}
!80 = !{!"dt_codepath_t", !8, i64 0}
!81 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!82 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!83 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!84 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!85 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!86 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!87 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!88 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!89 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!90 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!91 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!92 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!93 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!94 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!95 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!96 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!97 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!98 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!99 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!100 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!101 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!102 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!103 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!104 = !{!"_Bool", !7, i64 0}
!105 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!106 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!107 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!108 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!109 = !{!"", !103, i64 0, !44, i64 8, !7, i64 48, !104, i64 96, !104, i64 97, !105, i64 104, !106, i64 112, !107, i64 120, !108, i64 128, !108, i64 136, !108, i64 144}
!110 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!111 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!112 = !{!"dt_sys_resources_t", !17, i64 0, !17, i64 8, !16, i64 16, !16, i64 24, !8, i64 32}
!113 = !{!"dt_backthumb_t", !63, i64 0, !63, i64 8, !8, i64 16, !8, i64 20}
!114 = !{!"dt_gimp_t", !8, i64 0, !60, i64 8, !60, i64 16, !8, i64 24, !8, i64 28}
!115 = !{!"dt_splash_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !8, i64 32}
!116 = !{!"darktable_t", !80, i64 0, !8, i64 4, !8, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !81, i64 48, !82, i64 56, !43, i64 64, !83, i64 72, !84, i64 80, !85, i64 88, !86, i64 96, !87, i64 104, !88, i64 112, !89, i64 120, !90, i64 128, !91, i64 136, !92, i64 144, !93, i64 152, !94, i64 160, !95, i64 168, !96, i64 176, !97, i64 184, !98, i64 192, !99, i64 200, !100, i64 208, !101, i64 216, !102, i64 224, !7, i64 232, !44, i64 2792, !44, i64 2832, !44, i64 2872, !44, i64 2912, !44, i64 2952, !44, i64 2992, !60, i64 3032, !60, i64 3040, !60, i64 3048, !60, i64 3056, !60, i64 3064, !60, i64 3072, !60, i64 3080, !60, i64 3088, !60, i64 3096, !60, i64 3104, !60, i64 3112, !60, i64 3120, !60, i64 3128, !109, i64 3136, !59, i64 3288, !63, i64 3296, !59, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !110, i64 3520, !111, i64 3528, !112, i64 3536, !113, i64 3576, !114, i64 3600, !115, i64 3632, !8, i64 3672}
!117 = !{!116, !83, i64 72}
!118 = !{!65, !8, i64 0}
!119 = !{!65, !8, i64 4}
!120 = !{!116, !87, i64 104}
!121 = !{!72, !49, i64 72}
!122 = !{!72, !49, i64 8}
!123 = !{!72, !49, i64 80}
!124 = !{!49, !49, i64 0}
!125 = !{!72, !49, i64 56}
!126 = !{!52, !8, i64 672}
!127 = !{!52, !43, i64 664}
!128 = !{!72, !49, i64 48}
!129 = !{!65, !8, i64 12}
!130 = !{i64 0, i64 4, !30, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 16, !32, i64 36, i64 4, !30, i64 40, i64 16, !32, i64 56, i64 4, !31}
!131 = distinct !{!131, !39, !40}
!132 = distinct !{!132, !39, !40}
!133 = distinct !{!133, !40, !39}
!134 = distinct !{!134, !39, !40}
!135 = distinct !{!135, !40, !39}
!136 = !{!28, !8, i64 132}
!137 = !{!"dt_iop_colorharmonizer_data_t", !33, i64 0, !7, i64 60, !8, i64 76}
!138 = !{!137, !8, i64 76}
!139 = !{!28, !13, i64 8}
!140 = !{!33, !19, i64 8}
!141 = !{!33, !19, i64 16}
!142 = !{!33, !19, i64 12}
!143 = !{!33, !19, i64 56}
!144 = !{!20, !8, i64 12}
!145 = !{!20, !8, i64 8}
!146 = !{!20, !19, i64 16}
!147 = !{!28, !19, i64 104}
!148 = !{!68, !8, i64 644}
!149 = !{!52, !11, i64 688}
!150 = !{!52, !8, i64 696}
!151 = !{!"dt_iop_colorharmonizer_global_data_t", !8, i64 0, !8, i64 4}
!152 = !{!151, !8, i64 0}
!153 = !{!151, !8, i64 4}
!154 = !{!68, !58, i64 304}
!155 = !{!11, !11, i64 0}
!156 = !{!52, !49, i64 824}
!157 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!158 = !{!"dt_gui_widgets_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!159 = !{!"dt_gui_scrollbars_t", !49, i64 0, !49, i64 8, !8, i64 16}
!160 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!161 = !{!"dt_gui_gtk_t", !157, i64 0, !158, i64 8, !159, i64 56, !160, i64 80, !8, i64 88, !60, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !63, i64 1384, !63, i64 1392, !63, i64 1400, !63, i64 1408, !49, i64 1416, !63, i64 1424, !63, i64 1432, !63, i64 1440, !63, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!162 = !{!161, !63, i64 1432}
!163 = !{!72, !49, i64 16}
!164 = !{!72, !49, i64 32}
!165 = !{!72, !49, i64 24}
!166 = !{!72, !49, i64 40}
!167 = !{!72, !69, i64 320}
!168 = distinct !{!168, !178, !39, !40}
!169 = distinct !{!169, !178, !39, !40}
!170 = distinct !{!170, !178, !39, !40}
!171 = distinct !{!171, !39, !40}
!172 = distinct !{!172, !39, !40}
!173 = distinct !{!173, !40, !39}
!174 = distinct !{!174, !39, !40}
!175 = distinct !{!175, !40, !39}
!176 = distinct !{!176, !39, !40}
!177 = distinct !{!177, !40, !39}
!178 = !{!"llvm.loop.peeled.count", i32 2}
!179 = distinct !{!179, !39, !40}
!180 = distinct !{!180, !40, !39}
!181 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!182 = !{!"p1 _ZTS23dt_colorpicker_sample_t", !11, i64 0}
!183 = !{!"p1 _ZTS21dt_iop_color_picker_t", !11, i64 0}
!184 = !{!"", !181, i64 0, !182, i64 8, !183, i64 16, !50, i64 24, !182, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!185 = !{!"", !181, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !8, i64 64}
!186 = !{!"", !181, i64 0}
!187 = !{!"", !8, i64 0}
!188 = !{!"", !184, i64 0, !185, i64 96, !186, i64 168, !187, i64 176}
!189 = !{!"dt_lib_t", !59, i64 0, !181, i64 8, !188, i64 16}
!190 = !{!189, !181, i64 112}
!191 = !{!"dt_lib_module_t", !76, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !42, i64 280, !11, i64 288, !7, i64 296, !49, i64 424, !49, i64 432, !8, i64 440, !49, i64 448, !49, i64 456, !49, i64 464, !49, i64 472, !8, i64 480}
!192 = !{!191, !11, i64 288}
!193 = !{!"p1 _ZTS16dt_scopes_mode_t", !11, i64 0}
!194 = !{!"dt_scopes_t", !193, i64 0, !7, i64 8, !8, i64 288, !8, i64 292, !7, i64 296, !8, i64 308, !63, i64 312, !63, i64 320, !49, i64 328, !49, i64 336, !49, i64 344, !49, i64 352, !49, i64 360, !49, i64 368, !7, i64 376, !49, i64 400, !44, i64 408}
!195 = !{!194, !193, i64 0}
!196 = distinct !{!196, !39, !40}
!197 = distinct !{!197, !39}
!198 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!199 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !60, i64 8, !17, i64 16, !198, i64 24, !17, i64 32, !17, i64 40}
!200 = !{!199, !8, i64 0}
end_hunk_2
