Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 63
begin_hunk_0_@gui_init:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %_iop_gui_alloc.exit
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.y = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.x) #23 ; 0 uses
  %i.z = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.000000e+02, float noundef 2.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !67
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.z, ptr noundef %i.ab) #23
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ad = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ac, ptr noundef null, ptr noundef nonnull @.str.28) #23 ; 0 uses
  %i.ae = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !68
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.ag) #23
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ai = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.30) #23 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !68
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aj, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e-01) #23
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !68
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ak, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !68
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.al, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e-01) #23
  %i.am = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !69
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.am, ptr noundef %i.ao) #23
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.aq = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ap, ptr noundef null, ptr noundef nonnull @.str.32) #23 ; 0 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !69
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !69
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.as, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !69
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.at, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #23
  %i.au = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.280000e+02, float noundef 1.280000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !70
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.aw) #23
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !70
  %i.ay = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ax, ptr noundef null, ptr noundef nonnull @.str.34) #23 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.az, align 8, !tbaa !66
  %i.ba = call ptr @dt_bauhaus_combobox_new(ptr noundef nonnull %0) #23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !213
  %i.bc = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ba, ptr noundef null, ptr noundef nonnull @.str.35) #23 ; 0 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.be = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.be) #23
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.bg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bf, ptr noundef %i.bg) #23
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bh, ptr noundef %i.bi) #23
  %i.bj = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  %i.bk = load <4 x ptr>, ptr %i.c, align 8, !tbaa !214
  store <4 x ptr> %i.bk, ptr %i.b, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = load <2 x ptr>, ptr %i.an, align 8, !tbaa !214
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !213
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bp, align 8, !tbaa !14
  %i.bq = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.39, i32 noundef 1616, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bj, ptr noundef nonnull %i.b) #23
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !215
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.bt = call i64 @g_signal_connect_data(ptr noundef %i.bs, ptr noundef nonnull @.str.40, ptr noundef nonnull @patch_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.bv = call i64 @g_signal_connect_data(ptr noundef %i.bu, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_L_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.bx = call i64 @g_signal_connect_data(ptr noundef %i.bw, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_a_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.bz = call i64 @g_signal_connect_data(ptr noundef %i.by, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_b_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !70
  %i.cb = call i64 @g_signal_connect_data(ptr noundef %i.ca, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_C_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.cd = call i64 @g_signal_connect_data(ptr noundef %i.cc, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph:                                           ; preds = %_iop_gui_alloc.exit, %.lr.ph
  %.071 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %_iop_gui_alloc.exit ] ; 2 uses
  %i.ce = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #23
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.ce, i32 noundef %.071) #23 ; 0 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_add(ptr noundef %i.cg, ptr noundef nonnull %i.a) #23
  %i.ch = add nuw nsw i32 %.071, 1                ; 2 uses
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !17
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge
}

declare ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef) local_unnamed_addr #3

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @checker_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !218  ; 4 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !224 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #23 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !224 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #23
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #23 ; 19 uses
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  call void @cairo_paint(ptr noundef %i.v) #23
  call void @cairo_set_antialias(ptr noundef %i.v, i32 noundef 1) #23
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = icmp sgt i32 %i.x, 24                    ; 2 uses
  %i.z = select i1 %i.y, i32 7, i32 6             ; 4 uses
  %i.aa = select i1 %i.y, i32 7, i32 4            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.ad = uitofp nneg i32 %i.z to float           ; 3 uses
  %i.ae = uitofp nneg i32 %i.aa to float          ; 3 uses
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %i.ad
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double ; 4 uses
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ae
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.ao = zext nneg i32 %i.z to i64               ; 2 uses
  %wide.trip.count128 = zext nneg i32 %i.aa to i64
  %i.ap = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ae
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv125 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next126, %bb.c ] ; 3 uses
  %i.ar = mul nuw nsw i64 %indvars.iv125, %i.ao
  %i.as = trunc i64 %indvars.iv125 to i32
  %i.at = mul i32 %i.h, %i.as
  %i.au = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.ap
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !65 ; 4 uses
  %.not = icmp eq i32 %i.ay, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.k
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %bb.b, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.az = add nuw nsw i64 %indvars.iv, %i.ar      ; 7 uses
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !17
  %i.bb = sext i32 %i.ba to i64
  %.not115 = icmp slt i64 %i.az, %i.bb
  br i1 %.not115, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.az ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.az ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bf, 2.000000e-03
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, 5.000000e-03
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bj, f0x3E0D3DCB ; 5 uses
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bi ; 4 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %4 = fsub reassoc nsz arcp contract afn float %i.bl, %i.bk ; 3 uses
  %5 = insertelement <4 x float> poison, float %i.bm, i64 0
  %6 = insertelement <4 x float> %5, float %i.bl, i64 1
  %7 = insertelement <4 x float> %6, float %4, i64 3 ; 2 uses
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %9 = fcmp reassoc nsz arcp contract afn ogt <4 x float> %8, splat (float f0x3E53DCB1)
  %10 = fmul reassoc nsz arcp contract afn float %4, %4
  %11 = insertelement <4 x float> poison, float %i.bn, i64 0
  %12 = insertelement <4 x float> %11, float %i.bo, i64 1
  %13 = insertelement <4 x float> %12, float %i.bm, i64 2
  %14 = insertelement <4 x float> %13, float %10, i64 3
  %15 = insertelement <4 x float> %7, float %i.bn, i64 2
  %16 = fmul reassoc nsz arcp contract afn <4 x float> %14, %15
  %17 = fmul reassoc nsz arcp contract afn <4 x float> %8, splat (float f0x3E038026)
  %18 = fadd reassoc nsz arcp contract afn <4 x float> %17, splat (float f0xBC911AA6)
  %19 = select <4 x i1> %9, <4 x float> %16, <4 x float> %18 ; 4 uses
  %20 = shufflevector <4 x float> <float f0x3FCEF57D, float f0x3F719831, float f0x3E6A7CB9, float poison>, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %21 = fmul reassoc nsz arcp contract afn <4 x float> %20, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %22 = fmul reassoc nsz arcp contract afn <4 x float> %19, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %23 = shufflevector <4 x float> %19, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %23, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %25 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %26 = fmul reassoc nsz arcp contract afn <4 x float> %21, %25
  %27 = fadd reassoc nsz arcp contract afn <4 x float> %21, %25
  %28 = shufflevector <4 x float> %26, <4 x float> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %29 = fsub reassoc nsz arcp contract afn <4 x float> %22, %28
  %30 = fadd reassoc nsz arcp contract afn <4 x float> %22, %28
  %31 = shufflevector <4 x float> %29, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %32 = fadd reassoc nsz arcp contract afn <4 x float> %31, %24 ; 3 uses
  %33 = fmul reassoc nsz arcp contract afn <4 x float> %31, %24
  %34 = shufflevector <4 x float> %32, <4 x float> %33, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bp = bitcast <4 x float> %34 to <4 x i32>    ; 2 uses
  %i.bq = and <4 x i32> %i.bp, splat (i32 8388607)
  %i.br = or disjoint <4 x i32> %i.bq, splat (i32 1065353216)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 5 uses
  %i.bt = lshr <4 x i32> %i.bp, splat (i32 23)
  %i.bu = and <4 x i32> %i.bt, splat (i32 255)
  %i.bv = add nsw <4 x i32> %i.bu, splat (i32 -127)
  %i.bw = sitofp <4 x i32> %i.bv to <4 x float>
  %i.bx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bs, splat (float f0x3D74552F)
  %i.by = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bx, splat (float f0xBEEE7397)
  %i.bz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.by, %i.bs
  %i.ca = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bz, splat (float f0x3FBD96DD)
  %i.cb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ca, %i.bs
  %i.cc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.cb, splat (float f0xC02153F6)
  %i.cd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cc, %i.bs
  %i.ce = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.cd, splat (float f0x4038D96C)
  %i.cf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bs, splat (float -1.000000e+00)
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn <4 x float> %i.cg, %i.bw
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %i.ch, splat (float f0x3ED55555)
  %i.cj = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ci, <4 x float> splat (float 1.290000e+02))
  %i.ck = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cj, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.cl = fadd reassoc nsz arcp contract afn <4 x float> %i.ck, splat (float -5.000000e-01)
  %i.cm = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cl)
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float> ; 3 uses
  %35 = extractelement <4 x float> %32, i64 0     ; 2 uses
  %i.co = fcmp reassoc nsz arcp contract afn ugt float %35, 3.130800e-03
  br i1 %i.co, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = fmul reassoc nnan nsz arcp contract afn float %35, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.cn, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.ck, %i.cn
  %i.cq = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, f0x3C5DBE69
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, f0x3D5509F9
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cq
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, f0x3E773CC5
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cq
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, f0x3F3168B3
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cq
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, f0x3F800016
  %i.cz = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.da = shl i32 %i.cz, 23
  %i.db = add i32 %i.da, 1065353216
  %i.dc = bitcast i32 %i.db to float
  %i.dd = fmul reassoc nnan nsz arcp contract afn float %i.dc, 1.055000e+00
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.cy
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.f, %bb.g
  %i.dg = phi reassoc nsz arcp contract afn float [ %i.cp, %bb.f ], [ %i.df, %bb.g ]
  %i.dh = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.di = fptosi <2 x float> %i.dh to <2 x i32>
  %i.dj = shl <2 x i32> %i.di, splat (i32 23)
  %i.dk = add <2 x i32> %i.dj, splat (i32 1065353216)
  %i.dl = bitcast <2 x i32> %i.dk to <2 x float>
  %36 = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %37 = fsub reassoc nsz arcp contract afn <2 x float> %36, %i.dh ; 4 uses
  %38 = fmul reassoc nsz arcp contract afn <2 x float> %37, splat (float f0x3C5DBE69)
  %39 = fadd reassoc nsz arcp contract afn <2 x float> %38, splat (float f0x3D5509F9)
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %39, %37
  %i.dn = fadd reassoc nsz arcp contract afn <2 x float> %i.dm, splat (float f0x3E773CC5)
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %37
  %i.dp = fadd reassoc nsz arcp contract afn <2 x float> %i.do, splat (float f0x3F3168B3)
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.dp, %37
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dq, splat (float f0x3F800016)
  %40 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %40, splat (float 1.292000e+01)
  %41 = fcmp reassoc nsz arcp contract afn ugt <2 x float> %40, splat (float 3.130800e-03)
  %i.dt = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.dl, splat (float 1.055000e+00)
  %i.du = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, %i.dr
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.du, splat (float -5.500000e-02)
  %i.dw = select <2 x i1> %41, <2 x float> %i.dv, <2 x float> %i.ds
  %i.dx = fpext reassoc nsz arcp contract afn float %i.dg to double
  %i.dy = fpext <2 x float> %i.dw to <2 x double> ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = extractelement <2 x double> %i.dy, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.dx, double noundef %i.dz, double noundef %i.ea) #23
  %i.eb = trunc i64 %indvars.iv to i32
  %i.ec = mul i32 %i.f, %i.eb
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.aq
  %i.ef = fpext reassoc nsz arcp contract afn float %i.ee to double ; 3 uses
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1432
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !225 ; 2 uses
  %i.ej = fsub reassoc nsz arcp contract afn double %i.ah, %i.ei
  %i.ek = fsub reassoc nsz arcp contract afn double %i.ak, %i.ei
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.ef, double noundef %i.aw, double noundef %i.ej, double noundef %i.ek) #23
  call void @cairo_fill(ptr noundef %i.v) #23
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az
  %i.em = load float, ptr %i.el, align 4, !tbaa !12
  %i.en = load float, ptr %i.bc, align 4, !tbaa !12
  %i.eo = fsub reassoc nsz arcp contract afn float %i.em, %i.en
  %i.ep = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eo)
  %i.eq = fcmp reassoc nsz arcp contract afn ogt float %i.ep, f0x3727C5AC
  br i1 %i.eq, label %bb.j, label %bb.h

