Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lowlight?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@init_presets:bb.a
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.n, i32 noundef %i.u, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  store <8 x float> <float 0.000000e+00, float 2.000000e-01, float 4.000000e-01, float 6.000000e-01, float 8.000000e-01, float 1.000000e+00, float 5.000000e-02, float 2.000000e-01>, ptr %i.b, align 4, !tbaa !33
  store <4 x float> <float 4.000000e-01, float f0x3F333333, float 9.200000e-01, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !33
  store float 4.000000e+01, ptr %1, align 16, !tbaa !56
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.w = call i32 (...) %i.v() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.n, i32 noundef %i.w, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  store <8 x float> <float 0.000000e+00, float 2.000000e-01, float 4.000000e-01, float 6.000000e-01, float 8.000000e-01, float 1.000000e+00, float 7.000000e-02, float 1.000000e-01>, ptr %i.b, align 4, !tbaa !33
  store <4 x float> <float 1.800000e-01, float 3.500000e-01, float 7.500000e-01, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !33
  store float 5.000000e+01, ptr %1, align 16, !tbaa !56
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.y = call i32 (...) %i.x() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.n, i32 noundef %i.y, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  store <8 x float> <float 0.000000e+00, float 2.000000e-01, float 4.000000e-01, float 6.000000e-01, float 8.000000e-01, float 1.000000e+00, float 0.000000e+00, float 4.500000e-01>, ptr %i.b, align 4, !tbaa !33
  store <4 x float> <float 7.500000e-01, float 9.300000e-01, float 9.900000e-01, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !33
  store float 3.000000e+01, ptr %1, align 16, !tbaa !56
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.aa = call i32 (...) %i.z() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.n, i32 noundef %i.aa, ptr noundef nonnull %1, i32 noundef 52, i32 noundef 1, i32 noundef 3) #19
  store <8 x float> <float 0.000000e+00, float 2.000000e-01, float 4.000000e-01, float 6.000000e-01, float 8.000000e-01, float 1.000000e+00, float 0.000000e+00, float 1.500000e-01>, ptr %i.b, align 4, !tbaa !33
  store <4 x float> <float 3.500000e-01, float 8.000000e-01, float 9.700000e-01, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !33
  store float 3.000000e+01, ptr %1, align 16, !tbaa !56
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.ac = call i32 (...) %i.ab() #19
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
  %3 = alloca %struct.dt_iop_lowlight_params_t, align 4 ; 24 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %5 = alloca %struct._PangoRectangle, align 4    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !70  ; 62 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %3, ptr noundef nonnull align 4 dereferenceable(52) %i.d, i64 52, i1 false), !tbaa.struct !120
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !33 ; 3 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  store float %i.s, ptr %i.j, align 4, !tbaa !44
  %i.t = load <2 x float>, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %i.u = load float, ptr %i.l, align 4, !tbaa !33
  %i.v = load <8 x float>, ptr %i.n, align 4, !tbaa !33
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.r, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <8 x float> %i.v, <8 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.y = shufflevector <8 x float> %i.w, <8 x float> %i.x, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.y, ptr %i.k, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.ae = load <2 x float>, ptr %i.g, align 4, !tbaa !33 ; 3 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, -1.000000e+00 ; 2 uses
  store float %i.ag, ptr %i.i, align 8, !tbaa !43
  %i.ah = load <2 x float>, ptr %i.aa, align 4, !tbaa !33 ; 2 uses
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !33
  %i.aj = shufflevector <2 x float> %i.ae, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.aj, ptr %i.ab, align 8, !tbaa !33
  %i.ak = fadd reassoc nsz arcp contract afn float %i.u, 1.000000e+00 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store float %i.ak, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !44
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1432
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !127
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, 5.000000e+00
  %i.ar = fptosi double %i.aq to i32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #19
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !130
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.av to double
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1432
  %i.az = load double, ptr %i.ay, align 8, !tbaa !127
  %i.ba = fmul reassoc nsz arcp contract afn double %i.az, 5.000000e+00
  %i.bb = fsub reassoc nsz arcp contract afn double %i.aw, %i.ba
  %i.bc = fptosi double %i.bb to i32              ; 2 uses
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.at to double
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1440
  %i.bf = load double, ptr %i.be, align 8, !tbaa !154 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, %i.bd
  %i.bh = fptosi double %i.bg to i32
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bc to double
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bf, %i.bi
  %i.bk = fptosi double %i.bj to i32
  %i.bl = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bh, i32 noundef %i.bk) #19 ; 4 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1440
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !154 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.bl, double noundef %i.bo, double noundef %i.bo) #19
  %i.bp = call ptr @cairo_create(ptr noundef %i.bl) #19 ; 153 uses
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #19
  call void @cairo_paint(ptr noundef %i.bp) #19
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.ar to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.bp, double noundef %i.bq, double noundef %i.bq) #19
  %i.br = shl nsw i32 %i.ar, 1                    ; 2 uses
  %i.bs = sub nsw i32 %i.at, %i.br                ; 7 uses
  %i.bt = sub nsw i32 %i.bc, %i.br                ; 6 uses
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1432
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !127
  call void @cairo_set_line_width(ptr noundef %i.bp, double noundef %i.bw) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #19
  %i.bx = sitofp reassoc nsz arcp contract afn i32 %i.bs to double ; 5 uses
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bt to double ; 6 uses
  call void @cairo_rectangle(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bx, double noundef %i.by) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #19
  call void @cairo_rectangle(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bx, double noundef %i.by) #19
  call void @cairo_fill(ptr noundef %i.bp) #19
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1432
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !127
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.bp, double noundef %i.cc) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #19
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.bs to float ; 21 uses
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.bt to float ; 8 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 1.250000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 1.250000e-01
  %i.cf = fpext reassoc nsz arcp contract afn float %i.ce to double ; 7 uses
  %i.cg = fpext reassoc nsz arcp contract afn float %i.cd to double ; 7 uses
  %i.ch = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.ch, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.ch, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.ci = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.ci) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.ci) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 2.500000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 2.500000e-01
  %i.cj = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cj, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cj, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.ck = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.ck) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.ck) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 3.750000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 3.750000e-01
  %i.cl = fpext reassoc nsz arcp contract afn float %.reass.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cl, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cl, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cm = fpext reassoc nsz arcp contract afn float %.reass31.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cm) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cm) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.3.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %.reass.3.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 5.000000e-01
  %i.cn = fpext reassoc nsz arcp contract afn float %.reass.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cn, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cn, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.co = fpext reassoc nsz arcp contract afn float %.reass31.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.co) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.co) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.4.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 6.250000e-01
  %.reass.4.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 6.250000e-01
  %i.cp = fpext reassoc nsz arcp contract afn float %.reass.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cp, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cp, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cq = fpext reassoc nsz arcp contract afn float %.reass31.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cq) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cq) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.5.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 7.500000e-01
  %.reass.5.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 7.500000e-01
  %i.cr = fpext reassoc nsz arcp contract afn float %.reass.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cr, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cr, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cs = fpext reassoc nsz arcp contract afn float %.reass31.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cs) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cs) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.6.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 8.750000e-01
  %.reass.6.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 8.750000e-01
  %i.ct = fpext reassoc nsz arcp contract afn float %.reass.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.ct, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.ct, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cu = fpext reassoc nsz arcp contract afn float %.reass31.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cu) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cu) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !131
  %i.cx = fcmp reassoc nsz arcp contract afn ogt double %i.cw, 0.000000e+00
  br i1 %i.cx, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !117
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %dt_draw_curve_calc_values.exit242, label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !132 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !119 ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.dd
  %i.df = fpext reassoc nsz arcp contract afn float %i.de to double ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !33
  %i.do = insertelement <2 x float> %i.ae, float %i.dn, i64 1
  %i.dp = fpext <2 x float> %i.do to <2 x double>
  %i.dq = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fsub reassoc nsz arcp contract afn <2 x double> %i.dr, %i.dp ; 2 uses
  %i.dt = fneg reassoc nsz arcp contract afn <2 x double> %i.ds
  %i.du = fmul reassoc nsz arcp contract afn <2 x double> %i.ds, %i.dt
  %i.dv = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fdiv reassoc nsz arcp contract afn <2 x double> %i.du, %i.dw
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  %i.dz = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.dy) ; 2 uses
  %i.ea = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.dz
  %i.eb = insertelement <2 x float> %i.ah, float %i.dl, i64 0
  %i.ec = fmul reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn <2 x float> %i.ec, %i.dz ; 2 uses
  store <2 x float> %i.ed, ptr %i.dk, align 4, !tbaa !33
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !115 ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store float %i.ag, ptr %i.ef, align 8, !tbaa !43
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %6 = load <4 x float>, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %7 = load <4 x float>, ptr %i.dj, align 4
  %8 = load <4 x float>, ptr %i.di, align 4
  %9 = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x float> %6, <4 x float> %9, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %10, <4 x float> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = fpext <4 x float> %11 to <4 x double>
  %13 = insertelement <4 x double> poison, double %i.db, i64 0
  %14 = shufflevector <4 x double> %13, <4 x double> poison, <4 x i32> zeroinitializer
  %15 = fsub reassoc nsz arcp contract afn <4 x double> %14, %12 ; 2 uses
  %16 = fneg reassoc nsz arcp contract afn <4 x double> %15
  %17 = fmul reassoc nsz arcp contract afn <4 x double> %15, %16
  %18 = insertelement <4 x double> poison, double %i.df, i64 0
  %19 = shufflevector <4 x double> %18, <4 x double> poison, <4 x i32> zeroinitializer
  %20 = fdiv reassoc nsz arcp contract afn <4 x double> %17, %19
  %21 = fptrunc <4 x double> %20 to <4 x float>
  %22 = call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %21) ; 2 uses
  %23 = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %22
  %24 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ei = insertelement <4 x float> %24, float %i.dh, i64 1
  %25 = shufflevector <4 x float> %i.ei, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %26 = fmul reassoc nsz arcp contract afn <4 x float> %23, %25
  %27 = fadd reassoc nsz arcp contract afn <4 x float> %26, %22 ; 3 uses
  store <4 x float> %27, ptr %i.h, align 4, !tbaa !33
  %28 = extractelement <4 x float> %27, i64 0
  store float %28, ptr %i.eg, align 4, !tbaa !44
  %29 = shufflevector <4 x float> %6, <4 x float> %27, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %29, ptr %i.eh, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %30 = load <8 x float>, ptr %i.z, align 4, !tbaa !33
  %31 = shufflevector <8 x float> %30, <8 x float> poison, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  store <4 x float> %31, ptr %i.ej, align 8, !tbaa !33
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store float %i.ak, ptr %i.ek, align 8, !tbaa !43
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 84
  %i.em = extractelement <2 x float> %i.ed, i64 1
  store float %i.em, ptr %i.el, align 4, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 184 ; 2 uses
  store i32 64, ptr %i.en, align 8, !tbaa !49
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 188
  store i32 65536, ptr %i.eo, align 4, !tbaa !50
  %i.ep = call i32 @CurveDataSample(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.en) #19 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.eq, align 8, !tbaa !33
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.er, align 8, !tbaa !33
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.es, align 8, !tbaa !33
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.et, align 8, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.eu, align 8, !tbaa !33
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.ev, align 8, !tbaa !33
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.ew, align 8, !tbaa !33
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.ex, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !51 ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %wide.load = load <8 x i16>, ptr %i.ez, align 2, !tbaa !52
  %wide.load281 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !52
  %wide.load282 = load <8 x i16>, ptr %i.fc, align 2, !tbaa !52
  %wide.load283 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !52
  %i.fe = uitofp <8 x i16> %wide.load to <8 x float>
  %i.ff = uitofp <8 x i16> %wide.load281 to <8 x float>
  %i.fg = uitofp <8 x i16> %wide.load282 to <8 x float>
  %i.fh = uitofp <8 x i16> %wide.load283 to <8 x float>
  %i.fi = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fe, splat (float f0x37800000)
  %i.fj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ff, splat (float f0x37800000)
  %i.fk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fg, splat (float f0x37800000)
  %i.fl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fh, splat (float f0x37800000)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  store <8 x float> %i.fi, ptr %i.fa, align 8, !tbaa !33
  store <8 x float> %i.fj, ptr %i.fm, align 8, !tbaa !33
  store <8 x float> %i.fk, ptr %i.fn, align 8, !tbaa !33
  store <8 x float> %i.fl, ptr %i.fo, align 8, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %wide.load.1 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !52
  %wide.load281.1 = load <8 x i16>, ptr %i.fq, align 2, !tbaa !52
  %wide.load282.1 = load <8 x i16>, ptr %i.fr, align 2, !tbaa !52
  %wide.load283.1 = load <8 x i16>, ptr %i.fs, align 2, !tbaa !52
  %i.ft = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.fu = uitofp <8 x i16> %wide.load281.1 to <8 x float>
  %i.fv = uitofp <8 x i16> %wide.load282.1 to <8 x float>
  %i.fw = uitofp <8 x i16> %wide.load283.1 to <8 x float>
  %i.fx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ft, splat (float f0x37800000)
  %i.fy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fu, splat (float f0x37800000)
  %i.fz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fv, splat (float f0x37800000)
  %i.ga = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fw, splat (float f0x37800000)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 1072
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store <8 x float> %i.fx, ptr %i.gb, align 8, !tbaa !33
  store <8 x float> %i.fy, ptr %i.gc, align 8, !tbaa !33
  store <8 x float> %i.fz, ptr %i.gd, align 8, !tbaa !33
  store <8 x float> %i.ga, ptr %i.ge, align 8, !tbaa !33
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %3, ptr noundef nonnull align 4 dereferenceable(52) %i.gf, i64 52, i1 false), !tbaa.struct !120
  %i.gg = load double, ptr %i.da, align 8, !tbaa !132
  %i.gh = load float, ptr %i.dc, align 8, !tbaa !119
  call fastcc void @dt_iop_lowlight_get_params(ptr noundef nonnull %3, double noundef %i.gg, double noundef 0.000000e+00, float noundef %i.gh)
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !115 ; 10 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gm = load <2 x float>, ptr %i.h, align 4, !tbaa !33 ; 2 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  store float %i.gn, ptr %i.gk, align 4, !tbaa !44
  %i.go = load <2 x float>, ptr %i.f, align 4, !tbaa !33
  %i.gp = load float, ptr %i.l, align 4, !tbaa !33
  %i.gq = load <8 x float>, ptr %i.n, align 4, !tbaa !33
  %i.gr = shufflevector <2 x float> %i.go, <2 x float> %i.gm, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <8 x float> %i.gq, <8 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <8 x float> %i.gr, <8 x float> %i.gs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.gt, ptr %i.gl, align 8, !tbaa !33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gv = load <2 x float>, ptr %i.g, align 4, !tbaa !33 ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, -1.000000e+00
  store float %i.gx, ptr %i.gj, align 8, !tbaa !43
  %i.gy = load <2 x float>, ptr %i.aa, align 4, !tbaa !33
  %i.gz = load float, ptr %i.ad, align 4, !tbaa !33
  %i.ha = shufflevector <2 x float> %i.gv, <2 x float> %i.gy, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ha, ptr %i.gu, align 8, !tbaa !33
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gp, 1.000000e+00
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  store float %i.hb, ptr %i.hc, align 8, !tbaa !43
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gi, i64 84
  store float %i.gz, ptr %i.hd, align 4, !tbaa !44
  %i.he = getelementptr inbounds nuw i8, ptr %i.gi, i64 184 ; 2 uses
  store i32 64, ptr %i.he, align 8, !tbaa !49
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 188
  store i32 65536, ptr %i.hf, align 4, !tbaa !50
  %i.hg = call i32 @CurveDataSample(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.he) #19 ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 1232
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.hh, align 8, !tbaa !33
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.hi, align 8, !tbaa !33
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.hj, align 8, !tbaa !33
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.hk, align 8, !tbaa !33
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 1328
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.hl, align 8, !tbaa !33
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.hm, align 8, !tbaa !33
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.hn, align 8, !tbaa !33
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.ho, align 8, !tbaa !33
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gi, i64 192
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !51 ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 1392
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %wide.load299 = load <8 x i16>, ptr %i.hq, align 2, !tbaa !52
  %wide.load300 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !52
  %wide.load301 = load <8 x i16>, ptr %i.ht, align 2, !tbaa !52
  %wide.load302 = load <8 x i16>, ptr %i.hu, align 2, !tbaa !52
  %i.hv = uitofp <8 x i16> %wide.load299 to <8 x float>
  %i.hw = uitofp <8 x i16> %wide.load300 to <8 x float>
  %i.hx = uitofp <8 x i16> %wide.load301 to <8 x float>
  %i.hy = uitofp <8 x i16> %wide.load302 to <8 x float>
  %i.hz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hv, splat (float f0x37800000)
  %i.ia = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hw, splat (float f0x37800000)
  %i.ib = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hx, splat (float f0x37800000)
  %i.ic = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.hy, splat (float f0x37800000)
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 1456
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 1488
  store <8 x float> %i.hz, ptr %i.hr, align 8, !tbaa !33
  store <8 x float> %i.ia, ptr %i.id, align 8, !tbaa !33
  store <8 x float> %i.ib, ptr %i.ie, align 8, !tbaa !33
  store <8 x float> %i.ic, ptr %i.if, align 8, !tbaa !33
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hq, i64 96
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  %wide.load299.1 = load <8 x i16>, ptr %i.ig, align 2, !tbaa !52
  %wide.load300.1 = load <8 x i16>, ptr %i.ih, align 2, !tbaa !52
  %wide.load301.1 = load <8 x i16>, ptr %i.ii, align 2, !tbaa !52
  %wide.load302.1 = load <8 x i16>, ptr %i.ij, align 2, !tbaa !52
  %i.ik = uitofp <8 x i16> %wide.load299.1 to <8 x float>
  %i.il = uitofp <8 x i16> %wide.load300.1 to <8 x float>
  %i.im = uitofp <8 x i16> %wide.load301.1 to <8 x float>
  %i.in = uitofp <8 x i16> %wide.load302.1 to <8 x float>
  %i.io = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ik, splat (float f0x37800000)
  %i.ip = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.il, splat (float f0x37800000)
  %i.iq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.im, splat (float f0x37800000)
  %i.ir = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.in, splat (float f0x37800000)
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 1520
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store <8 x float> %i.io, ptr %i.is, align 8, !tbaa !33
  store <8 x float> %i.ip, ptr %i.it, align 8, !tbaa !33
  store <8 x float> %i.iq, ptr %i.iu, align 8, !tbaa !33
  store <8 x float> %i.ir, ptr %i.iv, align 8, !tbaa !33
  br label %dt_draw_curve_calc_values.exit242

dt_draw_curve_calc_values.exit242:                ; preds = %vector.ph, %bb.b
  call void @cairo_save(ptr noundef %i.bp) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #19
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1432
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !127
  call void @cairo_set_line_width(ptr noundef %i.bp, double noundef %i.iy) #19
  %i.iz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1432
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !127 ; 2 uses
  %i.jc = fmul reassoc nsz arcp contract afn double %i.jb, 7.000000e+00
  %i.jd = fptrunc reassoc nsz arcp contract afn double %i.jc to float ; 4 uses
  %i.je = add nsw i32 %i.bt, %i.ar
  %i.jf = sitofp reassoc nsz arcp contract afn i32 %i.je to double ; 6 uses
  %i.jg = fneg reassoc nsz arcp contract afn float %i.jd
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jd, -5.000000e-01
  %i.ji = fpext reassoc nsz arcp contract afn float %i.jh to double ; 6 uses
  %i.jj = fmul reassoc nsz arcp contract afn float %i.jd, 5.000000e-01
  %i.jk = fpext reassoc nsz arcp contract afn float %i.jj to double ; 12 uses
  %i.jl = fpext reassoc nsz arcp contract afn float %i.jg to double ; 6 uses
end_hunk_0
