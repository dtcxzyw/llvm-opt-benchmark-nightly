Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lowlight?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@init_presets:bb.a
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.n, i32 noundef %i.ac, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  store <8 x float> <float 0.000000e+00, float 1.500000e-01, float 4.000000e-01, float 6.000000e-01, float 8.000000e-01, float 1.000000e+00, float 0.000000e+00, float 2.000000e-02>, ptr %i.b, align 4, !tbaa !33
  store <4 x float> <float 5.000000e-02, float 2.000000e-01, float 5.500000e-01, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !33
  store float 4.000000e+01, ptr %1, align 16, !tbaa !56
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.ae = call i32 (...) %i.ad() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.n, i32 noundef %i.ae, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  store <2 x float> <float 6.000000e-01, float 8.000000e-01>, ptr %i.e, align 16, !tbaa !33
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store <4 x float> <float 5.000000e+01, float 0.000000e+00, float 2.000000e-01, float 4.000000e-01>, ptr %1, align 16, !tbaa !33
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.ag = call i32 (...) %i.af() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.n, i32 noundef %i.ag, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !149
  call void @dt_database_release_transaction(ptr noundef %i.ah) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

declare void @dt_database_start_transaction(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_database_release_transaction(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 1648) #19 ; 11 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1648) %i.b, i8 0, i64 1648, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !67  ; 12 uses
  %i.f = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #21 ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i32 65536, ptr %i.g, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  store i32 65536, ptr %i.h, align 4, !tbaa !50
  %i.i = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #21
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store ptr %i.i, ptr %i.j, align 8, !tbaa !51
  store i32 1, ptr %i.f, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !33
  store ptr %i.f, ptr %i.b, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !33 ; 2 uses
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, -1.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.s = load float, ptr %i.r, align 4, !tbaa !33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store float %i.p, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store float %i.s, ptr %i.u, align 4, !tbaa !44
  %i.v = load float, ptr %i.m, align 4, !tbaa !33
  %i.w = load float, ptr %i.q, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store float %i.v, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store float %i.w, ptr %i.y, align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !33 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !33 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.aa, ptr %i.ad, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.ac, ptr %i.ae, align 4, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store float %i.ag, ptr %i.aj, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.ai, ptr %i.ak, align 4, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store float %i.am, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store float %i.ao, ptr %i.aq, align 4, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store float %i.o, ptr %i.ar, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store float %i.s, ptr %i.as, align 4, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.au = load float, ptr %i.at, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.aw = load float, ptr %i.av, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store float %i.au, ptr %i.ax, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store float %i.aw, ptr %i.ay, align 4, !tbaa !44
  %i.az = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store float %i.az, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store float %i.ac, ptr %i.bb, align 4, !tbaa !44
  store i8 8, ptr %i.k, align 4, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double -1.000000e+00, ptr %i.bc, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x double> splat (double -1.000000e+00), ptr %i.bd, align 8, !tbaa !151
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.be, align 8, !tbaa !117
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 -1, ptr %i.bf, align 4, !tbaa !118
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float f0x3E2AAAAB, ptr %i.bg, align 8, !tbaa !119
  %i.bh = tail call ptr @dt_ui_resize_wrap(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15) #19 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 9 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !76
  tail call void @g_object_set_data(ptr noundef %i.bh, ptr noundef nonnull @.str.16, ptr noundef %0) #19
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bk = tail call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef %i.bj, ptr noundef null) #19 ; 0 uses
  %i.bl = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #19
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !76
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bn, align 8, !tbaa !152
  %i.bo = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.18, i32 noundef 808, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bl, ptr noundef nonnull %i.a) #19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !153
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.br = call i64 @g_signal_connect_data(ptr noundef %i.bq, ptr noundef nonnull @.str.19, ptr noundef nonnull @lowlight_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bt = call i64 @g_signal_connect_data(ptr noundef %i.bs, ptr noundef nonnull @.str.20, ptr noundef nonnull @lowlight_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bv = call i64 @g_signal_connect_data(ptr noundef %i.bu, ptr noundef nonnull @.str.21, ptr noundef nonnull @lowlight_button_release, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bx = call i64 @g_signal_connect_data(ptr noundef %i.bw, ptr noundef nonnull @.str.22, ptr noundef nonnull @lowlight_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bz = call i64 @g_signal_connect_data(ptr noundef %i.by, ptr noundef nonnull @.str.23, ptr noundef nonnull @lowlight_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.cb = call i64 @g_signal_connect_data(ptr noundef %i.ca, ptr noundef nonnull @.str.24, ptr noundef nonnull @lowlight_scrolled, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.cc = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.25) #19 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !75
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.cc, ptr noundef nonnull @.str.26) #19
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !75
  %i.cf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ce, ptr noundef %i.cf) #19
  ret void
}

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @lowlight_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.dt_iop_lowlight_params_t, align 4 ; 25 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %5 = alloca %struct._PangoRectangle, align 4    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !70  ; 62 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %3, ptr noundef nonnull align 4 dereferenceable(52) %i.d, i64 52, i1 false), !tbaa.struct !120
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 9 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !33 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store float %i.i, ptr %i.k, align 4, !tbaa !44
  %i.l = load float, ptr %i.f, align 4, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store float %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.s = load <2 x float>, ptr %i.o, align 4, !tbaa !33 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.y = load <2 x float>, ptr %i.u, align 4, !tbaa !33 ; 2 uses
  %i.z = load float, ptr %i.g, align 4, !tbaa !33
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, -1.000000e+00 ; 2 uses
  store float %i.aa, ptr %i.j, align 8, !tbaa !43
  %i.ab = load <2 x float>, ptr %i.h, align 4, !tbaa !33
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> %i.s, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ac, ptr %i.n, align 4, !tbaa !33
  %i.ad = load <2 x float>, ptr %i.r, align 4, !tbaa !33
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> %i.y, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ae, ptr %i.t, align 4, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.aj = extractelement <2 x float> %i.s, i64 0
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, 1.000000e+00 ; 2 uses
  %i.al = load <2 x float>, ptr %i.x, align 4, !tbaa !33 ; 2 uses
  %i.am = load float, ptr %i.ai, align 4, !tbaa !33
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ao = insertelement <4 x float> %i.an, float %i.ah, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.ak, i64 3
  store <4 x float> %i.ap, ptr %i.af, align 4, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store float %i.am, ptr %i.aq, align 4, !tbaa !44
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1432
  %i.at = load double, ptr %i.as, align 8, !tbaa !127
  %i.au = fmul reassoc nsz arcp contract afn double %i.at, 5.000000e+00
  %i.av = fptosi double %i.au to i32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !129 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !130
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to double
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1432
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !127
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, 5.000000e+00
  %i.bf = fsub reassoc nsz arcp contract afn double %i.ba, %i.be
  %i.bg = fptosi double %i.bf to i32              ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.ax to double
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 1440
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !154 ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bj, %i.bh
  %i.bl = fptosi double %i.bk to i32
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bg to double
  %i.bn = fmul reassoc nsz arcp contract afn double %i.bj, %i.bm
  %i.bo = fptosi double %i.bn to i32
  %i.bp = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bl, i32 noundef %i.bo) #19 ; 4 uses
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1440
  %i.bs = load double, ptr %i.br, align 8, !tbaa !154 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.bp, double noundef %i.bs, double noundef %i.bs) #19
  %i.bt = call ptr @cairo_create(ptr noundef %i.bp) #19 ; 153 uses
  call void @cairo_set_source_rgb(ptr noundef %i.bt, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #19
  call void @cairo_paint(ptr noundef %i.bt) #19
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.av to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.bt, double noundef %i.bu, double noundef %i.bu) #19
  %i.bv = shl nsw i32 %i.av, 1                    ; 2 uses
  %i.bw = sub nsw i32 %i.ax, %i.bv                ; 7 uses
  %i.bx = sub nsw i32 %i.bg, %i.bv                ; 6 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1432
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !127
  call void @cairo_set_line_width(ptr noundef %i.bt, double noundef %i.ca) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bt, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #19
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.bw to double ; 5 uses
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.bx to double ; 6 uses
  call void @cairo_rectangle(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.cb, double noundef %i.cc) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bt, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #19
  call void @cairo_rectangle(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.cb, double noundef %i.cc) #19
  call void @cairo_fill(ptr noundef %i.bt) #19
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1432
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !127
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.bt, double noundef %i.cg) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bt, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #19
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.bw to float ; 21 uses
  %i.ci = sitofp reassoc nsz arcp contract afn i32 %i.bx to float ; 8 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 1.250000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 1.250000e-01
  %i.cj = fpext reassoc nsz arcp contract afn float %i.ci to double ; 7 uses
  %i.ck = fpext reassoc nsz arcp contract afn float %i.ch to double ; 7 uses
  %i.cl = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cl, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.cl, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cm = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.cm) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.cm) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 2.500000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 2.500000e-01
  %i.cn = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cn, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.cn, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.co = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.co) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.co) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 3.750000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 3.750000e-01
  %i.cp = fpext reassoc nsz arcp contract afn float %.reass.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cp, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.cp, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cq = fpext reassoc nsz arcp contract afn float %.reass31.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.cq) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.cq) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %.reass31.3.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 5.000000e-01
  %.reass.3.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 5.000000e-01
  %i.cr = fpext reassoc nsz arcp contract afn float %.reass.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cr, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.cr, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cs = fpext reassoc nsz arcp contract afn float %.reass31.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.cs) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.cs) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %.reass31.4.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 6.250000e-01
  %.reass.4.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 6.250000e-01
  %i.ct = fpext reassoc nsz arcp contract afn float %.reass.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.ct, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ct, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cu = fpext reassoc nsz arcp contract afn float %.reass31.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.cu) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.cu) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %.reass31.5.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 7.500000e-01
  %.reass.5.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 7.500000e-01
  %i.cv = fpext reassoc nsz arcp contract afn float %.reass.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cv, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.cv, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cw = fpext reassoc nsz arcp contract afn float %.reass31.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.cw) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.cw) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %.reass31.6.i = fmul reassoc nnan nsz arcp contract afn float %i.ci, 8.750000e-01
  %.reass.6.i = fmul reassoc nnan nsz arcp contract afn float %i.ch, 8.750000e-01
  %i.cx = fpext reassoc nsz arcp contract afn float %.reass.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cx, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.cx, double noundef %i.cj) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cy = fpext reassoc nsz arcp contract afn float %.reass31.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef %i.cy) #19
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ck, double noundef %i.cy) #19
  call void @cairo_stroke(ptr noundef %i.bt) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !131
  %i.db = fcmp reassoc nsz arcp contract afn ogt double %i.da, 0.000000e+00
  br i1 %i.db, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !117
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %dt_draw_curve_calc_values.exit242, label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !132 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !119 ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.dh
  %i.dj = fpext reassoc nsz arcp contract afn float %i.di to double ; 2 uses
  %i.dk = load float, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dq = load <2 x float>, ptr %i.dn, align 4, !tbaa !33 ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> %i.s, <4 x i32> <i32 poison, i32 2, i32 0, i32 1>
  %i.ds = insertelement <4 x float> %i.dr, float %i.dk, i64 0
  %i.dt = fpext <4 x float> %i.ds to <4 x double>
  %i.du = insertelement <4 x double> poison, double %i.df, i64 0
  %i.dv = shufflevector <4 x double> %i.du, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dw = fsub reassoc nsz arcp contract afn <4 x double> %i.dv, %i.dt ; 2 uses
  %i.dx = fneg reassoc nsz arcp contract afn <4 x double> %i.dw
  %i.dy = fmul reassoc nsz arcp contract afn <4 x double> %i.dw, %i.dx
  %i.dz = insertelement <4 x double> poison, double %i.dj, i64 0
  %i.ea = shufflevector <4 x double> %i.dz, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eb = fdiv reassoc nsz arcp contract afn <4 x double> %i.dy, %i.ea
  %i.ec = fptrunc <4 x double> %i.eb to <4 x float>
  %i.ed = call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.ec) ; 2 uses
  %i.ee = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ed
  %i.ef = load <4 x float>, ptr %i.do, align 4
  %i.eg = insertelement <4 x float> poison, float %i.i, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dm, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ej = fmul reassoc nsz arcp contract afn <4 x float> %i.ee, %i.ei
  %i.ek = fadd reassoc nsz arcp contract afn <4 x float> %i.ej, %i.ed ; 2 uses
  store <4 x float> %i.ek, ptr %i.h, align 4, !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load float, ptr %i.en, align 4, !tbaa !33
  %i.ep = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eq = insertelement <2 x float> %i.ep, float %i.eo, i64 1
  %i.er = fpext <2 x float> %i.eq to <2 x double>
  %i.es = insertelement <2 x double> poison, double %i.df, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fsub reassoc nsz arcp contract afn <2 x double> %i.et, %i.er ; 2 uses
  %i.ev = fneg reassoc nsz arcp contract afn <2 x double> %i.eu
  %i.ew = fmul reassoc nsz arcp contract afn <2 x double> %i.eu, %i.ev
  %i.ex = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fdiv reassoc nsz arcp contract afn <2 x double> %i.ew, %i.ey
  %i.fa = fptrunc <2 x double> %i.ez to <2 x float>
  %i.fb = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.fa) ; 2 uses
  %i.fc = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fb
  %i.fd = insertelement <2 x float> %i.al, float %i.em, i64 0
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fc
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fb ; 2 uses
  store <2 x float> %i.ff, ptr %i.el, align 4, !tbaa !33
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !115 ; 17 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store float %i.aa, ptr %i.fh, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.fj = extractelement <4 x float> %i.ek, i64 0
  store float %i.fj, ptr %i.fi, align 4, !tbaa !44
  %i.fk = load float, ptr %i.h, align 4, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store float %i.dk, ptr %i.fl, align 8, !tbaa !43
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  store float %i.fk, ptr %i.fm, align 4, !tbaa !44
  %i.fn = load float, ptr %i.o, align 4, !tbaa !33
  %i.fo = load float, ptr %i.p, align 4, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store float %i.fn, ptr %i.fp, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 44
  store float %i.fo, ptr %i.fq, align 4, !tbaa !44
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = extractelement <2 x float> %i.dq, i64 0
  store float %i.fs, ptr %i.fr, align 8, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 52
  %6 = load float, ptr %i.x, align 4, !tbaa !33
  %7 = load <7 x float>, ptr %i.dp, align 4, !tbaa !33
  %8 = shufflevector <7 x float> %7, <7 x float> poison, <4 x i32> <i32 5, i32 0, i32 6, i32 1>
  store <4 x float> %8, ptr %i.ft, align 4, !tbaa !33
  %9 = getelementptr inbounds nuw i8, ptr %i.fg, i64 68
  store float %6, ptr %9, align 4, !tbaa !44
  %i.fu = load float, ptr %i.ag, align 4, !tbaa !33
  %i.fv = load float, ptr %i.ai, align 4, !tbaa !33
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  store float %i.fu, ptr %i.fw, align 8, !tbaa !43
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  store float %i.fv, ptr %i.fx, align 4, !tbaa !44
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  store float %i.ak, ptr %i.fy, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 84
  %i.ga = extractelement <2 x float> %i.ff, i64 1
  store float %i.ga, ptr %i.fz, align 4, !tbaa !44
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 184 ; 2 uses
  store i32 64, ptr %i.gb, align 8, !tbaa !49
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fg, i64 188
  store i32 65536, ptr %i.gc, align 4, !tbaa !50
  %i.gd = call i32 @CurveDataSample(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.gb) #19 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.ge, align 8, !tbaa !33
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.gf, align 8, !tbaa !33
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.gg, align 8, !tbaa !33
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.gh, align 8, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.gi, align 8, !tbaa !33
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.gj, align 8, !tbaa !33
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.gk, align 8, !tbaa !33
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.gl, align 8, !tbaa !33
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fg, i64 192
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !51 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %wide.load = load <8 x i16>, ptr %i.gn, align 2, !tbaa !52
  %wide.load281 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !52
  %wide.load282 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !52
  %wide.load283 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !52
  %i.gs = uitofp <8 x i16> %wide.load to <8 x float>
  %i.gt = uitofp <8 x i16> %wide.load281 to <8 x float>
  %i.gu = uitofp <8 x i16> %wide.load282 to <8 x float>
  %i.gv = uitofp <8 x i16> %wide.load283 to <8 x float>
  %i.gw = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gs, splat (float f0x37800000)
  %i.gx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gt, splat (float f0x37800000)
  %i.gy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gu, splat (float f0x37800000)
  %i.gz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gv, splat (float f0x37800000)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  store <8 x float> %i.gw, ptr %i.go, align 8, !tbaa !33
  store <8 x float> %i.gx, ptr %i.ha, align 8, !tbaa !33
  store <8 x float> %i.gy, ptr %i.hb, align 8, !tbaa !33
  store <8 x float> %i.gz, ptr %i.hc, align 8, !tbaa !33
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %wide.load.1 = load <8 x i16>, ptr %i.hd, align 2, !tbaa !52
  %wide.load281.1 = load <8 x i16>, ptr %i.he, align 2, !tbaa !52
  %wide.load282.1 = load <8 x i16>, ptr %i.hf, align 2, !tbaa !52
  %wide.load283.1 = load <8 x i16>, ptr %i.hg, align 2, !tbaa !52
  %i.hh = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.hi = uitofp <8 x i16> %wide.load281.1 to <8 x float>
  %i.hj = uitofp <8 x i16> %wide.load282.1 to <8 x float>
  %i.hk = uitofp <8 x i16> %wide.load283.1 to <8 x float>
  %i.hl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hh, splat (float f0x37800000)
  %i.hm = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hi, splat (float f0x37800000)
  %i.hn = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hj, splat (float f0x37800000)
  %i.ho = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hk, splat (float f0x37800000)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 1072
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store <8 x float> %i.hl, ptr %i.hp, align 8, !tbaa !33
  store <8 x float> %i.hm, ptr %i.hq, align 8, !tbaa !33
  store <8 x float> %i.hn, ptr %i.hr, align 8, !tbaa !33
  store <8 x float> %i.ho, ptr %i.hs, align 8, !tbaa !33
  %i.ht = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %3, ptr noundef nonnull align 4 dereferenceable(52) %i.ht, i64 52, i1 false), !tbaa.struct !120
  %i.hu = load double, ptr %i.de, align 8, !tbaa !132
  %i.hv = load float, ptr %i.dg, align 8, !tbaa !119
  call fastcc void @dt_iop_lowlight_get_params(ptr noundef nonnull %3, double noundef %i.hu, double noundef 0.000000e+00, float noundef %i.hv)
  %i.hw = load ptr, ptr %i.b, align 8, !tbaa !115 ; 14 uses
  %i.hx = load float, ptr %i.h, align 4, !tbaa !33
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 28
  store float %i.hx, ptr %i.hz, align 4, !tbaa !44
  %i.ia = load float, ptr %i.f, align 4, !tbaa !33
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  store float %i.ia, ptr %i.ib, align 8, !tbaa !43
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 36
  %i.id = load <2 x float>, ptr %i.o, align 4, !tbaa !33 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 52
  %i.if = load <2 x float>, ptr %i.u, align 4, !tbaa !33
  %i.ig = load float, ptr %i.g, align 4, !tbaa !33
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, -1.000000e+00
  store float %i.ih, ptr %i.hy, align 8, !tbaa !43
  %i.ii = load <2 x float>, ptr %i.h, align 4, !tbaa !33
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> %i.id, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ij, ptr %i.ic, align 4, !tbaa !33
  %i.ik = load <2 x float>, ptr %i.r, align 4, !tbaa !33
  %i.il = load float, ptr %i.x, align 4, !tbaa !33
  %i.im = shufflevector <2 x float> %i.ik, <2 x float> %i.if, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.im, ptr %i.ie, align 4, !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %i.hw, i64 68
  store float %i.il, ptr %i.in, align 4, !tbaa !44
  %i.io = load float, ptr %i.ag, align 4, !tbaa !33
  %i.ip = load float, ptr %i.ai, align 4, !tbaa !33 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  store float %i.io, ptr %i.iq, align 8, !tbaa !43
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 76
  store float %i.ip, ptr %i.ir, align 4, !tbaa !44
  %i.is = extractelement <2 x float> %i.id, i64 0
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, 1.000000e+00
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  store float %i.it, ptr %i.iu, align 8, !tbaa !43
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hw, i64 84
  store float %i.ip, ptr %i.iv, align 4, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 184 ; 2 uses
  store i32 64, ptr %i.iw, align 8, !tbaa !49
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hw, i64 188
  store i32 65536, ptr %i.ix, align 4, !tbaa !50
  %i.iy = call i32 @CurveDataSample(ptr noundef nonnull %i.hw, ptr noundef nonnull %i.iw) #19 ; 0 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 1232
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.iz, align 8, !tbaa !33
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.ja, align 8, !tbaa !33
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.jb, align 8, !tbaa !33
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.jc, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 1328
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.jd, align 8, !tbaa !33
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.je, align 8, !tbaa !33
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.jf, align 8, !tbaa !33
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.jg, align 8, !tbaa !33
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 192
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !51 ; 8 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 1392
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %wide.load299 = load <8 x i16>, ptr %i.ji, align 2, !tbaa !52
  %wide.load300 = load <8 x i16>, ptr %i.jk, align 2, !tbaa !52
  %wide.load301 = load <8 x i16>, ptr %i.jl, align 2, !tbaa !52
  %wide.load302 = load <8 x i16>, ptr %i.jm, align 2, !tbaa !52
  %i.jn = uitofp <8 x i16> %wide.load299 to <8 x float>
  %i.jo = uitofp <8 x i16> %wide.load300 to <8 x float>
  %i.jp = uitofp <8 x i16> %wide.load301 to <8 x float>
  %i.jq = uitofp <8 x i16> %wide.load302 to <8 x float>
  %i.jr = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jn, splat (float f0x37800000)
  %i.js = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jo, splat (float f0x37800000)
  %i.jt = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jp, splat (float f0x37800000)
  %i.ju = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jq, splat (float f0x37800000)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 1456
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 1488
  store <8 x float> %i.jr, ptr %i.jj, align 8, !tbaa !33
  store <8 x float> %i.js, ptr %i.jv, align 8, !tbaa !33
  store <8 x float> %i.jt, ptr %i.jw, align 8, !tbaa !33
  store <8 x float> %i.ju, ptr %i.jx, align 8, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 80
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ji, i64 112
  %wide.load299.1 = load <8 x i16>, ptr %i.jy, align 2, !tbaa !52
  %wide.load300.1 = load <8 x i16>, ptr %i.jz, align 2, !tbaa !52
  %wide.load301.1 = load <8 x i16>, ptr %i.ka, align 2, !tbaa !52
  %wide.load302.1 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !52
  %i.kc = uitofp <8 x i16> %wide.load299.1 to <8 x float>
  %i.kd = uitofp <8 x i16> %wide.load300.1 to <8 x float>
  %i.ke = uitofp <8 x i16> %wide.load301.1 to <8 x float>
  %i.kf = uitofp <8 x i16> %wide.load302.1 to <8 x float>
  %i.kg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.kc, splat (float f0x37800000)
  %i.kh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.kd, splat (float f0x37800000)
  %i.ki = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ke, splat (float f0x37800000)
  %i.kj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.kf, splat (float f0x37800000)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 1520
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store <8 x float> %i.kg, ptr %i.kk, align 8, !tbaa !33
  store <8 x float> %i.kh, ptr %i.kl, align 8, !tbaa !33
  store <8 x float> %i.ki, ptr %i.km, align 8, !tbaa !33
  store <8 x float> %i.kj, ptr %i.kn, align 8, !tbaa !33
  br label %dt_draw_curve_calc_values.exit242

dt_draw_curve_calc_values.exit242:                ; preds = %vector.ph, %bb.b
  call void @cairo_save(ptr noundef %i.bt) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bt, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #19
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1432
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !127
end_hunk_0
