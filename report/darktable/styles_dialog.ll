inline.NumInlined: 25
inline.NumDeleted: 8
begin_hunk_0_@_gui_styles_dialog_run:bb.a
  call void @gtk_scrolled_window_set_policy(ptr noundef %i.aj, i32 noundef 2, i32 noundef 1) #13
  %i.ak = call ptr @gtk_entry_new() #13           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 6 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !77
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #13
  call void @gtk_entry_set_placeholder_text(ptr noundef %i.ak, ptr noundef %i.am) #13
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #13
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.an, ptr noundef %i.ao) #13
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !77
  call void @gtk_entry_set_activates_default(ptr noundef %i.ap, i32 noundef 1) #13
  call void @gtk_dialog_set_response_sensitive(ptr noundef %i.ah, i32 noundef -3, i32 noundef 0) #13
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.ar = call i64 @g_signal_connect_data(ptr noundef %i.aq, ptr noundef nonnull @.str.27, ptr noundef nonnull @_name_changed, ptr noundef %i.ah, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.as = call ptr @gtk_entry_new() #13           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 4 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !78
  %i.au = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #13
  call void @gtk_entry_set_placeholder_text(ptr noundef %i.as, ptr noundef %i.au) #13
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !78
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #13
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.av, ptr noundef %i.aw) #13
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !78
  call void @gtk_entry_set_activates_default(ptr noundef %i.ax, i32 noundef 1) #13
  %or.cond = and i1 %i.q, %i.f
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !77
  call void @gtk_entry_set_text(ptr noundef %i.ay, ptr noundef nonnull %1) #13
  %i.az = call ptr @dt_styles_get_description(ptr noundef nonnull %1) #13 ; 3 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !78
  call void @gtk_entry_set_text(ptr noundef %i.ba, ptr noundef nonnull %i.az) #13
  call void @g_free(ptr noundef nonnull %i.az) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bb = call ptr @gtk_dialog_get_content_area(ptr noundef %i.ah) #13
  %i.bc = load <2 x ptr>, ptr %i.al, align 8, !tbaa !79
  store <2 x ptr> %i.bc, ptr %i.b, align 16, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aj, ptr %i.bd, align 16, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.be, align 8, !tbaa !80
  %i.bf = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 598, ptr noundef nonnull @__FUNCTION__._gui_styles_dialog_run, ptr noundef %i.bb, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.bg = call ptr @gtk_tree_view_new() #13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 12 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !11
  %i.bi = tail call i64 @gdk_pixbuf_get_type() #15 ; 4 uses
  %i.bj = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 8, i64 noundef 20, i64 noundef 20, i64 noundef %i.bi, i64 noundef 20, i64 noundef 64, i64 noundef %i.bi, i64 noundef 24, i64 noundef 24) #13 ; 6 uses
  %i.bk = call ptr @gtk_tree_view_new() #13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 9 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !22
  %i.bm = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 8, i64 noundef 20, i64 noundef 64, i64 noundef %i.bi, i64 noundef 20, i64 noundef 64, i64 noundef %i.bi, i64 noundef 24, i64 noundef 24) #13 ; 3 uses
  %i.bn = call ptr @gtk_cell_renderer_toggle_new() #13 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.bn, i32 noundef 1) #13
  call void @g_object_set_data(ptr noundef %i.bn, ptr noundef nonnull @.str.30, ptr noundef null) #13
  %i.bo = call i64 @g_signal_connect_data(ptr noundef %i.bn, ptr noundef nonnull @.str.31, ptr noundef nonnull @_gui_styles_item_toggled, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !11
  %.str.32..str.33 = select i1 %i.q, ptr @.str.32, ptr @.str.33
  %i.bq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.32..str.33, i32 noundef 5) #13
  %i.br = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.bp, i32 noundef -1, ptr noundef %i.bq, ptr noundef %i.bn, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef null) #13 ; 0 uses
  %i.bs = call ptr @gtk_cell_renderer_toggle_new() #13 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.bs, i32 noundef 1) #13
  call void @g_object_set_data(ptr noundef %i.bs, ptr noundef nonnull @.str.30, ptr noundef nonnull inttoptr (i64 3 to ptr)) #13
  %i.bt = call i64 @g_signal_connect_data(ptr noundef %i.bs, ptr noundef nonnull @.str.31, ptr noundef nonnull @_gui_styles_item_autoinit_toggled, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.bu = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.bv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #13
  %i.bw = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.bu, i32 noundef -1, ptr noundef %i.bv, ptr noundef %i.bs, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null) #13 ; 0 uses
  br i1 %i.q, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bx = call ptr @gtk_cell_renderer_toggle_new() #13 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.bx, i32 noundef 1) #13
  call void @g_object_set_data(ptr noundef %i.bx, ptr noundef nonnull @.str.30, ptr noundef null) #13
  %i.by = call i64 @g_signal_connect_data(ptr noundef %i.bx, ptr noundef nonnull @.str.31, ptr noundef nonnull @_gui_styles_item_new_toggled, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.ca = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #13
  %i.cb = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.bz, i32 noundef -1, ptr noundef %i.ca, ptr noundef %i.bx, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef null) #13 ; 0 uses
  %i.cc = call ptr @gtk_cell_renderer_toggle_new() #13 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.cc, i32 noundef 1) #13
  call void @g_object_set_data(ptr noundef %i.cc, ptr noundef nonnull @.str.30, ptr noundef nonnull inttoptr (i64 3 to ptr)) #13
  %i.cd = call i64 @g_signal_connect_data(ptr noundef %i.cc, ptr noundef nonnull @.str.31, ptr noundef nonnull @_gui_styles_item_new_autoinit_toggled, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.cf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #13
  %i.cg = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.ce, i32 noundef -1, ptr noundef %i.cf, ptr noundef %i.cc, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null) #13 ; 0 uses
  %i.ch = icmp sgt i32 %2, 0
  br i1 %i.ch, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ci = call ptr @gtk_cell_renderer_toggle_new() #13 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.ci, i32 noundef 1) #13
  call void @g_object_set_data(ptr noundef %i.ci, ptr noundef nonnull @.str.30, ptr noundef nonnull inttoptr (i64 1 to ptr)) #13
  %i.cj = call i64 @g_signal_connect_data(ptr noundef %i.ci, ptr noundef nonnull @.str.31, ptr noundef nonnull @_gui_styles_update_toggled, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.cl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #13
  %i.cm = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.ck, i32 noundef -1, ptr noundef %i.cl, ptr noundef %i.ci, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef null) #13 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.k, %bb.j
  %i.cn = call ptr @gtk_cell_renderer_pixbuf_new() #13 ; 2 uses
  %i.co = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef nonnull @.str.37, ptr noundef %i.cn, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef null) #13 ; 4 uses
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.cq = call i32 @gtk_tree_view_append_column(ptr noundef %i.cp, ptr noundef %i.co) #13 ; 0 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.co, float noundef 5.000000e-01) #13
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.co, i32 noundef 0) #13
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1432
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !81
  %i.cu = fmul reassoc nsz arcp contract afn double %i.ct, 3.000000e+01
  %i.cv = fptosi double %i.cu to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.co, i32 noundef %i.cv) #13
  br i1 %i.q, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.thread
  %i.cw = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef nonnull @.str.37, ptr noundef %i.cn, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef null) #13 ; 4 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.cw, float noundef 5.000000e-01) #13
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.cw, i32 noundef 0) #13
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1432
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !81
  %i.da = fmul reassoc nsz arcp contract afn double %i.cz, 3.000000e+01
  %i.db = fptosi double %i.da to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.cw, i32 noundef %i.db) #13
  %i.dc = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.dd = call i32 @gtk_tree_view_append_column(ptr noundef %i.dc, ptr noundef %i.cw) #13 ; 0 uses
  %i.de = call ptr @gtk_cell_renderer_text_new() #13 ; 4 uses
  call void @g_object_set_data(ptr noundef %i.de, ptr noundef nonnull @.str.30, ptr noundef nonnull inttoptr (i64 4 to ptr)) #13
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.de, ptr noundef nonnull @.str.39, double noundef 0.000000e+00, ptr noundef null) #13
  %i.df = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.dg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #13
  %i.dh = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.df, i32 noundef -1, ptr noundef %i.dg, ptr noundef %i.de, ptr noundef nonnull @.str.41, i32 noundef 4, ptr noundef null) #13 ; 0 uses
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.dj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #13
  %i.dk = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.di, i32 noundef -1, ptr noundef %i.dj, ptr noundef %i.de, ptr noundef nonnull @.str.41, i32 noundef 4, ptr noundef null) #13 ; 0 uses
  br label %bb.m

