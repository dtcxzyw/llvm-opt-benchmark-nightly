Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0_@gui_init:bb.a
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.n = tail call ptr @dt_ui_notebook_page(ptr noundef %i.m, ptr noundef nonnull @.str.10, ptr noundef null) #22 ; 0 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.p = tail call ptr @dt_ui_notebook_page(ptr noundef %i.o, ptr noundef nonnull @.str.11, ptr noundef null) #22 ; 0 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.r = tail call ptr @dt_ui_notebook_page(ptr noundef %i.q, ptr noundef nonnull @.str.12, ptr noundef null) #22 ; 0 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.t = load i32, ptr %i.g, align 8, !tbaa !74
  %i.u = tail call ptr @gtk_notebook_get_nth_page(ptr noundef %i.s, i32 noundef %i.t) #22
  tail call void @gtk_widget_show(ptr noundef %i.u) #22
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.w = load i32, ptr %i.g, align 8, !tbaa !74
  tail call void @gtk_notebook_set_current_page(ptr noundef %i.v, i32 noundef %i.w) #22
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.y = tail call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.13, ptr noundef nonnull @rawdenoise_tab_switch, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.z = load i32, ptr %i.g, align 8, !tbaa !74
  %i.aa = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #21 ; 21 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  store i32 65536, ptr %i.ab, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 188
  store i32 65536, ptr %i.ac, align 4, !tbaa !63
  %i.ad = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !64
  store i32 1, ptr %i.aa, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ag, align 4, !tbaa !12
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = sext i32 %i.z to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [20 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, -1.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.ao = getelementptr inbounds [20 x i8], ptr %i.an, i64 %i.ai ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store float %i.am, ptr %i.ar, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store float %i.aq, ptr %i.as, align 4, !tbaa !57
  %i.at = load float, ptr %i.aj, align 4, !tbaa !12
  %i.au = load float, ptr %i.ao, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store float %i.at, ptr %i.av, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store float %i.au, ptr %i.aw, align 4, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store float %i.ay, ptr %i.bb, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  store float %i.ba, ptr %i.bc, align 4, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store float %i.be, ptr %i.bh, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store float %i.bg, ptr %i.bi, align 4, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store float %i.al, ptr %i.bj, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  store float %i.aq, ptr %i.bk, align 4, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store float %i.bm, ptr %i.bp, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  store float %i.bo, ptr %i.bq, align 4, !tbaa !57
  %i.br = fadd reassoc nsz arcp contract afn float %i.ay, 1.000000e+00
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store float %i.br, ptr %i.bs, align 8, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  store float %i.ba, ptr %i.bt, align 4, !tbaa !57
  store i8 7, ptr %i.af, align 4, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double -1.000000e+00, ptr %i.bu, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x double> splat (double -1.000000e+00), ptr %i.bv, align 8, !tbaa !177
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 0, ptr %i.bw, align 8, !tbaa !78
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  store i32 -1, ptr %i.bx, align 4, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float 1.000000e-01, ptr %i.by, align 8, !tbaa !80
  %i.bz = tail call ptr @dt_ui_resize_wrap(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.14) #22 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 9 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !73
  tail call void @g_object_set_data(ptr noundef %i.bz, ptr noundef nonnull @.str.15, ptr noundef %0) #22
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cc = tail call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef %i.cb, ptr noundef null) #22 ; 0 uses
  %i.cd = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #22
  %i.ce = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !14
  %i.cf = shufflevector <2 x ptr> %i.ce, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.cf, ptr %i.a, align 16, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cg, align 16, !tbaa !14
  %i.ch = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 912, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.cd, ptr noundef nonnull %i.a) #22 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 4 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !51
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.ck = call i64 @g_signal_connect_data(ptr noundef %i.cj, ptr noundef nonnull @.str.18, ptr noundef nonnull @rawdenoise_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cm = call i64 @g_signal_connect_data(ptr noundef %i.cl, ptr noundef nonnull @.str.19, ptr noundef nonnull @rawdenoise_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.co = call i64 @g_signal_connect_data(ptr noundef %i.cn, ptr noundef nonnull @.str.20, ptr noundef nonnull @rawdenoise_button_release, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.cp = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cq = call i64 @g_signal_connect_data(ptr noundef %i.cp, ptr noundef nonnull @.str.21, ptr noundef nonnull @rawdenoise_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.cr = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cs = call i64 @g_signal_connect_data(ptr noundef %i.cr, ptr noundef nonnull @.str.22, ptr noundef nonnull @rawdenoise_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.ct = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cu = call i64 @g_signal_connect_data(ptr noundef %i.ct, ptr noundef nonnull @.str.23, ptr noundef nonnull @rawdenoise_scrolled, ptr noundef %0, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  %i.cv = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.24) #22 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !178
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.cv, float noundef 1.000000e-01) #22
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !178
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.cx, i32 noundef 3) #22
  %i.cy = call ptr @gtk_stack_new() #22           ; 2 uses
  store ptr %i.cy, ptr %i.ci, align 8, !tbaa !51
  call void @gtk_stack_set_homogeneous(ptr noundef %i.cy, i32 noundef 0) #22
  %i.cz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #22
  %i.da = call ptr @gtk_label_new(ptr noundef %i.cz) #22 ; 2 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.da, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef nonnull @.str.37, double noundef 0.000000e+00, ptr noundef nonnull @.str.38, i32 noundef 3, ptr noundef null) #22
  %i.db = load ptr, ptr %i.ci, align 8, !tbaa !51
  call void @gtk_stack_add_named(ptr noundef %i.db, ptr noundef %i.da, ptr noundef nonnull @.str.5) #22
  %i.dc = load ptr, ptr %i.ci, align 8, !tbaa !51
  call void @gtk_stack_add_named(ptr noundef %i.dc, ptr noundef %i.ch, ptr noundef nonnull @.str.6) #22
  ret void
}

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_notebook_new() local_unnamed_addr #6

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dt_ui_notebook_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_notebook_get_nth_page(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @gtk_notebook_set_current_page(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @rawdenoise_tab_switch(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !68  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store i32 %2, ptr %i.f, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  tail call void @gtk_widget_queue_draw(ptr noundef %i.h) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @rawdenoise_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %3 = alloca %struct.dt_iop_rawdenoise_params_t, align 4 ; 8 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %5 = alloca %struct._PangoRectangle, align 4    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !68  ; 63 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %i.d, i64 164, i1 false), !tbaa.struct !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !76   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %i.j = getelementptr inbounds [20 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 4 uses
  %i.m = getelementptr inbounds [20 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %6 = call <23 x float> @llvm.masked.load.v23f32.p0(ptr nonnull align 4 %i.j, <23 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <23 x float> poison), !tbaa !12
  %7 = shufflevector <23 x float> %6, <23 x float> poison, <8 x i32> <i32 3, i32 20, i32 0, i32 20, i32 1, i32 21, i32 2, i32 22>
  %8 = fadd reassoc nsz arcp contract afn <8 x float> %7, <float -1.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  store <8 x float> %8, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %9 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %10 = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %11 = load <2 x float>, ptr %i.p, align 4, !tbaa !12
  %12 = shufflevector <2 x float> %10, <2 x float> %11, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %12, ptr %i.q, align 8, !tbaa !12
  %i.r = load float, ptr %i.o, align 4, !tbaa !12
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, 1.000000e+00
  %i.t = load float, ptr %9, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store float %i.s, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store float %i.t, ptr %i.v, align 4, !tbaa !57
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !128
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 5.000000e+00
  %i.aa = fptosi double %i.z to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !130 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ac to double
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1440
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !179 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ai, %i.af
  %i.ak = fptosi double %i.aj to i32
  %i.al = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  %i.am = fmul reassoc nsz arcp contract afn double %i.ai, %i.al
  %i.an = fptosi double %i.am to i32
  %i.ao = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.ak, i32 noundef %i.an) #22 ; 4 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1440
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !179 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.ao, double noundef %i.ar, double noundef %i.ar) #22
  %i.as = call ptr @cairo_create(ptr noundef %i.ao) #22 ; 110 uses
  call void @cairo_set_source_rgb(ptr noundef %i.as, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #22
  call void @cairo_paint(ptr noundef %i.as) #22
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.aa to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.as, double noundef %i.at, double noundef %i.at) #22
  %i.au = shl nsw i32 %i.aa, 1                    ; 2 uses
  %i.av = sub nsw i32 %i.ac, %i.au                ; 7 uses
  %i.aw = sub nsw i32 %i.ae, %i.au                ; 5 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1432
  %i.az = load double, ptr %i.ay, align 8, !tbaa !128
  call void @cairo_set_line_width(ptr noundef %i.as, double noundef %i.az) #22
  call void @cairo_set_source_rgb(ptr noundef %i.as, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #22
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.av to double ; 5 uses
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.aw to double ; 6 uses
  call void @cairo_rectangle(ptr noundef %i.as, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ba, double noundef %i.bb) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  call void @cairo_set_source_rgb(ptr noundef %i.as, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #22
  call void @cairo_rectangle(ptr noundef %i.as, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ba, double noundef %i.bb) #22
  call void @cairo_fill(ptr noundef %i.as) #22
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1432
  %i.be = load double, ptr %i.bd, align 8, !tbaa !128
  %i.bf = fmul reassoc nsz arcp contract afn double %i.be, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.as, double noundef %i.bf) #22
  call void @cairo_set_source_rgb(ptr noundef %i.as, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #22
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.av to float ; 14 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.aw to float ; 8 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 1.250000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 1.250000e-01
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double ; 7 uses
  %i.bj = fpext reassoc nsz arcp contract afn float %i.bg to double ; 7 uses
  %i.bk = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bk, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bk, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.bl = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bl) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bl) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 2.500000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 2.500000e-01
  %i.bm = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bm, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bm, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.bn = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bn) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bn) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 3.750000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 3.750000e-01
  %i.bo = fpext reassoc nsz arcp contract afn float %.reass.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bo, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bo, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.bp = fpext reassoc nsz arcp contract afn float %.reass31.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bp) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bp) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %.reass31.3.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 5.000000e-01
  %.reass.3.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 5.000000e-01
  %i.bq = fpext reassoc nsz arcp contract afn float %.reass.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bq, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bq, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.br = fpext reassoc nsz arcp contract afn float %.reass31.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.br) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.br) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %.reass31.4.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 6.250000e-01
  %.reass.4.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 6.250000e-01
  %i.bs = fpext reassoc nsz arcp contract afn float %.reass.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bs, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bs, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.bt = fpext reassoc nsz arcp contract afn float %.reass31.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bt) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bt) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %.reass31.5.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 7.500000e-01
  %.reass.5.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 7.500000e-01
  %i.bu = fpext reassoc nsz arcp contract afn float %.reass.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bu, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bu, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.bv = fpext reassoc nsz arcp contract afn float %.reass31.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bv) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bv) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %.reass31.6.i = fmul reassoc nnan nsz arcp contract afn float %i.bh, 8.750000e-01
  %.reass.6.i = fmul reassoc nnan nsz arcp contract afn float %i.bg, 8.750000e-01
  %i.bw = fpext reassoc nsz arcp contract afn float %.reass.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef %i.bw, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bw, double noundef %i.bi) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.bx = fpext reassoc nsz arcp contract afn float %.reass31.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bx) #22
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bx) #22
  call void @cairo_stroke(ptr noundef %i.as) #22
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !132
  %i.ca = fcmp reassoc nsz arcp contract afn ogt double %i.bz, 0.000000e+00
  br i1 %i.ca, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !78
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %dt_draw_curve_calc_values.exit265, label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.cd = load i32, ptr %i.e, align 8, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !133 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !80 ; 2 uses
  %i.ci = sext i32 %i.cd to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [20 x i8], ptr %i.h, i64 %i.ci ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ch, %i.ch
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double ; 2 uses
  %i.cm = getelementptr inbounds [20 x i8], ptr %i.l, i64 %i.ci ; 3 uses
  %i.cn = load <4 x float>, ptr %i.cj, align 4, !tbaa !12
  %i.co = fpext <4 x float> %i.cn to <4 x double>
  %i.cp = insertelement <4 x double> poison, double %i.cf, i64 0
  %i.cq = shufflevector <4 x double> %i.cp, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cr = fsub reassoc nsz arcp contract afn <4 x double> %i.cq, %i.co ; 2 uses
  %i.cs = fneg reassoc nsz arcp contract afn <4 x double> %i.cr
  %i.ct = fmul reassoc nsz arcp contract afn <4 x double> %i.cr, %i.cs
  %i.cu = insertelement <4 x double> poison, double %i.cl, i64 0
  %i.cv = shufflevector <4 x double> %i.cu, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cw = fdiv reassoc nsz arcp contract afn <4 x double> %i.ct, %i.cv
  %i.cx = fptrunc <4 x double> %i.cw to <4 x float>
  %i.cy = call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.cx) ; 2 uses
  %i.cz = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.cy
  %i.da = load <4 x float>, ptr %i.cm, align 4, !tbaa !12
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, %i.da
  %i.dc = fadd reassoc nsz arcp contract afn <4 x float> %i.db, %i.cy
  store <4 x float> %i.dc, ptr %i.cm, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.de = load float, ptr %i.dd, align 4, !tbaa !12
  %i.df = fpext reassoc nsz arcp contract afn float %i.de to double
  %i.dg = fsub reassoc nsz arcp contract afn double %i.cf, %i.df ; 2 uses
  %i.dh = fneg reassoc nsz arcp contract afn double %i.dg
  %i.di = fmul reassoc nsz arcp contract afn double %i.dg, %i.dh
  %i.dj = fdiv reassoc nsz arcp contract afn double %i.di, %i.cl
  %i.dk = fptrunc reassoc nsz arcp contract afn double %i.dj to float
  %i.dl = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dk) ; 2 uses
  %i.dm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dm, %i.do
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %i.dl
  store float %i.dq, ptr %i.dn, align 4, !tbaa !12
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !76  ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %13 = call <23 x float> @llvm.masked.load.v23f32.p0(ptr nonnull align 4 %i.j, <23 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <23 x float> poison), !tbaa !12
  %14 = shufflevector <23 x float> %13, <23 x float> poison, <8 x i32> <i32 3, i32 20, i32 0, i32 20, i32 1, i32 21, i32 2, i32 22>
  %15 = fadd reassoc nsz arcp contract afn <8 x float> %14, <float -1.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  store <8 x float> %15, ptr %i.ds, align 8, !tbaa !12
  %16 = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %17 = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %18 = load <2 x float>, ptr %i.p, align 4, !tbaa !12
  %19 = shufflevector <2 x float> %17, <2 x float> %18, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %19, ptr %16, align 8, !tbaa !12
  %i.dt = load float, ptr %i.o, align 4, !tbaa !12
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, 1.000000e+00
  %i.dv = load float, ptr %9, align 4, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  store float %i.du, ptr %i.dw, align 8, !tbaa !56
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 76
  store float %i.dv, ptr %i.dx, align 4, !tbaa !57
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 184 ; 2 uses
  store i32 64, ptr %i.dy, align 8, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 188
  store i32 65536, ptr %i.dz, align 4, !tbaa !63
  %i.ea = call i32 @CurveDataSample(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dy) #22 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 748
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 780
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 812
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 844
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.eb, align 4, !tbaa !12
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.ec, align 4, !tbaa !12
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.ed, align 4, !tbaa !12
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.ee, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 908
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 940
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 972
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.ef, align 4, !tbaa !12
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.eg, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.eh, align 4, !tbaa !12
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.ei, align 4, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 192
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !64 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 1004
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %wide.load = load <8 x i16>, ptr %i.ek, align 2, !tbaa !65
  %wide.load304 = load <8 x i16>, ptr %i.em, align 2, !tbaa !65
  %wide.load305 = load <8 x i16>, ptr %i.en, align 2, !tbaa !65
  %wide.load306 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !65
  %i.ep = uitofp <8 x i16> %wide.load to <8 x float>
  %i.eq = uitofp <8 x i16> %wide.load304 to <8 x float>
  %i.er = uitofp <8 x i16> %wide.load305 to <8 x float>
  %i.es = uitofp <8 x i16> %wide.load306 to <8 x float>
  %i.et = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ep, splat (float f0x37800000)
  %i.eu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.eq, splat (float f0x37800000)
  %i.ev = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.er, splat (float f0x37800000)
  %i.ew = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.es, splat (float f0x37800000)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 1036
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 1068
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 1100
  store <8 x float> %i.et, ptr %i.el, align 4, !tbaa !12
  store <8 x float> %i.eu, ptr %i.ex, align 4, !tbaa !12
  store <8 x float> %i.ev, ptr %i.ey, align 4, !tbaa !12
  store <8 x float> %i.ew, ptr %i.ez, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 112
  %wide.load.1 = load <8 x i16>, ptr %i.fa, align 2, !tbaa !65
  %wide.load304.1 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !65
  %wide.load305.1 = load <8 x i16>, ptr %i.fc, align 2, !tbaa !65
  %wide.load306.1 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !65
  %i.fe = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.ff = uitofp <8 x i16> %wide.load304.1 to <8 x float>
  %i.fg = uitofp <8 x i16> %wide.load305.1 to <8 x float>
  %i.fh = uitofp <8 x i16> %wide.load306.1 to <8 x float>
  %i.fi = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fe, splat (float f0x37800000)
  %i.fj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ff, splat (float f0x37800000)
  %i.fk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fg, splat (float f0x37800000)
  %i.fl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fh, splat (float f0x37800000)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 1132
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 1164
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 1196
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 1228
  store <8 x float> %i.fi, ptr %i.fm, align 4, !tbaa !12
  store <8 x float> %i.fj, ptr %i.fn, align 4, !tbaa !12
  store <8 x float> %i.fk, ptr %i.fo, align 4, !tbaa !12
  store <8 x float> %i.fl, ptr %i.fp, align 4, !tbaa !12
  %i.fq = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %i.fq, i64 164, i1 false), !tbaa.struct !122
  %i.fr = load i32, ptr %i.e, align 8, !tbaa !74
  %i.fs = load double, ptr %i.ce, align 8, !tbaa !133
  %i.ft = load float, ptr %i.cg, align 8, !tbaa !80
  call fastcc void @dt_iop_rawdenoise_get_params(ptr noundef nonnull %3, i32 noundef %i.fr, double noundef %i.fs, double noundef 0.000000e+00, float noundef %i.ft)
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !76  ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %20 = call <23 x float> @llvm.masked.load.v23f32.p0(ptr nonnull align 4 %i.j, <23 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <23 x float> poison), !tbaa !12
  %21 = shufflevector <23 x float> %20, <23 x float> poison, <8 x i32> <i32 3, i32 20, i32 0, i32 20, i32 1, i32 21, i32 2, i32 22>
  %22 = fadd reassoc nsz arcp contract afn <8 x float> %21, <float -1.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  store <8 x float> %22, ptr %i.fv, align 8, !tbaa !12
  %23 = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %24 = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %25 = load <2 x float>, ptr %i.p, align 4, !tbaa !12
  %26 = shufflevector <2 x float> %24, <2 x float> %25, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %26, ptr %23, align 8, !tbaa !12
  %i.fw = load float, ptr %i.o, align 4, !tbaa !12
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, 1.000000e+00
  %i.fy = load float, ptr %9, align 4, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  store float %i.fx, ptr %i.fz, align 8, !tbaa !56
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 76
  store float %i.fy, ptr %i.ga, align 4, !tbaa !57
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 184 ; 2 uses
  store i32 64, ptr %i.gb, align 8, !tbaa !62
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 188
  store i32 65536, ptr %i.gc, align 4, !tbaa !63
  %i.gd = call i32 @CurveDataSample(ptr noundef nonnull %i.fu, ptr noundef nonnull %i.gb) #22 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 1260
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 1292
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 1324
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 1356
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.ge, align 4, !tbaa !12
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.gf, align 4, !tbaa !12
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.gg, align 4, !tbaa !12
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.gh, align 4, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 1388
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 1420
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 1452
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 1484
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.gi, align 4, !tbaa !12
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.gj, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.gk, align 4, !tbaa !12
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.gl, align 4, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fu, i64 192
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !64 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 1516
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %wide.load322 = load <8 x i16>, ptr %i.gn, align 2, !tbaa !65
  %wide.load323 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !65
  %wide.load324 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !65
  %wide.load325 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !65
  %i.gs = uitofp <8 x i16> %wide.load322 to <8 x float>
  %i.gt = uitofp <8 x i16> %wide.load323 to <8 x float>
  %i.gu = uitofp <8 x i16> %wide.load324 to <8 x float>
  %i.gv = uitofp <8 x i16> %wide.load325 to <8 x float>
  %i.gw = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gs, splat (float f0x37800000)
  %i.gx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gt, splat (float f0x37800000)
  %i.gy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gu, splat (float f0x37800000)
  %i.gz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gv, splat (float f0x37800000)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 1548
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 1580
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 1612
  store <8 x float> %i.gw, ptr %i.go, align 4, !tbaa !12
  store <8 x float> %i.gx, ptr %i.ha, align 4, !tbaa !12
  store <8 x float> %i.gy, ptr %i.hb, align 4, !tbaa !12
  store <8 x float> %i.gz, ptr %i.hc, align 4, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %wide.load322.1 = load <8 x i16>, ptr %i.hd, align 2, !tbaa !65
  %wide.load323.1 = load <8 x i16>, ptr %i.he, align 2, !tbaa !65
  %wide.load324.1 = load <8 x i16>, ptr %i.hf, align 2, !tbaa !65
  %wide.load325.1 = load <8 x i16>, ptr %i.hg, align 2, !tbaa !65
  %i.hh = uitofp <8 x i16> %wide.load322.1 to <8 x float>
  %i.hi = uitofp <8 x i16> %wide.load323.1 to <8 x float>
  %i.hj = uitofp <8 x i16> %wide.load324.1 to <8 x float>
  %i.hk = uitofp <8 x i16> %wide.load325.1 to <8 x float>
  %i.hl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hh, splat (float f0x37800000)
  %i.hm = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hi, splat (float f0x37800000)
  %i.hn = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hj, splat (float f0x37800000)
  %i.ho = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hk, splat (float f0x37800000)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 1644
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 1676
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 1708
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1740
  store <8 x float> %i.hl, ptr %i.hp, align 4, !tbaa !12
  store <8 x float> %i.hm, ptr %i.hq, align 4, !tbaa !12
  store <8 x float> %i.hn, ptr %i.hr, align 4, !tbaa !12
  store <8 x float> %i.ho, ptr %i.hs, align 4, !tbaa !12
  br label %dt_draw_curve_calc_values.exit265

