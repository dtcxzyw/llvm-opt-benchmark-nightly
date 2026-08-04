inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@color_picker_apply:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.l = load float, ptr %i.k, align 8, !tbaa !17
  %i.m = fsub reassoc nsz arcp contract afn float %i.j, %i.l
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, f0x38D1B717
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store float %i.e, ptr %i.b, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load float, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.q, ptr %i.r, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.t = load float, ptr %i.s, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.v = load float, ptr %i.u, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.x = load float, ptr %i.w, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.z = load float, ptr %i.y, align 8, !tbaa !17
  %i.aa = fadd reassoc nsz arcp contract afn float %i.t, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn float %i.v, %i.z
  %i.ac = fsub reassoc nsz arcp contract afn float %i.aa, %i.ab
  %i.ad = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, 7.812500e-03 ; 3 uses
  %i.af = fcmp reassoc nsz arcp contract afn ogt double %i.ae, 3.000000e+00
  br i1 %i.af, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = fcmp reassoc nsz arcp contract afn olt double %i.ae, 5.000000e-01
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fptrunc reassoc nsz arcp contract afn double %i.ae to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ai = phi float [ 3.000000e+00, %bb.c ], [ %i.ah, %bb.e ], [ 5.000000e-01, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.ai, ptr %i.aj, align 4, !tbaa !95
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.ak, ptr noundef nonnull %0, i32 noundef 1) #19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.am) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_control_queue_redraw_widget(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 32) #19 ; 17 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !88
  %i.e = tail call ptr @dtgtk_drawing_area_new_with_height(i32 noundef 0) #19
  store ptr %i.e, ptr %i.b, align 8, !tbaa !137
  %i.f = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #19
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !137
  store ptr %i.g, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.h, align 8, !tbaa !14
  %i.i = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 556, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.f, ptr noundef nonnull %i.a) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.i, ptr %i.j, align 8, !tbaa !136
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.l = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.k, ptr noundef %i.l) #19
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.n = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %i.m, ptr noundef null) #19 ; 0 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5560
  %i.r = load i32, ptr %i.q, align 8, !tbaa !139
  %i.s = or i32 %i.r, 8964
  call void @gtk_widget_add_events(ptr noundef %i.o, i32 noundef %i.s) #19
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.u = call i64 @g_signal_connect_data(ptr noundef %i.t, ptr noundef nonnull @.str.11, ptr noundef nonnull @_monochrome_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.w = call i64 @g_signal_connect_data(ptr noundef %i.v, ptr noundef nonnull @.str.12, ptr noundef nonnull @_monochrome_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.y = call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.13, ptr noundef nonnull @_monochrome_button_release, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.aa = call i64 @g_signal_connect_data(ptr noundef %i.z, ptr noundef nonnull @.str.14, ptr noundef nonnull @_monochrome_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.ac = call i64 @g_signal_connect_data(ptr noundef %i.ab, ptr noundef nonnull @.str.15, ptr noundef nonnull @_monochrome_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.ae = call i64 @g_signal_connect_data(ptr noundef %i.ad, ptr noundef nonnull @.str.16, ptr noundef nonnull @_monochrome_scrolled, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.af = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.17) #19
  %i.ag = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef %i.af) #19 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !145
  %i.ai = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ag, ptr noundef %i.ai) #19
  %i.aj = call ptr @dt_colorspaces_get_profile(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 1) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1032
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !146
  %i.am = call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.19, i32 noundef 63) #19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1032
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !146
  %i.ap = call ptr @cmsCreateTransform(ptr noundef %i.ao, i32 noundef 4849688, ptr noundef %i.al, i32 noundef 4456472, i32 noundef 0, i32 noundef 0) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !148
  ret void
}