.critedge:                                        ; preds = %.thread
  %i.dl = call ptr @gtk_cell_renderer_text_new() #13 ; 3 uses
  call void @g_object_set_data(ptr noundef %i.dl, ptr noundef nonnull @.str.30, ptr noundef nonnull inttoptr (i64 4 to ptr)) #13
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.dl, ptr noundef nonnull @.str.39, double noundef 0.000000e+00, ptr noundef null) #13
  %i.dm = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.dn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #13
  %i.do = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.dm, i32 noundef -1, ptr noundef %i.dn, ptr noundef %i.dl, ptr noundef nonnull @.str.41, i32 noundef 4, ptr noundef null) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.dp = call ptr @gtk_cell_renderer_pixbuf_new() #13 ; 2 uses
  %i.dq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #13
  %i.dr = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.dq, ptr noundef %i.dp, ptr noundef nonnull @.str.38, i32 noundef 5, ptr noundef null) #13 ; 4 uses
  %i.ds = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.dt = call i32 @gtk_tree_view_append_column(ptr noundef %i.ds, ptr noundef %i.dr) #13 ; 0 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.dr, float noundef 5.000000e-01) #13
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.dr, i32 noundef 0) #13
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1432
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !81
  %i.dx = fmul reassoc nsz arcp contract afn double %i.dw, 3.000000e+01
  %i.dy = fptosi double %i.dx to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.dr, i32 noundef %i.dy) #13
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #13
  %i.ea = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.dz, ptr noundef %i.dp, ptr noundef nonnull @.str.38, i32 noundef 5, ptr noundef null) #13 ; 4 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.ea, float noundef 5.000000e-01) #13
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.ea, i32 noundef 0) #13
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1432
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !81
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, 3.000000e+01
  %i.ef = fptosi double %i.ee to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.ea, i32 noundef %i.ef) #13
  %i.eg = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.eh = call i32 @gtk_tree_view_append_column(ptr noundef %i.eg, ptr noundef %i.ea) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ei = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.ej = call ptr @gtk_tree_view_get_selection(ptr noundef %i.ei) #13
  call void @gtk_tree_selection_set_mode(ptr noundef %i.ej, i32 noundef 1) #13
  %i.ek = load ptr, ptr %i.bh, align 8, !tbaa !11
  call void @gtk_tree_view_set_model(ptr noundef %i.ek, ptr noundef %i.bj) #13
  %i.el = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.em = call ptr @gtk_tree_view_get_selection(ptr noundef %i.el) #13
  call void @gtk_tree_selection_set_mode(ptr noundef %i.em, i32 noundef 1) #13
  %i.en = load ptr, ptr %i.bl, align 8, !tbaa !22
  call void @gtk_tree_view_set_model(ptr noundef %i.en, ptr noundef %i.bm) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.eo = call ptr @gtk_widget_get_style_context(ptr noundef %i.ah) #13
  %i.ep = call i32 @gtk_widget_get_state_flags(ptr noundef %i.ah) #13
  call void @gtk_style_context_get_color(ptr noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull %6) #13
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1432
  %i.es = load double, ptr %i.er, align 8, !tbaa !81
  %i.et = fmul reassoc nsz arcp contract afn double %i.es, 1.000000e+01
  %i.eu = fptosi double %i.et to i32              ; 12 uses
  %i.ev = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.eu, i32 noundef %i.eu) #13 ; 3 uses
  %i.ew = call ptr @cairo_create(ptr noundef %i.ev) #13 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.ew, ptr noundef nonnull %6) #13
  call void @dtgtk_cairo_paint_switch(ptr noundef %i.ew, i32 noundef 0, i32 noundef 0, i32 noundef %i.eu, i32 noundef %i.eu, i32 noundef 0, ptr noundef null) #13, !callees !82, !inline_history !83
  call void @cairo_destroy(ptr noundef %i.ew) #13
  %i.ex = call ptr @cairo_image_surface_get_data(ptr noundef %i.ev) #13 ; 5 uses
  %.not.i264 = icmp eq i32 %i.eu, 0
  br i1 %.not.i264, label %dt_draw_paint_to_pixbuf.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.o
  %wide.trip.count.i.i = zext i32 %i.eu to i64
  br label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.038.i.i = phi i32 [ %8, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ] ; 2 uses
  %7 = mul i32 %.038.i.i, %i.eu
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.r
  %8 = add nuw i32 %.038.i.i, 1                   ; 2 uses
  %exitcond41.not.i.i = icmp eq i32 %8, %i.eu
  br i1 %exitcond41.not.i.i, label %dt_draw_paint_to_pixbuf.exit, label %.preheader.i.i.a

