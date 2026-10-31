Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/geotagging?download=true
inline.NumInlined: 82
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_choose_gpx_callback:bb.a
  call void @gtk_tree_view_set_model(ptr noundef %i.ed, ptr noundef null) #17
  call void @gtk_list_store_clear(ptr noundef %i.eb) #17
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !80
  %i.ef = call ptr @dt_gpx_get_trkseg(ptr noundef %i.ee) #17 ; 3 uses
  %i.eg = call i32 @g_list_length(ptr noundef %i.ef) #17 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 368 ; 2 uses
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !36
  %i.ei = sext i32 %i.eg to i64
  %i.ej = mul nsw i64 %i.ei, 24
  %i.ek = call noalias ptr @g_malloc0(i64 noundef %i.ej) #18 ; 2 uses
  store ptr %i.ek, ptr %i.db, align 8, !tbaa !35
  %.not.i35 = icmp eq ptr %i.ek, null
  br i1 %.not.i35, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_remove_tracks_from_map.exit.i
  store i32 0, ptr %i.eh, align 8, !tbaa !36
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.103) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_remove_tracks_from_map.exit.i
  %.val58.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %.val58.i, i64 224
  %.01.i.i = load ptr, ptr %i.el, align 8, !tbaa !108 ; 2 uses
  %.not2.i.i = icmp eq ptr %.01.i.i, null
  br i1 %.not2.i.i, label %_remove_images_from_map.exit.i, label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %bb.q, %bb.s
  %.03.i.i = phi ptr [ %.0.i.i, %bb.s ], [ %.01.i.i, %bb.q ] ; 2 uses
  %i.em = load ptr, ptr %.03.i.i, align 8, !tbaa !84
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.eo, null
  br i1 %.not10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i62.i
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !79
  %i.eq = call i32 @dt_view_map_remove_marker(ptr noundef %i.ep, i32 noundef 4, ptr noundef nonnull %i.eo) #17 ; 0 uses
  store ptr null, ptr %i.en, align 8, !tbaa !134
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i62.i
  %i.er = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.er, align 8, !tbaa !108 ; 2 uses
  %.not.i63.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i63.i, label %_remove_images_from_map.exit.i, label %.lr.ph.i62.i

_remove_images_from_map.exit.i:                   ; preds = %bb.s, %bb.q
  %i.es = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %.05365.i = load ptr, ptr %i.es, align 8, !tbaa !108 ; 2 uses
  %.not5566.i = icmp eq ptr %.05365.i, null
  br i1 %.not5566.i, label %._crit_edge.i37, label %.lr.ph.i36

._crit_edge.i37:                                  ; preds = %.lr.ph.i36, %_remove_images_from_map.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.da, i64 416 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !111
  %i.ev = call ptr @gtk_tree_view_column_get_widget(ptr noundef %i.eu) #17
  %i.ew = call i32 @gtk_toggle_button_get_active(ptr noundef %i.ev) #17
  %.not5668.i = icmp eq ptr %i.ef, null
  br i1 %.not5668.i, label %_show_gpx_tracks.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %._crit_edge.i37
  %i.ex = getelementptr inbounds nuw i8, ptr %i.da, i64 296 ; 2 uses
  br label %bb.t

.lr.ph.i36:                                       ; preds = %_remove_images_from_map.exit.i, %.lr.ph.i36
  %.05367.i = phi ptr [ %.053.i, %.lr.ph.i36 ], [ %.05365.i, %_remove_images_from_map.exit.i ] ; 2 uses
  %i.ey = load ptr, ptr %.05367.i, align 8, !tbaa !84
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i32 -1, ptr %i.ez, align 4, !tbaa !126
  %i.fa = getelementptr inbounds nuw i8, ptr %.05367.i, i64 8
  %.053.i = load ptr, ptr %i.fa, align 8, !tbaa !108 ; 2 uses
  %.not55.i = icmp eq ptr %.053.i, null
  br i1 %.not55.i, label %._crit_edge.i37, label %.lr.ph.i36