bb.h:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.az
  %i.es = load float, ptr %i.er, align 4, !tbaa !12
  %i.et = load float, ptr %i.be, align 4, !tbaa !12
  %i.eu = fsub reassoc nsz arcp contract afn float %i.es, %i.et
  %i.ev = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eu)
  %i.ew = fcmp reassoc nsz arcp contract afn ogt float %i.ev, f0x3727C5AC
  br i1 %i.ew, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %i.ez = load float, ptr %i.bg, align 4, !tbaa !12
  %i.fa = fsub reassoc nsz arcp contract afn float %i.ey, %i.ez
  %i.fb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp reassoc nsz arcp contract afn ogt float %i.fb, f0x3727C5AC
  br i1 %i.fc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %dt_XYZ_to_sRGB.exit
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1432
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !225
  %i.fg = fmul reassoc nsz arcp contract afn double %i.ff, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.fg) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1432
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !225 ; 3 uses
  %i.fk = fadd reassoc nsz arcp contract afn double %i.fj, %i.ef
  %i.fl = fadd reassoc nsz arcp contract afn double %i.fj, %i.aw
  %i.fm = fmul reassoc nsz arcp contract afn double %i.fj, 3.000000e+00 ; 2 uses
  %i.fn = fsub reassoc nsz arcp contract afn double %i.ah, %i.fm
  %i.fo = fsub reassoc nsz arcp contract afn double %i.ak, %i.fm
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.fk, double noundef %i.fl, double noundef %i.fn, double noundef %i.fo) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1432
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !225
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.fr) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1432
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !225 ; 2 uses
  %i.fv = fmul reassoc nsz arcp contract afn double %i.fu, 2.000000e+00 ; 2 uses
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fv, %i.ef
  %i.fx = fadd reassoc nsz arcp contract afn double %i.fv, %i.aw
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fu, 5.000000e+00 ; 2 uses
  %i.fz = fsub reassoc nsz arcp contract afn double %i.ah, %i.fy
  %i.ga = fsub reassoc nsz arcp contract afn double %i.ak, %i.fy
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.fw, double noundef %i.fx, double noundef %i.fz, double noundef %i.ga) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.b
  %i.gb = srem i32 %i.ay, %i.z
  %i.gc = sdiv i32 %i.ay, %i.z
  %i.gd = sext i32 %i.ay to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !12
  %i.gg = fcmp reassoc nsz arcp contract afn ogt float %i.gf, 8.000000e+01
  %spec.select = select i1 %i.gg, double 0.000000e+00, double 1.000000e+00 ; 3 uses
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1432
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !225
  %i.gk = fmul reassoc nsz arcp contract afn double %i.gj, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.gk) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %spec.select, double noundef %spec.select, double noundef %spec.select) #23
  %i.gl = mul nsw i32 %i.gb, %i.f
  %i.gm = sitofp reassoc nsz arcp contract afn i32 %i.gl to float
  %i.gn = fdiv reassoc nsz arcp contract afn float %i.gm, %i.ad
  %i.go = fpext reassoc nsz arcp contract afn float %i.gn to double
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1432
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !225 ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, 5.000000e+00 ; 2 uses
  %i.gt = fadd reassoc nsz arcp contract afn double %i.gs, %i.go
  %i.gu = mul nsw i32 %i.gc, %i.h
  %i.gv = sitofp reassoc nsz arcp contract afn i32 %i.gu to float
  %i.gw = fdiv reassoc nsz arcp contract afn float %i.gv, %i.ae
  %i.gx = fpext reassoc nsz arcp contract afn float %i.gw to double
  %i.gy = fadd reassoc nsz arcp contract afn double %i.gs, %i.gx
  %i.gz = fmul reassoc nsz arcp contract afn double %i.gr, 1.100000e+01 ; 2 uses
  %i.ha = fsub reassoc nsz arcp contract afn double %i.ah, %i.gz
  %i.hb = fsub reassoc nsz arcp contract afn double %i.ak, %i.gz
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.gt, double noundef %i.gy, double noundef %i.ha, double noundef %i.hb) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @cairo_destroy(ptr noundef %i.v) #23
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %1) #23
  call void @cairo_surface_destroy(ptr noundef %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @checker_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x i32>, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !47 ; 3 uses
  %i.i = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.j = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.h, %i.i
  %i.k = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.h, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> zeroinitializer, <2 x double> %i.h
  %i.m = select <2 x i1> %i.j, <2 x double> %i.i, <2 x double> %i.l
  %i.n = fptrunc <2 x double> %i.m to <2 x float>
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 11 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17   ; 4 uses
  %i.q = icmp sgt i32 %i.p, 24                    ; 2 uses
  %spec.select167 = select i1 %i.q, i32 7, i32 6  ; 2 uses
  %spec.select168 = select i1 %i.q, float 7.000000e+00, float 4.000000e+00
  %i.r = uitofp nneg i32 %spec.select167 to float
  %i.s = sitofp <2 x i32> %i.g to <2 x float>
  %i.t = insertelement <2 x float> poison, float %i.r, i64 0
  %i.u = insertelement <2 x float> %i.t, float %spec.select168, i64 1
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.n
  %i.w = fdiv reassoc nsz arcp contract afn <2 x float> %i.v, %i.s ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fptosi float %i.x to i32
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fptosi float %i.z to i32
  %i.ab = mul nsw i32 %spec.select167, %i.aa
  %i.ac = add nsw i32 %i.ab, %i.y                 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !233
  switch i32 %i.ae, label %.thread173 [
    i32 1, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.af = load i32, ptr %1, align 8, !tbaa !234
  %i.ag = icmp eq i32 %i.af, 5
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp sgt i32 %i.ac, -1
  %.not165 = icmp slt i32 %i.ac, %i.p
  %or.cond = select i1 %i.ah, i1 %.not165, i1 false
  br i1 %or.cond, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.ai = zext nneg i32 %i.ac to i64              ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ai
  store float %i.ak, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ai
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ai
  store float %i.ap, ptr %i.ar, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ai
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ai
end_hunk_0