bb.p:                                             ; preds = %bb.r, %.preheader.i.i.a
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i.a ], [ %indvars.iv.next.i.i, %bb.r ] ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv.i.i to i32
  %9 = add i32 %7, %i.ey
  %i.ez = shl i32 %9, 2                           ; 4 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa ; 3 uses
  %i.fc = or disjoint i32 %i.ez, 2
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fd ; 3 uses
  %i.ff = or disjoint i32 %i.ez, 3
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fg
  %i.fi = load i8, ptr %i.fb, align 1, !tbaa !84  ; 2 uses
  %i.fj = load i8, ptr %i.fe, align 1, !tbaa !84  ; 2 uses
  store i8 %i.fj, ptr %i.fb, align 1, !tbaa !84
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !84
  %i.fk = load i8, ptr %i.fh, align 1, !tbaa !84  ; 2 uses
  %.not.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = or disjoint i32 %i.ez, 1
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fm ; 2 uses
  %i.fo = uitofp i8 %i.fk to float
  %i.fp = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.fo ; 3 uses
  %i.fq = uitofp reassoc nsz arcp contract afn i8 %i.fj to float
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fp, %i.fq
  %i.fs = fptoui float %i.fr to i8
  store i8 %i.fs, ptr %i.fb, align 1, !tbaa !84
  %i.ft = load i8, ptr %i.fn, align 1, !tbaa !84
  %i.fu = uitofp reassoc nsz arcp contract afn i8 %i.ft to float
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fp, %i.fu
  %i.fw = fptoui float %i.fv to i8
  store i8 %i.fw, ptr %i.fn, align 1, !tbaa !84
  %i.fx = uitofp reassoc nsz arcp contract afn i8 %i.fi to float
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fp, %i.fx
  %i.fz = fptoui float %i.fy to i8
  store i8 %i.fz, ptr %i.fe, align 1, !tbaa !84
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.p

