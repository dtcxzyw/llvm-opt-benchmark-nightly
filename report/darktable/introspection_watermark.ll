Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_watermark?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cleanup_pipe:bb.a
  store ptr null, ptr %i.a, align 16, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.f, i32 noundef 0) #18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.h, i32 noundef 0) #18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.j, i32 noundef 0) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.l, i32 noundef 0) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.n, i32 noundef 0) #18
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.p, i32 noundef 0) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.r, i32 noundef 0) #18
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.t, i32 noundef 0) #18
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.v, i32 noundef 0) #18
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !101
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.aa, i32 noundef 1) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  tail call fastcc void @_combo_box_set_active_text(ptr noundef %i.b, ptr noundef nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  tail call void @gtk_entry_set_text(ptr noundef %i.ad, ptr noundef nonnull %i.ae) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 804
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !12
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  store <2 x double> %i.ah, ptr %1, align 16, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  store double %i.al, ptr %i.ai, align 16, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.ao, ptr noundef nonnull %1) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  call void @gtk_font_chooser_set_font(ptr noundef %i.aq, ptr noundef nonnull %i.ar) #18
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.at = load i32, ptr %i.as, align 4, !tbaa !100
  %i.au = icmp eq i32 %i.at, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %. = zext i1 %i.au to i32                       ; 2 uses
  call void @gtk_widget_set_visible(ptr noundef %i.aw, i32 noundef %.) #18
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !105
  call void @gtk_widget_set_visible(ptr noundef %i.ay, i32 noundef %.) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_combo_box_set_active_text(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %.011.in15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01116 = load ptr, ptr %.011.in15, align 8, !tbaa !175 ; 2 uses
  %.not17 = icmp eq ptr %.01116, null
  br i1 %.not17, label %_text_color_font_set_sensitive.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01119 = phi ptr [ %.011, %bb.d ], [ %.01116, %bb.a ] ; 2 uses
  %.01218 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.01119, align 8, !tbaa !107
  %i.b = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef %1) #18
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.c = load ptr, ptr %0, align 8, !tbaa !108
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.c, i32 noundef %.01218) #18
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_text_color_font_set_sensitive.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.8) #18
  %.not10.i = icmp eq i32 %i.e, 0
  %i.f = zext i1 %.not10.i to i32                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.h, i32 noundef %i.f) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.j, i32 noundef %i.f) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.l, i32 noundef %i.f) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.n, i32 noundef %i.f) #18
  br label %_text_color_font_set_sensitive.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i32 %.01218, 1
  %.011.in = getelementptr inbounds nuw i8, ptr %.01119, i64 8
  %.011 = load ptr, ptr %.011.in, align 8, !tbaa !175 ; 2 uses
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %_text_color_font_set_sensitive.exit, label %.lr.ph

_text_color_font_set_sensitive.exit:              ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  ret void
}