bb.t:                                             ; preds = %bb.v, %.lr.ph72.i
  %.070.i = phi ptr [ %i.ef, %.lr.ph72.i ], [ %i.fu, %bb.v ] ; 2 uses
  %.05269.i = phi i32 [ 0, %.lr.ph72.i ], [ %i.ft, %bb.v ] ; 2 uses
  %i.fb = load ptr, ptr %.070.i, align 8, !tbaa !84 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !130
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !107
  %i.ff = call ptr @g_date_time_to_timezone(ptr noundef %i.fd, ptr noundef %i.fe) #17 ; 2 uses
  %i.fg = call noalias ptr @g_date_time_format(ptr noundef %i.ff, ptr noundef nonnull @.str.62) #17 ; 2 uses
  call void @g_date_time_unref(ptr noundef %i.ff) #17
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !130
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !131
  %i.fk = load ptr, ptr %i.ex, align 8, !tbaa !107
  %i.fl = call fastcc ptr @_datetime_tooltip(ptr noundef %i.fh, ptr noundef %i.fj, ptr noundef %i.fk) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.070.i, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !132 ; 2 uses
  %.not57.i = icmp eq ptr %i.fn, null
  br i1 %.not57.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !84
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fp = phi ptr [ %i.fo, %bb.u ], [ null, %bb.t ]
  %.val60.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.fq = call fastcc i32 @_count_images_per_track(ptr noundef nonnull %i.fb, ptr noundef %i.fp, ptr %.val60.i)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !133
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.eb, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef %i.ew, i32 noundef 1, ptr noundef %i.fg, i32 noundef 2, i32 noundef %i.fs, i32 noundef 3, i32 noundef %i.fq, i32 noundef 4, i32 noundef %.05269.i, i32 noundef 5, ptr noundef %i.fl, i32 noundef -1) #17
  %i.ft = add nuw nsw i32 %.05269.i, 1
  call void @g_free(ptr noundef %i.fg) #17
  call void @g_free(ptr noundef %i.fl) #17
  %i.fu = load ptr, ptr %i.fm, align 8, !tbaa !132 ; 2 uses
  %.not56.i = icmp eq ptr %i.fu, null
  br i1 %.not56.i, label %_show_gpx_tracks.exit, label %bb.t

_show_gpx_tracks.exit:                            ; preds = %bb.v, %._crit_edge.i37
  %i.fv = load ptr, ptr %i.dz, align 8, !tbaa !81
  call void @gtk_tree_view_set_model(ptr noundef %i.fv, ptr noundef %i.eb) #17
  call void @g_object_unref(ptr noundef %i.eb) #17
  %i.fw = load ptr, ptr %i.et, align 8, !tbaa !111
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.fw, i32 noundef 1) #17
  %.val59.i = load ptr, ptr %i.b, align 8, !tbaa !19
  call fastcc void @_update_nb_images(ptr %.val59.i)
  %.val.i38 = load ptr, ptr %i.b, align 8, !tbaa !19
  call fastcc void @_update_buttons(ptr %.val.i38)
  call void @_refresh_display_all_tracks(ptr poison, ptr noundef readonly %1)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !81
  %i.fz = load i32, ptr %i.cw, align 8, !tbaa !33
  call void @gtk_widget_set_visible(ptr noundef %i.fy, i32 noundef %i.fz) #17
  br label %bb.x