dt_draw_paint_to_pixbuf.exit:                     ; preds = %._crit_edge.i.i, %bb.o
  %i.ga = sext i32 %i.eu to i64                   ; 2 uses
  %i.gb = shl nsw i64 %i.ga, 2
  %i.gc = mul i64 %i.gb, %i.ga                    ; 2 uses
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #14 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %i.ex, i64 %i.gc, i1 false)
  %i.ge = shl nsw i32 %i.eu, 2
  %i.gf = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.gd, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.eu, i32 noundef %i.eu, i32 noundef %i.ge, ptr noundef nonnull @free, ptr noundef null) #13 ; 6 uses
  call void @cairo_surface_destroy(ptr noundef %i.ev) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.gg = call ptr @gtk_widget_get_style_context(ptr noundef %i.ah) #13
  %i.gh = call i32 @gtk_widget_get_state_flags(ptr noundef %i.ah) #13
  call void @gtk_style_context_get_color(ptr noundef %i.gg, i32 noundef %i.gh, ptr noundef nonnull %5) #13
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1432
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !81
  %i.gl = fmul reassoc nsz arcp contract afn double %i.gk, 1.000000e+01
  %i.gm = fptosi double %i.gl to i32              ; 12 uses
  %i.gn = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.gm, i32 noundef %i.gm) #13 ; 3 uses
  %i.go = call ptr @cairo_create(ptr noundef %i.gn) #13 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.go, ptr noundef nonnull %5) #13
  call void @dtgtk_cairo_paint_switch_inactive(ptr noundef %i.go, i32 noundef 0, i32 noundef 0, i32 noundef %i.gm, i32 noundef %i.gm, i32 noundef 0, ptr noundef null) #13, !callees !82, !inline_history !83
  call void @cairo_destroy(ptr noundef %i.go) #13
  %i.gp = call ptr @cairo_image_surface_get_data(ptr noundef %i.gn) #13 ; 5 uses
  %.not.i265 = icmp eq i32 %i.gm, 0
  br i1 %.not.i265, label %dt_draw_paint_to_pixbuf.exit276, label %.preheader.preheader.i.i266

.preheader.preheader.i.i266:                      ; preds = %dt_draw_paint_to_pixbuf.exit
  %wide.trip.count.i.i267 = zext i32 %i.gm to i64
  br label %.preheader.i.i268.a

.preheader.i.i268.a:                              ; preds = %._crit_edge.i.i274, %.preheader.preheader.i.i266
  %.038.i.i269 = phi i32 [ %11, %._crit_edge.i.i274 ], [ 0, %.preheader.preheader.i.i266 ] ; 2 uses
  %10 = mul i32 %.038.i.i269, %i.gm
  br label %bb.s

._crit_edge.i.i274:                               ; preds = %bb.u
  %11 = add nuw i32 %.038.i.i269, 1               ; 2 uses
  %exitcond41.not.i.i275 = icmp eq i32 %11, %i.gm
  br i1 %exitcond41.not.i.i275, label %dt_draw_paint_to_pixbuf.exit276, label %.preheader.i.i268.a

