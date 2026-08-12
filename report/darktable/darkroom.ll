inline.NumInlined: 177
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@expose:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi float [ 1.010000e+00, %bb.f ], [ %.pr, %bb.e ]
  %i.ah = phi float [ 0.000000e+00, %bb.f ], [ %i.ad, %bb.e ]
  %.0258334 = phi float [ %.0258335, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %.0259332 = phi float [ %.0259333, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.ai = load float, ptr %i.d, align 4, !tbaa !153 ; 2 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, f0x3F733333
  br i1 %i.aj, label %bb.h, label %._crit_edge361

._crit_edge361:                                   ; preds = %bb.g
  %.pre = load float, ptr %i.b, align 4, !tbaa !153
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ai, 5.000000e-01
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !153
  store float 1.010000e+00, ptr %i.d, align 4, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge361, %bb.h
  %i.al = phi float [ %i.ak, %._crit_edge361 ], [ 5.050000e-01, %bb.h ] ; 2 uses
  %i.am = phi float [ %.pre, %._crit_edge361 ], [ 0.000000e+00, %bb.h ]
  %i.an = fmul reassoc nsz arcp contract afn float %i.ag, 5.000000e-01 ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, -5.000000e-01
  %i.ap = fadd reassoc nsz arcp contract afn float %i.al, -5.000000e-01
  call void @dt_view_set_scrollbar(ptr noundef nonnull %0, float noundef %i.ah, float noundef %i.ao, float noundef 5.000000e-01, float noundef %i.an, float noundef %i.am, float noundef %i.ap, float noundef 5.000000e-01, float noundef %i.al) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 2760 ; 11 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !138 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 360 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !154
  %.not284 = icmp eq ptr %i.at, null
  br i1 %.not284, label %..thread336_crit_edge, label %bb.j

..thread336_crit_edge:                            ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 1552
  %.pre362 = load i32, ptr %.phi.trans.insert, align 16, !tbaa !155
  br label %.thread336

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 604
  %i.av = load i32, ptr %i.au, align 4, !tbaa !156
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 1552
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !155 ; 2 uses
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %.thread336

bb.k:                                             ; preds = %bb.j
  %i.az = sext i32 %2 to i64
  %i.ba = sext i32 %3 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 464 ; 2 uses
  %i.bc = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bb) #16 ; 0 uses
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 384
  %i.bf = load float, ptr %i.be, align 16, !tbaa !157
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 376
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !158
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 380
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !159
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 388
  call void @dt_view_paint_surface(ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %i.az, i64 noundef range(i64 -2147483648, 2147483648) %i.ba, ptr noundef nonnull %i.m, i32 noundef 0, ptr noundef %i.bd, float noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bj, ptr noundef nonnull %i.bk) #16
  %i.bl = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bb) #16 ; 0 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !160 ; 2 uses
  %.not290 = icmp eq ptr %i.bo, null
  br i1 %.not290, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @cairo_surface_destroy(ptr noundef nonnull %i.bo) #16
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  store ptr null, ptr %i.bq, align 8, !tbaa !160
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.6) #16
  %.not291 = icmp eq i32 %i.br, 0
  br i1 %.not291, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.bs = call ptr @cairo_get_target(ptr noundef %1) #16 ; 2 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !160
  %i.bv = call ptr @cairo_surface_reference(ptr noundef %i.bs) #16 ; 0 uses
  br label %bb.aa

.thread336:                                       ; preds = %..thread336_crit_edge, %bb.j
  %i.bw = phi i32 [ %.pre362, %..thread336_crit_edge ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 604
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !156
  %.not285 = icmp eq i32 %i.ca, %i.bw
  br i1 %.not285, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %.thread336
  %i.cb = call ptr @dt_image_cache_get(i32 noundef %i.bw, i8 noundef signext 114) #16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1876
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !166
  call void @dt_image_cache_read_release(ptr noundef %i.cb) #16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !167
  %.not286 = icmp eq i32 %i.cf, 0
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1432
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !168 ; 2 uses
  br i1 %.not286, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, 1.600000e+01 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 1236
  %switch.tableidx = add i32 %i.cd, -1            ; 2 uses
  %i.cl = icmp ult i32 %switch.tableidx, 7
  br i1 %i.cl, label %switch.lookup, label %bb.q

switch.lookup:                                    ; preds = %bb.p
  %i.cm = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.expose, i64 %i.cm
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup
  %.str.13.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.13, %bb.p ]
  %i.cn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.13.sink, i32 noundef 5) #16
  %i.co = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.cn, ptr noundef nonnull %i.ck) #16 ; 3 uses
  %i.cp = load i32, ptr %i.ce, align 8, !tbaa !167
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.r, label %g_strdup_inline.exit

bb.r:                                             ; preds = %bb.q
  call void @g_usleep(i64 noundef 1000000) #16
  %i.cr = load i32, ptr %i.ce, align 8, !tbaa !167
  %i.cs = icmp sgt i32 %i.cr, 8
  br i1 %i.cs, label %.critedge, label %g_strdup_inline.exit

