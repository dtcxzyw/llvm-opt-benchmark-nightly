Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colormapping?download=true
inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@gui_init:bb.a
  store ptr null, ptr %i.n, align 8, !tbaa !77
  %i.o = tail call ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef f0x3FD5555555555555) #21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8344 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !89
  %i.q = tail call i64 @g_signal_connect_data(ptr noundef %i.o, ptr noundef nonnull @.str.9, ptr noundef nonnull @cluster_preview_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.r = tail call ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef f0x3FD5555555555555) #21 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8352 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !90
  %i.t = tail call i64 @g_signal_connect_data(ptr noundef %i.r, ptr noundef nonnull @.str.9, ptr noundef nonnull @cluster_preview_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.u = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 5) #21 ; 3 uses
  %i.v = tail call ptr @dt_iop_button_new(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @acquire_source_button_pressed, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %i.u) #21 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8328 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !172
  %i.x = tail call ptr @gtk_bin_get_child(ptr noundef %i.v) #21
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.x, i32 noundef 1) #21
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !172
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.y, ptr noundef %i.z) #21
  %i.aa = tail call ptr @dt_iop_button_new(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @acquire_target_button_pressed, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %i.u) #21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8336 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !173
  %i.ac = tail call ptr @gtk_bin_get_child(ptr noundef %i.aa) #21
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.ac, i32 noundef 1) #21
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !173
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ad, ptr noundef %i.ae) #21
  %i.af = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #21
  %i.ag = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #21
  %i.ah = tail call ptr @gtk_label_new(ptr noundef %i.ag) #21 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ah, ptr noundef nonnull @.str.53, i32 noundef 1, ptr noundef nonnull @.str.54, double noundef 0.000000e+00, ptr noundef nonnull @.str.55, i32 noundef 3, ptr noundef null) #21
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !89
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !174
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #21
  %i.am = tail call ptr @gtk_label_new(ptr noundef %i.al) #21 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.am, ptr noundef nonnull @.str.53, i32 noundef 1, ptr noundef nonnull @.str.54, double noundef 0.000000e+00, ptr noundef nonnull @.str.55, i32 noundef 3, ptr noundef null) #21
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !174
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !90
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !174
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.u, ptr %i.ap, align 8, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aq, align 8, !tbaa !174
  %i.ar = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.14, i32 noundef 1013, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.af, ptr noundef nonnull %i.a) #21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !175
  %i.at = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.17) #21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8360
  store ptr %i.at, ptr %i.au, align 8, !tbaa !87
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.at, ptr noundef %i.av) #21
  %i.aw = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.19) #21 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8368 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !176
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aw, ptr noundef %i.ay) #21
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !176
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.az, ptr noundef nonnull @.str.21) #21
  %i.ba = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.22) #21 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8376 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !177
  %i.bc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ba, ptr noundef %i.bc) #21
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !177
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bd, ptr noundef nonnull @.str.21) #21
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !178
  %i.bf = and i32 %i.be, 2
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3400), align 8
  %i.bi = icmp ne i32 %i.bh, 0
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !179
  %i.bk = and i32 %i.bj, 1048576
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.14, i32 noundef 1028, ptr noundef nonnull @__FUNCTION__.gui_init) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_iop_gui_alloc.exit
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !180
  call void @dt_control_signal_connect(ptr noundef %i.bl, i32 noundef 21, ptr noundef nonnull @process_clusters, ptr noundef nonnull %0) #21
  %i.bm = call noalias ptr @fopen(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) ; 3 uses
  %.not45 = icmp eq ptr %i.bm, null
  br i1 %.not45, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = call i64 @fread(ptr noundef nonnull %i.bn, i64 noundef 8296, i64 noundef 1, ptr noundef nonnull %i.bm)
  %.not46 = icmp eq i64 %i.bo, 0
  br i1 %.not46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.e, align 4, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = call i32 @fclose(ptr noundef nonnull %i.bm) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