bb.s:                                             ; preds = %bb.u, %.preheader.i.i268.a
  %indvars.iv.i.i270 = phi i64 [ 0, %.preheader.i.i268.a ], [ %indvars.iv.next.i.i272, %bb.u ] ; 2 uses
  %i.gq = trunc nuw i64 %indvars.iv.i.i270 to i32
  %12 = add i32 %10, %i.gq
  %i.gr = shl i32 %12, 2                          ; 4 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gs ; 3 uses
  %i.gu = or disjoint i32 %i.gr, 2
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gv ; 3 uses
  %i.gx = or disjoint i32 %i.gr, 3
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gy
  %i.ha = load i8, ptr %i.gt, align 1, !tbaa !84  ; 2 uses
  %i.hb = load i8, ptr %i.gw, align 1, !tbaa !84  ; 2 uses
  store i8 %i.hb, ptr %i.gt, align 1, !tbaa !84
  store i8 %i.ha, ptr %i.gw, align 1, !tbaa !84
  %i.hc = load i8, ptr %i.gz, align 1, !tbaa !84  ; 2 uses
  %.not.i.i271 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i271, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hd = or disjoint i32 %i.gr, 1
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.he ; 2 uses
  %i.hg = uitofp i8 %i.hc to float
  %i.hh = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.hg ; 3 uses
  %i.hi = uitofp reassoc nsz arcp contract afn i8 %i.hb to float
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hh, %i.hi
  %i.hk = fptoui float %i.hj to i8
  store i8 %i.hk, ptr %i.gt, align 1, !tbaa !84
  %i.hl = load i8, ptr %i.hf, align 1, !tbaa !84
  %i.hm = uitofp reassoc nsz arcp contract afn i8 %i.hl to float
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hh, %i.hm
  %i.ho = fptoui float %i.hn to i8
  store i8 %i.ho, ptr %i.hf, align 1, !tbaa !84
  %i.hp = uitofp reassoc nsz arcp contract afn i8 %i.ha to float
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hh, %i.hp
  %i.hr = fptoui float %i.hq to i8
  store i8 %i.hr, ptr %i.gw, align 1, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.i.i272 = add nuw nsw i64 %indvars.iv.i.i270, 1 ; 2 uses
  %exitcond.not.i.i273 = icmp eq i64 %indvars.iv.next.i.i272, %wide.trip.count.i.i267
  br i1 %exitcond.not.i.i273, label %._crit_edge.i.i274, label %bb.s

dt_draw_paint_to_pixbuf.exit276:                  ; preds = %._crit_edge.i.i274, %dt_draw_paint_to_pixbuf.exit
  %i.hs = sext i32 %i.gm to i64                   ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2
  %i.hu = mul i64 %i.ht, %i.hs                    ; 2 uses
  %i.hv = call noalias ptr @malloc(i64 noundef %i.hu) #14 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hv, ptr align 1 %i.gp, i64 %i.hu, i1 false)
  %i.hw = shl nsw i32 %i.gm, 2
  %i.hx = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.hv, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.gm, i32 noundef %i.gm, i32 noundef %i.hw, ptr noundef nonnull @free, ptr noundef null) #13 ; 4 uses
  call void @cairo_surface_destroy(ptr noundef %i.gn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.hy = call ptr @gtk_widget_get_style_context(ptr noundef %i.ah) #13
  %i.hz = call i32 @gtk_widget_get_state_flags(ptr noundef %i.ah) #13
  call void @gtk_style_context_get_color(ptr noundef %i.hy, i32 noundef %i.hz, ptr noundef nonnull %4) #13
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !28
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1432
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !81
  %i.id = fmul reassoc nsz arcp contract afn double %i.ic, 1.000000e+01
  %i.ie = fptosi double %i.id to i32              ; 12 uses
  %i.if = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.ie, i32 noundef %i.ie) #13 ; 3 uses
  %i.ig = call ptr @cairo_create(ptr noundef %i.if) #13 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.ig, ptr noundef nonnull %4) #13
  call void @dtgtk_cairo_paint_showmask(ptr noundef %i.ig, i32 noundef 0, i32 noundef 0, i32 noundef %i.ie, i32 noundef %i.ie, i32 noundef 0, ptr noundef null) #13, !callees !82, !inline_history !83
  call void @cairo_destroy(ptr noundef %i.ig) #13
  %i.ih = call ptr @cairo_image_surface_get_data(ptr noundef %i.if) #13 ; 5 uses
  %.not.i277 = icmp eq i32 %i.ie, 0
  br i1 %.not.i277, label %dt_draw_paint_to_pixbuf.exit288, label %.preheader.preheader.i.i278

.preheader.preheader.i.i278:                      ; preds = %dt_draw_paint_to_pixbuf.exit276
  %wide.trip.count.i.i279 = zext i32 %i.ie to i64
  br label %.preheader.i.i280

.preheader.i.i280:                                ; preds = %._crit_edge.i.i286, %.preheader.preheader.i.i278
  %.038.i.i281 = phi i32 [ %14, %._crit_edge.i.i286 ], [ 0, %.preheader.preheader.i.i278 ] ; 2 uses
  %13 = mul i32 %.038.i.i281, %i.ie
  br label %bb.v