bb.w:                                             ; preds = %bb.j
  %i.ga = call ptr @dt_conf_get_string(ptr noundef nonnull @.str.17) #17 ; 2 uses
  call void @dt_control_gpx_apply(ptr noundef %i.cv, i32 noundef -1, ptr noundef %i.ga, ptr noundef null) #17
  call void @g_free(ptr noundef %i.ga) #17
  %i.gb = load ptr, ptr %i.q, align 8, !tbaa !123
  call void @g_list_free_full(ptr noundef %i.gb, ptr noundef nonnull @g_free) #17
  store ptr null, ptr %i.q, align 8, !tbaa !123
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i32 0, ptr %i.gc, align 8, !tbaa !127
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_show_gpx_tracks.exit
  call void @g_free(ptr noundef %i.cv) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.x
  call void @gtk_widget_destroy(ptr noundef %i.k) #17
  ret void
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dtgtk_cairo_paint_directory(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_tree_view_new_with_model(ptr noundef) local_unnamed_addr #4

declare void @g_object_unref(ptr noundef) local_unnamed_addr #4

declare ptr @gtk_cell_renderer_toggle_new() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_track_seg_toggled(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._GtkTreeIter, align 8       ; 5 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.f) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = tail call ptr @gtk_tree_path_new_from_string(ptr noundef %1) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.i = call i32 @gtk_tree_model_get_iter(ptr noundef %i.g, ptr noundef nonnull %3, ptr noundef %i.h) #17 ; 0 uses
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.g, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull %i.b, i32 noundef -1) #17
  %i.j = load i32, ptr %i.a, align 4, !tbaa !135
  %.not = icmp eq i32 %i.j, 0
  %i.k = zext i1 %.not to i32
  call void (ptr, ptr, ...) @gtk_list_store_set(ptr noundef %i.g, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %i.k, i32 noundef -1) #17
  call void @gtk_tree_path_free(ptr noundef %i.h) #17
  %i.l = load i32, ptr %i.a, align 4, !tbaa !135
  %.not17 = icmp eq i32 %i.l, 0
  %i.m = zext i1 %.not17 to i32                   ; 2 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !135
  %i.n = load i32, ptr %i.b, align 4, !tbaa !135
  %i.o = call fastcc i32 @_refresh_display_track(i32 noundef %i.m, i32 noundef %i.n, ptr noundef %2)
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.r = load <4 x float>, ptr %i.q, align 8, !tbaa !136
  %i.s = fpext <4 x float> %i.r to <4 x double>   ; 4 uses
  %i.t = extractelement <4 x double> %i.s, i64 0
  %i.u = extractelement <4 x double> %i.s, i64 1
  %i.v = extractelement <4 x double> %i.s, i64 2
  %i.w = extractelement <4 x double> %i.s, i64 3
  call void @dt_view_map_center_on_bbox(ptr noundef %i.p, double noundef %i.t, double noundef %i.u, double noundef %i.v, double noundef %i.w) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !112
  %i.z = call i32 @gtk_toggle_button_get_active(ptr noundef %i.y) #17
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !135
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !135
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ne i32 %i.z, 0
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %i.af = zext i1 %i.ae to i32
  call fastcc void @_refresh_images_displayed_on_track(i32 noundef %i.aa, i32 noundef %i.af, ptr noundef nonnull %2)
  %.val19 = load ptr, ptr %i.c, align 8, !tbaa !19
  call fastcc void @_update_nb_images(ptr %.val19)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !19
  call fastcc void @_update_buttons(ptr %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare ptr @gtk_tree_view_column_new_with_attributes(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @gtk_tree_view_append_column(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_check_button_new() local_unnamed_addr #4

declare void @gtk_tree_view_column_set_alignment(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_all_tracks_toggled(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct._GtkTreeIter, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = tail call ptr @gtk_tree_view_column_get_widget(ptr noundef %0) #17 ; 2 uses
  %i.d = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.c) #17
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = zext i1 %.not to i32                     ; 3 uses
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.c, i32 noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.g) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = call i32 @gtk_tree_model_get_iter_first(ptr noundef %i.h, ptr noundef nonnull %2) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %.not2932 = icmp eq i32 %i.i, 0
  br i1 %.not2932, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.034 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.02733 = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp slt i32 %.034, %i.k
  br i1 %i.l, label %bb.b, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.027.lcssa.ph = phi i32 [ %.02733, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = icmp ne i32 %.027.lcssa.ph, 0
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge.thread

bb.b:                                             ; preds = %.lr.ph
  call void (ptr, ptr, ...) @gtk_list_store_set(ptr noundef %i.h, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.e, i32 noundef -1) #17
  %i.n = call fastcc i32 @_refresh_display_track(i32 noundef %i.e, i32 noundef %.034, ptr noundef %1)
  %.not30 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not30, i32 %.02733, i32 1    ; 2 uses
  %i.p = call i32 @gtk_tree_model_iter_next(ptr noundef %i.h, ptr noundef nonnull %2) #17
  %i.q = add nuw nsw i32 %.034, 1
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.critedge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.t = load <4 x float>, ptr %i.s, align 8, !tbaa !136
  %i.u = fpext <4 x float> %i.t to <4 x double>   ; 4 uses
  %i.v = extractelement <4 x double> %i.u, i64 0
  %i.w = extractelement <4 x double> %i.u, i64 1
  %i.x = extractelement <4 x double> %i.u, i64 2
  %i.y = extractelement <4 x double> %i.u, i64 3
  call void @dt_view_map_center_on_bbox(ptr noundef %i.r, double noundef %i.v, double noundef %i.w, double noundef %i.x, double noundef %i.y) #17
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.c, %.critedge
  call fastcc void @_refresh_displayed_images(ptr noundef %1)
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !19
  call fastcc void @_update_nb_images(ptr %.val31)
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  call fastcc void @_update_buttons(ptr %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_row_tooltip_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct._GtkTreeIter, align 8       ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @gtk_tree_view_convert_widget_to_bin_window_coords(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #17
  %i.f = load i32, ptr %i.c, align 4, !tbaa !135
  %i.g = load i32, ptr %i.d, align 4, !tbaa !135
  %i.h = call i32 @gtk_tree_view_get_path_at_pos(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @gtk_tree_view_get_model(ptr noundef %0) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.k = call i32 @gtk_tree_model_get_iter(ptr noundef %i.i, ptr noundef nonnull %6, ptr noundef %i.j) #17
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr null, ptr %i.e, align 8, !tbaa !91
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.i, ptr noundef nonnull %6, i32 noundef 5, ptr noundef nonnull %i.e, i32 noundef -1) #17
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !91   ; 4 uses
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.l, align 1, !tbaa !85
  %.not11 = icmp eq i8 %i.m, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @gtk_tooltip_set_text(ptr noundef %4, ptr noundef nonnull %i.l) #17
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi ptr [ %.pre, %bb.e ], [ %i.l, %bb.d ], [ null, %bb.c ]
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @g_free(ptr noundef %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i32 [ %.0, %bb.f ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.2 = phi i32 [ %.1, %bb.g ], [ 0, %bb.a ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !156
  call void @gtk_tree_path_free(ptr noundef %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_click_for_entire_track(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !161
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !162
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_refresh_display_all_tracks(ptr poison, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

declare void @gtk_tree_view_set_headers_visible(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_refresh_display_all_tracks(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct._GtkTreeIter, align 8       ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.e) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = call i32 @gtk_tree_model_get_iter_first(ptr noundef %i.f, ptr noundef nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.023 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.01722 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp slt i32 %.023, %i.i
  br i1 %i.j, label %bb.b, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.017.lcssa.ph = phi i32 [ %.01722, %.lr.ph ], [ %i.n, %bb.b ]
  %i.k = icmp eq i32 %.017.lcssa.ph, 0
  br i1 %i.k, label %.critedge.thread, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.f, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef -1) #17
  %i.l = load i32, ptr %i.a, align 4, !tbaa !135
  %i.m = call fastcc i32 @_refresh_display_track(i32 noundef %i.l, i32 noundef %.023, ptr noundef %1)
  %.not20 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not20, i32 %.01722, i32 1    ; 2 uses
  %i.o = call i32 @gtk_tree_model_iter_next(ptr noundef %i.f, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.p = add nuw nsw i32 %.023, 1
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.critedge
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.s = load <4 x float>, ptr %i.r, align 8, !tbaa !136
  %i.t = fpext <4 x float> %i.s to <4 x double>   ; 4 uses
  %i.u = extractelement <4 x double> %i.t, i64 0
  %i.v = extractelement <4 x double> %i.t, i64 1
  %i.w = extractelement <4 x double> %i.t, i64 2
  %i.x = extractelement <4 x double> %i.t, i64 3
  call void @dt_view_map_center_on_bbox(ptr noundef %i.q, double noundef %i.u, double noundef %i.v, double noundef %i.w, double noundef %i.x) #17
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.c, %.critedge
  call fastcc void @_refresh_displayed_images(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare void @gtk_widget_set_opacity(ptr noundef, double noundef) local_unnamed_addr #4

declare void @gtk_widget_set_valign(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_set_margin_start(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_overlay_new() local_unnamed_addr #4

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_overlay_add_overlay(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_check_button_new_with_label(ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_images_preview_toggled(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  tail call fastcc void @_refresh_displayed_images(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_select_images(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 288
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.b = tail call fastcc ptr @_get_images_on_active_tracks(ptr %.val) ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !163
  tail call void @dt_selection_clear(ptr noundef %i.c) #17
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !163
  tail call void @dt_selection_select_list(ptr noundef %i.d, ptr noundef %i.b) #17
  tail call void @g_list_free(ptr noundef %i.b) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_apply_gpx(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = tail call ptr @dt_conf_get_string(ptr noundef nonnull @.str.17) #17 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.d = tail call fastcc ptr @_get_images_on_active_tracks(ptr %.val) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !89
  %.not12 = icmp eq i64 %i.f, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @g_list_copy(ptr noundef nonnull %i.d) #17
  %i.h = load i64, ptr %i.e, align 8, !tbaa !89
  tail call void @dt_control_datetime(i64 noundef %i.h, ptr noundef null, ptr noundef %i.g) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = tail call ptr @gtk_label_get_text(ptr noundef %i.j) #17
  tail call void @dt_control_gpx_apply(ptr noundef %i.k, i32 noundef -1, ptr noundef %i.c, ptr noundef nonnull %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @g_free(ptr noundef %i.c) #17
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.m, i32 noundef 0) #17
  ret void
}

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_no_show_all(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @g_date_time_ref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_display_datetime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 14 uses
  %.not40.not = icmp eq i32 %2, 0                 ; 2 uses
  br i1 %.not40.not, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.d, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.h = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.g, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116
  %i.k = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.j, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.n = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.m, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116
  %i.q = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.p, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116
  %i.t = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.s, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116
  %i.w = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.v, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_datetime_entry_changed, ptr noundef nonnull %3) #17 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.preheader, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %._crit_edge
  %i.x = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.x, ptr noundef nonnull @.str.77) #17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.z, ptr noundef nonnull @.str.77) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.ab, ptr noundef nonnull @.str.77) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.ad, ptr noundef nonnull @.str.77) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.af, ptr noundef nonnull @.str.77) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.ah, ptr noundef nonnull @.str.77) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !116
  tail call void @gtk_entry_set_text(ptr noundef %i.aj, ptr noundef nonnull @.str.77) #17
  br label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8
  %i.ak = tail call i32 @g_date_time_get_year(ptr noundef nonnull %1) #17
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.105, i32 noundef %i.ak) #17 ; 0 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.am, ptr noundef nonnull %i.a) #17
  %i.an = call i32 @g_date_time_get_month(ptr noundef nonnull %1) #17
  %i.ao = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.106, i32 noundef %i.an) #17 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.aq, ptr noundef nonnull %i.a) #17
  %i.ar = call i32 @g_date_time_get_day_of_month(ptr noundef nonnull %1) #17
  %i.as = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.106, i32 noundef %i.ar) #17 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.au, ptr noundef nonnull %i.a) #17
  %i.av = call i32 @g_date_time_get_hour(ptr noundef nonnull %1) #17
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.106, i32 noundef %i.av) #17 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.ay, ptr noundef nonnull %i.a) #17
  %i.az = call i32 @g_date_time_get_minute(ptr noundef nonnull %1) #17
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.106, i32 noundef %i.az) #17 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.bc, ptr noundef nonnull %i.a) #17
  %i.bd = call i32 @g_date_time_get_second(ptr noundef nonnull %1) #17
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.106, i32 noundef %i.bd) #17 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.bg, ptr noundef nonnull %i.a) #17
  %i.bh = call i32 @g_date_time_get_microsecond(ptr noundef nonnull %1) #17
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bh to double
  %i.bj = fmul reassoc nnan nsz arcp contract afn double %i.bi, 1.000000e-03
  %i.bk = fptosi double %i.bj to i32
  %i.bl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.107, i32 noundef %i.bk) #17 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !116
  call void @gtk_entry_set_text(ptr noundef %i.bn, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b
  br i1 %.not40.not, label %._crit_edge39, label %.lr.ph38.split.preheader
end_hunk_0
begin_hunk_1_@_update_buttons:bb.a
  %.str.45..str.66 = select i1 %.not, ptr @.str.45, ptr @.str.66
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.45..str.66, i32 noundef 5) #17
  tail call void @gtk_label_set_text(ptr noundef %i.g, ptr noundef %i.j) #17
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.l = load i64, ptr %i.h, align 8, !tbaa !89
  %.not14 = icmp eq i64 %i.l, 0
  %.str.46.sink = select i1 %.not14, ptr @.str.46, ptr @.str.67
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.46.sink, i32 noundef 5) #17
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.k, ptr noundef %i.m) #17
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %.288.val, i64 372 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !139
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.n, i32 noundef %i.p) #17
  %i.q = getelementptr inbounds nuw i8, ptr %.288.val, i64 400
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = load i32, ptr %i.o, align 4, !tbaa !139  ; 2 uses
  %.not15 = icmp eq i32 %i.s, 0
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.288.val, i64 232
  %i.u = load i32, ptr %i.t, align 8, !tbaa !127
  %i.v = icmp ne i32 %i.s, %i.u
  %i.w = zext i1 %i.v to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi i32 [ 0, %bb.a ], [ %i.w, %bb.b ]
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.r, i32 noundef %i.x) #17
  ret void
}

declare ptr @g_date_time_to_timezone(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @g_date_time_format(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_date_time_compare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_datetime_exif_to_gdatetime(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_refresh_images_displayed_on_track(i32 noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.anon.1, align 4             ; 6 uses
  tail call void (...) @dt_gui_cursor_set_busy() #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %.05365 = load ptr, ptr %i.c, align 8, !tbaa !108 ; 3 uses
  %.not66 = icmp eq ptr %.05365, null
  br i1 %.not66, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not72 = icmp eq i32 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  br i1 %.not72, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.05367.us = phi ptr [ %.053.us, %bb.d ], [ %.05365, %.lr.ph ] ; 2 uses
  %i.g = load ptr, ptr %.05367.us, align 8, !tbaa !84 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !126
  %.not73 = icmp eq i32 %i.i, %0
  br i1 %.not73, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134  ; 2 uses
  %.not60.us = icmp eq ptr %i.k, null
  br i1 %.not60.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !79
  %i.m = tail call i32 @dt_view_map_remove_marker(ptr noundef %i.l, i32 noundef 4, ptr noundef nonnull %i.k) #17 ; 0 uses
  store ptr null, ptr %i.j, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double +qnan, ptr %i.n, align 8, !tbaa !167
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %i.o = getelementptr inbounds nuw i8, ptr %.05367.us, i64 8
  %.053.us = load ptr, ptr %i.o, align 8, !tbaa !108 ; 2 uses
  %.not.us = icmp eq ptr %.053.us, null
  br i1 %.not.us, label %.preheader, label %.lr.ph.split.us

.preheader:                                       ; preds = %bb.h, %bb.d, %bb.a
  %i.p = icmp ne i32 %1, 0
  %.068 = load ptr, ptr %i.c, align 8, !tbaa !108 ; 2 uses
  %i.q = icmp ne ptr %.068, null
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.05367 = phi ptr [ %.053, %bb.h ], [ %.05365, %.lr.ph ] ; 2 uses
  %i.u = load ptr, ptr %.05367, align 8, !tbaa !84 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !126
  %i.x = icmp eq i32 %i.w, %0
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3520), align 8, !tbaa !86
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !89
  %i.ac = tail call ptr @dt_datetime_exif_to_gdatetime(ptr noundef nonnull %i.y, ptr noundef %i.z) #17 ; 2 uses
  %i.ad = tail call ptr @g_date_time_add(ptr noundef %i.ac, i64 noundef %i.ab) #17 ; 2 uses
  %i.ae = tail call ptr @g_date_time_to_timezone(ptr noundef %i.ad, ptr noundef %i.aa) #17 ; 2 uses
  tail call void @g_date_time_unref(ptr noundef %i.ac) #17
  tail call void @g_date_time_unref(ptr noundef %i.ad) #17
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ah = tail call i32 @dt_gpx_get_location(ptr noundef %i.af, ptr noundef %i.ae, ptr noundef nonnull %i.ag) #17
  %.not61 = icmp eq i32 %i.ah, 0
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store double +qnan, ptr %i.ai, align 8, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @g_date_time_unref(ptr noundef %i.ae) #17
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.05367, i64 8
  %.053 = load ptr, ptr %i.aj, align 8, !tbaa !108 ; 2 uses
  %.not = icmp eq ptr %.053, null
  br i1 %.not, label %.preheader, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %.preheader
  call void (...) @dt_gui_cursor_clear_busy() #17
  ret void

bb.i:                                             ; preds = %.lr.ph71, %bb.o
  %.070 = phi ptr [ %.068, %.lr.ph71 ], [ %.0, %bb.o ] ; 3 uses
  %.05269 = phi i32 [ 0, %.lr.ph71 ], [ %.2, %bb.o ] ; 3 uses
  %i.ak = load ptr, ptr %.070, align 8, !tbaa !84 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !126
  %i.an = icmp eq i32 %i.am, %0
  br i1 %i.an, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.aq = add nsw i32 %.05269, 1                  ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.070, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !132 ; 2 uses
  %.not57 = icmp eq ptr %i.as, null
  br i1 %.not57, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !84 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !134
  %.not58 = icmp eq ptr %i.av, null
  br i1 %.not58, label %bb.l, label %bb.o

.thread:                                          ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !134
  %.not5862 = icmp eq ptr %i.ax, null
  br i1 %.not5862, label %.thread63, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not59 = icmp eq ptr %i.at, null
  br i1 %.not59, label %.thread63, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.az = load double, ptr %i.ay, align 8, !tbaa !167
  %i.ba = load double, ptr %i.ap, align 8, !tbaa !167
  %i.bb = fcmp reassoc nsz arcp contract afn oeq double %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %.thread63

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !168
  %i.be = load double, ptr %i.ao, align 8, !tbaa !168
  %i.bf = fcmp reassoc nsz arcp contract afn oeq double %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %.thread63

.thread63:                                        ; preds = %.thread, %bb.n, %bb.m, %bb.l
  %i.bg = phi ptr [ %i.au, %bb.l ], [ %i.au, %bb.n ], [ %i.au, %bb.m ], [ %i.aw, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bh = load i32, ptr %i.ak, align 8, !tbaa !138
  store i32 %i.bh, ptr %3, align 4, !tbaa !170
  %i.bi = load <2 x double>, ptr %i.ao, align 8, !tbaa !171
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fptrunc <2 x double> %i.bj to <2 x float>
  store <2 x float> %i.bk, ptr %i.s, align 4, !tbaa !136
  %i.bl = icmp eq i32 %.05269, 0
  %i.bm = select i1 %i.bl, i32 0, i32 %i.aq
  store i32 %i.bm, ptr %i.t, align 4, !tbaa !172
  %i.bn = call ptr @g_list_prepend(ptr noundef null, ptr noundef nonnull %3) #17 ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !79
  %i.bp = call ptr @dt_view_map_add_marker(ptr noundef %i.bo, i32 noundef 4, ptr noundef %i.bn) #17
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !134
  call void @g_list_free(ptr noundef %i.bn) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.k, %bb.n, %.thread63, %bb.i
  %.2 = phi i32 [ %.05269, %bb.i ], [ %i.aq, %bb.k ], [ %i.aq, %bb.n ], [ 0, %.thread63 ], [ %i.aq, %.thread ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.070, i64 8
  %.0 = load ptr, ptr %i.bq, align 8, !tbaa !108  ; 2 uses
  %.not78 = icmp eq ptr %.0, null
  br i1 %.not78, label %._crit_edge, label %bb.i
}

declare void @dt_gui_cursor_set_busy(...) local_unnamed_addr #4

declare i32 @dt_gpx_get_location(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_view_map_remove_marker(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_view_map_add_marker(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @g_list_free(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_cursor_clear_busy(...) local_unnamed_addr #4

declare void @dt_gpx_destroy(ptr noundef) local_unnamed_addr #4

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #4

declare ptr @g_getenv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @dt_loc_get_datadir(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @g_strsplit_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_strfreev(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @g_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @_sort_timezones(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = tail call i32 @g_strcmp0(ptr noundef %i.b, ptr noundef %i.d) #17
  ret i32 %i.e
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_flow_box_new() local_unnamed_addr #4

declare void @gtk_flow_box_set_max_children_per_line(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_size_group_add_widget(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_flow_box_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_box_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_entry_set_alignment(ptr noundef, float noundef) local_unnamed_addr #4

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_container_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_can_focus(ptr noundef, i32 noundef) #4

declare void @dt_control_datetime(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_datetime_gdatetime_to_exif(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_entry_new() local_unnamed_addr #4

declare void @gtk_drag_dest_unset(ptr noundef) local_unnamed_addr #4

declare void @gtk_entry_set_width_chars(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_entry_completion_get_entry(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_editable_get_type() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @g_type_check_instance_is_a(ptr noundef, i64 noundef) local_unnamed_addr #12

declare ptr @gtk_entry_completion_get_model(ptr noundef) local_unnamed_addr #4

declare i32 @gtk_entry_completion_get_text_column(ptr noundef) local_unnamed_addr #4

declare i64 @gtk_tree_model_get_column_type(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noalias ptr @g_utf8_normalize(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare noalias ptr @g_utf8_casefold(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @g_strstr_len(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_timezone_save(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = tail call ptr @gtk_entry_get_text(ptr noundef %i.d) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %.029 = load ptr, ptr %i.f, align 8, !tbaa !108 ; 2 uses
  %.not30 = icmp eq ptr %.029, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.023.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.032 = phi ptr [ %.0, %bb.c ], [ %.029, %bb.a ] ; 2 uses
  %.02331 = phi ptr [ %.1, %bb.c ], [ null, %bb.a ]
  %i.i = load ptr, ptr %.032, align 8, !tbaa !84  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.e) #19
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !94
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi ptr [ %.02331, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %.0 = load ptr, ptr %i.n, align 8, !tbaa !108   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  tail call void @g_time_zone_unref(ptr noundef nonnull %i.h) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.not26 = icmp eq ptr %.023.lcssa, null
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @g_time_zone_new_utc() #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = tail call ptr @g_time_zone_new(ptr noundef nonnull %.023.lcssa) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi ptr [ @.str.74, %bb.f ], [ %.023.lcssa, %bb.g ] ; 2 uses
end_hunk_1