declare void @gtk_entry_set_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_font_chooser_set_font(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 4, !tbaa !100
  %i.j = icmp eq i32 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %. = zext i1 %i.j to i32                        ; 2 uses
  tail call void @gtk_widget_set_visible(ptr noundef %i.l, i32 noundef %.) #18
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  tail call void @gtk_widget_set_visible(ptr noundef %i.n, i32 noundef %.) #18
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.16, i64 noundef 256) #18 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.f = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1, i64 noundef 64) #18 ; 0 uses
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [2 x ptr], align 8                ; 3 uses
  %i.e = alloca [2 x ptr], align 8                ; 3 uses
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef 192) #18 ; 22 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.f, i8 0, i64 192, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.f, ptr %i.g, align 16, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 4 uses
  %i.j = tail call ptr @gtk_grid_new() #18        ; 13 uses
  tail call void @gtk_grid_set_row_spacing(ptr noundef %i.j, i32 noundef 0) #18
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1432
  %i.m = load double, ptr %i.l, align 8, !tbaa !182
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, 1.000000e+01
  %i.o = fptoui double %i.n to i32
  tail call void @gtk_grid_set_column_spacing(ptr noundef %i.j, i32 noundef %i.o) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.b, i64 noundef 4096) #18
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #18
  %i.p = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.r = call ptr @dtgtk_reset_label_new(ptr noundef %i.p, ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef 256) #18 ; 2 uses
  %i.s = call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #18 ; 2 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !108
  call void @gtk_widget_set_hexpand(ptr noundef %i.s, i32 noundef 1) #18
  %i.t = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #18
  %i.u = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !108
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.v, ptr noundef %i.u) #18
  call void @g_free(ptr noundef %i.u) #18
  %i.w = call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_refresh, i32 noundef 0, ptr noundef null) #18
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !183
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.r, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !108
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.y, ptr noundef %i.r, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !108
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.z, ptr noundef %i.aa, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #18
  %i.ac = call ptr @gtk_label_new(ptr noundef %i.ab) #18 ; 3 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ac, ptr noundef nonnull @.str.101, i32 noundef 1, ptr noundef nonnull @.str.102, double noundef 0.000000e+00, ptr noundef nonnull @.str.103, i32 noundef 3, ptr noundef null) #18
  %i.ad = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #18
  %i.ae = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.21) #18
  %i.af = call ptr @dt_action_entry_new(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @_text_callback, ptr noundef %0, ptr noundef %i.ad, ptr noundef %i.ae) #18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !102
  call void @dt_gtkentry_setup_variables_completion(ptr noundef %i.af) #18
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102
  %i.ai = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #18
  call void @gtk_entry_set_placeholder_text(ptr noundef %i.ah, ptr noundef %i.ai) #18
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.ac, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !102
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.aj, ptr noundef %i.ac, i32 noundef 1, i32 noundef 2, i32 noundef 1) #18
  %i.ak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #18
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 816
  %i.am = call ptr @dtgtk_reset_label_new(ptr noundef %i.ak, ptr noundef %0, ptr noundef nonnull %i.al, i32 noundef 64) #18 ; 2 uses
  %i.an = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.24) #18 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  %i.ap = select i1 %i.ao, ptr @.str.1, ptr %i.an
  %i.aq = call ptr @gtk_font_button_new_with_font(ptr noundef nonnull %i.ap) #18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 5 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !103
  %i.as = call ptr @gtk_bin_get_child(ptr noundef %i.aq) #18
  %i.at = call ptr @dt_gui_container_first_child(ptr noundef %i.as) #18
  call void @gtk_label_set_ellipsize(ptr noundef %i.at, i32 noundef 2) #18
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !103
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.av) #18
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !103
  call void @gtk_font_button_set_show_size(ptr noundef %i.aw, i32 noundef 0) #18
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.am, i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef 1) #18
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !103
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.ax, ptr noundef %i.am, i32 noundef 1, i32 noundef 2, i32 noundef 1) #18
  %i.ay = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.26) #18
  %i.az = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.27) #18
  %i.ba = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.az, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  store <2 x double> %i.bd, ptr %1, align 16, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = fpext reassoc nsz arcp contract afn float %i.ba to double
  store double %i.bf, ptr %i.be, align 16, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.bg, align 8, !tbaa !41
  %i.bh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 804
  %i.bj = call ptr @dtgtk_reset_label_new(ptr noundef %i.bh, ptr noundef %0, ptr noundef nonnull %i.bi, i32 noundef 12) #18 ; 2 uses
  %i.bk = call ptr @gtk_color_button_new_with_rgba(ptr noundef nonnull %1) #18 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 6 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !59
  %i.bm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bk, ptr noundef %i.bm) #18
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !59
  call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.bn, i32 noundef 0) #18
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #18
  call void @gtk_color_button_set_title(ptr noundef %i.bo, ptr noundef %i.bp) #18
  %i.bq = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef null) #18 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 184 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !109
  %i.bs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bq, ptr noundef %i.bs) #18
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !109
  %i.bu = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef %i.bt, ptr noundef nonnull @dt_action_def_toggle) #18 ; 0 uses
  call void @gtk_grid_attach(ptr noundef %i.j, ptr noundef %i.bj, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 1) #18
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !59
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.bv, ptr noundef %i.bj, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !109
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !59
  call void @gtk_grid_attach_next_to(ptr noundef %i.j, ptr noundef %i.bw, ptr noundef %i.bx, i32 noundef 1, i32 noundef 1, i32 noundef 1) #18
  %i.by = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #18
  store ptr %i.j, ptr %i.c, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bz, align 8, !tbaa !15
  %i.ca = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.34, i32 noundef 1470, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.by, ptr noundef nonnull %i.c) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !184
  %i.cc = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.35) #18 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !185
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.cc, ptr noundef nonnull @.str.36) #18
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !184
  %i.cf = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.37, i64 noundef 8) #18
  %i.cg = call ptr @gtk_label_new(ptr noundef %i.cf) #18 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.cg, i32 noundef 0) #18
  call void @gtk_label_set_xalign(ptr noundef %i.cg, float noundef 5.000000e-01) #18
  call void @gtk_label_set_ellipsize(ptr noundef %i.cg, i32 noundef 3) #18
  call void @dt_gui_add_class(ptr noundef %i.cg, ptr noundef nonnull @.str.104) #18
  store ptr %i.cg, ptr %i.d, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ch, align 8, !tbaa !15
  %i.ci = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.34, i32 noundef 1476, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ce, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.cj = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.38) #18 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !186
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.cj, ptr noundef nonnull @.str.39) #18
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !186
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.cl, float noundef -1.000000e+00) #18
  %i.cm = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.40) #18 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.cm, float noundef 1.000000e+02) #18
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.co, ptr noundef nonnull @.str.36) #18
  %i.cp = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.41) #18 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !110
  %i.cr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cp, ptr noundef %i.cr) #18
  %i.cs = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.43) #18 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !104
  %i.cu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cs, ptr noundef %i.cu) #18
  %i.cv = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.45) #18 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !105
  %i.cx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cv, ptr noundef %i.cx) #18
  %i.cy = call ptr @gtk_grid_new() #18            ; 5 uses
  %i.cz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #18
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.db = call ptr @dtgtk_reset_label_new(ptr noundef %i.cz, ptr noundef %0, ptr noundef nonnull %i.da, i32 noundef 4) #18 ; 2 uses
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %i.db, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 3) #18
  call void @gtk_widget_set_hexpand(ptr noundef %i.db, i32 noundef 1) #18
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1432
  %i.de = load double, ptr %i.dd, align 8, !tbaa !182
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 3.000000e+00
  %i.dg = fptoui double %i.df to i32
  call void @gtk_grid_set_row_spacing(ptr noundef %i.cy, i32 noundef %i.dg) #18
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1432
  %i.dj = load double, ptr %i.di, align 8, !tbaa !182
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, 3.000000e+00
  %i.dl = fptoui double %i.dk to i32
  call void @gtk_grid_set_column_spacing(ptr noundef %i.cy, i32 noundef %i.dl) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %24