._crit_edge.i.i286:                               ; preds = %bb.x
  %14 = add nuw i32 %.038.i.i281, 1               ; 2 uses
  %exitcond41.not.i.i287 = icmp eq i32 %14, %i.ie
  br i1 %exitcond41.not.i.i287, label %dt_draw_paint_to_pixbuf.exit288, label %.preheader.i.i280

bb.v:                                             ; preds = %bb.x, %.preheader.i.i280
  %indvars.iv.i.i282 = phi i64 [ 0, %.preheader.i.i280 ], [ %indvars.iv.next.i.i284, %bb.x ] ; 2 uses
  %i.ii = trunc nuw i64 %indvars.iv.i.i282 to i32
  %15 = add i32 %13, %i.ii
  %i.ij = shl i32 %15, 2                          ; 4 uses
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik ; 3 uses
  %i.im = or disjoint i32 %i.ij, 2
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.in ; 3 uses
  %i.ip = or disjoint i32 %i.ij, 3
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.iq
  %i.is = load i8, ptr %i.il, align 1, !tbaa !84  ; 2 uses
  %i.it = load i8, ptr %i.io, align 1, !tbaa !84  ; 2 uses
  store i8 %i.it, ptr %i.il, align 1, !tbaa !84
  store i8 %i.is, ptr %i.io, align 1, !tbaa !84
  %i.iu = load i8, ptr %i.ir, align 1, !tbaa !84  ; 2 uses
  %.not.i.i283 = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i283, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iv = or disjoint i32 %i.ij, 1
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.iw ; 2 uses
  %i.iy = uitofp i8 %i.iu to float
  %i.iz = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.iy ; 3 uses
  %i.ja = uitofp reassoc nsz arcp contract afn i8 %i.it to float
  %i.jb = fmul reassoc nsz arcp contract afn float %i.iz, %i.ja
  %i.jc = fptoui float %i.jb to i8
  store i8 %i.jc, ptr %i.il, align 1, !tbaa !84
  %i.jd = load i8, ptr %i.ix, align 1, !tbaa !84
  %i.je = uitofp reassoc nsz arcp contract afn i8 %i.jd to float
  %i.jf = fmul reassoc nsz arcp contract afn float %i.iz, %i.je
  %i.jg = fptoui float %i.jf to i8
  store i8 %i.jg, ptr %i.ix, align 1, !tbaa !84
  %i.jh = uitofp reassoc nsz arcp contract afn i8 %i.is to float
  %i.ji = fmul reassoc nsz arcp contract afn float %i.iz, %i.jh
  %i.jj = fptoui float %i.ji to i8
  store i8 %i.jj, ptr %i.io, align 1, !tbaa !84
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next.i.i284 = add nuw nsw i64 %indvars.iv.i.i282, 1 ; 2 uses
  %exitcond.not.i.i285 = icmp eq i64 %indvars.iv.next.i.i284, %wide.trip.count.i.i279
  br i1 %exitcond.not.i.i285, label %._crit_edge.i.i286, label %bb.v

