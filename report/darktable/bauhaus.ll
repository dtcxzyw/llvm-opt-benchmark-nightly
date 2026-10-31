Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/bauhaus?download=true
inline.NumInlined: 300
inline.NumDeleted: 29
begin_hunk_0_@dt_bauhaus_load_theme:bb.a
  ret void
}

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_style_context_new() local_unnamed_addr #2

declare ptr @gtk_widget_path_new() local_unnamed_addr #2

declare i32 @gtk_widget_path_append_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_widget_get_type() local_unnamed_addr #4

declare void @gtk_widget_path_iter_add_class(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_style_context_set_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_style_context_set_screen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_screen(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_style_context_lookup_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #2

declare void @gtk_style_context_get(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #2

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #2

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pango_cairo_context_set_resolution(ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @pango_layout_get_context(ptr noundef) local_unnamed_addr #2

declare void @pango_layout_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_object_unref(ptr noundef) local_unnamed_addr #2

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #2

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #2

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_bauhaus_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1096) ptr @calloc(i64 noundef 1, i64 noundef 1096) #28 ; 9 uses
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.c = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.30) #26
  %.not = icmp eq i32 %i.c, 0
  %i.d = select reassoc nsz arcp contract afn i1 %.not, double 4.000000e+00, double 1.000000e+00
  store double %i.d, ptr @INNER_PADDING, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i32 0, ptr %i.e, align 8, !tbaa !88
  store ptr null, ptr %i.a, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr null, ptr %i.f, align 8, !tbaa !78
  tail call void @dt_bauhaus_load_theme()
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i32 1, ptr %i.g, align 8, !tbaa !90
  %i.h = tail call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.h, ptr %i.i, align 8, !tbaa !91
  %i.j = tail call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.j, ptr %i.k, align 8, !tbaa !92
  %i.l = tail call ptr @gtk_window_new(i32 noundef 1) #26 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !93
  tail call void @gtk_widget_set_size_request(ptr noundef %i.l, i32 noundef 1, i32 noundef 1) #26
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !93
  tail call void @gtk_window_set_keep_above(ptr noundef %i.m, i32 noundef 1) #26
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !93
  tail call void @gtk_window_set_modal(ptr noundef %i.n, i32 noundef 1) #26
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !93
  tail call void @gtk_window_set_type_hint(ptr noundef %i.o, i32 noundef 9) #26
  %i.p = tail call ptr @gtk_drawing_area_new() #26 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !94
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.p, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef null) #26
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !94
  tail call void @gtk_container_add(ptr noundef %i.r, ptr noundef %i.s) #26
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !94
  tail call void @gtk_widget_set_can_focus(ptr noundef %i.t, i32 noundef 1) #26
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 5560
  %i.x = load i32, ptr %i.w, align 8, !tbaa !261
  %i.y = or i32 %i.x, 9988
  tail call void @gtk_widget_add_events(ptr noundef %i.u, i32 noundef %i.y) #26
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !94  ; 7 uses
  tail call void @gtk_widget_realize(ptr noundef %i.z) #26
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.ac = tail call ptr @gtk_widget_get_window(ptr noundef %i.ab) #26
  %i.ad = tail call i64 @g_signal_connect_data(ptr noundef %i.ac, ptr noundef nonnull @.str.32, ptr noundef nonnull @_window_moved_to_rect, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.ae = tail call i64 @g_signal_connect_data(ptr noundef %i.z, ptr noundef nonnull @.str.33, ptr noundef nonnull @_window_show, ptr noundef %i.aa, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.af = tail call i64 @g_signal_connect_data(ptr noundef %i.z, ptr noundef nonnull @.str.34, ptr noundef nonnull @_window_motion_notify, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.ag = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.35, ptr noundef nonnull @_popup_draw, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.ah = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.36, ptr noundef nonnull @_popup_leave_notify, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.ai = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.37, ptr noundef nonnull @_popup_button_press, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.aj = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.38, ptr noundef nonnull @_popup_button_release, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.ak = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.39, ptr noundef nonnull @_popup_key_press, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.al = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.40, ptr noundef nonnull @_popup_scroll, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 400
  %i.ao = tail call ptr @dt_action_define(ptr noundef nonnull %i.an, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef nonnull @_action_def_focus_slider) #26 ; 0 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 400
  %i.ar = tail call ptr @dt_action_define(ptr noundef nonnull %i.aq, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef null, ptr noundef nonnull @_action_def_focus_combo) #26 ; 0 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 400
  %i.au = tail call ptr @dt_action_define(ptr noundef nonnull %i.at, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef nonnull @_action_def_focus_button) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_window_new(i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_set_keep_above(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_set_modal(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_set_type_hint(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gtk_drawing_area_new() local_unnamed_addr #2

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_can_focus(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_realize(ptr noundef) local_unnamed_addr #2

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_window_moved_to_rect(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, i32 %4, ptr nofree readnone captures(none) %5) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96
  %i.e = sub i32 %i.b, %i.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !262
  %i.i = add nsw i32 %i.e, %i.h
  store i32 %i.i, ptr %i.g, align 4, !tbaa !262
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_window_show(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @gtk_grab_add(ptr noundef %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_window_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 8 ; 8 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = call ptr @gtk_widget_get_window(ptr noundef %i.e) #26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = call i32 @gdk_window_get_origin(ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.g) #26 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x i32>, ptr %3, align 8, !tbaa !80
  %i.k = sitofp <2 x i32> %i.j to <2 x double>
  %i.l = load <2 x double>, ptr %i.i, align 8, !tbaa !87
  %i.m = fsub reassoc nsz arcp contract afn <2 x double> %i.l, %i.k ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fptosi double %i.n to i32                ; 3 uses
  %i.p = extractelement <2 x double> %i.m, i64 1
  %i.q = fptosi double %i.p to i32                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !264
  %i.t = and i32 %i.s, 256
  %.not = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not, i32 50, i32 400
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !265
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, %i.v
  %i.aa = fptosi double %i.z to i32               ; 3 uses
  %i.ab = sub nsw i32 0, %i.aa                    ; 2 uses
  %i.ac = icmp slt i32 %i.o, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !100
  %i.af = add nsw i32 %i.ae, %i.aa
  %i.ag = icmp slt i32 %i.af, %i.o
  br i1 %i.ag, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !101 ; 3 uses
  %i.aj = add nsw i32 %i.ai, %i.q                 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ab
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !102
  %i.an = add nsw i32 %i.am, %i.aa
  %i.ao = icmp sgt i32 %i.aj, %i.an
  br i1 %i.ao, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !89 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !112
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.f, label %_popup_reject.exit

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.av = load float, ptr %i.au, align 8, !tbaa !113
  call fastcc void @_slider_set_normalized(ptr noundef nonnull %i.aq, float noundef %i.av)
  br label %_popup_reject.exit

_popup_reject.exit:                               ; preds = %bb.e, %bb.f
  call fastcc void @_popup_hide()
  br label %bb.ak

bb.g:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !88
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %_stop_cursor.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 344 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %_stop_cursor.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call i32 @g_source_remove(i32 noundef %i.bb) #26 ; 0 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 348
  store i32 0, ptr %i.bd, align 4, !tbaa !115
  %.pre = load i32, ptr %i.ah, align 4, !tbaa !101
  br label %_stop_cursor.exit

_stop_cursor.exit:                                ; preds = %bb.i, %bb.h, %bb.g
  %i.be = phi i32 [ %.pre, %bb.i ], [ %i.ai, %bb.h ], [ %i.ai, %bb.g ] ; 4 uses
  %i.bf = load i16, ptr %i.c, align 8, !tbaa !116
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.o, %i.bg
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  store float %i.bi, ptr %i.bj, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 7 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !118 ; 4 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.q to float ; 3 uses
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !119
  %i.bq = sitofp i16 %i.bp to float
  %i.br = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn
  %i.bs = fsub reassoc nsz arcp contract afn float %i.bl, %i.br
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bq ; 9 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_stop_cursor.exit
  %i.bv = load i32, ptr %i.al, align 4, !tbaa !102 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !120 ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.be                ; 2 uses
  %i.bz = icmp sgt i32 %i.bv, %i.by
  br i1 %i.bz, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ca = sub i32 %i.bv, %i.by                    ; 2 uses
  %i.cb = icmp sgt i32 %i.bx, %i.q
  br i1 %i.cb, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bt, %i.bm
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.bx to float
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cc, %i.cd
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.ca to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bt, %i.cf
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.cg, %i.ce
  %i.ci = fptosi float %i.ch to i32
  br label %bb.p

bb.m:                                             ; preds = %bb.j, %_stop_cursor.exit
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 0.000000e+00
  %i.ck = icmp sgt i32 %i.be, 0
  %or.cond = and i1 %i.ck, %i.cj
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cl = sub nsw i32 0, %i.be                    ; 3 uses
  %i.cm = icmp sgt i32 %i.q, -1
  br i1 %i.cm, label %bb.o, label %.thread130

.thread130:                                       ; preds = %bb.n
  %i.cn = sitofp reassoc nsz arcp contract afn i32 %i.cl to float
  %i.co = fadd reassoc nsz arcp contract afn float %i.bl, %i.cn
  %i.cp = fsub reassoc nsz arcp contract afn float %i.co, %i.bt
  store float %i.cp, ptr %i.bk, align 4, !tbaa !118
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cq = fadd reassoc nsz arcp contract afn float %i.bt, %i.bm
  %i.cr = sitofp reassoc nsz arcp contract afn i32 %i.cl to float
  %i.cs = fmul reassoc nsz arcp contract afn float %i.bt, %i.cr
  %i.ct = fdiv reassoc nsz arcp contract afn float %i.cs, %i.cq
  %i.cu = fptosi float %i.ct to i32
  br label %bb.p

.thread:                                          ; preds = %bb.m
  %i.cv = fsub reassoc nsz arcp contract afn float %i.bl, %i.bt
  store float %i.cv, ptr %i.bk, align 4, !tbaa !118
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.k, %bb.l
  %.0 = phi i32 [ %i.ci, %bb.l ], [ %i.ca, %bb.k ], [ %i.cu, %bb.o ] ; 3 uses
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %.0 to float
  %i.cx = fsub reassoc nsz arcp contract afn float %i.bl, %i.bt
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cw
  store float %i.cy, ptr %i.bk, align 4, !tbaa !118
  %.not119 = icmp eq i32 %.0, 0
  br i1 %.not119, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread130, %bb.p
  %.0133 = phi i32 [ %i.cl, %.thread130 ], [ %.0, %bb.p ]
  call fastcc void @_window_position(i32 noundef %.0133)
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q, %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !112
  switch i32 %i.da, label %bb.aj [
    i32 1, label %bb.s
    i32 2, label %bb.ad
  ]

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !100
  %i.dc = load i16, ptr %i.c, align 8, !tbaa !116
  %i.dd = sext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.df = load i16, ptr %i.de, align 2, !tbaa !121
  %i.dg = sext i16 %i.df to i32
  %i.dh = add nsw i32 %i.dd, %i.dg
  %i.di = sub i32 %i.db, %i.dh
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %i.di to float ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !81
  %i.dm = load double, ptr @INNER_PADDING, align 8, !tbaa !87
  %i.dn = load float, ptr %i.bj, align 8, !tbaa !117 ; 5 uses
  %i.do = fdiv reassoc nsz arcp contract afn float %i.dn, %i.dj
  %i.dp = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.do ; 2 uses
  %i.dq = load float, ptr %i.bk, align 4, !tbaa !118
  %i.dr = fdiv reassoc nsz arcp contract afn float %i.dq, %i.dj
  %i.ds = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !124 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1
end_hunk_0
begin_hunk_1_@_widget_button_press:bb.a
_widget_width.exit:                               ; preds = %_widget_get_quad_width.exit.i, %_widget_get_quad_width.exit15.i
  %i.bo = phi i16 [ %i.at, %_widget_get_quad_width.exit15.i ], [ %i.s, %_widget_get_quad_width.exit.i ]
  %i.bp = phi i16 [ %i.ar, %_widget_get_quad_width.exit15.i ], [ %i.p, %_widget_get_quad_width.exit.i ]
  %i.bq = phi double [ %i.bn, %_widget_get_quad_width.exit15.i ], [ 1.000000e+00, %_widget_get_quad_width.exit.i ] ; 2 uses
  %i.br = sitofp i16 %i.bp to double
  %i.bs = sitofp i16 %i.bo to double
  %i.bt = fadd reassoc nsz arcp contract afn double %i.br, %i.bs
  %i.bu = fsub reassoc nsz arcp contract afn double %2, %i.bt
  %i.bv = fdiv reassoc nsz arcp contract afn double %i.bu, %i.bq ; 2 uses
  %i.bw = fptrunc reassoc nsz arcp contract afn double %i.bv to float ; 2 uses
  %i.bx = tail call i32 @gtk_gesture_single_get_current_button(ptr noundef %0) #26 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !187
  %i.ca = icmp eq ptr %i.bz, null
  %or.cond = or i1 %i.c, %i.ca
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_widget_width.exit
  %i.cb = fpext reassoc nsz arcp contract afn float %i.bw to double
  %i.cc = load double, ptr @INNER_PADDING, align 8, !tbaa !87
  %i.cd = fdiv reassoc nsz arcp contract afn double %i.cc, %i.bq
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, 1.000000e+00
  %i.cf = fcmp reassoc nsz arcp contract afn olt double %i.ce, %i.cb
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !225
  %.not.i60 = icmp eq i32 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !188 ; 2 uses
  %i.ck = or i32 %i.cj, 16
  %i.cl = xor i32 %i.cj, 16
  %.sink.i = select i1 %.not.i60, i32 %i.ck, i32 %i.cl
  store i32 %.sink.i, ptr %i.ci, align 8, !tbaa !188
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %4) #26
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 284
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !80
  tail call void (ptr, i32, i32, ...) @g_signal_emit(ptr noundef nonnull %4, i32 noundef %i.co, i32 noundef 0) #26
  br label %bb.aq

bb.l:                                             ; preds = %bb.j, %_widget_width.exit
  %i.cp = icmp eq i32 %i.bx, 1
  %i.cq = icmp eq i32 %1, 2
  %or.cond3 = and i1 %i.cq, %i.cp
  br i1 %or.cond3, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.cr = tail call i32 (...) @dt_key_modifier_state() #26
  %i.cs = tail call i32 @gtk_accelerator_get_default_mod_mask() #26
  %i.ct = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !80
  %i.cu = or i32 %i.ct, %i.cr
  %i.cv = and i32 %i.cu, %i.cs
  %.not = icmp eq i32 %i.cv, 4
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !168
  %.not57 = icmp eq ptr %i.cx, null
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !169
  %i.da = tail call i32 @dt_gui_presets_autoapply_for_module(ptr noundef %i.cz, ptr noundef nonnull %4) #26
  %.not58 = icmp eq i32 %i.da, 0
  br i1 %.not58, label %bb.p, label %dt_bauhaus_widget_reset.exit

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !112
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = and i8 %i.df, -2
  store i8 %i.dg, ptr %i.de, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 180 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.dk = load <2 x float>, ptr %i.dh, align 4, !tbaa !150 ; 3 uses
  store <2 x float> %i.dk, ptr %i.di, align 4, !tbaa !150
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !224 ; 6 uses
  %i.dn = fcmp uno float %i.dm, 0.000000e+00
  br i1 %i.dn, label %dt_bauhaus_widget_reset.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.dp = load float, ptr %i.do, align 8, !tbaa !152 ; 5 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt float %i.dm, %i.dp
  br i1 %i.dq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !154 ; 2 uses
  %i.dt = fcmp reassoc nsz arcp contract afn olt float %i.dm, %i.ds
  %..i = select reassoc nsz arcp contract afn i1 %i.dt, float %i.ds, float %i.dm
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.du = phi reassoc nsz arcp contract afn float [ %i.dp, %bb.r ], [ %..i, %bb.s ] ; 10 uses
  %i.dv = fcmp reassoc nsz arcp contract afn oeq float %i.du, %i.dm
  br i1 %i.dv, label %.tail.thread.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !124 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 1
  %.not.i62 = icmp eq i8 %i.dy, -62
  br i1 %.not.i62, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.ea = load i8, ptr %i.dz, align 1
  %.not56.i = icmp eq i8 %i.ea, -80
  br i1 %.not56.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.u, label %.tail.thread.i

bb.u:                                             ; preds = %.tail.i
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !154 ; 3 uses
  %i.eg = fadd reassoc nsz arcp contract afn float %i.dp, %i.dm
  %.neg.i = fmul reassoc nsz arcp contract afn float %i.ef, -2.000000e+00
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %.neg.i
  %i.ei = fsub reassoc nsz arcp contract afn float %i.dp, %i.ef
  %i.ej = frem reassoc nsz arcp contract afn float %i.eh, %i.ei
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.ef
  br label %.tail.thread.i

.tail.thread.i:                                   ; preds = %bb.u, %.tail.i, %sub_1.i, %sub_0.i, %bb.t
  %i.el = phi reassoc nsz arcp contract afn float [ %i.ek, %bb.u ], [ %i.du, %.tail.i ], [ %i.du, %bb.t ], [ %i.du, %sub_0.i ], [ %i.du, %sub_1.i ] ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn oeq float %i.el, %i.du
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.tail.thread.i
  %i.en = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.en, %i.du
  %.54.i = select reassoc nsz arcp contract afn i1 %i.eo, float %i.en, float %i.du
  %i.ep = extractelement <2 x float> %i.dk, i64 1 ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn ogt float %i.ep, %i.du
  %.55.i = select reassoc nsz arcp contract afn i1 %i.eq, float %i.ep, float %i.du
  br label %bb.x

bb.w:                                             ; preds = %.tail.thread.i
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.es = load float, ptr %i.er, align 4, !tbaa !154
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i63 = phi float [ %.54.i, %bb.v ], [ %i.es, %bb.w ] ; 3 uses
  %i.et = phi reassoc nsz arcp contract afn float [ %.55.i, %bb.v ], [ %i.dp, %bb.w ] ; 2 uses
  store float %.sink.i63, ptr %i.di, align 4, !tbaa !126
  store float %i.et, ptr %i.dj, align 8, !tbaa !125
  %i.eu = fsub reassoc nsz arcp contract afn float %i.el, %.sink.i63
  %i.ev = fsub reassoc nsz arcp contract afn float %i.et, %.sink.i63
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !155
  %i.ez = tail call reassoc nsz arcp contract afn float %i.ey(float noundef %i.ew, i32 noundef 1) #26, !inline_history !310
  tail call fastcc void @_slider_set_normalized(ptr noundef nonnull %4, float noundef %i.ez), !inline_history !310
  br label %dt_bauhaus_widget_reset.exit

bb.y:                                             ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 172
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !145
  %i.fc = tail call i32 @dt_bauhaus_combobox_set_from_value(ptr noundef nonnull %4, i32 noundef %i.fb), !inline_history !260 ; 0 uses
  br label %dt_bauhaus_widget_reset.exit

dt_bauhaus_widget_reset.exit:                     ; preds = %bb.y, %bb.q, %bb.x, %bb.o
  tail call fastcc void @_popup_hide()
  br label %bb.aq

bb.z:                                             ; preds = %bb.l
  %i.fd = icmp eq i32 %i.bx, 3
  br i1 %i.fd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !112 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fh = tail call ptr @gtk_get_current_event() #26 ; 2 uses
  %i.fi = tail call i32 @gdk_event_get_time(ptr noundef %i.fh) #26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !167
  tail call void @gdk_event_free(ptr noundef %i.fh) #26
  %i.fk = insertelement <2 x double> poison, double %2, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %3, i64 1
  %i.fm = fptrunc <2 x double> %i.fl to <2 x float>
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x float> %i.fm, ptr %i.fn, align 8, !tbaa !150
  tail call fastcc void @_popup_show(ptr noundef nonnull %4)
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.fo = icmp eq i32 %i.bx, 2
  br i1 %i.fo, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 84
  store i32 0, ptr %i.fr, align 4, !tbaa !132
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  store float 0.000000e+00, ptr %i.fs, align 8, !tbaa !131
  %.not.i.i61 = icmp eq i32 %i.ff, 1
  br i1 %.not.i.i61, label %bb.ae, label %.dt_bauhaus_slider_get.exit.i_crit_edge

.dt_bauhaus_slider_get.exit.i_crit_edge:          ; preds = %bb.ad
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 180
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !126
  br label %dt_bauhaus_slider_get.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !125 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 180 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !126 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn oeq float %i.fu, %i.fw
  br i1 %i.fx, label %dt_bauhaus_slider_get.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !155
  %i.ga = load float, ptr %i.fp, align 8, !tbaa !151
  %i.gb = tail call reassoc nsz arcp contract afn float %i.fz(float noundef %i.ga, i32 noundef 2) #26, !inline_history !170
  %i.gc = load float, ptr %i.fv, align 4, !tbaa !126 ; 3 uses
  %i.gd = load float, ptr %i.ft, align 8, !tbaa !125
  %i.ge = fsub reassoc nsz arcp contract afn float %i.gd, %i.gc
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.gb
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, %i.gc
  br label %dt_bauhaus_slider_get.exit.i

dt_bauhaus_slider_get.exit.i:                     ; preds = %.dt_bauhaus_slider_get.exit.i_crit_edge, %bb.af, %bb.ae
  %i.gh = phi float [ %.pre, %.dt_bauhaus_slider_get.exit.i_crit_edge ], [ %i.gc, %bb.af ], [ %i.fw, %bb.ae ]
  %.1.i.i = phi nsz float [ -1.000000e+00, %.dt_bauhaus_slider_get.exit.i_crit_edge ], [ %i.gg, %bb.af ], [ %i.fu, %bb.ae ] ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 180 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !154 ; 11 uses
  %i.gl = fcmp reassoc nsz arcp contract afn oeq float %i.gh, %i.gk
  br i1 %i.gl, label %bb.ag, label %.thread51.i

.thread51.i:                                      ; preds = %dt_bauhaus_slider_get.exit.i
  store float %i.gk, ptr %i.gi, align 4, !tbaa !126
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 200
  br label %_slider_zoom_range.exit

bb.ag:                                            ; preds = %dt_bauhaus_slider_get.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.go = load float, ptr %i.gn, align 8, !tbaa !125
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !152
  %i.gr = fcmp reassoc nsz arcp contract afn oeq float %i.go, %i.gq
  %cond.fr49.i = freeze i1 %i.gr
  br i1 %cond.fr49.i, label %.split.i, label %bb.ah

.split.i:                                         ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !150 ; 2 uses
  store float %i.gt, ptr %i.gi, align 4, !tbaa !126
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 192
  br label %_slider_zoom_range.exit

bb.ah:                                            ; preds = %bb.ag
  store float %i.gk, ptr %i.gi, align 4, !tbaa !126
  br label %_slider_zoom_range.exit

_slider_zoom_range.exit:                          ; preds = %.thread51.i, %.split.i, %bb.ah
  %i.gv = phi float [ %i.gk, %.thread51.i ], [ %i.gk, %bb.ah ], [ %i.gt, %.split.i ] ; 2 uses
  %i.gw = phi ptr [ %i.gm, %.thread51.i ], [ %i.gp, %bb.ah ], [ %i.gu, %.split.i ]
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !150 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 2 uses
  store float %i.gx, ptr %i.gy, align 8, !tbaa !125
  %i.gz = fcmp uno float %.1.i.i, 0.000000e+00
  br i1 %i.gz, label %dt_bauhaus_slider_set.exit78, label %bb.ai

bb.ai:                                            ; preds = %_slider_zoom_range.exit
  %i.ha = load i32, ptr %i.fe, align 8, !tbaa !112
  %.not52.i66 = icmp eq i32 %i.ha, 1
  br i1 %.not52.i66, label %bb.aj, label %dt_bauhaus_slider_set.exit78

bb.aj:                                            ; preds = %bb.ai
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !152 ; 5 uses
  %i.hd = fcmp reassoc nsz arcp contract afn ogt float %.1.i.i, %i.hc
  %i.he = fcmp reassoc nsz arcp contract afn olt float %.1.i.i, %i.gk
  %..i67 = select reassoc nsz arcp contract afn i1 %i.he, float %i.gk, float %.1.i.i
  %i.hf = select reassoc nsz arcp contract afn i1 %i.hd, float %i.hc, float %..i67 ; 10 uses
  %i.hg = fcmp reassoc nsz arcp contract afn oeq float %i.hf, %.1.i.i
  br i1 %i.hg, label %.tail.thread.i70, label %sub_0.i68

sub_0.i68:                                        ; preds = %bb.aj
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !124 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 1
  %.not.i69 = icmp eq i8 %i.hj, -62
  br i1 %.not.i69, label %sub_1.i74, label %.tail.thread.i70

sub_1.i74:                                        ; preds = %sub_0.i68
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hl = load i8, ptr %i.hk, align 1
  %.not56.i75 = icmp eq i8 %i.hl, -80
  br i1 %.not56.i75, label %.tail.i76, label %.tail.thread.i70

.tail.i76:                                        ; preds = %sub_1.i74
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.ak, label %.tail.thread.i70

bb.ak:                                            ; preds = %.tail.i76
  %.neg.i77 = fmul reassoc nsz arcp contract afn float %i.gk, -2.000000e+00
  %i.hp = fadd reassoc nsz arcp contract afn float %.neg.i77, %.1.i.i
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, %i.hc
  %i.hr = fsub reassoc nsz arcp contract afn float %i.hc, %i.gk
  %i.hs = frem reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, %i.gk
  br label %.tail.thread.i70

.tail.thread.i70:                                 ; preds = %bb.ak, %.tail.i76, %sub_1.i74, %sub_0.i68, %bb.aj
  %i.hu = phi reassoc nsz arcp contract afn float [ %i.ht, %bb.ak ], [ %i.hf, %.tail.i76 ], [ %i.hf, %bb.aj ], [ %i.hf, %sub_0.i68 ], [ %i.hf, %sub_1.i74 ] ; 2 uses
  %i.hv = fcmp reassoc nsz arcp contract afn oeq float %i.hu, %i.hf ; 2 uses
  %i.hw = fcmp reassoc nsz arcp contract afn olt float %i.gv, %i.hf
  %.54.i72 = select reassoc nsz arcp contract afn i1 %i.hw, float %i.gv, float %i.hf
  %i.hx = fcmp reassoc nsz arcp contract afn ogt float %i.gx, %i.hf
  %.55.i73 = select reassoc nsz arcp contract afn i1 %i.hx, float %i.gx, float %i.hf
  %.sink.i71 = select i1 %i.hv, float %.54.i72, float %i.gk ; 3 uses
  %i.hy = select reassoc nsz arcp contract afn i1 %i.hv, float %.55.i73, float %i.hc ; 2 uses
  store float %.sink.i71, ptr %i.gi, align 4, !tbaa !126
  store float %i.hy, ptr %i.gy, align 8, !tbaa !125
  %i.hz = fsub reassoc nsz arcp contract afn float %i.hu, %.sink.i71
  %i.ia = fsub reassoc nsz arcp contract afn float %i.hy, %.sink.i71
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !155
  %i.ie = tail call reassoc nsz arcp contract afn float %i.id(float noundef %i.ib, i32 noundef 1) #26, !inline_history !171
  tail call fastcc void @_slider_set_normalized(ptr noundef nonnull %4, float noundef %i.ie), !inline_history !171
  br label %dt_bauhaus_slider_set.exit78

dt_bauhaus_slider_set.exit78:                     ; preds = %_slider_zoom_range.exit, %bb.ai, %.tail.thread.i70
  %i.if = load float, ptr %i.fp, align 8, !tbaa !151
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  store float %i.if, ptr %i.ig, align 8, !tbaa !113
  tail call fastcc void @_slider_zoom_toast(ptr noundef nonnull %4)
  br label %bb.aq

bb.al:                                            ; preds = %bb.ac
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 8
  %i.ij = or i8 %i.ii, 1
  store i8 %i.ij, ptr %i.ih, align 8
  %i.ik = tail call i32 (...) @dt_key_modifier_state() #26
  %i.il = tail call i32 @gtk_accelerator_get_default_mod_mask() #26
  %i.im = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !80
  %i.in = or i32 %i.im, %i.ik
  %i.io = and i32 %i.in, %i.il
  %i.ip = icmp ne i32 %i.io, 0
  %or.cond5 = or i1 %i.c, %i.ip
  br i1 %or.cond5, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iq = fptrunc reassoc nsz arcp contract afn double %2 to float
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store float %i.iq, ptr %i.ir, align 8, !tbaa !117
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.is = fcmp reassoc nsz arcp contract afn ugt double %i.bv, f0x3FF0000010000000
  br i1 %i.is, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.iu = load float, ptr %i.it, align 8, !tbaa !81
  %i.iv = fpext reassoc nsz arcp contract afn float %i.iu to double
  %i.iw = fmul reassoc nsz arcp contract afn double %i.iv, 5.000000e-01
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.iy = load i16, ptr %i.ix, align 4, !tbaa !207
  %i.iz = sitofp i16 %i.iy to double
  %i.ja = fadd reassoc nsz arcp contract afn double %i.iw, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.jc = load i16, ptr %i.jb, align 4, !tbaa !208
  %i.jd = sitofp i16 %i.jc to double
  %i.je = fadd reassoc nsz arcp contract afn double %i.ja, %i.jd
  %i.jf = fcmp reassoc nsz arcp contract afn ogt double %3, %i.je
  br i1 %i.jf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store float +qnan, ptr %i.jg, align 8, !tbaa !117
end_hunk_1