.critedge:                                        ; preds = %bb.r
  store i32 0, ptr %i.ce, align 8, !tbaa !167
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !64
  %i.cu = call i32 @dt_view_manager_switch(ptr noundef %i.ct, ptr noundef nonnull @.str.14) #16 ; 0 uses
  call void @g_free(ptr noundef %i.co) #16
  br label %bb.cc

bb.s:                                             ; preds = %bb.o
  %i.cv = fmul reassoc nsz arcp contract afn double %i.ci, 1.400000e+01 ; 2 uses
  %i.cw = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.6) #16
  %.not287 = icmp eq i32 %i.cw, 0
  br i1 %.not287, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 9) #16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 1236
  %i.cz = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.cx, ptr noundef nonnull %i.cy) #16
  br label %g_strdup_inline.exit

bb.u:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 1236
  %i.db = call noalias ptr @g_strdup(ptr noundef nonnull %i.da) #16
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.u, %bb.t, %bb.q, %bb.r
  %.0263.in = phi double [ %i.cj, %bb.r ], [ %i.cj, %bb.q ], [ %i.cv, %bb.t ], [ %i.cv, %bb.u ]
  %.1262 = phi ptr [ %i.co, %bb.r ], [ %i.co, %bb.q ], [ %i.cz, %bb.t ], [ %i.db, %bb.u ] ; 3 uses
  %i.dc = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.6) #16
  %.not288 = icmp eq i32 %i.dc, 0
  br i1 %.not288, label %bb.w, label %bb.v

bb.v:                                             ; preds = %g_strdup_inline.exit
  %.0263 = fptrunc double %.0263.in to float      ; 2 uses
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 1) #16
  call void @cairo_paint(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !169
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 336
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !170
  %i.dg = call ptr @pango_font_description_copy_static(ptr noundef %i.df) #16 ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %.0263, 1.024000e+03
  %i.di = fpext reassoc nsz arcp contract afn float %i.dh to double
  call void @pango_font_description_set_absolute_size(ptr noundef %i.dg, double noundef %i.di) #16
  call void @pango_font_description_set_weight(ptr noundef %i.dg, i32 noundef 700) #16
  %i.dj = call ptr @pango_cairo_create_layout(ptr noundef %1) #16 ; 5 uses
  call void @pango_layout_set_font_description(ptr noundef %i.dj, ptr noundef %i.dg) #16
  call void @pango_layout_set_text(ptr noundef %i.dj, ptr noundef %.1262, i32 noundef -1) #16
  call void @pango_layout_get_pixel_extents(ptr noundef %i.dj, ptr noundef nonnull %6, ptr noundef null) #16
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.dm = fmul reassoc nnan nsz arcp contract afn double %i.dl, 8.800000e-01
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1432
  %i.dp = load double, ptr %i.do, align 8, !tbaa !168
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !177
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to double
  %i.dt = fsub reassoc nnan nsz arcp contract afn double %i.dk, %i.ds
  %i.du = fmul reassoc nnan nsz arcp contract afn double %i.dt, 5.000000e-01
  %i.dv = fpext reassoc nsz arcp contract afn float %.0263 to double
  %.neg356 = fmul reassoc nsz arcp contract afn double %i.dp, -1.000000e+01
  %i.dw = fmul reassoc nsz arcp contract afn double %i.dv, f0xBFE5555555555556
  %i.dx = fadd reassoc nsz arcp contract afn double %i.dm, %i.dw
  %i.dy = fadd reassoc nsz arcp contract afn double %.neg356, %i.dx
  call void @cairo_move_to(ptr noundef %1, double noundef %i.du, double noundef %i.dy) #16
  call void @pango_cairo_layout_path(ptr noundef %1, ptr noundef %i.dj) #16
  call void @cairo_set_line_width(ptr noundef %1, double noundef 2.000000e+00) #16
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 29) #16
  call void @cairo_stroke_preserve(ptr noundef %1) #16
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 30) #16
  call void @cairo_fill(ptr noundef %1) #16
  call void @pango_font_description_free(ptr noundef %i.dg) #16
  call void @g_object_unref(ptr noundef %i.dj) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.z

bb.w:                                             ; preds = %g_strdup_inline.exit
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !160
  %.not289 = icmp eq ptr %i.eb, null
  br i1 %.not289, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @cairo_save(ptr noundef %1) #16
  call void @cairo_identity_matrix(ptr noundef %1) #16
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !160
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ee, double noundef 0.000000e+00, double noundef 0.000000e+00) #16
  call void @cairo_paint(ptr noundef %1) #16
  call void @cairo_restore(ptr noundef %1) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void (ptr, ...) @dt_toast_log(ptr noundef nonnull @.str.16, ptr noundef %.1262) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  call void @g_free(ptr noundef %.1262) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread336, %bb.m, %bb.n
  %i.ef = phi i1 [ false, %bb.z ], [ false, %.thread336 ], [ true, %bb.m ], [ true, %bb.n ]
  %i.eg = load ptr, ptr %i.aq, align 8, !tbaa !124 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 348
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !179
  switch i32 %i.ei, label %_full_request.exit [
    i32 0, label %_full_request.exit.thread
    i32 3, label %_full_request.exit.thread
  ]

