Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbtable?download=true
inline.NumInlined: 73
inline.NumDeleted: 25
begin_hunk_0_@_event_scroll:bb.a
  %i.aj = call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.ak = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.al = or i32 %i.ak, %i.ai
  %i.am = and i32 %i.al, %i.aj
  %.not52 = icmp eq i32 %i.am, 4
  %.pr = load i32, ptr %2, align 8, !tbaa !18
  %i.an = icmp eq i32 %.pr, 2                     ; 2 uses
  br i1 %.not52, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %i.an, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.as = sdiv i32 %i.ap, %i.ar
  %i.at = sdiv i32 %i.as, 2
  %i.au = load i32, ptr %i.c, align 4, !tbaa !35
  %i.av = load i32, ptr %i.d, align 4, !tbaa !35
  %i.aw = add i32 %i.at, %i.au
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = shl nsw i32 %i.ax, 1
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = sdiv i32 %i.ap, %i.az
  %i.bb = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #15
  %i.bc = icmp sgt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #15
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.bg = sdiv i32 %i.be, %i.bf
  %i.bh = sdiv i32 %i.bg, 2
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !35
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !35
  %i.bk = add i32 %i.bh, %i.bi
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = shl nsw i32 %i.bl, 1
  %i.bn = or disjoint i32 %i.bm, 1
  %i.bo = sdiv i32 %i.be, %i.bn
  %i.bp = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.72) #15
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.72) #15
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bs = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.bt = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.bu = sdiv i32 %i.bs, %i.bt
  %i.bv = sdiv i32 %i.bu, 2
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !35
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !35
  %i.by = add i32 %i.bv, %i.bw
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = shl nsw i32 %i.bz, 1
  %i.cb = or disjoint i32 %i.ca, 1
  %i.cc = sdiv i32 %i.bs, %i.cb
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %i.cd = phi i32 [ %i.bd, %bb.p ], [ %i.br, %bb.r ], [ %i.cc, %bb.s ]
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !150
  call void @dt_ui_panel_set_size(ptr noundef %i.cf, i32 noundef 5, i32 noundef %i.cd) #15
  br label %_thumb_get_under_mouse.exit.thread

.thread:                                          ; preds = %bb.l, %bb.n
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.ch = call i32 @dt_view_lighttable_get_zoom(ptr noundef %i.cg) #15 ; 2 uses
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !35
  %i.cj = add nsw i32 %i.ci, %i.ch
  %i.ck = call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %i.cl = call i32 @llvm.umin.i32(i32 %i.ck, i32 25)
  call void @dt_thumbtable_zoom_changed(ptr noundef nonnull %2, i32 noundef %i.ch, i32 noundef %i.cl)
  br label %_thumb_get_under_mouse.exit.thread