declare ptr @dtgtk_drawing_area_new_with_height(i32 noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_monochrome_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %4 = alloca %struct.cmsCIELab, align 8          ; 6 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 4 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1432
  %i.k = load double, ptr %i.j, align 8, !tbaa !149
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, 5.000000e+00
  %i.m = fptosi double %i.l to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !150  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !152  ; 2 uses
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.o to double
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !153 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.u, %i.r
  %i.w = fptosi double %i.v to i32
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.q to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.u, %i.x
  %i.z = fptosi double %i.y to i32
  %i.aa = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.w, i32 noundef %i.z) #19 ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1440
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !153 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.aa, double noundef %i.ad, double noundef %i.ad) #19
  %i.ae = call ptr @cairo_create(ptr noundef %i.aa) #19 ; 17 uses
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #19
  call void @cairo_paint(ptr noundef %i.ae) #19
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.m to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.ae, double noundef %i.af, double noundef %i.af) #19
  call void @cairo_set_antialias(ptr noundef %i.ae, i32 noundef 1) #19
  %i.ag = shl nsw i32 %i.m, 1                     ; 2 uses
  %i.ah = sub nsw i32 %i.o, %i.ag                 ; 3 uses
  %i.ai = sub nsw i32 %i.q, %i.ag                 ; 3 uses
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ah to double
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.ai to double ; 2 uses
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.aj, double noundef %i.ak) #19
  call void @cairo_clip(ptr noundef %i.ae) #19
  call void @cairo_translate(ptr noundef %i.ae, double noundef 0.000000e+00, double noundef %i.ak) #19
  call void @cairo_scale(ptr noundef %i.ae, double noundef 1.000000e+00, double noundef -1.000000e+00) #19
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.ah to float ; 3 uses
  %i.at = fmul reassoc nnan nsz arcp contract afn float %i.as, 1.250000e-01
  %i.au = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.ai to float ; 2 uses
  %i.aw = fmul reassoc nnan nsz arcp contract afn float %i.av, 1.250000e-01
  %i.ax = fpext reassoc nsz arcp contract afn float %i.aw to double
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.d
  %.06670 = phi i32 [ 0, %bb.b ], [ %i.br, %bb.d ] ; 3 uses
  %i.ay = uitofp nneg i32 %.06670 to double
  %i.az = fmul reassoc nnan nsz arcp contract afn double %i.ay, f0x4042492492492492
  %i.ba = fadd reassoc nsz arcp contract afn double %i.az, -1.280000e+02 ; 2 uses
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  %i.bc = mul nsw i32 %.06670, %i.ai
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to float
  %i.be = fmul reassoc nnan nsz arcp contract afn float %i.bd, 1.250000e-01
  %i.bf = fpext reassoc nsz arcp contract afn float %i.be to double
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  call void @cairo_set_antialias(ptr noundef %i.ae, i32 noundef 0) #19
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666) #19
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1432
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !149
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.ae, double noundef %i.bj) #19
  %5 = load float, ptr %i.h, align 4, !tbaa !92
  %6 = fmul reassoc nsz arcp contract afn float %5, 3.906250e-03
  %reass.add = fadd reassoc nsz arcp contract afn float %6, 5.000000e-01
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.as
  %7 = load float, ptr %i.an, align 4, !tbaa !94
  %i.bk = fmul reassoc nsz arcp contract afn float %7, 3.906250e-03
  %reass.add67 = fadd reassoc nsz arcp contract afn float %i.bk, 5.000000e-01
  %reass.mul68 = fmul reassoc nsz arcp contract afn float %reass.add67, %i.av
  %i.bl = fpext reassoc nsz arcp contract afn float %reass.mul to double
  %i.bm = fpext reassoc nsz arcp contract afn float %reass.mul68 to double
  %i.bn = fmul reassoc nnan nsz arcp contract afn float %i.as, 2.200000e-01
  %i.bo = load float, ptr %i.ao, align 4, !tbaa !95
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bn, %i.bo
  %i.bq = fpext reassoc nsz arcp contract afn float %i.bp to double
  call void @cairo_arc(ptr noundef %i.ae, double noundef %i.bl, double noundef %i.bm, double noundef %i.bq, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #19
  call void @cairo_stroke(ptr noundef %i.ae) #19
  call void @cairo_destroy(ptr noundef %i.ae) #19
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #19
  call void @cairo_paint(ptr noundef %1) #19
  call void @cairo_surface_destroy(ptr noundef %i.aa) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

bb.d:                                             ; preds = %_color_filter.exit
  %i.br = add nuw nsw i32 %.06670, 1              ; 2 uses
  %exitcond71.not = icmp eq i32 %i.br, 8
  br i1 %exitcond71.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %.preheader, %_color_filter.exit
  %.06569 = phi i32 [ 0, %.preheader ], [ %i.df, %_color_filter.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._monochrome_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bs = uitofp nneg i32 %.06569 to double
  %i.bt = fmul reassoc nnan nsz arcp contract afn double %i.bs, f0x4042492492492492
  %i.bu = fadd reassoc nsz arcp contract afn double %i.bt, -1.280000e+02 ; 2 uses
  store double %i.bu, ptr %i.am, align 8, !tbaa !154
  store double %i.ba, ptr %i.al, align 8, !tbaa !156
  %i.bv = fptrunc reassoc nsz arcp contract afn double %i.bu to float
  %i.bw = load float, ptr %i.h, align 4, !tbaa !92
  %i.bx = load float, ptr %i.an, align 4, !tbaa !94
  %i.by = load float, ptr %i.ao, align 4, !tbaa !95 ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 1.600000e+03
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bv, %i.bw ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.cb
  %i.cd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bx ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.cd
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cc
  %i.cg = fdiv reassoc nsz arcp contract afn float %i.cf, %i.ca ; 3 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.f, label %_color_filter.exit

bb.f:                                             ; preds = %bb.e
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.cg, 1.000000e+00
  br i1 %i.ci, label %bb.g, label %_color_filter.exit

bb.g:                                             ; preds = %bb.f
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.cg, 1.140130e+07
  %i.ck = fsub reassoc nsz arcp contract afn float f0x4E7E0000, %i.cj
  %i.cl = fptosi float %i.ck to i32
  %i.cm = call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %i.cn = bitcast i32 %i.cm to float              ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cn
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, f0x404AB1EBE1650A46
  br label %_color_filter.exit

_color_filter.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %i.cr = phi double [ f0x4021F7F52A55F099, %bb.f ], [ %i.cq, %bb.g ], [ f0x404AB1EBE1650A46, %bb.e ]
  store double %i.cr, ptr %4, align 8, !tbaa !157
  %i.cs = load ptr, ptr %i.ap, align 8, !tbaa !148
  call void @cmsDoTransform(ptr noundef %i.cs, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #19
  %i.ct = load double, ptr %i.a, align 16, !tbaa !158
  %i.cu = load double, ptr %i.aq, align 8, !tbaa !158
  %i.cv = load double, ptr %i.ar, align 16, !tbaa !158
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef %i.ct, double noundef %i.cu, double noundef %i.cv) #19
  %i.cw = mul nsw i32 %.06569, %i.ah
  %i.cx = sitofp reassoc nsz arcp contract afn i32 %i.cw to float
  %i.cy = fmul reassoc nnan nsz arcp contract afn float %i.cx, 1.250000e-01
  %i.cz = fpext reassoc nsz arcp contract afn float %i.cy to double
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1432
  %i.dc = load double, ptr %i.db, align 8, !tbaa !149 ; 2 uses
  %i.dd = fsub reassoc nsz arcp contract afn double %i.au, %i.dc
  %i.de = fsub reassoc nsz arcp contract afn double %i.ax, %i.dc
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef %i.cz, double noundef %i.bf, double noundef %i.dd, double noundef %i.de) #19
  call void @cairo_fill(ptr noundef %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.df = add nuw nsw i32 %.06569, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.h:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_monochrome_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !159
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !77  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %2, i32 noundef 1) #19
  %i.h = load i32, ptr %1, align 8, !tbaa !164
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !165 ; 2 uses
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !17
  store <2 x float> %i.l, ptr %i.g, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !95
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1432
  %i.r = load double, ptr %i.q, align 8, !tbaa !149
  %i.s = fmul reassoc nsz arcp contract afn double %i.r, 5.000000e+00
  %i.t = fptosi double %i.s to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #19
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = shl nsw i32 %i.t, 1
  %i.w = load <2 x i32>, ptr %i.u, align 4, !tbaa !16
  %i.x = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.z = sub nsw <2 x i32> %i.w, %i.y             ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !166
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.t to double ; 2 uses
  %i.ad = fsub reassoc nsz arcp contract afn double %i.ab, %i.ac ; 3 uses
  %i.ae = extractelement <2 x i32> %i.z, i64 0
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to double ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt double %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fcmp reassoc nsz arcp contract afn olt double %i.ad, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.ai = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.d ]
  %i.aj = fptrunc reassoc nsz arcp contract afn double %i.ai to float
  %i.ak = extractelement <2 x i32> %i.z, i64 1    ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to double
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load double, ptr %i.an, align 8, !tbaa !167
  %i.ap = fsub reassoc nsz arcp contract afn double %i.am, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, %i.ac ; 3 uses
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.ak to double ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt double %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = fcmp reassoc nsz arcp contract afn olt double %i.aq, 0.000000e+00
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.au = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.h ], [ %i.aq, %bb.i ], [ %i.ar, %bb.g ]
  %i.av = fptrunc reassoc nsz arcp contract afn double %i.au to float
  %i.aw = sitofp <2 x i32> %i.z to <2 x float>    ; 2 uses
  %i.ax = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.av, i64 1
  %i.ba = fsub reassoc nsz arcp contract afn <2 x float> %i.az, %i.ax
  %i.bb = fmul reassoc nsz arcp contract afn <2 x float> %i.ba, splat (float 2.560000e+02)
  %i.bc = fdiv reassoc nsz arcp contract afn <2 x float> %i.bb, %i.aw
  store <2 x float> %i.bc, ptr %i.g, align 4, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1, ptr %i.bd, align 8, !tbaa !88
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !137
  call void @gtk_widget_queue_draw(ptr noundef %i.be) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.0 = phi i32 [ 1, %bb.k ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_monochrome_button_release(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
end_hunk_0