_full_request.exit:                               ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 636
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !180
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.em = load ptr, ptr %i.el, align 16, !tbaa !123 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 636
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !180
  %.not352 = icmp slt i32 %i.ek, %i.eo
  br i1 %.not352, label %_full_request.exit.thread, label %bb.ab

_full_request.exit.thread:                        ; preds = %bb.aa, %bb.aa, %_full_request.exit
  call void @dt_dev_process_image(ptr noundef nonnull %i.l) #16
  %.phi.trans.insert363 = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %.pre364 = load ptr, ptr %.phi.trans.insert363, align 16, !tbaa !123
  br label %bb.ab

bb.ab:                                            ; preds = %_full_request.exit.thread, %_full_request.exit
  %i.ep = phi ptr [ %.pre364, %_full_request.exit.thread ], [ %i.em, %_full_request.exit ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 348
  %i.es = load i32, ptr %i.er, align 4, !tbaa !179
  switch i32 %i.es, label %_preview_request.exit [
    i32 0, label %_preview_request.exit.thread
    i32 3, label %_preview_request.exit.thread
  ]

_preview_request.exit:                            ; preds = %bb.ab
  %i.et = load ptr, ptr %i.aq, align 8, !tbaa !124
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 636
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !180
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 636
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !180
  %.not353 = icmp sgt i32 %i.ev, %i.ex
  br i1 %.not353, label %_preview_request.exit.thread, label %bb.ac

_preview_request.exit.thread:                     ; preds = %bb.ab, %bb.ab, %_preview_request.exit
  call void @dt_dev_process_preview(ptr noundef nonnull %i.l) #16
  br label %bb.ac

bb.ac:                                            ; preds = %_preview_request.exit.thread, %_preview_request.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 2784
  %i.ez = getelementptr inbounds nuw i8, ptr %i.l, i64 2864
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !118 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 348
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !179
  switch i32 %i.fc, label %bb.ad [
    i32 0, label %bb.ae
    i32 3, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.fd = load ptr, ptr %i.aq, align 8, !tbaa !124
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 636
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !180
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 636
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !180
  %i.fi = icmp sgt i32 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ae, label %_preview2_request.exit.thread

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ac
  %i.fj = load i32, ptr %i.l, align 16, !tbaa !181
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %_preview2_request.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = load ptr, ptr %i.ey, align 16, !tbaa !122 ; 3 uses
  %.not17.i = icmp eq ptr %i.fk, null
  br i1 %.not17.i, label %_preview2_request.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = tail call i64 @gtk_widget_get_type() #17 ; 2 uses
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !182 ; 2 uses
  %.not18.i = icmp eq ptr %i.fm, null
  br i1 %.not18.i, label %_preview2_request.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !185
  %i.fo = icmp eq i64 %i.fn, %i.fl
  br i1 %i.fo, label %_preview2_request.exit.thread340, label %_preview2_request.exit

_preview2_request.exit:                           ; preds = %bb.ag, %bb.ah
  %i.fp = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.fk, i64 noundef %i.fl) #18
  %.not354 = icmp eq i32 %i.fp, 0
  br i1 %.not354, label %_preview2_request.exit.thread, label %_preview2_request.exit.thread340

_preview2_request.exit.thread340:                 ; preds = %bb.ah, %_preview2_request.exit
  call void @dt_dev_process_preview2(ptr noundef nonnull %i.l) #16
  br label %_preview2_request.exit.thread

_preview2_request.exit.thread:                    ; preds = %bb.ad, %bb.ae, %bb.af, %_preview2_request.exit.thread340, %_preview2_request.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 2184
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !187
  %.not295 = icmp eq i32 %i.fr, 0
  br i1 %.not295, label %bb.ai, label %bb.cc

bb.ai:                                            ; preds = %_preview2_request.exit.thread
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !123
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 156
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !188
  %.not296 = icmp eq i32 %i.fw, 0
  br i1 %.not296, label %bb.cc, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.fx = call i32 @dt_dev_get_preview_size(ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  %.not297 = icmp eq i32 %i.fx, 0
  br i1 %.not297, label %bb.cb, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.l, i64 2704
  %i.fz = load i32, ptr %i.fy, align 16, !tbaa !189
  %i.ga = sitofp reassoc nsz arcp contract afn i32 %i.fz to double ; 4 uses
  call void @cairo_save(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store float f0x7F7FFFFF, ptr %i.g, align 4, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.l, i64 2740
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !190
  %i.gd = getelementptr inbounds nuw i8, ptr %i.l, i64 2744
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !191
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale(ptr noundef nonnull %i.m, i32 noundef %i.gc, i32 noundef %i.gf, i32 noundef 1) #16 ; 5 uses
  store float %i.gg, ptr %i.i, align 4, !tbaa !153
  %i.gh = load ptr, ptr %i.aq, align 8, !tbaa !124 ; 2 uses
  %.not298 = icmp eq ptr %i.gh, null
  br i1 %.not298, label %.thread342, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 144
  %i.gj = load <2 x i32>, ptr %i.gi, align 16, !tbaa !87
  %i.gk = sitofp <2 x i32> %i.gj to <2 x float>
  br label %.thread342

.thread342:                                       ; preds = %bb.ak, %bb.al
  %i.gl = phi <2 x float> [ %i.gk, %bb.al ], [ splat (float 1.000000e+00), %bb.ak ]
  %i.gm = load ptr, ptr %i.eq, align 16, !tbaa !123 ; 3 uses
  %.not300 = icmp eq ptr %i.gm, null
  br i1 %.not300, label %.thread343, label %bb.am

bb.am:                                            ; preds = %.thread342
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 144
  %i.go = load <2 x i32>, ptr %i.gn, align 16, !tbaa !87
  %i.gp = sitofp <2 x i32> %i.go to <2 x float>
  br label %.thread343

.thread343:                                       ; preds = %.thread342, %bb.am
  %i.gq = phi <2 x float> [ %i.gp, %bb.am ], [ splat (float 1.000000e+00), %.thread342 ]
end_hunk_0
begin_hunk_1_@_darkroom_pickers_draw:bb.a
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !207 ; 2 uses
  %.not93 = icmp eq ptr %i.ec, null
  br i1 %.not93, label %bb.x, label %bb.e

bb.x:                                             ; preds = %bb.w
  call void @cairo_restore(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  ret void
}

declare i32 @dt_iop_color_picker_is_visible(ptr noundef) local_unnamed_addr #4

declare i32 @dt_dev_modulegroups_test_activated(ptr noundef) local_unnamed_addr #4

declare i32 @dt_lib_gui_get_expanded(ptr noundef) local_unnamed_addr #4

declare ptr @dt_lib_get_module(ptr noundef) local_unnamed_addr #4

declare void @dt_masks_events_post_expose(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_get_zoom_pos_bnd(ptr noundef %0, double noundef %1, double noundef %2, float noundef %3, float noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) unnamed_addr #1 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn oeq float %3, f0x7F7FFFFF
  %i.b = fptrunc reassoc nsz arcp contract afn double %1 to float ; 2 uses
  %i.c = fptrunc reassoc nsz arcp contract afn double %2 to float ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_dev_get_pointer_zoom_pos(ptr noundef %0, float noundef %i.b, float noundef %i.c, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @dt_dev_get_pointer_zoom_pos_from_bounds(ptr noundef %0, float noundef %i.b, float noundef %i.c, float noundef %3, float noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_module_gui_post_expose(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !221
  %i.c = icmp eq ptr %i.b, null
  %i.d = fcmp reassoc nsz arcp contract afn olt float %2, 1.000000e+00
  %or.cond = or i1 %i.d, %i.c
  %i.e = fcmp reassoc nsz arcp contract afn olt float %3, 1.000000e+00
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cairo_save(ptr noundef %1) #16
  %i.f = load ptr, ptr %i.a, align 16, !tbaa !221
  tail call void %i.f(ptr noundef nonnull %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) #16
  tail call void @cairo_restore(ptr noundef %1) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #4

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @reset(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2680
  tail call void @dt_dev_zoom_move(ptr noundef nonnull %i.b, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0, float noundef -1.000000e+00, float noundef -1.000000e+00, i32 noundef 1) #16
  ret void
}

declare void @dt_dev_zoom_move(ptr noundef, i32 noundef, float noundef, i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @try_enter(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 (...) @dt_act_on_get_main_image() #16 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #16
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.e) #16
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 1) #16
  %i.f = tail call ptr @dt_image_cache_get(i32 noundef %i.c, i8 noundef signext 114) #16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 1, ptr %i.b, align 4, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1440
  %i.h = load i32, ptr %i.g, align 16, !tbaa !234
  call void @dt_image_full_path(i32 noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull %i.b) #16
  %i.i = call i32 @g_file_test(ptr noundef nonnull %i.a, i32 noundef 1) #16
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1124
  call void (ptr, ...) @dt_control_log(ptr noundef %i.j, ptr noundef nonnull %i.k) #16
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.f) #16
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1876
  %i.m = load i32, ptr %i.l, align 4, !tbaa !166
  switch i32 %i.m, label %bb.f [
    i32 0, label %bb.n
    i32 1, label %bb.m
    i32 8, label %bb.l
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.str.37.sink = phi ptr [ @.str.37, %bb.l ], [ @.str.36, %bb.k ], [ @.str.35, %bb.j ], [ @.str.34, %bb.i ], [ @.str.33, %bb.h ], [ @.str.32, %bb.g ], [ @.str.31, %bb.f ], [ @.str.30, %bb.e ]
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.37.sink, i32 noundef 5) #16
  %i.o = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1124
  call void (ptr, ...) @dt_control_log(ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.n) #16
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.f) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.f) #16
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1552
  store i32 %i.c, ptr %i.r, align 16, !tbaa !155
  call void @dt_dev_reset_chroma(ptr noundef %i.q) #16
  %i.s = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.39) #16
  %i.t = icmp sgt i32 %i.s, 1
  %i.u = zext i1 %i.t to i32
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i32 %i.u, ptr %i.w, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.x = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #16 ; 0 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !236
  %i.z = add nsw i64 %i.y, -1290608000
  %i.aa = sitofp reassoc nsz arcp contract afn i64 %i.z to double
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !238
  %i.ad = sitofp reassoc nsz arcp contract afn i64 %i.ac to double
  %i.ae = fmul reassoc nnan nsz arcp contract afn double %i.ad, f0x3EB0C6F7A0B5ED8D
  %2 = fadd reassoc nsz arcp contract afn double %i.ae, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.af = fadd reassoc nsz arcp contract afn double %2, 1.000000e+01
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store double %i.af, ptr %i.ah, align 16, !tbaa !239
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.d
  %.012 = phi i32 [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %.1 = phi i32 [ %.012, %bb.o ], [ 1, %bb.b ]
  ret i32 %.1
}

declare i32 @dt_act_on_get_main_image(...) local_unnamed_addr #4

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #4

declare void @dt_stop_backthumbs_crawler(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @dt_image_full_path(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_dev_reset_chroma(ptr noundef) local_unnamed_addr #4

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal float @_action_process_skip_mouse(ptr nofree readnone captures(none) %0, i32 %1, i32 noundef %2, float noundef %3) #7 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn une float %3, f0xFF7FFFFF
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11 ; 3 uses
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2892 ; 2 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.e
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !240
  %i.e = xor i32 %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.sink = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ %2, %bb.b ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !240
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %i.h = load i32, ptr %i.g, align 8, !tbaa !241
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2892
  store i32 0, ptr %i.i, align 4, !tbaa !240
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.e, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2892
  %i.k = load i32, ptr %i.j, align 4, !tbaa !240
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to float
  ret float %i.l
}

; Function Attrs: nounwind uwtable
define internal float @_action_process_preview(ptr nofree readnone captures(none) %0, i32 %1, i32 noundef %2, float noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 7 uses
  %i.f = fcmp reassoc nsz arcp contract afn une float %3, f0xFF7FFFFF
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2184 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !187
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp eq i32 %2, 1
  br i1 %.not28, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !242
  tail call void @dt_ui_restore_panels(ptr noundef %i.j) #16
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  tail call void @dt_dev_zoom_move(ptr noundef nonnull %i.l, i32 noundef 8, float noundef 0.000000e+00, i32 noundef 0, float noundef -1.000000e+00, float noundef -1.000000e+00, i32 noundef 1) #16
  store i32 0, ptr %i.g, align 8, !tbaa !187
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2208
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !243
  tail call void @dt_iop_request_focus(ptr noundef %i.n) #16
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %dt_dev_gui_module.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !208
  br label %dt_dev_gui_module.exit

dt_dev_gui_module.exit:                           ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2216
  %i.t = load i32, ptr %i.s, align 8, !tbaa !244
  tail call void @dt_masks_set_edit_mode(ptr noundef %i.r, i32 noundef %i.t) #16
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  tail call void @dt_dev_invalidate(ptr noundef %i.u) #16
  tail call void @dt_control_queue_redraw_center() #16
  tail call void @dt_control_navigation_redraw() #16
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %.not23 = icmp eq i32 %2, 2
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 348
  %i.y = load i32, ptr %i.x, align 4, !tbaa !179
  switch i32 %i.y, label %bb.h [
    i32 0, label %bb.k
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !187
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !242
  tail call void @dt_ui_panel_show(ptr noundef %i.aa, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !242
  tail call void @dt_ui_panel_show(ptr noundef %i.ac, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !242
  tail call void @dt_ui_panel_show(ptr noundef %i.ae, i32 noundef 2, i32 noundef 0, i32 noundef 0) #16
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !242
  tail call void @dt_ui_panel_show(ptr noundef %i.ag, i32 noundef 3, i32 noundef 0, i32 noundef 0) #16
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !242
  tail call void @dt_ui_panel_show(ptr noundef %i.ai, i32 noundef 4, i32 noundef 0, i32 noundef 0) #16
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !242
  tail call void @dt_ui_panel_show(ptr noundef %i.ak, i32 noundef 5, i32 noundef 0, i32 noundef 0) #16
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11 ; 3 uses
  %.not.i29 = icmp eq ptr %i.al, null
  br i1 %.not.i29, label %dt_dev_gui_module.exit30.thread, label %dt_dev_gui_module.exit30

dt_dev_gui_module.exit30:                         ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !208 ; 4 uses
  %.not26 = icmp eq ptr %i.an, null
  br i1 %.not26, label %dt_dev_gui_module.exit30.thread, label %bb.i

bb.i:                                             ; preds = %dt_dev_gui_module.exit30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 784
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !245 ; 2 uses
  %.not27 = icmp eq ptr %i.ap, null
  br i1 %.not27, label %dt_dev_gui_module.exit30.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 600
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !246
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2216
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !244
  br label %dt_dev_gui_module.exit30.thread

dt_dev_gui_module.exit30.thread:                  ; preds = %bb.h, %bb.i, %bb.j, %dt_dev_gui_module.exit30
  %i.at = phi ptr [ null, %dt_dev_gui_module.exit30 ], [ %i.an, %bb.i ], [ %i.an, %bb.j ], [ null, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 2680
  tail call void @dt_dev_zoom_move(ptr noundef nonnull %i.au, i32 noundef 7, float noundef 0.000000e+00, i32 noundef 0, float noundef -1.000000e+00, float noundef -1.000000e+00, i32 noundef 1) #16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 2208
  store ptr %i.at, ptr %i.av, align 16, !tbaa !243
  tail call void @dt_iop_request_focus(ptr noundef null) #16
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !242
  %i.ay = tail call ptr @dt_ui_center(ptr noundef %i.ax) #16
  tail call void @gtk_widget_grab_focus(ptr noundef %i.ay) #16
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  tail call void @dt_dev_invalidate(ptr noundef %i.az) #16
  tail call void @dt_control_queue_redraw_center() #16
  br label %bb.k
end_hunk_1
begin_hunk_2_@_dev_change_image:bb.a
  br i1 %.not, label %bb.b, label %dt_check_gimpmode.exit.thread

bb.b:                                             ; preds = %dt_check_gimpmode.exit
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.218, i32 noundef 5) #16
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.d) #16
  br label %bb.y

dt_check_gimpmode.exit.thread:                    ; preds = %bb.a, %dt_check_gimpmode.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !387
  tail call void @g_slist_free(ptr noundef %i.g) #16
  %i.h = sext i32 %1 to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @g_slist_prepend(ptr noundef null, ptr noundef %i.i) #16
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !387
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !288
  %i.n = trunc i32 %i.m to i1
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3320), align 8
  %i.p = icmp ne i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %dt_check_gimpmode.exit.thread
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !204
  %i.r = and i32 %i.q, 1048576
  %.not28 = icmp eq i32 %i.r, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.140, i32 noundef 1063, ptr noundef nonnull @__FUNCTION__._dev_change_image) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %dt_check_gimpmode.exit.thread
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !299
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.s, i32 noundef 1) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 3 uses
  %i.u = load i32, ptr %i.t, align 16, !tbaa !344
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !204
  %i.x = and i32 %i.w, 256
  %.not29 = icmp eq i32 %i.x, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.140, i32 noundef 1076, ptr noundef nonnull @__FUNCTION__._dev_change_image, ptr noundef nonnull @.str.221) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !345
  %i.z = tail call ptr @dt_database_get(ptr noundef %i.y) #16
  %i.aa = call i32 @sqlite3_prepare_v2(ptr noundef %i.z, ptr noundef nonnull @.str.221, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #16
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !346
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !345
  %i.ad = call ptr @dt_database_get(ptr noundef %i.ac) #16
  %i.ae = call ptr @sqlite3_errmsg(ptr noundef %i.ad) #16
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.140, i32 noundef 1076, ptr noundef nonnull @__FUNCTION__._dev_change_image, ptr noundef nonnull @.str.221, ptr noundef %i.ae) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !348
  %i.ah = call i32 @sqlite3_step(ptr noundef %i.ag) #16
  %i.ai = icmp eq i32 %i.ah, 100
  br i1 %i.ai, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !348
  %i.ak = call i32 @sqlite3_column_int(ptr noundef %i.aj, i32 noundef 0) #16
  %i.al = load i32, ptr %i.t, align 16, !tbaa !344
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !348
  %i.ao = call i32 @sqlite3_step(ptr noundef %i.an) #16
  %.not31 = icmp eq i32 %i.ao, 100
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !348
  %i.aq = call i32 @sqlite3_finalize(ptr noundef %i.ap) #16 ; 0 uses
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 168), align 8, !tbaa !325
  call void @dt_selection_select_single(ptr noundef %i.ar, i32 noundef %1) #16
  br label %bb.n

.critedge:                                        ; preds = %bb.k, %bb.j
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !348
  %i.at = call i32 @sqlite3_finalize(ptr noundef %i.as) #16 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !192
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !360 ; 2 uses
  %.not33 = icmp eq ptr %i.aw, null
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !361
  call void @dt_iop_color_picker_reset(ptr noundef %i.ax, i32 noundef 0) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !123 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 360
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154
  %.not34 = icmp eq ptr %i.bb, null
  br i1 %.not34, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 348
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !179
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 376
  %i.bg = load <2 x i32>, ptr %i.bf, align 8, !tbaa !87
  %i.bh = sitofp <2 x i32> %i.bg to <2 x float>   ; 2 uses
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.bh, %shift
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 2096
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !363
  call void @dt_image_set_aspect_ratio_to(i32 noundef %i.bk, float noundef %i.bi, i32 noundef 1) #16
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.bm = load i32, ptr %i.bl, align 16, !tbaa !155
  %i.bn = call reassoc nsz arcp contract afn float @dt_image_set_aspect_ratio(i32 noundef %i.bm, i32 noundef 1) #16 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 84
  store i32 1, ptr %i.bp, align 4, !tbaa !329
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bq, null
  br i1 %.not.i38, label %dt_dev_gui_module.exit.thread, label %dt_dev_gui_module.exit

dt_dev_gui_module.exit:                           ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !208 ; 2 uses
  %.not35 = icmp eq ptr %i.bs, null
  br i1 %.not35, label %dt_dev_gui_module.exit.thread, label %bb.v

bb.v:                                             ; preds = %dt_dev_gui_module.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 456
  call void @dt_conf_set_string(ptr noundef nonnull @.str.181, ptr noundef nonnull %i.bt) #16
  br label %dt_dev_gui_module.exit.thread

dt_dev_gui_module.exit.thread:                    ; preds = %bb.u, %bb.v, %dt_dev_gui_module.exit
  %i.bu = call i32 @dt_dev_modulegroups_get(ptr noundef nonnull %0) #16
  call void @dt_conf_set_int(ptr noundef nonnull @.str.185, i32 noundef %i.bu) #16
  call void @dt_iop_request_focus(ptr noundef null) #16
  %i.bv = load i32, ptr %0, align 16, !tbaa !181
  %.not36 = icmp eq i32 %i.bv, 0
  br i1 %.not36, label %bb.w, label %bb.x, !prof !388

bb.w:                                             ; preds = %dt_dev_gui_module.exit.thread
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.140, i32 noundef 1128, ptr noundef nonnull @__FUNCTION__._dev_change_image, ptr noundef nonnull @.str.223) #21
  unreachable

bb.x:                                             ; preds = %dt_dev_gui_module.exit.thread
  call void @dt_dev_write_history(ptr noundef nonnull %0) #16
  store i32 %1, ptr %i.t, align 16, !tbaa !344
  call void @dt_dev_clear_chroma_troubles(ptr noundef nonnull %0) #16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3672), align 8, !tbaa !337
  call fastcc void @_refresh_active_image_rowid(i32 noundef %1)
  %i.bw = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.39) #16
  %i.bx = icmp sgt i32 %i.bw, 1
  %i.by = zext i1 %i.bx to i32
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store i32 %i.by, ptr %i.ca, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.cb = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #16 ; 0 uses
  %i.cc = load i64, ptr %2, align 8, !tbaa !236
  %i.cd = add nsw i64 %i.cc, -1290608000
  %i.ce = sitofp reassoc nsz arcp contract afn i64 %i.cd to double
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !238
  %i.ch = sitofp reassoc nsz arcp contract afn i64 %i.cg to double
  %i.ci = fmul reassoc nnan nsz arcp contract afn double %i.ch, f0x3EB0C6F7A0B5ED8D
  %3 = fadd reassoc nsz arcp contract afn double %i.ci, %i.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.cj = fadd reassoc nsz arcp contract afn double %3, 1.000000e+01
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store double %i.cj, ptr %i.cl, align 16, !tbaa !239
  %i.cm = call i32 @g_idle_add(ptr noundef nonnull @_dev_load_requested_image, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  ret void
}