declare ptr @dt_colorspaces_get_profile(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsCreateTransform(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @cluster_preview_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = alloca [3 x double], align 16            ; 17 uses
  %4 = alloca %struct.cmsCIELab, align 8          ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !182  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !183  ; 2 uses
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1440
  %i.o = load double, ptr %i.n, align 8, !tbaa !189 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn double %i.o, %i.l
  %i.q = fptosi double %i.p to i32
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.s = fmul reassoc nsz arcp contract afn double %i.o, %i.r
  %i.t = fptosi double %i.s to i32
  %i.u = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.q, i32 noundef %i.t) #21 ; 4 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1440
  %i.x = load double, ptr %i.w, align 8, !tbaa !189 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.u, double noundef %i.x, double noundef %i.x) #21
  %i.y = call ptr @cairo_create(ptr noundef %i.u) #21 ; 14 uses
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #21
  call void @cairo_paint(ptr noundef %i.y) #21
  call void @cairo_translate(ptr noundef %i.y, double noundef 5.000000e+00, double noundef 5.000000e+00) #21
  %i.z = add nsw i32 %i.k, -10                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader60.lr.ph, label %._crit_edge

.preheader60.lr.ph:                               ; preds = %bb.a
  %i.ad = add nsw i32 %i.i, -10
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  %i.af = add nsw i32 %i.ab, -1
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to float
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1432
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !190
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, 2.000000e+00
  %i.al = fptrunc reassoc nsz arcp contract afn double %i.ak to float ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.ag, %i.al
  %i.an = fsub reassoc nsz arcp contract afn float %i.ae, %i.am
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.ab to float
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.an, %i.ao ; 4 uses
  %i.aq = icmp eq ptr %0, %i.g                    ; 2 uses
  %.59 = select i1 %i.aq, i64 8248, i64 16540
  %. = select i1 %i.aq, i64 8208, i64 16500
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %.59
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8384 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ax = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, f0x3FD5555555555555 ; 4 uses
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ba = fmul reassoc nnan nsz arcp contract afn double %i.az, f0x3FD5555555555555 ; 3 uses
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ap, %i.al
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  %i.bd = fmul reassoc nsz arcp contract afn float %i.ap, 0.000000e+00
  %i.be = fpext reassoc ninf nsz arcp contract afn float %i.bd to double
  %i.bf = fmul reassoc ninf nsz arcp contract afn double %i.be, f0x3FD5555555555555
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ap, 2.000000e+00
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double
  %i.bi = fmul reassoc nsz arcp contract afn double %i.bh, f0x3FD5555555555555
  br label %.preheader60