dt_draw_curve_calc_values.exit265:                ; preds = %vector.ph, %bb.b
  call void @cairo_save(ptr noundef %i.as) #22
  call void @cairo_translate(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.bb) #22
  call void @cairo_set_operator(ptr noundef %i.as, i32 noundef 2) #22
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1432
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !128
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.as, double noundef %i.hw) #22
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 492 ; 4 uses
  %i.hz = sub nsw i32 0, %i.aw
  %i.ia = sitofp reassoc nsz arcp contract afn i32 %i.hz to float ; 11 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 396
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 524
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 556
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 620
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 652
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 684
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 716
  br label %bb.d

bb.c:                                             ; preds = %bb.i
  %i.ip = load i32, ptr %i.e, align 8, !tbaa !74
  call void @cairo_set_source_rgb(ptr noundef %i.as, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666) #22
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1432
  %i.is = load double, ptr %i.ir, align 8, !tbaa !128
  call void @cairo_set_line_width(ptr noundef %i.as, double noundef %i.is) #22
  %i.it = sext i32 %i.ip to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [20 x i8], ptr %i.h, i64 %i.it ; 5 uses
  %i.iv = getelementptr inbounds [20 x i8], ptr %i.l, i64 %i.it ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 228 ; 5 uses
  %i.ix = load float, ptr %i.iu, align 4, !tbaa !12
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %i.bg
  %i.iz = fpext reassoc nsz arcp contract afn float %i.iy to double
  %i.ja = load float, ptr %i.iv, align 4, !tbaa !12
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.ia
  %i.jc = fpext reassoc nsz arcp contract afn float %i.jb to double
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1432
  %i.jf = load double, ptr %i.je, align 8, !tbaa !128
  %i.jg = fmul reassoc nsz arcp contract afn double %i.jf, 3.000000e+00
  call void @cairo_arc(ptr noundef %i.as, double noundef %i.iz, double noundef %i.jc, double noundef %i.jg, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  %i.jh = load i32, ptr %i.iw, align 4, !tbaa !79
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.k, label %bb.l

bb.d:                                             ; preds = %dt_draw_curve_calc_values.exit265, %bb.i
  %.0254279 = phi i32 [ 0, %dt_draw_curve_calc_values.exit265 ], [ %i.jk, %bb.i ] ; 2 uses
  %i.jj = load i32, ptr %i.e, align 8, !tbaa !74
  %i.jk = add nuw nsw i32 %.0254279, 1            ; 3 uses
  %i.jl = add i32 %i.jk, %i.jj
  %i.jm = srem i32 %i.jl, 4                       ; 2 uses
  %i.jn = icmp eq i32 %.0254279, 3
  %spec.store.select = select i1 %i.jn, float 1.000000e+00, float 3.000000e-01 ; 4 uses
  switch i32 %i.jm, label %vector.ph337 [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.jo = fpext reassoc nsz arcp contract afn float %spec.store.select to double
  call void @cairo_set_source_rgba(ptr noundef %i.as, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef %i.jo) #22
  br label %vector.ph337

bb.f:                                             ; preds = %bb.d
  %i.jp = fpext reassoc nsz arcp contract afn float %spec.store.select to double
  call void @cairo_set_source_rgba(ptr noundef %i.as, double noundef f0x3FE6666666666666, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef %i.jp) #22
  br label %vector.ph337

bb.g:                                             ; preds = %bb.d
  %i.jq = fpext reassoc nsz arcp contract afn float %spec.store.select to double
  call void @cairo_set_source_rgba(ptr noundef %i.as, double noundef 1.000000e-01, double noundef f0x3FE6666666666666, double noundef 1.000000e-01, double noundef %i.jq) #22
  br label %vector.ph337

bb.h:                                             ; preds = %bb.d
  %i.jr = fpext reassoc nsz arcp contract afn float %spec.store.select to double
  call void @cairo_set_source_rgba(ptr noundef %i.as, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef f0x3FE6666666666666, double noundef %i.jr) #22
  br label %vector.ph337

vector.ph337:                                     ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.js = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %i.js, i64 164, i1 false), !tbaa.struct !122
  %i.jt = load ptr, ptr %i.b, align 8, !tbaa !76  ; 11 uses
  %i.ju = sext i32 %i.jm to i64                   ; 2 uses
  %i.jv = getelementptr inbounds [20 x i8], ptr %i.h, i64 %i.ju ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %i.jx = getelementptr inbounds [20 x i8], ptr %i.l, i64 %i.ju ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %27 = call <23 x float> @llvm.masked.load.v23f32.p0(ptr nonnull align 4 %i.jv, <23 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <23 x float> poison), !tbaa !12
  %28 = shufflevector <23 x float> %27, <23 x float> poison, <8 x i32> <i32 3, i32 20, i32 0, i32 20, i32 1, i32 21, i32 2, i32 22>
  %29 = fadd reassoc nsz arcp contract afn <8 x float> %28, <float -1.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  store <8 x float> %29, ptr %i.jy, align 8, !tbaa !12
  %i.ka = load float, ptr %i.jw, align 4, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  store float %i.ka, ptr %i.kd, align 8, !tbaa !56
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 60
  store float %i.kc, ptr %i.ke, align 4, !tbaa !57
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !12
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  store float %i.kg, ptr %i.kj, align 8, !tbaa !56
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jt, i64 68
  store float %i.ki, ptr %i.kk, align 4, !tbaa !57
  %i.kl = load float, ptr %i.jz, align 4, !tbaa !12
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, 1.000000e+00
  %i.kn = load float, ptr %i.kh, align 4, !tbaa !12
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  store float %i.km, ptr %i.ko, align 8, !tbaa !56
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 76
  store float %i.kn, ptr %i.kp, align 4, !tbaa !57
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 184 ; 2 uses
  store i32 64, ptr %i.kq, align 8, !tbaa !62
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jt, i64 188
  store i32 65536, ptr %i.kr, align 4, !tbaa !63
  %i.ks = call i32 @CurveDataSample(ptr noundef nonnull %i.jt, ptr noundef nonnull %i.kq) #22 ; 0 uses
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.hx, align 4, !tbaa !12
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.ib, align 4, !tbaa !12
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.ic, align 4, !tbaa !12
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.id, align 4, !tbaa !12
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.ie, align 4, !tbaa !12
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.if, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.ig, align 4, !tbaa !12
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.ih, align 4, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jt, i64 192
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !64 ; 8 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %wide.load331 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !65
  %wide.load332 = load <8 x i16>, ptr %i.kv, align 2, !tbaa !65
  %wide.load333 = load <8 x i16>, ptr %i.kw, align 2, !tbaa !65
  %wide.load334 = load <8 x i16>, ptr %i.kx, align 2, !tbaa !65
  %i.ky = uitofp <8 x i16> %wide.load331 to <8 x float>
  %i.kz = uitofp <8 x i16> %wide.load332 to <8 x float>
  %i.la = uitofp <8 x i16> %wide.load333 to <8 x float>
  %i.lb = uitofp <8 x i16> %wide.load334 to <8 x float>
  %i.lc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ky, splat (float f0x37800000)
  %i.ld = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.kz, splat (float f0x37800000)
  %i.le = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.la, splat (float f0x37800000)
  %i.lf = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.lb, splat (float f0x37800000)
  store <8 x float> %i.lc, ptr %i.hy, align 4, !tbaa !12
  store <8 x float> %i.ld, ptr %i.ii, align 4, !tbaa !12
  store <8 x float> %i.le, ptr %i.ij, align 4, !tbaa !12
  store <8 x float> %i.lf, ptr %i.ik, align 4, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ku, i64 80
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 96
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ku, i64 112
  %wide.load331.1 = load <8 x i16>, ptr %i.lg, align 2, !tbaa !65
  %wide.load332.1 = load <8 x i16>, ptr %i.lh, align 2, !tbaa !65
  %wide.load333.1 = load <8 x i16>, ptr %i.li, align 2, !tbaa !65
  %wide.load334.1 = load <8 x i16>, ptr %i.lj, align 2, !tbaa !65
  %i.lk = uitofp <8 x i16> %wide.load331.1 to <8 x float>
  %i.ll = uitofp <8 x i16> %wide.load332.1 to <8 x float>
  %i.lm = uitofp <8 x i16> %wide.load333.1 to <8 x float>
  %i.ln = uitofp <8 x i16> %wide.load334.1 to <8 x float>
  %i.lo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.lk, splat (float f0x37800000)
  %i.lp = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ll, splat (float f0x37800000)
  %i.lq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.lm, splat (float f0x37800000)
  %i.lr = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ln, splat (float f0x37800000)
  store <8 x float> %i.lo, ptr %i.il, align 4, !tbaa !12
  store <8 x float> %i.lp, ptr %i.im, align 4, !tbaa !12
  store <8 x float> %i.lq, ptr %i.in, align 4, !tbaa !12
  store <8 x float> %i.lr, ptr %i.io, align 4, !tbaa !12
  %i.ls = load float, ptr %i.hy, align 4, !tbaa !12
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.ia
  %i.lu = fpext reassoc nsz arcp contract afn float %i.lt to double
  call void @cairo_move_to(ptr noundef %i.as, double noundef 0.000000e+00, double noundef %i.lu) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @cairo_stroke(ptr noundef %i.as) #22
  %exitcond288.not = icmp eq i32 %i.jk, 4
  br i1 %exitcond288.not, label %bb.c, label %bb.d

bb.j:                                             ; preds = %vector.ph337, %bb.j
  %indvars.iv = phi i64 [ 1, %vector.ph337 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.lv = trunc nuw nsw i64 %indvars.iv to i32
  %i.lw = mul nsw i32 %i.av, %i.lv
  %i.lx = sitofp reassoc nsz arcp contract afn i32 %i.lw to float
  %i.ly = fmul reassoc nnan nsz arcp contract afn float %i.lx, f0x3C820821
  %i.lz = fpext reassoc nsz arcp contract afn float %i.ly to double
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !12
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %i.ia
  %i.md = fpext reassoc nsz arcp contract afn float %i.mc to double
  call void @cairo_line_to(ptr noundef %i.as, double noundef %i.lz, double noundef %i.md) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.k:                                             ; preds = %bb.c
  call void @cairo_fill(ptr noundef %i.as) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  call void @cairo_stroke(ptr noundef %i.as) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.me = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !12
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %i.bg
  %i.mh = fpext reassoc nsz arcp contract afn float %i.mg to double
  %i.mi = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.ia
  %i.ml = fpext reassoc nsz arcp contract afn float %i.mk to double
  %i.mm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 1432
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !128
  %i.mp = fmul reassoc nsz arcp contract afn double %i.mo, 3.000000e+00
  call void @cairo_arc(ptr noundef %i.as, double noundef %i.mh, double noundef %i.ml, double noundef %i.mp, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  %i.mq = load i32, ptr %i.iw, align 4, !tbaa !79
  %i.mr = icmp eq i32 %i.mq, 1
  br i1 %i.mr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @cairo_stroke(ptr noundef %i.as) #22
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @cairo_fill(ptr noundef %i.as) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ms = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !12
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mt, %i.bg
  %i.mv = fpext reassoc nsz arcp contract afn float %i.mu to double
  %i.mw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !12
  %i.my = fmul reassoc nsz arcp contract afn float %i.mx, %i.ia
  %i.mz = fpext reassoc nsz arcp contract afn float %i.my to double
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1432
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !128
  %i.nd = fmul reassoc nsz arcp contract afn double %i.nc, 3.000000e+00
  call void @cairo_arc(ptr noundef %i.as, double noundef %i.mv, double noundef %i.mz, double noundef %i.nd, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  %i.ne = load i32, ptr %i.iw, align 4, !tbaa !79
  %i.nf = icmp eq i32 %i.ne, 2
  br i1 %i.nf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @cairo_stroke(ptr noundef %i.as) #22
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @cairo_fill(ptr noundef %i.as) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ng = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !12
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, %i.bg
  %i.nj = fpext reassoc nsz arcp contract afn float %i.ni to double
  %i.nk = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !12
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, %i.ia
  %i.nn = fpext reassoc nsz arcp contract afn float %i.nm to double
  %i.no = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 1432
  %i.nq = load double, ptr %i.np, align 8, !tbaa !128
  %i.nr = fmul reassoc nsz arcp contract afn double %i.nq, 3.000000e+00
  call void @cairo_arc(ptr noundef %i.as, double noundef %i.nj, double noundef %i.nn, double noundef %i.nr, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  %i.ns = load i32, ptr %i.iw, align 4, !tbaa !79
  %i.nt = icmp eq i32 %i.ns, 3
  br i1 %i.nt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @cairo_stroke(ptr noundef %i.as) #22
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @cairo_fill(ptr noundef %i.as) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.nu = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !12
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, %i.bg
  %i.nx = fpext reassoc nsz arcp contract afn float %i.nw to double
  %i.ny = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !12
  %i.oa = fmul reassoc nsz arcp contract afn float %i.nz, %i.ia
  %i.ob = fpext reassoc nsz arcp contract afn float %i.oa to double
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1432
  %i.oe = load double, ptr %i.od, align 8, !tbaa !128
  %i.of = fmul reassoc nsz arcp contract afn double %i.oe, 3.000000e+00
  call void @cairo_arc(ptr noundef %i.as, double noundef %i.nx, double noundef %i.ob, double noundef %i.of, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  %i.og = load i32, ptr %i.iw, align 4, !tbaa !79
  %i.oh = icmp eq i32 %i.og, 4
  br i1 %i.oh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @cairo_stroke(ptr noundef %i.as) #22
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @cairo_fill(ptr noundef %i.as) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
end_hunk_0
begin_hunk_1_@get_f:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ %., %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

declare void @dwt_denoise(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

declare i32 @CurveDataSample(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_paint(ptr noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #6

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #6

declare void @cairo_fill(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_iop_rawdenoise_get_params(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, float noundef %4) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [20 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %4, %4
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds [20 x i8], ptr %i.f, i64 %i.b ; 3 uses
  %i.h = load <4 x float>, ptr %i.c, align 4, !tbaa !12
  %i.i = fpext <4 x float> %i.h to <4 x double>
  %i.j = insertelement <4 x double> poison, double %2, i64 0
  %i.k = shufflevector <4 x double> %i.j, <4 x double> poison, <4 x i32> zeroinitializer
  %i.l = fsub reassoc nsz arcp contract afn <4 x double> %i.k, %i.i ; 2 uses
  %i.m = fneg reassoc nsz arcp contract afn <4 x double> %i.l
  %i.n = fmul reassoc nsz arcp contract afn <4 x double> %i.l, %i.m
  %i.o = insertelement <4 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <4 x double> %i.n, %i.p
  %i.r = fptrunc <4 x double> %i.q to <4 x float>
  %i.s = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.r) ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.s
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !12
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.u
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fpext <4 x float> %i.s to <4 x double>
  %i.y = insertelement <4 x double> poison, double %3, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.w
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.g, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fpext reassoc nsz arcp contract afn float %i.ae to double
  %i.ag = fsub reassoc nsz arcp contract afn double %2, %i.af ; 2 uses
  %i.ah = fneg reassoc nsz arcp contract afn double %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn double %i.ag, %i.ah
  %i.aj = fdiv reassoc nsz arcp contract afn double %i.ai, %i.e
  %i.ak = fptrunc reassoc nsz arcp contract afn double %i.aj to float
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ak) ; 2 uses
  %i.am = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = fmul reassoc nsz arcp contract afn float %i.am, %i.ao
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = fpext reassoc nsz arcp contract afn float %i.al to double
  %i.as = fmul reassoc nsz arcp contract afn double %3, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.aq
  %i.au = fptrunc reassoc nsz arcp contract afn double %i.at to float
  store float %i.au, ptr %i.an, align 4, !tbaa !12
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #6

declare void @cairo_restore(ptr noundef) local_unnamed_addr #6

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #6

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #6

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #6

declare void @g_object_unref(ptr noundef) local_unnamed_addr #6

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #6

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

declare void @dt_dev_add_history_item_target(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #6

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #6

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i3 @llvm.bitreverse.i3(i3) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <23 x float> @llvm.masked.load.v23f32.p0(ptr captures(none), <23 x i1>, <23 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

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
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!18 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!19 = !{!"dt_dev_histogram_collection_params_t", !18, i64 0, !8, i64 8}
!20 = !{!"p1 int", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!29 = !{!"p1 float", !13, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !23, i64 8, !21, i64 32, !21, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !22, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !21, i64 120, !8, i64 128, !8, i64 132, !23, i64 136, !23, i64 156, !23, i64 176, !23, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !13, i64 16}
!33 = !{!"dt_iop_rawdenoise_data_t", !11, i64 0, !7, i64 8, !8, i64 40, !7, i64 44}
!34 = !{!33, !11, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!7, !7, i64 0}
!39 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!40 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!41 = !{!"dt_pthread_mutex_t", !7, i64 0}
!42 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!43 = !{!"", !28, i64 0, !28, i64 8}
!44 = !{!"", !16, i64 0, !8, i64 8}
!45 = !{!"", !43, i64 0, !44, i64 16}
!46 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!47 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!48 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!49 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !39, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !20, i64 608, !22, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !40, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !41, i64 712, !13, i64 752, !13, i64 760, !42, i64 768, !42, i64 776, !13, i64 784, !45, i64 792, !46, i64 824, !46, i64 832, !46, i64 840, !46, i64 848, !46, i64 856, !46, i64 864, !46, i64 872, !8, i64 880, !46, i64 888, !46, i64 896, !46, i64 904, !47, i64 912, !47, i64 920, !46, i64 928, !46, i64 936, !8, i64 944, !48, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !46, i64 1096, !13, i64 1104, !8, i64 1112}
!50 = !{!49, !13, i64 688}
!51 = !{!49, !46, i64 824}
!52 = !{!"dt_iop_rawdenoise_params_t", !11, i64 0, !7, i64 4, !7, i64 84}
!53 = !{!"p1 _ZTS15dt_draw_curve_t", !13, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"", !11, i64 0, !11, i64 4}
!56 = !{!55, !11, i64 0}
!57 = !{!55, !11, i64 4}
!58 = !{!"", !8, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 24}
!59 = !{!"p1 short", !13, i64 0}
!60 = !{!"", !8, i64 0, !8, i64 4, !59, i64 8}
!61 = !{!"dt_draw_curve_t", !58, i64 0, !60, i64 184}
!62 = !{!61, !8, i64 184}
!63 = !{!61, !8, i64 188}
!64 = !{!61, !59, i64 192}
!65 = !{!24, !24, i64 0}
!66 = !{!61, !8, i64 0}
!67 = !{!61, !7, i64 20}
!68 = !{!49, !13, i64 704}
!69 = !{!"p1 _ZTS15_GtkDrawingArea", !13, i64 0}
!70 = !{!"p1 _ZTS12_GtkNotebook", !13, i64 0}
!71 = !{!"double", !7, i64 0}
!72 = !{!"dt_iop_rawdenoise_gui_data_t", !53, i64 0, !46, i64 8, !69, i64 16, !70, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !11, i64 56, !52, i64 60, !8, i64 224, !8, i64 228, !8, i64 232, !7, i64 236, !7, i64 492, !7, i64 748, !7, i64 1004, !7, i64 1260, !7, i64 1516}
!73 = !{!72, !69, i64 16}
!74 = !{!72, !8, i64 232}
!75 = !{!72, !70, i64 24}
!76 = !{!72, !53, i64 0}
!77 = !{!72, !71, i64 48}
!78 = !{!72, !8, i64 224}
!79 = !{!72, !8, i64 228}
!80 = !{!72, !11, i64 56}
!81 = !{!"dt_codepath_t", !8, i64 0}
!82 = !{!"p1 _ZTS6_GList", !13, i64 0}
!83 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!84 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!85 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!86 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!87 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!88 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!89 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!90 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!91 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!92 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!93 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!94 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!95 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!96 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!97 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!98 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!99 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!100 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!101 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!102 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!103 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!104 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!105 = !{!"p1 omnipotent char", !13, i64 0}
!106 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!107 = !{!"_Bool", !7, i64 0}
!108 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!109 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!110 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!111 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!112 = !{!"", !106, i64 0, !41, i64 8, !7, i64 48, !107, i64 96, !107, i64 97, !108, i64 104, !109, i64 112, !110, i64 120, !111, i64 128, !111, i64 136, !111, i64 144}
!113 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!114 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!115 = !{!"dt_sys_resources_t", !21, i64 0, !21, i64 8, !20, i64 16, !20, i64 24, !8, i64 32}
!116 = !{!"dt_backthumb_t", !71, i64 0, !71, i64 8, !8, i64 16, !8, i64 20}
!117 = !{!"dt_gimp_t", !8, i64 0, !105, i64 8, !105, i64 16, !8, i64 24, !8, i64 28}
!118 = !{!"dt_splash_t", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !8, i64 32}
!119 = !{!"darktable_t", !81, i64 0, !8, i64 4, !8, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !83, i64 48, !84, i64 56, !40, i64 64, !85, i64 72, !86, i64 80, !87, i64 88, !88, i64 96, !89, i64 104, !90, i64 112, !91, i64 120, !92, i64 128, !93, i64 136, !94, i64 144, !95, i64 152, !96, i64 160, !97, i64 168, !98, i64 176, !99, i64 184, !100, i64 192, !101, i64 200, !102, i64 208, !103, i64 216, !104, i64 224, !7, i64 232, !41, i64 2792, !41, i64 2832, !41, i64 2872, !41, i64 2912, !41, i64 2952, !41, i64 2992, !105, i64 3032, !105, i64 3040, !105, i64 3048, !105, i64 3056, !105, i64 3064, !105, i64 3072, !105, i64 3080, !105, i64 3088, !105, i64 3096, !105, i64 3104, !105, i64 3112, !105, i64 3120, !105, i64 3128, !112, i64 3136, !82, i64 3288, !71, i64 3296, !82, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !113, i64 3520, !114, i64 3528, !115, i64 3536, !116, i64 3576, !117, i64 3600, !118, i64 3632, !8, i64 3672}
!120 = !{!119, !89, i64 104}
!121 = !{!49, !13, i64 680}
!122 = !{i64 0, i64 4, !12, i64 4, i64 80, !38, i64 84, i64 80, !38}
!123 = !{!"p1 _ZTS7dt_ui_t", !13, i64 0}
!124 = !{!"dt_gui_widgets_t", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!125 = !{!"dt_gui_scrollbars_t", !46, i64 0, !46, i64 8, !8, i64 16}
!126 = !{!"p1 _ZTS14_cairo_surface", !13, i64 0}
!127 = !{!"dt_gui_gtk_t", !123, i64 0, !124, i64 8, !125, i64 56, !126, i64 80, !8, i64 88, !105, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !71, i64 1384, !71, i64 1392, !71, i64 1400, !71, i64 1408, !46, i64 1416, !71, i64 1424, !71, i64 1432, !71, i64 1440, !71, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!128 = !{!127, !71, i64 1432}
!129 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!130 = !{!129, !8, i64 8}
!131 = !{!129, !8, i64 12}
!132 = !{!72, !71, i64 40}
!133 = !{!72, !71, i64 32}
!134 = !{!"p1 _ZTS10_GdkWindow", !13, i64 0}
!135 = !{!"p1 double", !13, i64 0}
!136 = !{!"p1 _ZTS10_GdkDevice", !13, i64 0}
!137 = !{!"_GdkEventButton", !8, i64 0, !134, i64 8, !7, i64 16, !8, i64 20, !71, i64 24, !71, i64 32, !135, i64 40, !8, i64 48, !8, i64 52, !136, i64 56, !71, i64 64, !71, i64 72}
!138 = !{!137, !8, i64 52}
!139 = !{!119, !40, i64 64}
!140 = !{!"dt_iop_rawdenoise_params_v1_t", !11, i64 0}
!141 = !{!140, !11, i64 0}
!142 = !{!"dt_iop_rawdenoise_params_v2_t", !11, i64 0, !7, i64 4, !7, i64 84}
!143 = !{!142, !11, i64 0}
!144 = distinct !{!144, i1 false, !"wavelet_denoise"}
!145 = distinct !{!145, !144, !"wavelet_denoise: argument 0"}
!146 = distinct !{!146, !144, !"wavelet_denoise: argument 1"}
!147 = distinct !{!147, !35, !36}
!148 = distinct !{!148, !35, !36}
!149 = distinct !{!149, !36, !35}
!150 = distinct !{!150, !35, !36}
!151 = distinct !{!151, !36, !35}
!152 = distinct !{!152, i1 false, !"wavelet_denoise_xtrans"}
!153 = distinct !{!153, !152, !"wavelet_denoise_xtrans: argument 0"}
!154 = distinct !{!154, !152, !"wavelet_denoise_xtrans: argument 1"}
!155 = distinct !{!155, !35, !36}
!156 = distinct !{!156, !35, !36}
!157 = distinct !{!157, !37}
!158 = distinct !{!158, !35}
!159 = distinct !{!159, !35, !36}
!160 = distinct !{!160, !36, !35}
!161 = !{!23, !8, i64 8}
!162 = !{!23, !8, i64 12}
!163 = !{!31, !8, i64 132}
!164 = !{!31, !8, i64 516}
!165 = !{!145}
!166 = !{!146}
!167 = !{!145, !146}
end_hunk_1