2:                                                ; preds = %24
  %3 = load ptr, ptr %i.cb, align 8, !tbaa !184
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !15
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %4, align 8, !tbaa !15
  %5 = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.34, i32 noundef 1525, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %3, ptr noundef nonnull %i.e) #18 ; 0 uses
  %6 = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #18 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %6, ptr %7, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_digits(ptr noundef %6, i32 noundef 3) #18
  %8 = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #18 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr %8, ptr %9, align 8, !tbaa !189
  call void @dt_bauhaus_slider_set_digits(ptr noundef %8, i32 noundef 3) #18
  %10 = load ptr, ptr %i.cd, align 8, !tbaa !185
  %11 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %10, ptr noundef %11) #18
  %12 = load ptr, ptr %i.cn, align 8, !tbaa !187
  %13 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %12, ptr noundef %13) #18
  %14 = load ptr, ptr %i.ck, align 8, !tbaa !186
  %15 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %14, ptr noundef %15) #18
  call fastcc void @_refresh_watermarks(ptr noundef nonnull %0)
  %16 = load ptr, ptr %i.f, align 8, !tbaa !108
  %17 = call i64 @g_signal_connect_data(ptr noundef %16, ptr noundef nonnull @.str.54, ptr noundef nonnull @_watermark_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %18 = load ptr, ptr %i.x, align 8, !tbaa !183
  %19 = call i64 @g_signal_connect_data(ptr noundef %18, ptr noundef nonnull @.str.55, ptr noundef nonnull @_refresh_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %20 = load ptr, ptr %i.bl, align 8, !tbaa !59
  %21 = call i64 @g_signal_connect_data(ptr noundef %20, ptr noundef nonnull @.str.56, ptr noundef nonnull @_colorpick_color_set, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %22 = load ptr, ptr %i.ar, align 8, !tbaa !103
  %23 = call i64 @g_signal_connect_data(ptr noundef %22, ptr noundef nonnull @.str.57, ptr noundef nonnull @_fontsel_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

24:                                               ; preds = %_iop_gui_alloc.exit, %24
  %indvars.iv = phi i64 [ 0, %_iop_gui_alloc.exit ], [ %indvars.iv.next, %24 ] ; 4 uses
  %25 = trunc nuw nsw i64 %indvars.iv to i32
  %26 = shl nuw nsw i32 16384, %25
  %27 = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef %26, ptr noundef null) #18 ; 2 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  store ptr %27, ptr %28, align 8, !tbaa !101
  %.lhs.trunc = trunc i64 %indvars.iv to i8       ; 2 uses
  %29 = urem i8 %.lhs.trunc, 3
  %narrow = add nuw nsw i8 %29, 1
  %30 = zext nneg i8 %narrow to i32
  %31 = udiv i8 %.lhs.trunc, 3
  %.zext135 = zext nneg i8 %31 to i32
  call void @gtk_grid_attach(ptr noundef %i.cy, ptr noundef %27, i32 noundef %30, i32 noundef %.zext135, i32 noundef 1, i32 noundef 1) #18
  %32 = load ptr, ptr %28, align 8, !tbaa !101
  %33 = call i64 @g_signal_connect_data(ptr noundef %32, ptr noundef nonnull @.str.48, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %2, label %24
}

declare ptr @gtk_grid_new() local_unnamed_addr #4

declare void @gtk_grid_set_row_spacing(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dtgtk_reset_label_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_bauhaus_combobox_new(ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dtgtk_cairo_paint_refresh(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare void @gtk_grid_attach(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_grid_attach_next_to(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_action_entry_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_text_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 292 ; 2 uses
  %i.g = tail call ptr @gtk_entry_get_text(ptr noundef %0) #18
  %i.h = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.f, ptr noundef %i.g, i64 noundef 512) #18 ; 0 uses
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.f) #18
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #4

declare void @dt_gtkentry_setup_variables_completion(ptr noundef) local_unnamed_addr #4

declare void @gtk_entry_set_placeholder_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_font_button_new_with_font(ptr noundef) local_unnamed_addr #4

declare ptr @dt_gui_container_first_child(ptr noundef) local_unnamed_addr #4

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #4

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_font_button_set_show_size(ptr noundef, i32 noundef) local_unnamed_addr #4

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #4

declare ptr @gtk_color_button_new_with_rgba(ptr noundef) local_unnamed_addr #4

declare void @gtk_color_chooser_set_use_alpha(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_color_button_set_title(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #4

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #4

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dtgtk_togglebutton_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dtgtk_cairo_paint_alignment(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_alignment_callback(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 9 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.i, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.l = icmp eq ptr %i.k, %0                     ; 2 uses
  %. = zext i1 %i.l to i32
  %not. = xor i1 %i.l, true
  %.51 = sext i1 %not. to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.k, i32 noundef %.) #18
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.n = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.m, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.p, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.s = icmp eq ptr %i.r, %0                     ; 2 uses
  %.sink43 = zext i1 %i.s to i32
  %.1.1 = select i1 %i.s, i32 1, i32 %.51
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.r, i32 noundef %.sink43) #18
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.u = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.t, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.w, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %i.z = icmp eq ptr %i.y, %0                     ; 2 uses
  %.sink44 = zext i1 %i.z to i32
  %.1.2 = select i1 %i.z, i32 2, i32 %.1.1
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.y, i32 noundef %.sink44) #18
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.ab = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.aa, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ad, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %0                   ; 2 uses
  %.sink45 = zext i1 %i.ag to i32
  %.1.3 = select i1 %i.ag, i32 3, i32 %.1.2
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.af, i32 noundef %.sink45) #18
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ai = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.ah, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !101
  %i.al = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ak, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %i.an = icmp eq ptr %i.am, %0                   ; 2 uses
  %.sink46 = zext i1 %i.an to i32
  %.1.4 = select i1 %i.an, i32 4, i32 %.1.3
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.am, i32 noundef %.sink46) #18
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !101
  %i.ap = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.ao, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ar, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !101 ; 2 uses
  %i.au = icmp eq ptr %i.at, %0                   ; 2 uses
  %.sink47 = zext i1 %i.au to i32
  %.1.5 = select i1 %i.au, i32 5, i32 %.1.4
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.at, i32 noundef %.sink47) #18
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.aw = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.av, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !101
  %i.az = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ay, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %0                   ; 2 uses
  %.sink48 = zext i1 %i.bb to i32
  %.1.6 = select i1 %i.bb, i32 6, i32 %.1.5
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ba, i32 noundef %.sink48) #18
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !101
  %i.bd = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.bc, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.bg = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.bf, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !101 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %0                   ; 2 uses
  %.sink49 = zext i1 %i.bi to i32
  %.1.7 = select i1 %i.bi, i32 7, i32 %.1.6
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bh, i32 noundef %.sink49) #18
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.bk = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.bj, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !101
  %i.bn = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.bm, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %1) #18 ; 0 uses
end_hunk_0