.preheader60:                                     ; preds = %.preheader60.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader60.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  br label %.preheader

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @cairo_destroy(ptr noundef %i.y) #21
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.u, double noundef 0.000000e+00, double noundef 0.000000e+00) #21
  call void @cairo_paint(ptr noundef %1) #21
  call void @cairo_surface_destroy(ptr noundef %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 1

.preheader:                                       ; preds = %.preheader60, %.preheader
  %.05562 = phi i32 [ -1, %.preheader60 ], [ %i.bn, %.preheader ] ; 2 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %.05562 to float ; 3 uses
  %i.bn = add nsw i32 %.05562, 1                  ; 3 uses
  %i.bo = mul nsw i32 %i.bn, %i.z
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to double
  %i.bq = fmul reassoc nnan nsz arcp contract afn double %i.bp, f0x3FD5555555555555 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !192
  %i.br = load float, ptr %i.bk, align 4, !tbaa !82
  %i.bs = load float, ptr %i.bl, align 4, !tbaa !82
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bm
  %5 = load <2 x float>, ptr %i.bj, align 4, !tbaa !82 ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.br, i64 0
  %7 = insertelement <2 x float> %6, float %i.bt, i64 1 ; 2 uses
  %8 = fsub reassoc nsz arcp contract afn <2 x float> %5, %7
  %9 = fadd reassoc nsz arcp contract afn <2 x float> %5, %7
  %10 = shufflevector <2 x float> %8, <2 x float> %9, <2 x i32> <i32 0, i32 3>
  %i.bu = fpext <2 x float> %10 to <2 x double>
  store <2 x double> %i.bu, ptr %i.at, align 8, !tbaa !193
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !97
  call void @cmsDoTransform(ptr noundef %i.bv, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.bw = load double, ptr %i.a, align 16, !tbaa !193
  %i.bx = load double, ptr %i.av, align 8, !tbaa !193
  %i.by = load double, ptr %i.aw, align 16, !tbaa !193
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.bw, double noundef %i.bx, double noundef %i.by) #21
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1432
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !190
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, 5.000000e-01 ; 2 uses
  %i.cd = fsub reassoc nsz arcp contract afn double %i.ay, %i.cc
  %i.ce = fsub reassoc nsz arcp contract afn double %i.ba, %i.cc
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.bf, double noundef %i.bq, double noundef %i.cd, double noundef %i.ce) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !192
  %i.cf = load <2 x float>, ptr %i.bj, align 4, !tbaa !82
  %i.cg = load <2 x float>, ptr %i.bk, align 4, !tbaa !82
  %i.ch = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bm, i64 1
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cf
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  store <2 x double> %i.ck, ptr %i.at, align 8, !tbaa !193
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !97
  call void @cmsDoTransform(ptr noundef %i.cl, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.cm = load double, ptr %i.a, align 16, !tbaa !193
  %i.cn = load double, ptr %i.av, align 8, !tbaa !193
  %i.co = load double, ptr %i.aw, align 16, !tbaa !193
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.cm, double noundef %i.cn, double noundef %i.co) #21
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1432
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !190
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cr, 5.000000e-01 ; 2 uses
  %i.ct = fsub reassoc nsz arcp contract afn double %i.ay, %i.cs
  %i.cu = fsub reassoc nsz arcp contract afn double %i.ba, %i.cs
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.ay, double noundef %i.bq, double noundef %i.ct, double noundef %i.cu) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !192
  %i.cv = load float, ptr %i.bk, align 4, !tbaa !82
  %i.cw = load float, ptr %i.bl, align 4, !tbaa !82
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.bm
  %i.cy = load <2 x float>, ptr %i.bj, align 4, !tbaa !82
  %i.cz = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cx, i64 1
  %i.db = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cy
  %i.dc = fpext <2 x float> %i.db to <2 x double>
  store <2 x double> %i.dc, ptr %i.at, align 8, !tbaa !193
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !97
  call void @cmsDoTransform(ptr noundef %i.dd, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.de = load double, ptr %i.a, align 16, !tbaa !193
  %i.df = load double, ptr %i.av, align 8, !tbaa !193
  %i.dg = load double, ptr %i.aw, align 16, !tbaa !193
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.de, double noundef %i.df, double noundef %i.dg) #21
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1432
  %i.dj = load double, ptr %i.di, align 8, !tbaa !190
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, 5.000000e-01 ; 2 uses
  %i.dl = fsub reassoc nsz arcp contract afn double %i.ay, %i.dk
  %i.dm = fsub reassoc nsz arcp contract afn double %i.ba, %i.dk
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.bi, double noundef %i.bq, double noundef %i.dl, double noundef %i.dm) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond.not = icmp eq i32 %i.bn, 2
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  call void @cairo_translate(ptr noundef %i.y, double noundef %i.bc, double noundef 0.000000e+00) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load i32, ptr %i.aa, align 4, !tbaa !81
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next, %i.do
  br i1 %i.dp, label %.preheader60, label %._crit_edge
}

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_iop_button_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @acquire_source_button_pressed(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74
  %i.g = and i32 %i.f, -14
  %i.h = or disjoint i32 %i.g, 12
  store i32 %i.h, ptr %i.e, align 4, !tbaa !74
  tail call void @dt_iop_request_focus(ptr noundef %1) #21
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !136
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @acquire_target_button_pressed(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74
  %i.g = and i32 %i.f, -23
  %i.h = or disjoint i32 %i.g, 20
  store i32 %i.h, ptr %i.e, align 4, !tbaa !74
  tail call void @dt_iop_request_focus(ptr noundef %1) #21
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !136
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @process_clusters(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 28 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %.not70 = icmp eq ptr %i.g, null
  br i1 %.not70, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 4, !tbaa !74
  %i.i = and i32 %i.h, 4
  %.not71 = icmp eq i32 %i.i, 0
  br i1 %.not71, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = atomicrmw add ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 3 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #21 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !78   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !79   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !80
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = sext i32 %i.r to i64
  %i.w = sext i32 %i.t to i64
  %i.x = mul nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = shl i64 %i.x, 2
  %i.z = mul i64 %i.y, %i.u
  %i.aa = tail call ptr @dt_alloc_aligned(i64 noundef %i.z) #21 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %.not72 = icmp eq ptr %i.aa, null
  br i1 %.not72, label %bb.e, label %bb.f
end_hunk_0
