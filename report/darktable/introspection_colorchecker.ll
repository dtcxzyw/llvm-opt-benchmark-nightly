Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 64
begin_hunk_0_@color_picker_apply:bb.a
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !164
  %i.di = load i32, ptr %i.da, align 4, !tbaa !166
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.dh, i32 noundef %i.di) #23
  tail call void @_colorchecker_update_sliders(ptr noundef nonnull %0)
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = atomicrmw sub ptr %i.dk, i32 1 seq_cst, align 4 ; 0 uses
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !165
  tail call void @gtk_widget_queue_draw(ptr noundef %i.dm) #23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [8 x ptr], align 8                ; 5 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 72) #23 ; 17 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.c, ptr %i.d, align 16, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !172
  %i.g = tail call ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef f0x3FE5555555555555) #23 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !165
  tail call void @gtk_widget_add_events(ptr noundef %i.g, i32 noundef 8964) #23
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.i = tail call i64 @g_signal_connect_data(ptr noundef %i.h, ptr noundef nonnull @.str.22, ptr noundef nonnull @checker_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.k = tail call i64 @g_signal_connect_data(ptr noundef %i.j, ptr noundef nonnull @.str.23, ptr noundef nonnull @checker_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %i.l, ptr noundef nonnull @.str.24, ptr noundef nonnull @checker_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 -1, ptr %i.o, align 4, !tbaa !166
  %i.p = tail call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !164
  %i.r = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.25) #23 ; 0 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.s, ptr noundef %i.t) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_iop_gui_alloc.exit
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.y = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.x) #23 ; 0 uses
  %i.z = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.000000e+02, float noundef 2.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !168
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.z, ptr noundef %i.ab) #23
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !168
  %i.ad = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ac, ptr noundef null, ptr noundef nonnull @.str.28) #23 ; 0 uses
  %i.ae = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !169
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.ag) #23
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !169
  %i.ai = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.30) #23 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !169
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aj, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e-01) #23
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !169
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ak, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !169
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.al, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e-01) #23
  %i.am = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !170
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.am, ptr noundef %i.ao) #23
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !170
  %i.aq = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ap, ptr noundef null, ptr noundef nonnull @.str.32) #23 ; 0 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !170
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !170
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.as, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !170
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.at, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #23
  %i.au = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.280000e+02, float noundef 1.280000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !171
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.aw) #23
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !171
  %i.ay = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ax, ptr noundef null, ptr noundef nonnull @.str.34) #23 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.az, align 8, !tbaa !167
  %i.ba = call ptr @dt_bauhaus_combobox_new(ptr noundef nonnull %0) #23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !218
  %i.bc = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ba, ptr noundef null, ptr noundef nonnull @.str.35) #23 ; 0 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.be = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.be) #23
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.bg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bf, ptr noundef %i.bg) #23
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bh, ptr noundef %i.bi) #23
  %i.bj = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  %i.bk = load <4 x ptr>, ptr %i.c, align 8, !tbaa !219
  store <4 x ptr> %i.bk, ptr %i.b, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = load <2 x ptr>, ptr %i.an, align 8, !tbaa !219
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !218
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bp, align 8, !tbaa !15
  %i.bq = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.39, i32 noundef 1616, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bj, ptr noundef nonnull %i.b) #23
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !220
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.bt = call i64 @g_signal_connect_data(ptr noundef %i.bs, ptr noundef nonnull @.str.40, ptr noundef nonnull @patch_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !168
  %i.bv = call i64 @g_signal_connect_data(ptr noundef %i.bu, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_L_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !169
  %i.bx = call i64 @g_signal_connect_data(ptr noundef %i.bw, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_a_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !170
  %i.bz = call i64 @g_signal_connect_data(ptr noundef %i.by, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_b_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !171
  %i.cb = call i64 @g_signal_connect_data(ptr noundef %i.ca, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_C_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.cd = call i64 @g_signal_connect_data(ptr noundef %i.cc, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph:                                           ; preds = %_iop_gui_alloc.exit, %.lr.ph
  %.071 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %_iop_gui_alloc.exit ] ; 2 uses
  %i.ce = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #23
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.ce, i32 noundef %.071) #23 ; 0 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !164
  call void @dt_bauhaus_combobox_add(ptr noundef %i.cg, ptr noundef nonnull %i.a) #23
  %i.ch = add nuw nsw i32 %.071, 1                ; 2 uses
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !18
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !221  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !223  ; 4 uses
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.l = load double, ptr %i.k, align 8, !tbaa !224 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.i
  %i.n = fptosi double %i.m to i32
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #23 ; 4 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !224 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #23
  %i.v = call ptr @cairo_create(ptr noundef %i.r) #23 ; 19 uses
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  call void @cairo_paint(ptr noundef %i.v) #23
  call void @cairo_set_antialias(ptr noundef %i.v, i32 noundef 1) #23
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
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
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !166 ; 4 uses
  %.not = icmp eq i32 %i.ay, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.k
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %bb.b, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.az = add nuw nsw i64 %indvars.iv, %i.ar      ; 7 uses
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !18
  %i.bb = sext i32 %i.ba to i64
  %.not115 = icmp slt i64 %i.az, %i.bb
  br i1 %.not115, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.az ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.az ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bf, 2.000000e-03
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, 5.000000e-03
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bj, f0x3E0D3DCB ; 5 uses
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bi ; 4 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bl, %i.bk ; 3 uses
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bl, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bp, i64 3 ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, splat (float f0x3E53DCB1)
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bp, %i.bp
  %i.bw = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bo, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bm, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = insertelement <4 x float> %i.bs, float %i.bn, i64 2
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %i.bz, %i.ca
  %i.cc = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float f0x3E038026)
  %i.cd = fadd reassoc nsz arcp contract afn <4 x float> %i.cc, splat (float f0xBC911AA6)
  %i.ce = select <4 x i1> %i.bu, <4 x float> %i.cb, <4 x float> %i.cd ; 5 uses
  %i.cf = extractelement <4 x float> %i.ce, i64 0
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 9.642000e-01
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.ce, <4 x float> <float f0x3FCEF57D, float f0x3F719831, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 1> ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float poison, float f0x3E6A7CB9, float poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float %i.cg, i64 3 ; 2 uses
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.ck, %i.cm
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cq = fsub reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cp
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cp
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cj ; 3 uses
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cj
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cw = bitcast <4 x float> %i.cv to <4 x i32>  ; 2 uses
  %i.cx = and <4 x i32> %i.cw, splat (i32 8388607)
  %i.cy = or disjoint <4 x i32> %i.cx, splat (i32 1065353216)
  %i.cz = bitcast <4 x i32> %i.cy to <4 x float>  ; 5 uses
  %i.da = lshr <4 x i32> %i.cw, splat (i32 23)
  %i.db = and <4 x i32> %i.da, splat (i32 255)
  %i.dc = add nsw <4 x i32> %i.db, splat (i32 -127)
  %i.dd = sitofp <4 x i32> %i.dc to <4 x float>
  %i.de = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cz, splat (float f0x3D74552F)
  %i.df = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.de, splat (float f0xBEEE7397)
  %i.dg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.df, %i.cz
  %i.dh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.dg, splat (float f0x3FBD96DD)
  %i.di = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.dh, %i.cz
  %i.dj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.di, splat (float f0xC02153F6)
  %i.dk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.dj, %i.cz
  %i.dl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.dk, splat (float f0x4038D96C)
  %i.dm = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.cz, splat (float -1.000000e+00)
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dd
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %i.do, splat (float f0x3ED55555)
  %i.dq = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dp, <4 x float> splat (float 1.290000e+02))
  %i.dr = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dq, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.ds = fadd reassoc nsz arcp contract afn <4 x float> %i.dr, splat (float -5.000000e-01)
  %i.dt = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ds)
  %i.du = sitofp reassoc nsz arcp contract afn <4 x i32> %i.dt to <4 x float> ; 3 uses
  %i.dv = extractelement <4 x float> %i.ct, i64 0 ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn ugt float %i.dv, 3.130800e-03
  br i1 %i.dw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dx = fmul reassoc nnan nsz arcp contract afn float %i.dv, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.du, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.dr, %i.du
  %i.dy = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, f0x3C5DBE69
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, f0x3D5509F9
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dy
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, f0x3E773CC5
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dy
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, f0x3F3168B3
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.dy
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, f0x3F800016
  %i.eh = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.ei = shl i32 %i.eh, 23
  %i.ej = add i32 %i.ei, 1065353216
  %i.ek = bitcast i32 %i.ej to float
  %i.el = fmul reassoc nnan nsz arcp contract afn float %i.ek, 1.055000e+00
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.eg
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.f, %bb.g
  %i.eo = phi reassoc nsz arcp contract afn float [ %i.dx, %bb.f ], [ %i.en, %bb.g ]
  %i.ep = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eq = fptosi <2 x float> %i.ep to <2 x i32>
  %i.er = shl <2 x i32> %i.eq, splat (i32 23)
  %i.es = add <2 x i32> %i.er, splat (i32 1065353216)
  %i.et = bitcast <2 x i32> %i.es to <2 x float>
  %i.eu = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ev = fsub reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ep ; 4 uses
  %i.ew = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, splat (float f0x3C5DBE69)
  %i.ex = fadd reassoc nsz arcp contract afn <2 x float> %i.ew, splat (float f0x3D5509F9)
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.ex, %i.ev
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float f0x3E773CC5)
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.ev
  %i.fb = fadd reassoc nsz arcp contract afn <2 x float> %i.fa, splat (float f0x3F3168B3)
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.fb, %i.ev
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fc, splat (float f0x3F800016)
  %i.fe = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ff = fmul reassoc nsz arcp contract afn <2 x float> %i.fe, splat (float 1.292000e+01)
  %i.fg = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.fe, splat (float 3.130800e-03)
  %i.fh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.et, splat (float 1.055000e+00)
  %i.fi = fmul reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fd
  %i.fj = fadd reassoc nsz arcp contract afn <2 x float> %i.fi, splat (float -5.500000e-02)
  %i.fk = select <2 x i1> %i.fg, <2 x float> %i.fj, <2 x float> %i.ff
  %i.fl = fpext reassoc nsz arcp contract afn float %i.eo to double
  %i.fm = fpext <2 x float> %i.fk to <2 x double> ; 2 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  %i.fo = extractelement <2 x double> %i.fm, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.fl, double noundef %i.fn, double noundef %i.fo) #23
  %i.fp = trunc i64 %indvars.iv to i32
  %i.fq = mul i32 %i.f, %i.fp
  %i.fr = sitofp reassoc nsz arcp contract afn i32 %i.fq to float
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.aq
  %i.ft = fpext reassoc nsz arcp contract afn float %i.fs to double ; 3 uses
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1432
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !230 ; 2 uses
  %i.fx = fsub reassoc nsz arcp contract afn double %i.ah, %i.fw
  %i.fy = fsub reassoc nsz arcp contract afn double %i.ak, %i.fw
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.ft, double noundef %i.aw, double noundef %i.fx, double noundef %i.fy) #23
  call void @cairo_fill(ptr noundef %i.v) #23
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !13
  %i.gb = load float, ptr %i.bc, align 4, !tbaa !13
  %i.gc = fsub reassoc nsz arcp contract afn float %i.ga, %i.gb
  %i.gd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gc)
  %i.ge = fcmp reassoc nsz arcp contract afn ogt float %i.gd, f0x3727C5AC
  br i1 %i.ge, label %bb.j, label %bb.h

