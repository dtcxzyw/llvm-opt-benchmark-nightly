Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorcorrection?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@commit_params:bb.a
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 1.000000e-02
  %i.i = fptrunc reassoc nsz arcp contract afn double %i.h to float
  store float %i.i, ptr %i.b, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.e, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = load <2 x float>, ptr %i.m, align 4, !tbaa !14 ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = fsub reassoc nsz arcp contract afn float %i.l, %i.q
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double
  %i.t = fmul reassoc nsz arcp contract afn double %i.s, 1.000000e-02
  %i.u = fptrunc reassoc nsz arcp contract afn double %i.t to float
  store float %i.u, ptr %i.n, align 4, !tbaa !42
  store <2 x float> %i.p, ptr %i.o, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !38
  tail call void @free(ptr noundef %i.b) #16
  store ptr null, ptr %i.a, align 16, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !55  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !15
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.h) #16
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !60
  tail call void @gtk_widget_queue_draw(ptr noundef %i.i) #16
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 32) #16 ; 18 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !61
  %i.e = tail call ptr @dtgtk_drawing_area_new_with_height(i32 noundef 0) #16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !60
  tail call void @g_object_set_data(ptr noundef %i.e, ptr noundef nonnull @.str.9, ptr noundef %0) #16
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.g = tail call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %i.f, ptr noundef null) #16 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #16
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.h, ptr noundef %i.i) #16
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5560
  %i.m = load i32, ptr %i.l, align 8, !tbaa !133
  %i.n = or i32 %i.m, 13060
  tail call void @gtk_widget_add_events(ptr noundef %i.j, i32 noundef %i.n) #16
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !60
  tail call void @gtk_widget_set_can_focus(ptr noundef %i.o, i32 noundef 1) #16
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.q = tail call i64 @g_signal_connect_data(ptr noundef %i.p, ptr noundef nonnull @.str.12, ptr noundef nonnull @dt_iop_colorcorrection_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.s = tail call i64 @g_signal_connect_data(ptr noundef %i.r, ptr noundef nonnull @.str.13, ptr noundef nonnull @dt_iop_colorcorrection_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.u = tail call i64 @g_signal_connect_data(ptr noundef %i.t, ptr noundef nonnull @.str.14, ptr noundef nonnull @dt_iop_colorcorrection_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.w = tail call i64 @g_signal_connect_data(ptr noundef %i.v, ptr noundef nonnull @.str.15, ptr noundef nonnull @dt_iop_colorcorrection_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.y = tail call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.16, ptr noundef nonnull @dt_iop_colorcorrection_scrolled, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.aa = tail call i64 @g_signal_connect_data(ptr noundef %i.z, ptr noundef nonnull @.str.17, ptr noundef nonnull @dt_iop_colorcorrection_key_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.ab = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #16
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ad, align 8, !tbaa !134
  %i.ae = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.18, i32 noundef 259, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ab, ptr noundef nonnull %i.a) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !135
  %i.ag = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.19) #16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !59
  %i.ai = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #16
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ag, ptr noundef %i.ai) #16
  %i.aj = call ptr @dt_colorspaces_get_profile(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 1) #16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1032
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137
  %i.am = call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.21, i32 noundef 63) #16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1032
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !137
  %i.ap = call ptr @cmsCreateTransform(ptr noundef %i.ao, i32 noundef 4849688, ptr noundef %i.al, i32 noundef 4456472, i32 noundef 0, i32 noundef 0) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  ret void
}

