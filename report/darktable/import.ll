inline.NumInlined: 84
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@set_params:bb.a
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !154
  %.054.in85.i = getelementptr inbounds nuw i8, ptr %.083.i, i64 8
  %.05486.i = load ptr, ptr %.054.in85.i, align 8, !tbaa !129 ; 2 uses
  %.not6687.i = icmp eq ptr %.05486.i, null
  br i1 %.not6687.i, label %._crit_edge.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %g_strdup_inline.exit.i, %bb.p
  %.05488.i = phi ptr [ %.054.i, %bb.p ], [ %.05486.i, %g_strdup_inline.exit.i ] ; 2 uses
  %i.bo = load ptr, ptr %.05488.i, align 8, !tbaa !85 ; 2 uses
  %char0.i = load i8, ptr %i.bo, align 1
  %.not67.i = icmp eq i8 %char0.i, 0
  br i1 %.not67.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph89.i
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.143, ptr noundef nonnull %i.bo) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph89.i
  %.054.in.i = getelementptr inbounds nuw i8, ptr %.05488.i, i64 8
  %.054.i = load ptr, ptr %.054.in.i, align 8, !tbaa !129 ; 2 uses
  %.not66.i = icmp eq ptr %.054.i, null
  br i1 %.not66.i, label %._crit_edge.loopexit.i, label %.lr.ph89.i

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !154
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %g_strdup_inline.exit.i
  %i.bp = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bn, %g_strdup_inline.exit.i ]
  call void @dt_conf_set_string(ptr noundef nonnull @.str.140, ptr noundef %i.bp) #15
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !154
  call void @g_free(ptr noundef %i.bq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.083.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !129 ; 2 uses
  %.not62.i = icmp eq ptr %i.bs, null
  br i1 %.not62.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.q, %._crit_edge.i, %_set_default_preferences.exit.i
  call void @g_list_free_full(ptr noundef %i.aa, ptr noundef nonnull @g_free) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !147
  call void @dt_gui_preferences_bool_update(ptr noundef %i.bw) #15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !148
  call void @dt_gui_preferences_int_update(ptr noundef %i.by) #15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !149
  call void @dt_gui_preferences_bool_update(ptr noundef %i.ca) #15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  call void @dt_import_metadata_update(ptr noundef nonnull %i.cb) #15
  br label %_apply_preferences.exit

_apply_preferences.exit:                          ; preds = %.loopexit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #4

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #4

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_import_from_dialog_new(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 8           ; 4 uses
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 10 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !140
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.f = tail call ptr @dt_ui_main_window(ptr noundef %i.e) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !103
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_import_text, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.k, i32 noundef 5) #15
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #15
  %i.n = load i32, ptr %i.g, align 8, !tbaa !103
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_import_text, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.q, i32 noundef 5) #15
  %i.s = tail call ptr (ptr, ptr, i32, ptr, ...) @gtk_dialog_new_with_buttons(ptr noundef %i.l, ptr noundef null, i32 noundef 1, ptr noundef %i.m, i32 noundef -6, ptr noundef %i.r, i32 noundef -3, ptr noundef null) #15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 10 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !108
  tail call void @gtk_dialog_set_default_response(ptr noundef %i.s, i32 noundef -3) #15
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108
  tail call void @dt_gui_dialog_add_help(ptr noundef %i.u, ptr noundef nonnull @.str.45) #15
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !108
  tail call void @dt_gui_dialog_restore_size(ptr noundef %i.v, ptr noundef nonnull @.str) #15
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !108
  tail call void @gtk_window_set_transient_for(ptr noundef %i.w, ptr noundef %i.f) #15
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.y = tail call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.46, ptr noundef nonnull @dt_handle_dialog_enter, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.aa = tail call ptr @dt_gui_container_first_child(ptr noundef %i.z) #15
  %i.ab = tail call ptr @dt_gui_container_first_child(ptr noundef %i.aa) #15 ; 4 uses
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #15
  %i.ad = tail call ptr @gtk_button_new_with_label(ptr noundef %i.ac) #15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !124
  tail call void @gtk_box_pack_start(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef 0, i32 noundef 0, i32 noundef 2) #15
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.ag = tail call i64 @g_signal_connect_data(ptr noundef %i.af, ptr noundef nonnull @.str.48, ptr noundef nonnull @_do_select_all_clicked, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ah = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #15
  %i.ai = tail call ptr @gtk_button_new_with_label(ptr noundef %i.ah) #15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !125
  tail call void @gtk_box_pack_start(ptr noundef %i.ab, ptr noundef %i.ai, i32 noundef 0, i32 noundef 0, i32 noundef 2) #15
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125
  %i.al = tail call i64 @g_signal_connect_data(ptr noundef %i.ak, ptr noundef nonnull @.str.48, ptr noundef nonnull @_do_select_none_clicked, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.am = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #15
  %i.an = tail call ptr @gtk_button_new_with_label(ptr noundef %i.am) #15 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 376 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !126
  tail call void @gtk_box_pack_start(ptr noundef %i.ab, ptr noundef %i.an, i32 noundef 0, i32 noundef 0, i32 noundef 2) #15
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.aq = tail call i64 @g_signal_connect_data(ptr noundef %i.ap, ptr noundef nonnull @.str.48, ptr noundef nonnull @_do_select_new_clicked, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ar = tail call ptr @gtk_label_new(ptr noundef nonnull @.str.51) #15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  tail call void @gtk_widget_set_halign(ptr noundef %i.ar, i32 noundef 2) #15
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !118
  tail call void @gtk_box_pack_start(ptr noundef %i.ab, ptr noundef %i.at, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %i.au = tail call ptr @gtk_paned_new(i32 noundef 0) #15 ; 5 uses
  %i.av = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.52) #15
  tail call void @gtk_paned_set_position(ptr noundef %i.au, i32 noundef %i.av) #15
  %i.aw = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 8) #15 ; 6 uses
  tail call void @gtk_paned_pack2(ptr noundef %i.au, ptr noundef %i.aw, i32 noundef 1, i32 noundef 0) #15
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.ay = tail call ptr @gtk_dialog_get_content_area(ptr noundef %i.ax) #15
  store ptr %i.au, ptr %i.a, align 8, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.az, align 8, !tbaa !131
  %i.ba = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.15, i32 noundef 2061, ptr noundef nonnull @__FUNCTION__._import_from_dialog_new, ptr noundef %i.ay, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.bb = call ptr @gtk_grid_new() #15            ; 8 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !140
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1432
  %i.be = load double, ptr %i.bd, align 8, !tbaa !141
  %i.bf = fmul reassoc nsz arcp contract afn double %i.be, 5.000000e+00
  %i.bg = fptoui double %i.bf to i32
  call void @gtk_grid_set_column_spacing(ptr noundef %i.bb, i32 noundef %i.bg) #15
  %i.bh = call ptr @dt_gui_preferences_bool(ptr noundef %i.bb, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0, i32 noundef 1) #15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !162
  %i.bj = call ptr @gtk_grid_get_child_at(ptr noundef %i.bb, i32 noundef 1, i32 noundef 0) #15
  call void @gtk_widget_set_hexpand(ptr noundef %i.bj, i32 noundef 1) #15
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !162
  %i.bl = call i64 @g_signal_connect_data(ptr noundef %i.bk, ptr noundef nonnull @.str.54, ptr noundef nonnull @_import_new_toggled, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !103
  %.not = icmp eq i32 %i.bm, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bn = call ptr @dt_gui_preferences_bool(ptr noundef %i.bb, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !163
  %i.bp = call ptr @gtk_grid_get_child_at(ptr noundef %i.bb, i32 noundef 3, i32 noundef 0) #15
  call void @gtk_widget_set_hexpand(ptr noundef %i.bp, i32 noundef 1) #15
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !163
  %i.br = call i64 @g_signal_connect_data(ptr noundef %i.bq, ptr noundef nonnull @.str.54, ptr noundef nonnull @_recursive_toggled, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 4, %bb.b ], [ 2, %bb.a ]        ; 2 uses
  %i.bs = or disjoint i32 %.0, 1
  %i.bt = call ptr @dt_gui_preferences_bool(ptr noundef %i.bb, ptr noundef nonnull @.str.24, i32 noundef %.0, i32 noundef 0, i32 noundef 1) #15
  %i.bu = call ptr @gtk_grid_get_child_at(ptr noundef %i.bb, i32 noundef %i.bs, i32 noundef 0) #15
  call void @gtk_widget_set_hexpand(ptr noundef %i.bu, i32 noundef 1) #15
  %i.bv = call i64 @g_signal_connect_data(ptr noundef %i.bt, ptr noundef nonnull @.str.54, ptr noundef nonnull @_ignore_nonraws_toggled, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  call void @gtk_box_pack_start(ptr noundef %i.aw, ptr noundef %i.bb, i32 noundef 0, i32 noundef 0, i32 noundef 8) #15
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !64  ; 7 uses
  %i.bx = tail call i64 @gdk_pixbuf_get_type() #18
  %i.by = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 7, i64 noundef 20, i64 noundef %i.bx, i64 noundef 64, i64 noundef 64, i64 noundef 64, i64 noundef 64, i64 noundef 44) #15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 136 ; 3 uses
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !106
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !108 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.cc = call ptr @gtk_widget_get_style_context(ptr noundef %i.cb) #15
  %i.cd = call i32 @gtk_widget_get_state_flags(ptr noundef %i.cb) #15
  call void @gtk_style_context_get_color(ptr noundef %i.cc, i32 noundef %i.cd, ptr noundef nonnull %1) #15
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !140
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1432
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !141
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, 1.300000e+01
  %i.ci = fptosi double %i.ch to i32              ; 12 uses
  %i.cj = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.ci, i32 noundef %i.ci) #15 ; 3 uses
  %i.ck = call ptr @cairo_create(ptr noundef %i.cj) #15 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.ck, ptr noundef nonnull %1) #15
  call void @dtgtk_cairo_paint_eye(ptr noundef %i.ck, i32 noundef 0, i32 noundef 0, i32 noundef %i.ci, i32 noundef %i.ci, i32 noundef 0, ptr noundef null) #15
  call void @cairo_destroy(ptr noundef %i.ck) #15
  %i.cl = call ptr @cairo_image_surface_get_data(ptr noundef %i.cj) #15 ; 5 uses
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %_set_files_list.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.c
  %wide.trip.count.i.i.i = zext i32 %i.ci to i64
  br label %.preheader.i.i.i.a

.preheader.i.i.i.a:                               ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.038.i.i.i = phi i32 [ %3, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 2 uses
  %2 = mul i32 %.038.i.i.i, %i.ci
  br label %bb.d

._crit_edge.i.i.i:                                ; preds = %bb.f
  %3 = add nuw i32 %.038.i.i.i, 1                 ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i32 %3, %i.ci
  br i1 %exitcond41.not.i.i.i, label %_set_files_list.exit, label %.preheader.i.i.i.a

bb.d:                                             ; preds = %bb.f, %.preheader.i.i.i.a
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i.a ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 2 uses
  %i.cm = trunc nuw i64 %indvars.iv.i.i.i to i32
  %4 = add i32 %2, %i.cm
  %i.cn = shl i32 %4, 2                           ; 4 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co ; 3 uses
  %i.cq = or disjoint i32 %i.cn, 2
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cr ; 3 uses
  %i.ct = or disjoint i32 %i.cn, 3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cu
  %i.cw = load i8, ptr %i.cp, align 1, !tbaa !93  ; 2 uses
  %i.cx = load i8, ptr %i.cs, align 1, !tbaa !93  ; 2 uses
  store i8 %i.cx, ptr %i.cp, align 1, !tbaa !93
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !93
  %i.cy = load i8, ptr %i.cv, align 1, !tbaa !93  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cz = or disjoint i32 %i.cn, 1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.da ; 2 uses
  %i.dc = uitofp i8 %i.cy to float
  %i.dd = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.dc ; 3 uses
  %i.de = uitofp reassoc nsz arcp contract afn i8 %i.cx to float
  %i.df = fmul reassoc nsz arcp contract afn float %i.dd, %i.de
  %i.dg = fptoui float %i.df to i8
  store i8 %i.dg, ptr %i.cp, align 1, !tbaa !93
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !93
  %i.di = uitofp reassoc nsz arcp contract afn i8 %i.dh to float
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dd, %i.di
  %i.dk = fptoui float %i.dj to i8
  store i8 %i.dk, ptr %i.db, align 1, !tbaa !93
  %i.dl = uitofp reassoc nsz arcp contract afn i8 %i.cw to float
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dd, %i.dl
  %i.dn = fptoui float %i.dm to i8
  store i8 %i.dn, ptr %i.cs, align 1, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d

_set_files_list.exit:                             ; preds = %._crit_edge.i.i.i, %bb.c
  %i.do = sext i32 %i.ci to i64                   ; 2 uses
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = mul i64 %i.dp, %i.do                    ; 2 uses
  %i.dr = call noalias ptr @malloc(i64 noundef %i.dq) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.cl, i64 %i.dq, i1 false)
  %i.ds = shl nsw i32 %i.ci, 2
  %i.dt = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.dr, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.ci, i32 noundef %i.ci, i32 noundef %i.ds, ptr noundef nonnull @free, ptr noundef null) #15
  call void @cairo_surface_destroy(ptr noundef %i.cj) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.du = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !105
  %i.dv = call ptr @gtk_tree_view_new() #15       ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bw, i64 152 ; 9 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !122
  %i.dx = call ptr @gtk_scrolled_window_new(ptr noundef null, ptr noundef null) #15 ; 4 uses
  call void @gtk_widget_set_vexpand(ptr noundef %i.dx, i32 noundef 1) #15
  call void @gtk_container_add(ptr noundef %i.dx, ptr noundef %i.dv) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !164
  call void @gtk_scrolled_window_set_policy(ptr noundef %i.dx, i32 noundef 2, i32 noundef 0) #15
  %i.dz = call ptr @gtk_cell_renderer_text_new() #15 ; 2 uses
  %i.ea = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef nonnull @.str.59, ptr noundef %i.dz, ptr noundef nonnull @.str.60, i32 noundef 5, ptr noundef null) #15 ; 4 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.dz, ptr noundef nonnull @.str.61, double noundef 5.000000e-01, ptr noundef null) #15
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.ec = call i32 @gtk_tree_view_append_column(ptr noundef %i.eb, ptr noundef %i.ea) #15 ; 0 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.ea, float noundef 5.000000e-01) #15
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !140
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1432
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !141
  %i.eg = fmul reassoc nsz arcp contract afn double %i.ef, 2.500000e+01
  %i.eh = fptosi double %i.eg to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.ea, i32 noundef %i.eh) #15
  %i.ei = call ptr @gtk_tree_view_column_get_button(ptr noundef %i.ea) #15
  %i.ej = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ei, ptr noundef %i.ej) #15
  %i.ek = call ptr @gtk_cell_renderer_text_new() #15 ; 2 uses
  %i.el = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #15
  %i.em = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.el, ptr noundef %i.ek, ptr noundef nonnull @.str.60, i32 noundef 2, ptr noundef null) #15 ; 5 uses
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.eo = call i32 @gtk_tree_view_append_column(ptr noundef %i.en, ptr noundef %i.em) #15 ; 0 uses
  call void @gtk_tree_view_column_set_expand(ptr noundef %i.em, i32 noundef 1) #15
  call void @gtk_tree_view_column_set_resizable(ptr noundef %i.em, i32 noundef 1) #15
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !140
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1432
  %i.er = load double, ptr %i.eq, align 8, !tbaa !141
  %i.es = fmul reassoc nsz arcp contract afn double %i.er, 2.000000e+02
  %i.et = fptosi double %i.es to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.em, i32 noundef %i.et) #15
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ek, ptr noundef nonnull @.str.64, i32 noundef 2, ptr noundef null) #15
  call void @gtk_tree_view_column_set_sort_column_id(ptr noundef %i.em, i32 noundef 3) #15
  %i.eu = call ptr @gtk_cell_renderer_text_new() #15
  %i.ev = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #15
  %i.ew = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.ev, ptr noundef %i.eu, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef null) #15 ; 3 uses
  %i.ex = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.ey = call i32 @gtk_tree_view_append_column(ptr noundef %i.ex, ptr noundef %i.ew) #15 ; 0 uses
  call void @gtk_tree_view_column_set_sort_column_id(ptr noundef %i.ew, i32 noundef 6) #15
  %i.ez = call ptr @gtk_tree_view_column_get_button(ptr noundef %i.ew) #15
  %i.fa = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ez, ptr noundef %i.fa) #15
  %i.fb = load ptr, ptr %i.ca, align 8, !tbaa !106
  call void @gtk_tree_sortable_set_sort_column_id(ptr noundef %i.fb, i32 noundef 6, i32 noundef 0) #15
  %i.fc = call ptr @gtk_cell_renderer_pixbuf_new() #15
  %i.fd = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef nonnull @.str.51, ptr noundef %i.fc, ptr noundef nonnull @.str.67, i32 noundef 1, ptr noundef null) #15 ; 8 uses
  %i.fe = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.ff = call i32 @gtk_tree_view_append_column(ptr noundef %i.fe, ptr noundef %i.fd) #15 ; 0 uses
  %i.fg = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_eye, i32 noundef 0, ptr noundef null) #15 ; 5 uses
  call void @dt_gui_add_class(ptr noundef %i.fg, ptr noundef nonnull @.str.68) #15
  call void @gtk_widget_show(ptr noundef %i.fg) #15
  %i.fh = call ptr @gtk_tree_view_column_get_button(ptr noundef %i.fd) #15
  %i.fi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fh, ptr noundef %i.fi) #15
  call void @gtk_toggle_button_set_active(ptr noundef %i.fg, i32 noundef 0) #15
  call void @gtk_tree_view_column_set_widget(ptr noundef %i.fd, ptr noundef %i.fg) #15
  %i.fj = call i64 @g_signal_connect_data(ptr noundef %i.fd, ptr noundef nonnull @.str.48, ptr noundef nonnull @_all_thumb_toggled, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  store ptr %i.fg, ptr %i.fk, align 8, !tbaa !165
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.fd, float noundef 5.000000e-01) #15
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.fd, i32 noundef 1) #15
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !140
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1432
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !141
  %i.fo = fmul reassoc nsz arcp contract afn double %i.fn, 1.280000e+02
  %i.fp = fptosi double %i.fo to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.fd, i32 noundef %i.fp) #15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bw, i64 232
  store ptr %i.fd, ptr %i.fq, align 8, !tbaa !166
  %i.fr = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.fs = call i64 @g_signal_connect_data(ptr noundef %i.fr, ptr noundef nonnull @.str.70, ptr noundef nonnull @_files_button_press, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ft = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.fu = call ptr @gtk_tree_view_get_selection(ptr noundef %i.ft) #15 ; 2 uses
  call void @gtk_tree_selection_set_mode(ptr noundef %i.fu, i32 noundef 3) #15
  %i.fv = call i64 @g_signal_connect_data(ptr noundef %i.fu, ptr noundef nonnull @.str.71, ptr noundef nonnull @_import_from_selection_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.fw = load ptr, ptr %i.dw, align 8, !tbaa !122
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !106
  call void @gtk_tree_view_set_model(ptr noundef %i.fw, ptr noundef %i.fx) #15
  %i.fy = load ptr, ptr %i.dw, align 8, !tbaa !122
  call void @gtk_tree_view_set_headers_visible(ptr noundef %i.fy, i32 noundef 1) #15
  %i.fz = load ptr, ptr %i.dy, align 8, !tbaa !164
  call void @gtk_box_pack_start(ptr noundef %i.aw, ptr noundef %i.fz, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %i.ga = call i32 @g_timeout_add_full(i32 noundef 300, i32 noundef 100, ptr noundef nonnull @_update_files_list, ptr noundef nonnull %0, ptr noundef null) #15 ; 0 uses
  %i.gb = load i32, ptr %i.g, align 8, !tbaa !103
  %i.gc = icmp eq i32 %i.gb, 2
  br i1 %i.gc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_set_files_list.exit
  %i.gd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #15
  %i.ge = call ptr @gtk_label_new(ptr noundef %i.gd) #15 ; 3 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ge, ptr noundef nonnull @.str.79, i32 noundef 1, ptr noundef nonnull @.str.61, double noundef 0.000000e+00, ptr noundef nonnull @.str.64, i32 noundef 3, ptr noundef null) #15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !167
  call void @gtk_label_set_single_line_mode(ptr noundef %i.ge, i32 noundef 0) #15
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !167
  call void @gtk_box_pack_start(ptr noundef %i.aw, ptr noundef %i.gg, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  br label %bb.i

bb.h:                                             ; preds = %_set_files_list.exit
  %i.gh = call i64 @g_signal_connect_data(ptr noundef %i.au, ptr noundef nonnull @.str.56, ptr noundef nonnull @_paned_position_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.gi = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 8) #15 ; 2 uses
  call void @gtk_paned_pack1(ptr noundef %i.au, ptr noundef %i.gi, i32 noundef 1, i32 noundef 0) #15
  %i.gj = call ptr @gtk_paned_new(i32 noundef 1) #15 ; 5 uses
  %i.gk = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.57) #15
  call void @gtk_paned_set_position(ptr noundef %i.gj, i32 noundef %i.gk) #15
  %i.gl = call i64 @g_signal_connect_data(ptr noundef %i.gj, ptr noundef nonnull @.str.56, ptr noundef nonnull @_paned_places_position_changed, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  %i.gn = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 3, i64 noundef 64, i64 noundef 64, i64 noundef 24) #15 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 336
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !168
  %i.gp = call ptr @gtk_tree_view_new_with_model(ptr noundef %i.gn) #15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 344 ; 6 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !169
  %i.gr = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #15 ; 3 uses
  %i.gs = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #15 ; 6 uses
  %i.gt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gs, ptr noundef %i.gt) #15
  %i.gu = call ptr @gtk_label_new(ptr noundef null) #15 ; 2 uses
  %i.gv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #15
  %i.gw = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.81, ptr noundef %i.gv) #15 ; 2 uses
  call void @gtk_label_set_markup(ptr noundef %i.gu, ptr noundef %i.gw) #15
  call void @g_free(ptr noundef %i.gw) #15
  call void @gtk_box_pack_start(ptr noundef %i.gs, ptr noundef %i.gu, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %i.gx = call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_reset, i32 noundef 0, ptr noundef null) #15 ; 3 uses
  %i.gy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gx, ptr noundef %i.gy) #15
  %i.gz = call i64 @g_signal_connect_data(ptr noundef %i.gx, ptr noundef nonnull @.str.48, ptr noundef nonnull @_places_reset_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  call void @gtk_box_pack_end(ptr noundef %i.gs, ptr noundef %i.gx, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %i.ha = call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_minus_simple, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 360 ; 3 uses
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !170
  %i.hc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ha, ptr noundef %i.hc) #15
  %i.hd = load ptr, ptr %i.hb, align 8, !tbaa !170
  %i.he = call i64 @g_signal_connect_data(ptr noundef %i.hd, ptr noundef nonnull @.str.48, ptr noundef nonnull @_remove_selected_place, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !170
  call void @gtk_box_pack_end(ptr noundef %i.gs, ptr noundef %i.hf, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %i.hg = call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_plus_simple, i32 noundef 0, ptr noundef null) #15 ; 3 uses
  %i.hh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.hg, ptr noundef %i.hh) #15
  %i.hi = call i64 @g_signal_connect_data(ptr noundef %i.hg, ptr noundef nonnull @.str.48, ptr noundef nonnull @_lib_import_select_folder, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  call void @gtk_box_pack_end(ptr noundef %i.gs, ptr noundef %i.hg, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  call void @gtk_box_pack_start(ptr noundef %i.gr, ptr noundef %i.gs, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %i.hj = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.hk = call ptr @gtk_scrolled_window_new(ptr noundef null, ptr noundef null) #15 ; 4 uses
  call void @gtk_widget_set_vexpand(ptr noundef %i.hk, i32 noundef 1) #15
  call void @gtk_container_add(ptr noundef %i.hk, ptr noundef %i.hj) #15
  %i.hl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.hk, ptr noundef %i.hl) #15
  %i.hm = load ptr, ptr %i.gq, align 8, !tbaa !169
  call void @gtk_tree_view_set_headers_visible(ptr noundef %i.hm, i32 noundef 0) #15
  %i.hn = load ptr, ptr %i.gq, align 8, !tbaa !169
  call void @gtk_tree_view_set_tooltip_column(ptr noundef %i.hn, i32 noundef 1) #15
  %i.ho = call ptr @gtk_cell_renderer_text_new() #15
  %i.hp = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef nonnull @.str.51, ptr noundef %i.ho, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef null) #15
  %i.hq = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.hr = call i32 @gtk_tree_view_append_column(ptr noundef %i.hq, ptr noundef %i.hp) #15 ; 0 uses
  call void @gtk_box_pack_start(ptr noundef %i.gr, ptr noundef %i.hk, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  call void @gtk_paned_pack1(ptr noundef %i.gj, ptr noundef %i.gr, i32 noundef 1, i32 noundef 1) #15
  %i.hs = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.ht = call i64 @g_signal_connect_data(ptr noundef %i.hs, ptr noundef nonnull @.str.70, ptr noundef nonnull @_places_button_press, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.hu = load ptr, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  %i.hv = call ptr (i32, ...) @gtk_tree_store_new(i32 noundef 3, i64 noundef 64, i64 noundef 64, i64 noundef 20) #15 ; 2 uses
  %i.hw = call ptr @gtk_tree_view_new() #15       ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 168 ; 8 uses
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !107
  %i.hy = call ptr @gtk_scrolled_window_new(ptr noundef null, ptr noundef null) #15 ; 5 uses
  call void @gtk_widget_set_vexpand(ptr noundef %i.hy, i32 noundef 1) #15
  call void @gtk_container_add(ptr noundef %i.hy, ptr noundef %i.hw) #15
  call void @gtk_scrolled_window_set_policy(ptr noundef %i.hy, i32 noundef 1, i32 noundef 0) #15
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !107
  %i.ia = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #15
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.hz, ptr noundef %i.ia) #15
  %i.ib = call ptr @gtk_cell_renderer_text_new() #15
  %i.ic = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #15
  %i.id = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.ic, ptr noundef %i.ib, ptr noundef nonnull @.str.60, i32 noundef 1, ptr noundef null) #15 ; 8 uses
  %i.ie = load ptr, ptr %i.hx, align 8, !tbaa !107
  %i.if = call i32 @gtk_tree_view_append_column(ptr noundef %i.ie, ptr noundef %i.id) #15 ; 0 uses
  call void @gtk_tree_view_column_set_expand(ptr noundef %i.id, i32 noundef 1) #15
  call void @gtk_tree_view_column_set_resizable(ptr noundef %i.id, i32 noundef 1) #15
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !107
  call void @gtk_tree_view_set_expander_column(ptr noundef %i.ig, ptr noundef %i.id) #15
  %i.ih = load ptr, ptr %i.hx, align 8, !tbaa !107
end_hunk_0