bb.h:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.az
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !13
  %i.gh = load float, ptr %i.be, align 4, !tbaa !13
  %i.gi = fsub reassoc nsz arcp contract afn float %i.gg, %i.gh
  %i.gj = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gi)
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.gj, f0x3727C5AC
  br i1 %i.gk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !13
  %i.gn = load float, ptr %i.bg, align 4, !tbaa !13
  %i.go = fsub reassoc nsz arcp contract afn float %i.gm, %i.gn
  %i.gp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.go)
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gp, f0x3727C5AC
  br i1 %i.gq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %dt_XYZ_to_sRGB.exit
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1432
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !230
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.gu) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1432
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !230 ; 3 uses
  %i.gy = fadd reassoc nsz arcp contract afn double %i.gx, %i.ft
  %i.gz = fadd reassoc nsz arcp contract afn double %i.gx, %i.aw
  %i.ha = fmul reassoc nsz arcp contract afn double %i.gx, 3.000000e+00 ; 2 uses
  %i.hb = fsub reassoc nsz arcp contract afn double %i.ah, %i.ha
  %i.hc = fsub reassoc nsz arcp contract afn double %i.ak, %i.ha
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.gy, double noundef %i.gz, double noundef %i.hb, double noundef %i.hc) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1432
  %i.hf = load double, ptr %i.he, align 8, !tbaa !230
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.hf) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1432
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !230 ; 2 uses
  %i.hj = fmul reassoc nsz arcp contract afn double %i.hi, 2.000000e+00 ; 2 uses
  %i.hk = fadd reassoc nsz arcp contract afn double %i.hj, %i.ft
  %i.hl = fadd reassoc nsz arcp contract afn double %i.hj, %i.aw
  %i.hm = fmul reassoc nsz arcp contract afn double %i.hi, 5.000000e+00 ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn double %i.ah, %i.hm
  %i.ho = fsub reassoc nsz arcp contract afn double %i.ak, %i.hm
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.hk, double noundef %i.hl, double noundef %i.hn, double noundef %i.ho) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.b
  %i.hp = srem i32 %i.ay, %i.z
  %i.hq = sdiv i32 %i.ay, %i.z
  %i.hr = sext i32 %i.ay to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !13
  %i.hu = fcmp reassoc nsz arcp contract afn ogt float %i.ht, 8.000000e+01
  %.0 = select i1 %i.hu, double 0.000000e+00, double 1.000000e+00 ; 3 uses
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1432
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !230
  %i.hy = fmul reassoc nsz arcp contract afn double %i.hx, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.hy) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %.0, double noundef %.0, double noundef %.0) #23
  %i.hz = mul nsw i32 %i.hp, %i.f
  %i.ia = sitofp reassoc nsz arcp contract afn i32 %i.hz to float
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.ad
  %i.ic = fpext reassoc nsz arcp contract afn float %i.ib to double
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1432
  %i.if = load double, ptr %i.ie, align 8, !tbaa !230 ; 2 uses
  %i.ig = fmul reassoc nsz arcp contract afn double %i.if, 5.000000e+00 ; 2 uses
  %i.ih = fadd reassoc nsz arcp contract afn double %i.ig, %i.ic
  %i.ii = mul nsw i32 %i.hq, %i.h
  %i.ij = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ij, %i.ae
  %i.il = fpext reassoc nsz arcp contract afn float %i.ik to double
  %i.im = fadd reassoc nsz arcp contract afn double %i.ig, %i.il
  %i.in = fmul reassoc nsz arcp contract afn double %i.if, 1.100000e+01 ; 2 uses
  %i.io = fsub reassoc nsz arcp contract afn double %i.ah, %i.in
  %i.ip = fsub reassoc nsz arcp contract afn double %i.ak, %i.in
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.ih, double noundef %i.im, double noundef %i.io, double noundef %i.ip) #23
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
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !161 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !221  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !223  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !231 ; 3 uses
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.f to double ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt double %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fcmp reassoc nsz arcp contract afn olt double %i.j, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.n = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.a ]
  %i.o = fptrunc reassoc nsz arcp contract afn double %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !236 ; 3 uses
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.h to double ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn ogt double %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = fcmp reassoc nsz arcp contract afn olt double %i.q, 0.000000e+00
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.u = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.e ], [ %i.q, %bb.f ], [ %i.r, %bb.d ]
  %i.v = fptrunc reassoc nsz arcp contract afn double %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 11 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18   ; 4 uses
  %i.y = icmp sgt i32 %i.x, 24                    ; 2 uses
  %spec.select = select i1 %i.y, float 7.000000e+00, float 4.000000e+00
  %spec.select166 = select i1 %i.y, i32 7, i32 6  ; 2 uses
  %i.z = uitofp nneg i32 %spec.select166 to float
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.o
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.aa, %i.ab
  %i.ad = fmul reassoc nsz arcp contract afn float %spec.select, %i.v
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fptosi float %i.ac to i32
  %i.ah = fptosi float %i.af to i32
  %i.ai = mul nsw i32 %spec.select166, %i.ah
  %i.aj = add nsw i32 %i.ai, %i.ag                ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !237
  switch i32 %i.al, label %.thread170 [
    i32 1, label %bb.h
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %1, align 8, !tbaa !238
  %i.an = icmp eq i32 %i.am, 5
  br i1 %i.an, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp sgt i32 %i.aj, -1
  %.not165 = icmp slt i32 %i.aj, %i.x
  %or.cond = select i1 %i.ao, i1 %.not165, i1 false
  br i1 %or.cond, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %bb.i
  %i.ap = zext nneg i32 %i.aj to i64              ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap
  store float %i.ar, ptr %i.at, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load float, ptr %i.av, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ap
  store float %i.aw, ptr %i.ay, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ap
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ap
  store float %i.bb, ptr %i.bd, align 4, !tbaa !13
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !239
  call void @dt_dev_add_history_item(ptr noundef %i.be, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = atomicrmw add ptr %i.bg, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 seq_cst, align 4 ; 0 uses
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !165
  call void @gtk_widget_queue_draw(ptr noundef %i.bl) #23
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.bm = icmp slt i32 %i.aj, %i.x
  br i1 %i.bm, label %bb.l, label %.thread170

bb.l:                                             ; preds = %bb.k
  %i.bn = icmp sgt i32 %i.aj, -1
  br i1 %i.bn, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.bp = zext nneg i32 %i.aj to i64              ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = xor i32 %i.aj, -1                       ; 6 uses
  %i.bt = add i32 %i.x, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr nonnull align 4 %i.br, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bp ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.w, align 4, !tbaa !18
  %i.ca = add i32 %i.bz, %i.bs
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull align 4 %i.by, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bp ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.w, align 4, !tbaa !18
  %i.ch = add i32 %i.cg, %i.bs
  %i.ci = sext i32 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ce, ptr nonnull align 4 %i.cf, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bp ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.w, align 4, !tbaa !18
  %i.cn = add i32 %i.cm, %i.bs
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ck, ptr nonnull align 4 %i.cl, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bp ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.w, align 4, !tbaa !18
  %i.cu = add i32 %i.ct, %i.bs
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 4 %i.cs, i64 %i.cw, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.bp ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.w, align 4, !tbaa !18
  %i.db = add i32 %i.da, %i.bs
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr nonnull align 4 %i.cz, i64 %i.dd, i1 false)
  %i.de = load i32, ptr %i.w, align 4, !tbaa !18
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.w, align 4, !tbaa !18
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !239
  call void @dt_dev_add_history_item(ptr noundef %i.dg, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = atomicrmw add ptr %i.di, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_rebuild_patch_list(ptr noundef nonnull %2)
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
end_hunk_0