declare i32 @luaA_push_type(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @g_slist_free(ptr noundef) local_unnamed_addr #4

declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #4

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #4

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #4

declare void @dt_selection_select_single(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @dt_dev_clear_chroma_troubles(ptr noundef) local_unnamed_addr #4

declare i32 @g_idle_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_dev_load_requested_image(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.c = load i32, ptr %i.b, align 16, !tbaa !344 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.f = load i32, ptr %i.e, align 16, !tbaa !155
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp eq i32 %i.c, 0
  %or.cond186 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond186, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #16
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.c to i64
  %i.n = inttoptr i64 %i.m to ptr
  tail call void (ptr, i32, ptr, i32, ptr, ptr, i32, ...) @dt_lua_async_call_alien_internal(ptr noundef nonnull @__FUNCTION__._fire_darkroom_image_loaded_event, i32 noundef 1042, ptr noundef nonnull @dt_lua_event_trigger_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.260, i32 noundef 2, ptr noundef nonnull @.str.261, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef %i.n, i32 noundef 4) #16
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 424
  %i.r = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.q) #16
  %.not162 = icmp eq i32 %i.r, 0
  br i1 %.not162, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.i, align 16, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #16 ; 0 uses
  %i.v = sext i32 %i.c to i64
  %i.w = inttoptr i64 %i.v to ptr
  tail call void (ptr, i32, ptr, i32, ptr, ptr, i32, ...) @dt_lua_async_call_alien_internal(ptr noundef nonnull @__FUNCTION__._fire_darkroom_image_loaded_event, i32 noundef 1042, ptr noundef nonnull @dt_lua_event_trigger_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.260, i32 noundef 2, ptr noundef nonnull @.str.261, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef %i.w, i32 noundef 4) #16
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 424
  %i.ab = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.aa) #16
  %.not163 = icmp eq i32 %i.ab, 0
  br i1 %.not163, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 424
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ad) #16 ; 0 uses
  %i.af = load ptr, ptr %i.i, align 16, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 424
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #16 ; 0 uses
  %i.ai = sext i32 %i.c to i64
  %i.aj = inttoptr i64 %i.ai to ptr
  tail call void (ptr, i32, ptr, i32, ptr, ptr, i32, ...) @dt_lua_async_call_alien_internal(ptr noundef nonnull @__FUNCTION__._fire_darkroom_image_loaded_event, i32 noundef 1042, ptr noundef nonnull @dt_lua_event_trigger_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.260, i32 noundef 2, ptr noundef nonnull @.str.261, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef %i.aj, i32 noundef 4) #16
  br label %bb.aq