dt_draw_paint_to_pixbuf.exit288:                  ; preds = %._crit_edge.i.i286, %dt_draw_paint_to_pixbuf.exit276
  %i.jk = sext i32 %i.ie to i64                   ; 2 uses
  %i.jl = shl nsw i64 %i.jk, 2
  %i.jm = mul i64 %i.jl, %i.jk                    ; 2 uses
  %i.jn = call noalias ptr @malloc(i64 noundef %i.jm) #14 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.ih, i64 %i.jm, i1 false)
  %i.jo = shl nsw i32 %i.ie, 2
  %i.jp = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.jn, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.ie, i32 noundef %i.ie, i32 noundef %i.jo, ptr noundef nonnull @free, ptr noundef null) #13 ; 3 uses
  call void @cairo_surface_destroy(ptr noundef %i.if) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br i1 %i.q, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %dt_draw_paint_to_pixbuf.exit288
  %i.jq = call i32 @dt_styles_has_module_order(ptr noundef %1) #13
  %i.jr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #13
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.bj, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef %i.jq, i32 noundef 2, ptr noundef %i.gf, i32 noundef 4, ptr noundef %i.jr, i32 noundef 6, i32 noundef -1, i32 noundef -1) #13
  %i.js = call ptr @dt_styles_get_item_list(ptr noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef 1) #13 ; 3 uses
  %.not247 = icmp eq ptr %i.js, null
  br i1 %.not247, label %.thread301, label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.ad
  %.0223306 = phi i32 [ %.1224, %bb.ad ], [ 0, %bb.y ] ; 2 uses
  %.0226305 = phi i32 [ %.1227, %bb.ad ], [ 0, %bb.y ] ; 2 uses
  %.0230304 = phi ptr [ %i.kp, %bb.ad ], [ %i.js, %bb.y ] ; 2 uses
  %i.jt = load ptr, ptr %.0230304, align 8, !tbaa !85 ; 7 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !87
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !90 ; 2 uses
  %i.jx = load i32, ptr %i.jt, align 8, !tbaa !93 ; 4 uses
  %.not252 = icmp eq i32 %i.jx, -1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !94 ; 3 uses
  %.not255 = icmp eq i32 %i.jz, -1                ; 2 uses
  br i1 %.not252, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.preheader
  br i1 %.not255, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !95
  %.not259 = icmp eq i32 %i.kb, 0
  %i.kc = select i1 %.not259, ptr %i.hx, ptr %i.gf
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !96
  %.not260 = icmp eq i32 %i.jw, 0
  %i.kf = select i1 %.not260, ptr null, ptr %i.jp
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.bj, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 2, ptr noundef %i.kc, i32 noundef 4, ptr noundef %i.ke, i32 noundef 5, ptr noundef %i.kf, i32 noundef 6, i32 noundef %i.jx, i32 noundef 7, i32 noundef %i.jz, i32 noundef -1) #13
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader
  br i1 %.not255, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %i.kg = phi i32 [ -1, %bb.z ], [ %i.jz, %bb.ab ]
  %.not256 = icmp ne i32 %i.jx, -1
  %i.kh = zext i1 %.not256 to i32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !95
  %.not257 = icmp eq i32 %i.kj, 0
  %i.kk = select i1 %.not257, ptr %i.hx, ptr %i.gf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !96
  %.not258 = icmp eq i32 %i.jw, 0
  %i.kn = select i1 %.not258, ptr null, ptr %i.jp
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.bm, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef %i.kh, i32 noundef 3, i32 noundef 0, i32 noundef 2, ptr noundef %i.kk, i32 noundef 4, ptr noundef %i.km, i32 noundef 5, ptr noundef %i.kn, i32 noundef 6, i32 noundef %i.jx, i32 noundef 7, i32 noundef %i.kg, i32 noundef -1) #13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.1227 = phi i32 [ 1, %bb.aa ], [ %.0226305, %bb.ac ], [ %.0226305, %bb.ab ] ; 2 uses
  %.1224 = phi i32 [ %.0223306, %bb.aa ], [ 1, %bb.ac ], [ %.0223306, %bb.ab ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0230304, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !97 ; 2 uses
  %.not248 = icmp eq ptr %i.kp, null
  br i1 %.not248, label %bb.ai, label %.preheader

bb.ae:                                            ; preds = %dt_draw_paint_to_pixbuf.exit288
  %i.kq = call i32 @dt_ioppr_get_iop_order_version(i32 noundef %2) #13
  %i.kr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #13
  %i.ks = call ptr @dt_iop_order_string(i32 noundef %i.kq) #13
  %i.kt = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.44, ptr noundef %i.kr, ptr noundef %i.ks) #13 ; 2 uses
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.bj, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef 1, i32 noundef 2, ptr noundef %i.gf, i32 noundef 4, ptr noundef %i.kt, i32 noundef 6, i32 noundef -1, i32 noundef -1) #13
  call void @g_free(ptr noundef %i.kt) #13
  %i.ku = call ptr @dt_history_get_items(i32 noundef %2, i32 noundef 0, i32 noundef 1, i32 noundef 1) #13 ; 3 uses
  %.not240.not = icmp eq ptr %i.ku, null
  br i1 %.not240.not, label %.thread291, label %.preheader302