bb.u:                                             ; preds = %bb.m
  br i1 %i.an, label %bb.v, label %_thumb_get_under_mouse.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cm = load i32, ptr %i.c, align 4, !tbaa !35
  %i.cn = load i32, ptr %i.d, align 4, !tbaa !35
  %i.co = add nsw i32 %i.cn, %i.cm
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !224
  %i.cq = call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.cr = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.cs = or i32 %i.cr, %i.cp
  %i.ct = and i32 %i.cs, %i.cq
  %.not53 = icmp eq i32 %i.ct, 1
  br i1 %.not53, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !85
  %i.cy = sub nsw i32 %i.cv, %i.cx
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.db = phi i32 [ %i.cy, %bb.w ], [ %i.da, %bb.x ]
  %i.dc = mul i32 %i.co, %i.db
  %i.dd = sub i32 0, %i.dc
  %i.de = call fastcc i32 @_move(ptr noundef nonnull %2, i32 noundef %i.dd, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %_thumb_get_under_mouse.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 -1, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 -1, ptr %i.b, align 4, !tbaa !35
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dj = call ptr @gtk_widget_get_window(ptr noundef %i.di) #15
  %i.dk = call i32 @gdk_window_get_origin(ptr noundef %i.dj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !151
  %i.dn = load i32, ptr %i.a, align 4, !tbaa !35
  %i.do = sub nsw i32 %i.dm, %i.dn                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !152
  %i.dr = load i32, ptr %i.b, align 4, !tbaa !35
  %i.ds = sub nsw i32 %i.dq, %i.dr                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.01833.i.i = load ptr, ptr %i.dt, align 8, !tbaa !23 ; 2 uses
  %.not34.i.i = icmp eq ptr %.01833.i.i, null
  br i1 %.not34.i.i, label %_thumb_get_under_mouse.exit.thread50, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.ad
  %.01835.i.i = phi ptr [ %.018.i.i, %bb.ad ], [ %.01833.i.i, %bb.z ] ; 2 uses
  %i.du = load ptr, ptr %.01835.i.i, align 8, !tbaa !26 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !37 ; 2 uses
  %.not25.i.i = icmp sgt i32 %i.dw, %i.do
  br i1 %.not25.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !32
  %i.dz = add nsw i32 %i.dy, %i.dw
  %i.ea = icmp sgt i32 %i.dz, %i.do
  br i1 %i.ea, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38 ; 2 uses
  %.not26.i.i = icmp sgt i32 %i.ec, %i.ds
  br i1 %.not26.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !33
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = icmp sgt i32 %i.ef, %i.ds
  br i1 %i.eg, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.01835.i.i, i64 8
  %.018.i.i = load ptr, ptr %i.eh, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not.i.i, label %_thumb_get_under_mouse.exit.thread50, label %.lr.ph.i.i

_thumb_get_under_mouse.exit.thread50:             ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_thumb_get_under_mouse.exit.thread

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ei = load i32, ptr %i.du, align 8, !tbaa !39
  call void @dt_control_set_mouse_over_id(i32 noundef %i.ei) #15
  br label %_thumb_get_under_mouse.exit.thread

_thumb_get_under_mouse.exit.thread:               ; preds = %bb.y, %_thumb_get_under_mouse.exit.thread50, %bb.k, %bb.u, %bb.t, %.thread, %bb.ae, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_event_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct._PangoRectangle, align 8    ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = tail call ptr @gtk_widget_get_parent(ptr noundef %0) #15 ; 3 uses
  %i.b = tail call i64 @gtk_container_get_type() #20 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %.not24 = icmp eq ptr %i.c, null
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !157
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %.critedge29, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.a, i64 noundef %i.b) #18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.critedge29

.critedge29:                                      ; preds = %bb.c, %bb.d
  %i.h = tail call ptr @gtk_widget_get_style_context(ptr noundef %0) #15
  %i.i = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %0) #15
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.k = tail call i32 @gtk_widget_get_allocated_height(ptr noundef %0) #15
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  tail call void @gtk_render_background(ptr noundef %i.h, ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.j, double noundef %i.l) #15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 -1, ptr %i.m, align 8, !tbaa !225
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !96 ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge29
  %i.o = tail call i32 @dt_collection_get_count(ptr noundef nonnull %i.n) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %.critedge29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  call void @gtk_widget_get_allocation(ptr noundef %i.r, ptr noundef nonnull %4) #15
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !158  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !159  ; 2 uses
  %i.w = load i32, ptr %2, align 8, !tbaa !18
  %.not27 = icmp eq i32 %i.w, 2                   ; 2 uses
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 3) #15
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.t to double ; 2 uses
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.v to double ; 3 uses
  call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.x, double noundef %i.y) #15
  call void @cairo_fill(ptr noundef %1) #15
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.aa = fmul reassoc nnan nsz arcp contract afn float %i.z, 2.000000e-01 ; 5 uses
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.t to float ; 6 uses
  %i.ac = fmul reassoc nnan nsz arcp contract afn float %i.ab, 5.000000e-02 ; 2 uses
  %i.ad = call ptr @pango_cairo_create_layout(ptr noundef %1) #15 ; 10 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234
  %i.ah = call ptr @pango_font_description_copy_static(ptr noundef %i.ag) #15 ; 3 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !110
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, 2.048000e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.ah, double noundef %i.al) #15
  call void @pango_layout_set_font_description(ptr noundef %i.ad, ptr noundef %i.ah) #15
  call void @pango_layout_set_ellipsize(ptr noundef %i.ad, i32 noundef 2) #15
  %i.am = fmul reassoc nnan nsz arcp contract afn float %i.ab, f0x3F666666
  %i.an = fmul reassoc nnan nsz arcp contract afn float %i.ab, f0x44666666
  %i.ao = fptosi float %i.an to i32
  call void @pango_layout_set_width(ptr noundef %i.ad, i32 noundef %i.ao) #15
  %i.ap = fptosi float %i.am to i32
  %i.aq = call ptr (i32, i32, i32, i32, ...) @pango_tab_array_new_with_positions(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %i.ap) #15 ; 2 uses
  call void @pango_layout_set_tabs(ptr noundef %i.ad, ptr noundef %i.aq) #15
  call void @pango_tab_array_free(ptr noundef %i.aq) #15
  %i.ar = call i32 (...) @dt_act_on_get_algorithm() #15
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #15 ; 2 uses
  %i.au = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #15
  %i.av = select i1 %.not27, ptr null, ptr @.str.77
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #15
  %i.ax = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #15
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #15
  %i.az = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #15
  %i.ba = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #15
  %i.bb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #15
  %i.bc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.89, i32 noundef 5) #15
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #15
  %i.be = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #15
  %i.bf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #15
  %i.bg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.93, i32 noundef 5) #15
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #15
  %i.bj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #15
  %i.bk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #15
  %i.bl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.98, i32 noundef 5) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = phi ptr [ %i.bk, %bb.h ], [ @.str.95, %bb.g ]
  %i.bn = phi ptr [ %i.bi, %bb.h ], [ @.str.95, %bb.g ]
  %i.bo = phi ptr [ %i.bj, %bb.h ], [ %i.bh, %bb.g ]
  %i.bp = phi ptr [ %i.bl, %bb.h ], [ @.str.95, %bb.g ]
  %i.bq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.99, i32 noundef 5) #15
  %i.br = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.100, i32 noundef 5) #15
  %i.bs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #15
  %i.bt = call noalias ptr (ptr, ...) @g_strjoin(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef %i.au, ptr noundef nonnull @.str.76, ptr noundef %i.av, ptr noundef nonnull @.str.78, ptr noundef %i.aw, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef %i.ax, ptr noundef nonnull @.str.81, ptr noundef %i.ay, ptr noundef nonnull @.str.77, ptr noundef %i.az, ptr noundef nonnull @.str.81, ptr noundef %i.ba, ptr noundef nonnull @.str.85, ptr noundef %i.bb, ptr noundef nonnull @.str.87, ptr noundef %i.at, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77, ptr noundef %i.bc, ptr noundef nonnull @.str.77, ptr noundef %i.bd, ptr noundef nonnull @.str.78, ptr noundef %i.be, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.85, ptr noundef %i.bf, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.81, ptr noundef %i.bg, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.74, ptr noundef %i.bn, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.81, ptr noundef %i.bo, ptr noundef nonnull @.str.77, ptr noundef %i.bm, ptr noundef nonnull @.str.77, ptr noundef %i.bp, ptr noundef nonnull @.str.81, ptr noundef %i.bq, ptr noundef nonnull @.str.77, ptr noundef %i.br, ptr noundef nonnull @.str.81, ptr noundef %i.bs, ptr noundef null) #15 ; 2 uses
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 5) #15
  %i.bu = fpext reassoc nsz arcp contract afn float %i.ac to double ; 2 uses
  %i.bv = fpext reassoc nsz arcp contract afn float %i.aa to double ; 5 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.bu, double noundef %i.bv) #15
  call void @pango_layout_set_markup(ptr noundef %i.ad, ptr noundef %i.bt, i32 noundef -1) #15
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.ad) #15
  call void @g_free(ptr noundef %i.bt) #15
  br i1 %.not27, label %_lighttable_expose_empty.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 5, float noundef 3.000000e-01) #15
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1432
  %i.by = load double, ptr %i.bx, align 8, !tbaa !110
  %i.bz = fmul reassoc nsz arcp contract afn double %i.by, 1.000000e+01
  %i.ca = fsub reassoc nsz arcp contract afn double %i.bu, %i.bz
  %i.cb = fptrunc reassoc nsz arcp contract afn double %i.ca to float ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.cc = call ptr @pango_layout_get_line_readonly(ptr noundef %i.ad, i32 noundef 5) #15
  call void @pango_layout_line_get_pixel_extents(ptr noundef %i.cc, ptr noundef null, ptr noundef nonnull %3) #15
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1416
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !235
  %i.cg = call i32 @gtk_widget_get_allocated_width(ptr noundef %i.cf) #15 ; 3 uses
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1432
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !110
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ck) #15
  call void @cairo_new_path(ptr noundef %1) #15
  %i.cl = fpext reassoc nsz arcp contract afn float %i.cb to double ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.cn = load i64, ptr %i.cm, align 8
  call fastcc void @_line_to_module(ptr noundef %1, i32 noundef %i.t, i64 %i.cn, float noundef %i.aa, double noundef 3.000000e+00, double noundef %i.cl, ptr noundef nonnull @.str.102)
  %i.co = load i32, ptr %i.cm, align 8, !tbaa !161
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.co to float
  %i.cq = fadd reassoc nsz arcp contract afn float %i.ac, %i.cp
  %i.cr = fpext reassoc nsz arcp contract afn float %i.cq to double
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1432
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !110 ; 2 uses
  %i.cv = fmul reassoc nsz arcp contract afn double %i.cu, 1.000000e+01
  %i.cw = fadd reassoc nsz arcp contract afn double %i.cv, %i.cr
  %i.cx = fmul reassoc nnan nsz arcp contract afn float %i.ab, 4.500000e-01
  %i.cy = fpext reassoc nsz arcp contract afn float %i.cx to double ; 2 uses
  %5 = load i64, ptr %i.cm, align 8
  %.sroa.2.8.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.8.extract.trunc.i.i = trunc nuw i64 %.sroa.2.8.extract.shift.i.i to i32
  %i.cz = fmul reassoc nsz arcp contract afn double %i.cu, 3.000000e+00 ; 3 uses
  call void @cairo_new_path(ptr noundef %1) #15
  %i.da = sitofp reassoc nsz arcp contract afn i32 %.sroa.2.8.extract.trunc.i.i to double
  %i.db = fmul reassoc nnan nsz arcp contract afn double %i.da, 5.500000e+00
  %i.dc = fadd reassoc nsz arcp contract afn double %i.db, %i.bv
  call void @cairo_arc(ptr noundef %1, double noundef %i.cw, double noundef %i.dc, double noundef %i.cz, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  %i.dd = fneg reassoc nsz arcp contract afn double %i.cz
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.dd, double noundef 0.000000e+00) #15
  call void @cairo_line_to(ptr noundef %1, double noundef %i.cy, double noundef 0.000000e+00) #15
  call void @cairo_arc(ptr noundef %1, double noundef %i.cy, double noundef 0.000000e+00, double noundef %i.cz, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  call void @cairo_stroke(ptr noundef %1) #15
  %i.de = load i64, ptr %i.cm, align 8
  call fastcc void @_line_to_module(ptr noundef %1, i32 noundef %i.t, i64 %i.de, float noundef %i.aa, double noundef 6.000000e+00, double noundef %i.cl, ptr noundef nonnull @.str.103)
  %i.df = shl nsw i32 %i.cg, 2
  %i.dg = sitofp reassoc nsz arcp contract afn i32 %i.df to double ; 3 uses
  %6 = load i64, ptr %i.cm, align 8
  %.sroa.2.8.extract.shift.i93.i = lshr i64 %6, 32
  %.sroa.2.8.extract.trunc.i94.i = trunc nuw i64 %.sroa.2.8.extract.shift.i93.i to i32
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1432
  %i.dj = load double, ptr %i.di, align 8, !tbaa !110
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, 3.000000e+00 ; 3 uses
  call void @cairo_new_path(ptr noundef %1) #15
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %.sroa.2.8.extract.trunc.i94.i to double
  %i.dm = fmul reassoc nnan nsz arcp contract afn double %i.dl, 1.330000e+01
  %i.dn = fadd reassoc nsz arcp contract afn double %i.dm, %i.bv
  call void @cairo_arc(ptr noundef %1, double noundef %i.dg, double noundef %i.dn, double noundef %i.dk, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  %i.do = fneg reassoc nsz arcp contract afn double %i.dk
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.do, double noundef 0.000000e+00) #15
  call void @cairo_line_to(ptr noundef %1, double noundef %i.dg, double noundef %i.y) #15
  call void @cairo_arc(ptr noundef %1, double noundef %i.dg, double noundef %i.y, double noundef %i.dk, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  call void @cairo_stroke(ptr noundef %1) #15
  %i.dp = fsub reassoc nsz arcp contract afn float %i.ab, %i.cb
  %i.dq = fpext reassoc nsz arcp contract afn float %i.dp to double ; 3 uses
  %i.dr = load i32, ptr %i.cm, align 8, !tbaa !161
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to double
  %i.dt = fmul reassoc nnan nsz arcp contract afn double %i.ds, f0x3FE6666666666666
  %i.du = fsub reassoc nsz arcp contract afn double %i.dq, %i.dt
  %i.dv = sitofp reassoc nsz arcp contract afn i32 %i.cg to double
  %i.dw = fmul reassoc nnan nsz arcp contract afn double %i.dv, 2.750000e+00
  %i.dx = fsub reassoc nsz arcp contract afn double %i.x, %i.dw ; 2 uses
  %7 = load i64, ptr %i.cm, align 8
  %.sroa.2.8.extract.shift.i95.i = lshr i64 %7, 32
  %.sroa.2.8.extract.trunc.i96.i = trunc nuw i64 %.sroa.2.8.extract.shift.i95.i to i32
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1432
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !110
  %i.eb = fmul reassoc nsz arcp contract afn double %i.ea, 3.000000e+00 ; 3 uses
  call void @cairo_new_path(ptr noundef %1) #15
  %i.ec = sitofp reassoc nsz arcp contract afn i32 %.sroa.2.8.extract.trunc.i96.i to double
  %i.ed = fmul reassoc nnan nsz arcp contract afn double %i.ec, 1.800000e+00
  %i.ee = fadd reassoc nsz arcp contract afn double %i.ed, %i.bv
  call void @cairo_arc(ptr noundef %1, double noundef %i.du, double noundef %i.ee, double noundef %i.eb, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  %i.ef = fneg reassoc nsz arcp contract afn double %i.eb
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.ef, double noundef 0.000000e+00) #15
  call void @cairo_line_to(ptr noundef %1, double noundef %i.dx, double noundef 0.000000e+00) #15
  call void @cairo_arc(ptr noundef %1, double noundef %i.dx, double noundef 0.000000e+00, double noundef %i.eb, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  call void @cairo_stroke(ptr noundef %1) #15
  %i.eg = sub nsw i32 %i.t, %i.cg
  %i.eh = sitofp reassoc nsz arcp contract afn i32 %i.eg to double ; 2 uses
  %8 = load i64, ptr %i.cm, align 8
  %.sroa.2.8.extract.shift.i97.i = lshr i64 %8, 32
  %.sroa.2.8.extract.trunc.i98.i = trunc nuw i64 %.sroa.2.8.extract.shift.i97.i to i32
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1432
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !110
  %i.el = fmul reassoc nsz arcp contract afn double %i.ek, 3.000000e+00 ; 3 uses
  call void @cairo_new_path(ptr noundef %1) #15
  %i.em = sitofp reassoc nsz arcp contract afn i32 %.sroa.2.8.extract.trunc.i98.i to double
  %i.en = fmul reassoc nnan nsz arcp contract afn double %i.em, 8.500000e+00
  %i.eo = fadd reassoc nsz arcp contract afn double %i.en, %i.bv
  call void @cairo_arc(ptr noundef %1, double noundef %i.dq, double noundef %i.eo, double noundef %i.el, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  %i.ep = fneg reassoc nsz arcp contract afn double %i.el
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.ep, double noundef 0.000000e+00) #15
  call void @cairo_line_to(ptr noundef %1, double noundef %i.eh, double noundef 0.000000e+00) #15
  call void @cairo_arc(ptr noundef %1, double noundef %i.eh, double noundef 0.000000e+00, double noundef %i.el, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #15
  call void @cairo_stroke(ptr noundef %1) #15
  %i.eq = load i64, ptr %i.cm, align 8
  call fastcc void @_line_to_module(ptr noundef %1, i32 noundef %i.t, i64 %i.eq, float noundef %i.aa, double noundef 1.100000e+01, double noundef %i.dq, ptr noundef nonnull @.str.104)
  call void @pango_layout_set_text(ptr noundef %i.ad, ptr noundef %i.at, i32 noundef -1) #15
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ad, ptr noundef null, ptr noundef nonnull %i.er) #15
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.et = load i32, ptr %i.es, align 4, !tbaa !236
  %i.eu = mul nsw i32 %i.et, 5
  %i.ev = sitofp reassoc nsz arcp contract afn i32 %i.eu to float
  %i.ew = fmul reassoc nnan nsz arcp contract afn float %i.ab, f0x3F733333
  %i.ex = fadd reassoc nsz arcp contract afn float %i.aa, %i.ev
  %i.ey = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ex, i64 1
  %i.fa = fptosi <2 x float> %i.ez to <2 x i32>
  store <2 x i32> %i.fa, ptr %i.er, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_lighttable_expose_empty.exit

_lighttable_expose_empty.exit:                    ; preds = %bb.i, %bb.j
  call void @pango_font_description_free(ptr noundef %i.ah) #15
  call void @g_object_unref(ptr noundef %i.ad) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge

bb.k:                                             ; preds = %bb.e
  tail call void @dt_thumbtable_full_redraw(ptr noundef nonnull %2, i32 noundef 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_lighttable_expose_empty.exit, %bb.k, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %bb.k ], [ 1, %_lighttable_expose_empty.exit ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_event_leave_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @gtk_widget_is_visible(ptr noundef %0) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 0, ptr %i.b, align 4, !tbaa !36
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !163
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !237
  switch i32 %i.g, label %bb.e [
    i32 3, label %bb.f
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 0, ptr %i.h, align 4, !tbaa !36
  tail call void @dt_control_set_mouse_over_id(i32 noundef 0) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_event_enter_notify(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call void @dt_set_backthumb_time(double noundef 0.000000e+00) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !163
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_set_mouse_over_id(i32 noundef 0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_event_button_press(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  tail call void @dt_set_backthumb_time(double noundef 0.000000e+00) #15
  %i.a = tail call i32 @dt_control_get_mouse_over_id() #15 ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0                     ; 3 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !166
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 8, !tbaa !167    ; 2 uses
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %2, align 8, !tbaa !18
  switch i32 %i.h, label %.thread [
    i32 1, label %bb.e
    i32 3, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.j = tail call i32 @dt_view_manager_switch(ptr noundef %i.i, ptr noundef nonnull @.str.105) #15 ; 0 uses
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i32 @dt_view_get_current() #15
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !103  ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @g_source_remove(i32 noundef %i.n) #15 ; 0 uses
  store i32 0, ptr %i.m, align 4, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 -1, ptr %i.p, align 8, !tbaa !104
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1552
  %i.t = load i32, ptr %i.s, align 16, !tbaa !193
  tail call void @dt_selection_deselect(ptr noundef %i.q, i32 noundef %i.t) #15
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !168
  tail call void @dt_selection_select(ptr noundef %i.u, i32 noundef %i.a) #15
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !99
  %i.w = trunc i32 %i.v to i1
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3340), align 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !100
  %i.aa = and i32 %i.z, 1048576
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.27, i32 noundef 1449, ptr noundef nonnull @__FUNCTION__._event_button_press) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !101
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ab, i32 noundef 6, i32 noundef %i.a) #15
  br label %.thread57

thread-pre-split:                                 ; preds = %bb.f, %bb.e
  %.pr = load i32, ptr %1, align 8, !tbaa !167
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.c
  %i.ac = phi i32 [ %.pr, %thread-pre-split ], [ %i.f, %bb.c ]
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr %2, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %.thread57, label %.thread

.thread:                                          ; preds = %bb.d, %bb.m, %bb.n, %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !166
  %i.ai = icmp eq i32 %i.ah, 1
end_hunk_0
