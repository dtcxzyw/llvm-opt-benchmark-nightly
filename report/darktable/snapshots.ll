inline.NumInlined: 34
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gui_post_expose:bb.a
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.gt, double noundef %i.gw, double noundef %i.gz, double noundef %i.gl) #12
  call void @cairo_set_line_width(ptr noundef %1, double noundef 5.000000e-01) #12
  %i.ha = fptosi double %i.fj to i32              ; 2 uses
  call void @dtgtk_cairo_paint_refresh(ptr noundef %1, i32 noundef %i.ga, i32 noundef %i.gc, i32 noundef %i.ha, i32 noundef %i.ha, i32 noundef 0, ptr noundef null) #12
  br label %bb.ak

bb.ak:                                            ; preds = %_get_rotation_area.exit, %bb.ag, %bb.af
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 1616
  store i32 0, ptr %i.hb, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %bb.ak, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i64 @dt_view_get_context_hash() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @dt_dev_image(i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @g_source_remove(i32 noundef) local_unnamed_addr #4

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_snap_expose_again(ptr nofree noundef writeonly captures(none) initializes((12, 20)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !74
  tail call void @dt_control_queue_redraw_center() #12
  ret i32 0
}

declare void @dt_dev_get_pointer_zoom_pos(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #6

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_save(ptr noundef) local_unnamed_addr #4

declare void @cairo_clip(ptr noundef) local_unnamed_addr #4

declare void @cairo_fill(ptr noundef) local_unnamed_addr #4

declare void @dt_view_paint_surface(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_restore(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #4

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_draw_sym(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct._PangoRectangle, align 4    ; 5 uses
  %.not = icmp eq i32 %4, 0
  %i.a = select reassoc nsz arcp contract afn i1 %.not, double 1.000000e+00, double -1.000000e-01 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = tail call ptr @pango_font_description_copy_static(ptr noundef %i.d) #12 ; 4 uses
  tail call void @pango_font_description_set_weight(ptr noundef %i.e, i32 noundef 700) #12
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1432
  %i.h = load double, ptr %i.g, align 8, !tbaa !117
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, 1.228800e+04
  tail call void @pango_font_description_set_absolute_size(ptr noundef %i.e, double noundef %i.i) #12
  %i.j = tail call ptr @pango_cairo_create_layout(ptr noundef %0) #12 ; 5 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.j, ptr noundef %i.e) #12
  %i.k = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.33, i64 noundef 14) #12
  tail call void @pango_layout_set_text(ptr noundef %i.j, ptr noundef %i.k, i32 noundef -1) #12
  call void @pango_layout_get_pixel_extents(ptr noundef %i.j, ptr noundef nonnull %5, ptr noundef null) #12
  %.not21 = icmp eq i32 %3, 0
  %i.l = fpext reassoc nsz arcp contract afn float %1 to double ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !152
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to double ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !154
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.q to float ; 2 uses
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = fmul reassoc nnan nsz arcp contract afn double %i.a, f0x3FF3333340000000
  %i.t = fmul reassoc nnan nsz arcp contract afn double %i.s, %i.o
  %i.u = fsub reassoc nsz arcp contract afn double %i.l, %i.t
  %i.v = fmul reassoc nnan nsz arcp contract afn float %i.r, 5.000000e-01
  %i.w = fsub reassoc nsz arcp contract afn float %2, %i.v
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !117
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, 3.000000e+00
  %i.ac = fsub reassoc nsz arcp contract afn double %i.x, %i.ab
  call void @cairo_move_to(ptr noundef %0, double noundef %i.u, double noundef %i.ac) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = fmul reassoc nnan nsz arcp contract afn double %i.o, 5.000000e-01
  %i.ae = fsub reassoc nsz arcp contract afn double %i.l, %i.ad
  %i.af = fpext reassoc nsz arcp contract afn float %2 to double
  %i.ag = fmul reassoc nnan nsz arcp contract afn float %i.r, 1.200000e+00
  %i.ah = fpext reassoc nnan nsz arcp contract afn float %i.ag to double
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !117
  %.neg = fmul reassoc nsz arcp contract afn double %i.ak, -2.000000e+00
  %i.al = fadd reassoc nsz arcp contract afn double %.neg, %i.af
  %i.am = fmul reassoc nnan nsz arcp contract afn double %i.a, %i.ah
  %i.an = fsub reassoc nsz arcp contract afn double %i.al, %i.am
  call void @cairo_move_to(ptr noundef %0, double noundef %i.ae, double noundef %i.an) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1408
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !122
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, 5.000000e-01
  %i.as = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1384
  %i.au = load double, ptr %i.at, align 8, !tbaa !123
  %i.av = fmul reassoc nsz arcp contract afn double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1400
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !124
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 1392
  %i.ba = load double, ptr %i.az, align 8, !tbaa !125
  %i.bb = fmul reassoc nsz arcp contract afn double %i.ba, %i.as
  call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.av, double noundef %i.ay, double noundef %i.bb, double noundef 9.000000e-01) #12
  call void @pango_cairo_show_layout(ptr noundef %0, ptr noundef %i.j) #12
  call void @pango_font_description_free(ptr noundef %i.e) #12
  call void @g_object_unref(ptr noundef %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @dtgtk_cairo_paint_refresh(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @button_released(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1556 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !83
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1544
  store i32 0, ptr %i.h, align 8, !tbaa !137
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 17 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2892
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1556
  store i32 1, ptr %i.f, align 4, !tbaa !83
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = icmp ne i32 %4, 2
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1616 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !141
  %.not68 = icmp eq i32 %i.l, 0
  br i1 %.not68, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !139
  %i.o = insertelement <2 x double> poison, double %1, i64 0
  %i.p = insertelement <2 x double> %i.o, double %2, i64 1
  %i.q = fdiv reassoc nsz arcp contract afn <2 x double> %i.p, %i.n ; 5 uses
  %i.r = extractelement <2 x double> %i.q, i64 1  ; 6 uses
  %i.s = extractelement <2 x double> %i.q, i64 0  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1548 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %.not69 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not69, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.w = load double, ptr %i.v, align 8, !tbaa !115 ; 2 uses
  %i.x = fadd reassoc nsz arcp contract afn double %i.w, -1.000000e-02
  %i.y = fcmp reassoc nsz arcp contract afn ogt double %i.s, %i.x
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = fadd reassoc nsz arcp contract afn double %i.w, 1.000000e-02
  %i.aa = fcmp reassoc nsz arcp contract afn olt double %i.s, %i.z
  %i.ab = fcmp reassoc nsz arcp contract afn ogt double %i.r, 4.900000e-01
  %i.ac = fcmp reassoc nsz arcp contract afn olt double %i.r, 5.100000e-01
  %i.ad = and i1 %i.ab, %i.ac
  %or.cond5 = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.l, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1592
  %i.af = load double, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.ag = fadd reassoc nsz arcp contract afn double %i.af, -1.000000e-02
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.r, %i.ag
  br i1 %i.ah, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ai = fadd reassoc nsz arcp contract afn double %i.af, 1.000000e-02
  %i.aj = fcmp reassoc nsz arcp contract afn olt double %i.r, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn ogt double %i.s, 4.900000e-01
  %i.al = fcmp reassoc nsz arcp contract afn olt double %i.s, 5.100000e-01
  %i.am = and i1 %i.ak, %i.al
  %or.cond9 = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond9, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1560
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !63
  %.not71 = icmp eq i32 %i.ao, 0
  br i1 %.not71, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !156 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn double %i.s, -1.000000e-02
  %i.as = fcmp reassoc nsz arcp contract afn ule double %i.aq, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn double %i.s, 1.000000e-02
  %i.au = fcmp reassoc nsz arcp contract afn ugt double %i.aq, %i.at
  %or.cond78 = or i1 %i.as, %i.au
  br i1 %or.cond78, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1608
  %i.aw = load double, ptr %i.av, align 8, !tbaa !157 ; 2 uses
  %i.ax = fadd reassoc nsz arcp contract afn double %i.r, -1.000000e-02
  %i.ay = fcmp reassoc nsz arcp contract afn ule double %i.aw, %i.ax
  %i.az = fadd reassoc nsz arcp contract afn double %i.r, 1.000000e-02
  %i.ba = fcmp reassoc nsz arcp contract afn ugt double %i.aw, %i.az
  %or.cond80 = or i1 %i.ay, %i.ba
  br i1 %or.cond80, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g, %.thread
  %i.bb = load i32, ptr @_lib_snapshot_rotation_cnt, align 4, !tbaa !158
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr @_lib_snapshot_rotation_cnt, align 4, !tbaa !158
  %i.bd = zext i1 %.not69 to i32
  store i32 %i.bd, ptr %i.t, align 4, !tbaa !118
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.bg = tail call ptr @dt_ui_snapshot(ptr noundef %i.bf) #12
  %i.bh = tail call ptr @gtk_widget_get_parent(ptr noundef %i.bg) #12
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !118
  %.not73 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not73 to i32
  tail call void @gtk_orientable_set_orientation(ptr noundef %i.bh, i32 noundef %i.bj) #12
  %i.bk = load i32, ptr @_lib_snapshot_rotation_cnt, align 4, !tbaa !158
  %i.bl = and i32 %i.bk, 1
  %.not74 = icmp eq i32 %i.bl, 0
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1552 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !72
  %.not75 = icmp eq i32 %i.bn, 0
  %i.bo = zext i1 %.not75 to i32
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1560
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !63
  %.not76 = icmp eq i32 %i.bq, 0
  br i1 %.not76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.br, align 4, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  store <2 x double> %i.q, ptr %i.bs, align 8, !tbaa !139
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  store <2 x double> %i.q, ptr %i.bt, align 8, !tbaa !139
  store i32 1, ptr %i.k, align 8, !tbaa !141
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 1544
  store i32 1, ptr %i.bu, align 8, !tbaa !137
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  store <2 x double> %i.q, ptr %i.bv, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.p, %bb.q, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.p ], [ 1, %bb.d ], [ 1, %bb.q ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @gtk_orientable_set_orientation(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #4

declare ptr @dt_ui_snapshot(ptr noundef) local_unnamed_addr #4

declare void @dt_control_queue_redraw_center() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1556
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1544
  %i.i = load i32, ptr %i.h, align 8, !tbaa !137
  %.not18 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not18, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !113
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !139 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %1, i64 0
  %i.n = insertelement <2 x double> %i.m, double %2, i64 1
  %i.o = fdiv reassoc nsz arcp contract afn <2 x double> %i.n, %i.l
  store <2 x double> %i.o, ptr %i.k, align 8, !tbaa !139
  %i.p = extractelement <2 x double> %i.l, i64 0
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi double [ %.pre, %._crit_edge ], [ %i.p, %bb.d ] ; 3 uses
  %i.r = fptosi double %1 to i32
  %i.s = fptosi double %2 to i32
  %i.t = fmul reassoc nsz arcp contract afn double %i.q, 2.000000e-02
  %i.u = tail call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.t, double 2.400000e+01) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1548
  %i.w = load i32, ptr %i.v, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.y = load double, ptr %i.x, align 8, !tbaa !115
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, %i.q
  %i.aa = fmul reassoc nnan nsz arcp contract afn double %i.u, 5.000000e-01 ; 2 uses
  %i.ab = fsub reassoc nsz arcp contract afn double %i.z, %i.aa
  br label %_get_rotation_area.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = fmul reassoc nsz arcp contract afn double %i.q, 5.000000e-01
  %i.ad = fmul reassoc nnan nsz arcp contract afn double %i.u, 5.000000e-01 ; 2 uses
  %i.ae = fsub reassoc nsz arcp contract afn double %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1576
  %i.ag = load double, ptr %i.af, align 8, !tbaa !114
  br label %_get_rotation_area.exit

_get_rotation_area.exit:                          ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ 1592, %bb.g ], [ 1576, %bb.f ]
  %.sink5.i = phi double [ %i.ag, %bb.g ], [ 5.000000e-01, %bb.f ]
  %.in.i = phi double [ %i.ae, %bb.g ], [ %i.ab, %bb.f ]
  %i.ah = phi double [ %i.ad, %bb.g ], [ %i.aa, %bb.f ]
  br i1 %.not18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_get_rotation_area.exit
  %i.ai = add i32 %i.r, 39
  %i.aj = fptosi double %.in.i to i32
  %i.ak = sub i32 %i.ai, %i.aj
  %i.al = icmp ult i32 %i.ak, 79
  %i.am = add i32 %i.s, 39
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !139
  %i.ap = fmul reassoc nsz arcp contract afn double %i.ao, %.sink5.i
  %i.aq = fsub reassoc nsz arcp contract afn double %i.ap, %i.ah
  %i.ar = fptosi double %i.aq to i32
  %i.as = sub i32 %i.am, %i.ar
  %i.at = icmp ult i32 %i.as, 79
  %narrow.i = select i1 %i.al, i1 %i.at, i1 false
  %i.au = zext i1 %narrow.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1620
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !140
  %.not20 = icmp eq i32 %i.aw, %i.au
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_get_rotation_area.exit
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.a
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i32 -1, ptr %i.b, align 8, !tbaa !73
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i32 0, ptr %i.d, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !171
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_clear_snapshots.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %indvars.iv.i ; 3 uses
  %i.j = trunc nuw i64 %indvars.iv.i to i32
  %i.k = or i32 %i.j, -256
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 %i.k, ptr %i.l, align 8, !tbaa !81
  tail call fastcc void @_clear_snapshot_entry(ptr noundef nonnull %i.i)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !172
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.m, i32 noundef 0) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.f, align 4, !tbaa !171
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %bb.b, label %_clear_snapshots.exit

_clear_snapshots.exit:                            ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !171
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 1624
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.r, i32 noundef 1) #12
  tail call void @dt_control_queue_redraw_center() #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296), (424, 432)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(1640) ptr @g_malloc0(i64 noundef 1640) #13 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  store <2 x double> splat (double 5.000000e-01), ptr %i.d, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.f, align 4, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store i32 0, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1620
  store i32 0, ptr %i.h, align 4, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1556
  store i32 0, ptr %i.i, align 4, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.j, align 8, !tbaa !158
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store i32 0, ptr %i.l, align 8, !tbaa !161
  %i.m = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !174
  %i.o = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #12
  store ptr %i.o, ptr %i.b, align 8, !tbaa !175
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #12
  %i.q = tail call ptr @dt_action_button_new(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @_lib_snapshots_add_button_clicked_callback, ptr noundef %0, ptr noundef %i.p, i32 noundef 0, i32 noundef 0) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1624 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_tmp_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #12
end_hunk_0