bb.h:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.e, align 16, !tbaa !155 ; 7 uses
  tail call void @dt_overlay_add_from_history(i32 noundef %i.ak) #16
  %i.al = tail call i32 @dt_history_hash_is_mipmap_synced(i32 noundef %i.ak) #16
  %.not164 = icmp eq i32 %i.al, 0
  br i1 %.not164, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  tail call void @dt_mipmap_cache_remove(i32 noundef %i.ak) #16
  tail call void @dt_image_update_final_size(i32 noundef %i.ak) #16
  tail call void @dt_image_synch_xmp(i32 noundef %i.ak) #16
  tail call void @dt_history_hash_set_mipmap(i32 noundef %i.ak) #16
  %i.am = sext i32 %i.ak to i64
  %i.an = inttoptr i64 %i.am to ptr
  tail call void (ptr, i32, ptr, i32, ptr, ptr, i32, ...) @dt_lua_async_call_alien_internal(ptr noundef nonnull @__FUNCTION__._dev_load_requested_image, i32 noundef 1218, ptr noundef nonnull @dt_lua_event_trigger_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef %i.an, i32 noundef 4) #16
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !288
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3360), align 8
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !204
  %i.at = and i32 %i.as, 1048576
  %.not165 = icmp eq i32 %i.at, 0
  br i1 %.not165, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.140, i32 noundef 1221, ptr noundef nonnull @__FUNCTION__._dev_load_requested_image) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !299
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.au, i32 noundef 11) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !324
  tail call void @dt_undo_clear(ptr noundef %i.av, i32 noundef 1214) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !330
  %.not166 = icmp eq ptr %i.ax, null
  br i1 %.not166, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call noalias dereferenceable_or_null(232) ptr @calloc(i64 noundef 1, i64 noundef 232) #19 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !330
  tail call void @dt_masks_init_form_gui(ptr noundef %i.ay) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @dt_masks_change_form_gui(ptr noundef null) #16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !364 ; 2 uses
  %.not167189 = icmp eq ptr %i.ba, null
  br i1 %.not167189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %i.bb = phi ptr [ %i.be, %.lr.ph ], [ %i.ba, %bb.o ]
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !151
  tail call void @dt_dev_free_history_item(ptr noundef %i.bc) #16
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !364 ; 2 uses
  %i.be = tail call ptr @g_list_delete_link(ptr noundef %i.bd, ptr noundef %i.bd) #16 ; 3 uses
  store ptr %i.be, ptr %i.az, align 8, !tbaa !364
  %.not167 = icmp eq ptr %i.be, null
  br i1 %.not167, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  tail call void @dt_dev_reload_image(ptr noundef nonnull %0, i32 noundef %i.c) #16
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = atomicrmw add ptr %i.bg, i32 1 seq_cst, align 4 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bj = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bi) #16 ; 0 uses
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !124
  tail call void @dt_dev_pixelpipe_cleanup_nodes(ptr noundef %i.bk) #16
  %i.bl = load ptr, ptr %i.i, align 16, !tbaa !123
  tail call void @dt_dev_pixelpipe_cleanup_nodes(ptr noundef %i.bl) #16
  %i.bm = load ptr, ptr %i.y, align 16, !tbaa !118
  tail call void @dt_dev_pixelpipe_cleanup_nodes(ptr noundef %i.bm) #16
  tail call void @dt_dev_reset_chroma(ptr noundef nonnull %0) #16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 10 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !338
  %i.bp = tail call i32 @g_list_length(ptr noundef %i.bo) #16
  %.0147197 = add i32 %i.bp, -1                   ; 2 uses
  %i.bq = icmp sgt i32 %.0147197, -1
  br i1 %i.bq, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2112
  br label %bb.p

._crit_edge201:                                   ; preds = %bb.x, %._crit_edge
end_hunk_2