declare ptr @dtgtk_drawing_area_new_with_height(i32 noundef) local_unnamed_addr #3

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_can_focus(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @dt_iop_colorcorrection_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %4 = alloca %struct.cmsCIELab, align 8          ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !55  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1432
  %i.h = load double, ptr %i.g, align 8, !tbaa !108
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, 5.000000e+00
  %i.j = fptosi double %i.i to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1440
  %i.n = load double, ptr %i.m, align 8, !tbaa !138 ; 2 uses
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.j to double ; 2 uses
  %i.p = shl nsw i32 %i.j, 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load <2 x i32>, ptr %i.k, align 4, !tbaa !109 ; 3 uses
  %i.x = extractelement <2 x i32> %i.w, i64 0
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to double
  %i.z = fmul reassoc nsz arcp contract afn double %i.n, %i.y
  %i.aa = fptosi double %i.z to i32
  %i.ab = extractelement <2 x i32> %i.w, i64 1
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to double
  %i.ad = fmul reassoc nsz arcp contract afn double %i.n, %i.ac
  %i.ae = fptosi double %i.ad to i32
  %i.af = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.aa, i32 noundef %i.ae) #16 ; 4 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1440
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !138 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.af, double noundef %i.ai, double noundef %i.ai) #16
  %i.aj = call ptr @cairo_create(ptr noundef %i.af) #16 ; 22 uses
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #16
  call void @cairo_paint(ptr noundef %i.aj) #16
  call void @cairo_translate(ptr noundef %i.aj, double noundef %i.o, double noundef %i.o) #16
  call void @cairo_set_antialias(ptr noundef %i.aj, i32 noundef 1) #16
  %i.ak = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.al = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.am = sub nsw <2 x i32> %i.w, %i.al           ; 3 uses
  %i.an = extractelement <2 x i32> %i.am, i64 1   ; 2 uses
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to double
  call void @cairo_translate(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ao) #16
  call void @cairo_scale(ptr noundef %i.aj, double noundef 1.000000e+00, double noundef -1.000000e+00) #16
  %i.ap = sitofp reassoc nsz arcp contract afn <2 x i32> %i.am to <2 x float> ; 4 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fmul reassoc nnan nsz arcp contract afn float %i.aq, 1.250000e-01
  %i.as = fpext reassoc nsz arcp contract afn float %i.ar to double
  %i.at = extractelement <2 x float> %i.ap, i64 1
  %i.au = fmul reassoc nnan nsz arcp contract afn float %i.at, 1.250000e-01
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double
  %i.aw = extractelement <2 x i32> %i.am, i64 0
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.08183 = phi i32 [ 0, %bb.a ], [ %i.ck, %bb.c ] ; 3 uses
  %i.ax = uitofp nsz nneg i32 %.08183 to double
  %i.ay = fmul reassoc nnan nsz arcp contract afn double %i.ax, f0x402E8232262A54E2
  %i.az = fadd reassoc nnan nsz arcp contract afn double %i.ay, f0xC04AB1EBE1650A46
  %i.ba = mul nsw i32 %.08183, %i.an
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.ba to float
  %i.bc = fmul reassoc nnan nsz arcp contract afn float %i.bb, 1.250000e-01
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  call void @cairo_set_antialias(ptr noundef %i.aj, i32 noundef 0) #16
  %i.be = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ap, splat (float 2.500000e-02)
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bg = load <4 x float>, ptr %i.e, align 4, !tbaa !14
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = fadd reassoc nsz arcp contract afn <4 x float> %i.bh, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn <4 x float> %i.bj, splat (float 5.000000e-01) ; 4 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1432
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !108
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.bo) #16
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #16
  %i.bp = extractelement <4 x float> %i.bk, i64 2
  %i.bq = fpext reassoc nsz arcp contract afn float %i.bp to double ; 2 uses
  %i.br = extractelement <4 x float> %i.bk, i64 3
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.bq, double noundef %i.bs) #16
  %i.bt = extractelement <4 x float> %i.bk, i64 0
  %i.bu = fpext reassoc nsz arcp contract afn float %i.bt to double ; 2 uses
  %i.bv = extractelement <4 x float> %i.bk, i64 1
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bv to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.bu, double noundef %i.bw) #16
  call void @cairo_stroke(ptr noundef %i.aj) #16
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !61
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1432
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !108
  %. = select i1 %i.bz, double 5.000000e+00, double 3.000000e+00
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, %.
  call void @cairo_arc(ptr noundef %i.aj, double noundef %i.bq, double noundef %i.bs, double noundef %i.cd, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #16
  call void @cairo_fill(ptr noundef %i.aj) #16
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #16
  %i.ce = load i32, ptr %i.bx, align 8, !tbaa !61
  %i.cf = icmp eq i32 %i.ce, 2
  %.sink87 = select i1 %i.cf, double 5.000000e+00, double 3.000000e+00
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1432
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !108
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, %.sink87
  call void @cairo_arc(ptr noundef %i.aj, double noundef %i.bu, double noundef %i.bw, double noundef %i.cj, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #16
  call void @cairo_fill(ptr noundef %i.aj) #16
  call void @cairo_destroy(ptr noundef %i.aj) #16
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.af, double noundef 0.000000e+00, double noundef 0.000000e+00) #16
  call void @cairo_paint(ptr noundef %1) #16
  call void @cairo_surface_destroy(ptr noundef %i.af) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 1

bb.c:                                             ; preds = %bb.d
  %i.ck = add nuw nsw i32 %.08183, 1              ; 2 uses
  %exitcond84.not = icmp eq i32 %i.ck, 8
  br i1 %exitcond84.not, label %bb.b, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.d
  %.082 = phi i32 [ 0, %.preheader ], [ %i.df, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.dt_iop_colorcorrection_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !140
  %i.cl = load float, ptr %i.s, align 4, !tbaa !15
  %i.cm = fpext reassoc nsz arcp contract afn float %i.cl to double ; 2 uses
  %i.cn = uitofp nsz nneg i32 %.082 to double
  %i.co = fmul reassoc nnan nsz arcp contract afn double %i.cn, f0x402E8232262A54E2
  %i.cp = fadd reassoc nnan nsz arcp contract afn double %i.co, f0xC04AB1EBE1650A46
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, %i.cm
  store double %i.cq, ptr %i.r, align 8, !tbaa !141
  %i.cr = fmul reassoc nsz arcp contract afn double %i.az, %i.cm
  store double %i.cr, ptr %i.q, align 8, !tbaa !142
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !107
  call void @cmsDoTransform(ptr noundef %i.cs, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #16
  %i.ct = load double, ptr %i.a, align 16, !tbaa !143
  %i.cu = load double, ptr %i.u, align 8, !tbaa !143
  %i.cv = load double, ptr %i.v, align 16, !tbaa !143
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef %i.ct, double noundef %i.cu, double noundef %i.cv) #16
  %i.cw = mul nsw i32 %.082, %i.aw
  %i.cx = sitofp reassoc nsz arcp contract afn i32 %i.cw to float
  %i.cy = fmul reassoc nnan nsz arcp contract afn float %i.cx, 1.250000e-01
  %i.cz = fpext reassoc nsz arcp contract afn float %i.cy to double
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1432
  %i.dc = load double, ptr %i.db, align 8, !tbaa !108 ; 2 uses
  %i.dd = fsub reassoc nsz arcp contract afn double %i.as, %i.dc
  %i.de = fsub reassoc nsz arcp contract afn double %i.av, %i.dc
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.cz, double noundef %i.bd, double noundef %i.dd, double noundef %i.de) #16
  call void @cairo_fill(ptr noundef %i.aj) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.df = add nuw nsw i32 %.082, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, 8
  br i1 %exitcond.not, label %bb.c, label %bb.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dt_iop_colorcorrection_button_press(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !145
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !146
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61
  switch i32 %i.k, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <2 x float> zeroinitializer, ptr %i.l, align 4, !tbaa !14
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  store <2 x float> zeroinitializer, ptr %i.i, align 4, !tbaa !14
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.n, i64 20, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  tail call void @dt_dev_add_history_item(ptr noundef %i.o, ptr noundef nonnull %2, i32 noundef 1) #16
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dt_iop_colorcorrection_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !55  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !108
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 5.000000e+00
  %i.i = fptosi double %i.h to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = shl nsw i32 %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !149
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load double, ptr %i.o, align 8, !tbaa !150
  %i.q = load <2 x i32>, ptr %i.j, align 4, !tbaa !109
  %i.r = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.t = sub nsw <2 x i32> %i.q, %i.s             ; 3 uses
  %i.u = extractelement <2 x i32> %i.t, i64 1
  %i.v = add nsw i32 %i.u, -1
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to double
  %i.x = fsub reassoc nsz arcp contract afn double %i.w, %i.p
  %i.y = insertelement <2 x double> poison, double %i.m, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.x, i64 1 ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fadd reassoc nsz arcp contract afn <2 x double> %i.z, %i.ab
  %i.ad = fsub reassoc nsz arcp contract afn <2 x double> %i.z, %i.ab
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.af = sitofp reassoc nsz arcp contract afn <2 x i32> %i.t to <2 x double> ; 3 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ae, %i.af
  %i.ah = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ae, zeroinitializer
  %i.ai = select <2 x i1> %i.ah, <2 x double> zeroinitializer, <2 x double> %i.ae
  %i.aj = select <2 x i1> %i.ag, <2 x double> %i.af, <2 x double> %i.ai
  %i.ak = fptrunc reassoc nsz arcp contract afn <2 x double> %i.aj to <2 x float>
  %i.al = fpext reassoc nsz arcp contract afn <2 x float> %i.ak to <2 x double>
  %i.am = fmul reassoc nsz arcp contract afn <2 x double> %i.al, splat (double 2.000000e+00)
  %i.an = fsub reassoc nsz arcp contract afn <2 x double> %i.am, %i.af
  %i.ao = fmul reassoc nsz arcp contract afn <2 x double> %i.an, splat (double 4.000000e+01)
  %i.ap = sitofp reassoc nsz arcp contract afn <2 x i32> %i.t to <2 x float>
  %i.aq = fpext reassoc nsz arcp contract afn <2 x float> %i.ap to <2 x double>
  %i.ar = fdiv reassoc nsz arcp contract afn <2 x double> %i.ao, %i.aq
  %i.as = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ar to <2 x float> ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !151
  %i.av = and i32 %i.au, 256
  %.not = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !61
  switch i32 %i.ax, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.as, ptr %i.ay, align 4, !tbaa !14
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.az, ptr noundef nonnull %2, i32 noundef 1) #16
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  store <2 x float> %i.as, ptr %i.d, align 4, !tbaa !14
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.ba, ptr noundef nonnull %2, i32 noundef 1) #16
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.aw, align 8, !tbaa !61
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1432
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !108
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, 5.000000e+00
  %i.bf = fptrunc reassoc nsz arcp contract afn double %i.be to float ; 2 uses
  %i.bg = load <4 x float>, ptr %i.d, align 4, !tbaa !14 ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bi = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bi ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bj
  %i.bl = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bm = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bk ; 2 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf ; 2 uses
  %i.br = extractelement <2 x float> %i.bp, i64 1 ; 3 uses
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, %i.bq
  %i.bt = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.br, %i.bt
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.aw, align 8, !tbaa !61
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bv = fcmp reassoc nsz arcp contract afn uge float %i.bt, %i.bq
  %i.bw = fcmp reassoc nsz arcp contract afn ugt float %i.bt, %i.br
  %or.cond81 = or i1 %i.bv, %i.bw
  br i1 %or.cond81, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.aw, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b, %bb.c, %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !61
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @gtk_widget_grab_focus(ptr noundef %0) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @gtk_widget_queue_draw(ptr noundef %i.ca) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dt_iop_colorcorrection_leave_notify(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  tail call void @gtk_widget_queue_draw(ptr noundef %i.c) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dt_iop_colorcorrection_scrolled(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = tail call i32 @dt_gui_ignore_scroll(ptr noundef %1) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.g = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef %1, ptr noundef nonnull %i.a) #16
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !15
  %i.j = fpext reassoc nsz arcp contract afn float %i.i to double
  %i.k = load i32, ptr %i.a, align 4, !tbaa !109
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.m = fmul reassoc nnan nsz arcp contract afn double %i.l, 1.000000e-01
  %i.n = fsub reassoc nsz arcp contract afn double %i.j, %i.m ; 3 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt double %i.n, 3.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole double %i.n, -3.000000e+00
  %spec.select13 = select i1 %.inv, double -3.000000e+00, double %i.n
  %spec.select = fptrunc double %spec.select13 to float
  %i.p = select i1 %i.o, float 3.000000e+00, float %spec.select ; 2 uses
  store float %i.p, ptr %i.h, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.p) #16
  call void @gtk_widget_queue_draw(ptr noundef %0) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dt_iop_colorcorrection_key_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.fold.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !153
  switch i32 %i.i, label %.fold.split [
    i32 65362, label %bb.f
    i32 65431, label %bb.f
    i32 65364, label %bb.c
    i32 65433, label %bb.c
    i32 65363, label %bb.d
    i32 65432, label %bb.d
    i32 65361, label %bb.e
    i32 65430, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.b
  %.049 = phi nsz float [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ 5.000000e-01, %bb.d ], [ -5.000000e-01, %bb.e ], [ 0.000000e+00, %bb.b ]
  %.0 = phi nsz float [ 5.000000e-01, %bb.b ], [ -5.000000e-01, %bb.c ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ], [ 5.000000e-01, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !154
  %i.l = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %0, i32 noundef %i.k) #16 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %.049 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.l, %.0
  %i.o = load i32, ptr %i.e, align 8, !tbaa !61
  switch i32 %i.o, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !13
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.m ; 3 uses
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.r, 4.000000e+01
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.r, -4.000000e+01
  %spec.select = select i1 %i.t, float -4.000000e+01, float %i.r
  %i.u = select i1 %i.s, float 4.000000e+01, float %spec.select
  store float %i.u, ptr %i.p, align 4, !tbaa !13
  br label %.sink.split

end_hunk_0