.preheader302:                                    ; preds = %bb.ae, %bb.ah
  %.0222303 = phi ptr [ %i.lr, %bb.ah ], [ %i.ku, %bb.ae ] ; 2 uses
  %i.kv = load ptr, ptr %.0222303, align 8, !tbaa !85 ; 5 uses
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !98
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2088
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !99 ; 2 uses
  %.not242 = icmp eq ptr %i.ky, null
  br i1 %.not242, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.preheader302
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !127
  %i.lb = call ptr @g_list_find_custom(ptr noundef nonnull %i.ky, ptr noundef %i.la, ptr noundef nonnull @_g_list_find_module_by_name) #13 ; 2 uses
  %.not243 = icmp eq ptr %i.lb, null
  br i1 %.not243, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !85
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.le = load ptr, ptr %i.ld, align 16, !tbaa !129
  %i.lf = call i32 %i.le() #13
  %i.lg = and i32 %i.lf, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %.preheader302
  %.1221 = phi i32 [ 1, %.preheader302 ], [ %i.lg, %bb.ag ], [ 1, %bb.af ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !139
  %.not245 = icmp eq i32 %i.li, 0
  %i.lj = select i1 %.not245, ptr %i.hx, ptr %i.gf
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !140
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !141
  %.not246 = icmp eq i32 %i.ln, 0
  %i.lo = select i1 %.not246, ptr null, ptr %i.jp
  %i.lp = load i32, ptr %i.kv, align 8, !tbaa !142
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.bj, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef %.1221, i32 noundef 3, i32 noundef 0, i32 noundef 2, ptr noundef %i.lj, i32 noundef 4, ptr noundef %i.ll, i32 noundef 5, ptr noundef %i.lo, i32 noundef 6, i32 noundef %i.lp, i32 noundef -1) #13
  %i.lq = getelementptr inbounds nuw i8, ptr %.0222303, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !97 ; 2 uses
  %.not241 = icmp eq ptr %i.lr, null
  br i1 %.not241, label %.thread326, label %.preheader302

.thread291:                                       ; preds = %bb.ae
  %i.ls = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #13
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ls) #13
  br label %bb.ap

.thread326:                                       ; preds = %bb.ah
  call void @g_list_free_full(ptr noundef nonnull %i.ku, ptr noundef nonnull @dt_history_item_free) #13
  %i.lt = load ptr, ptr %i.bh, align 8, !tbaa !11
  store ptr %i.lt, ptr %i.c, align 8, !tbaa !80
  %i.lu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.lu, align 8, !tbaa !80
  %i.lv = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 845, ptr noundef nonnull @__FUNCTION__._gui_styles_dialog_run, ptr noundef %i.ai, ptr noundef nonnull %i.c) #13 ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %bb.ad
  call void @g_list_free_full(ptr noundef nonnull %i.js, ptr noundef nonnull @dt_style_item_free) #13
  %i.lw = icmp eq i32 %.1224, 0                   ; 2 uses
  %i.lx = icmp eq i32 %.1227, 0
  br i1 %i.lx, label %bb.aj, label %.split300

.split300:                                        ; preds = %bb.ai
  %i.ly = load ptr, ptr %i.bh, align 8, !tbaa !11
  store ptr %i.ly, ptr %i.c, align 8, !tbaa !80
  %i.lz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.lz, align 8, !tbaa !80
  %i.ma = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 845, ptr noundef nonnull @__FUNCTION__._gui_styles_dialog_run, ptr noundef %i.ai, ptr noundef nonnull %i.c) #13 ; 0 uses
  br i1 %i.lw, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.lw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.split300, %bb.aj
  %i.mb = load ptr, ptr %i.bl, align 8, !tbaa !22
  store ptr %i.mb, ptr %i.d, align 8, !tbaa !80
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.mc, align 8, !tbaa !80
  %i.md = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 848, ptr noundef nonnull @__FUNCTION__._gui_styles_dialog_run, ptr noundef %i.ai, ptr noundef nonnull %i.d) #13 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %.thread326, %.split300, %bb.ak, %bb.aj
  br i1 %i.q, label %.thread301, label %.critedge262

.thread301:                                       ; preds = %bb.y, %bb.al
  %i.me = call ptr @gtk_dialog_get_content_area(ptr noundef %i.ah) #13
  %i.mf = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !27
  store ptr %i.mg, ptr %i.e, align 8, !tbaa !80
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.mh, align 8, !tbaa !80
  %i.mi = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 851, ptr noundef nonnull @__FUNCTION__._gui_styles_dialog_run, ptr noundef %i.me, ptr noundef nonnull %i.e) #13 ; 0 uses
  br label %.critedge262

.critedge262:                                     ; preds = %bb.al, %.thread301
  %_gui_styles_new_style_response.sink = phi ptr [ @_gui_styles_edit_style_response, %.thread301 ], [ @_gui_styles_new_style_response, %bb.al ]
  call void @g_object_unref(ptr noundef %i.bj) #13
  call void @g_object_unref(ptr noundef %i.bm) #13
  %i.mj = call i64 @g_signal_connect_data(ptr noundef %i.ah, ptr noundef nonnull @.str.46, ptr noundef nonnull %_gui_styles_new_style_response.sink, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  call void @gtk_widget_show_all(ptr noundef %i.ah) #13
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.critedge262
  %.0218 = phi i32 [ -8, %.critedge262 ], [ %i.mk, %bb.an ]
  switch i32 %.0218, label %bb.ao [
    i32 -1, label %bb.an
    i32 -8, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.mk = call i32 @gtk_dialog_run(ptr noundef %i.ah) #13
  br label %bb.am

end_hunk_0
