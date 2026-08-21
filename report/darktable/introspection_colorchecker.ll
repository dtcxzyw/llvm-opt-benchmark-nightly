Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 64
begin_hunk_0_@gui_init:bb.a
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
  %i.ce = select <4 x i1> %i.bu, <4 x float> %i.cb, <4 x float> %i.cd ; 4 uses
  %4 = shufflevector <4 x float> <float f0x3FCEF57D, float f0x3F719831, float f0x3E6A7CB9, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %5 = fmul reassoc nsz arcp contract afn <4 x float> %4, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.cf = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %6 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %5, %6
  %i.cj = fadd reassoc nsz arcp contract afn <4 x float> %5, %6
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cl = fsub reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ck
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ch ; 3 uses
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ch
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cr = bitcast <4 x float> %i.cq to <4 x i32>  ; 2 uses
  %i.cs = and <4 x i32> %i.cr, splat (i32 8388607)
  %i.ct = or disjoint <4 x i32> %i.cs, splat (i32 1065353216)
  %i.cu = bitcast <4 x i32> %i.ct to <4 x float>  ; 5 uses
  %i.cv = lshr <4 x i32> %i.cr, splat (i32 23)
  %i.cw = and <4 x i32> %i.cv, splat (i32 255)
  %i.cx = add nsw <4 x i32> %i.cw, splat (i32 -127)
  %i.cy = sitofp <4 x i32> %i.cx to <4 x float>
  %i.cz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cu, splat (float f0x3D74552F)
  %i.da = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.cz, splat (float f0xBEEE7397)
  %i.db = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.da, %i.cu
  %i.dc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.db, splat (float f0x3FBD96DD)
  %i.dd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.dc, %i.cu
  %i.de = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.dd, splat (float f0xC02153F6)
  %i.df = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.de, %i.cu
  %i.dg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.df, splat (float f0x4038D96C)
  %i.dh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.cu, splat (float -1.000000e+00)
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %i.dg, %i.dh
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.di, %i.cy
  %i.dk = fmul reassoc nsz arcp contract afn <4 x float> %i.dj, splat (float f0x3ED55555)
  %i.dl = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dk, <4 x float> splat (float 1.290000e+02))
  %i.dm = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dl, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.dn = fadd reassoc nsz arcp contract afn <4 x float> %i.dm, splat (float -5.000000e-01)
  %i.do = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.dn)
  %i.dp = sitofp reassoc nsz arcp contract afn <4 x i32> %i.do to <4 x float> ; 3 uses
  %i.dq = extractelement <4 x float> %i.co, i64 0 ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn ugt float %i.dq, 3.130800e-03
  br i1 %i.dr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ds = fmul reassoc nnan nsz arcp contract afn float %i.dq, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.dp, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dp
  %i.dt = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, f0x3C5DBE69
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, f0x3D5509F9
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.dt
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, f0x3E773CC5
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dt
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, f0x3F3168B3
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.dt
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, f0x3F800016
  %i.ec = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.ed = shl i32 %i.ec, 23
  %i.ee = add i32 %i.ed, 1065353216
  %i.ef = bitcast i32 %i.ee to float
  %i.eg = fmul reassoc nnan nsz arcp contract afn float %i.ef, 1.055000e+00
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.eb
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.f, %bb.g
  %i.ej = phi reassoc nsz arcp contract afn float [ %i.ds, %bb.f ], [ %i.ei, %bb.g ]
  %i.ek = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.el = fptosi <2 x float> %i.ek to <2 x i32>
  %i.em = shl <2 x i32> %i.el, splat (i32 23)
  %i.en = add <2 x i32> %i.em, splat (i32 1065353216)
  %i.eo = bitcast <2 x i32> %i.en to <2 x float>
  %i.ep = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.eq = fsub reassoc nsz arcp contract afn <2 x float> %i.ep, %i.ek ; 4 uses
  %i.er = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, splat (float f0x3C5DBE69)
  %i.es = fadd reassoc nsz arcp contract afn <2 x float> %i.er, splat (float f0x3D5509F9)
  %i.et = fmul reassoc nsz arcp contract afn <2 x float> %i.es, %i.eq
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.et, splat (float f0x3E773CC5)
  %i.ev = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, %i.eq
  %i.ew = fadd reassoc nsz arcp contract afn <2 x float> %i.ev, splat (float f0x3F3168B3)
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.ew, %i.eq
  %i.ey = fadd reassoc nsz arcp contract afn <2 x float> %i.ex, splat (float f0x3F800016)
  %i.ez = shufflevector <4 x float> %i.co, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, splat (float 1.292000e+01)
  %i.fb = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.ez, splat (float 3.130800e-03)
  %i.fc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.eo, splat (float 1.055000e+00)
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.fc, %i.ey
  %i.fe = fadd reassoc nsz arcp contract afn <2 x float> %i.fd, splat (float -5.500000e-02)
  %i.ff = select <2 x i1> %i.fb, <2 x float> %i.fe, <2 x float> %i.fa
  %i.fg = fpext reassoc nsz arcp contract afn float %i.ej to double
  %i.fh = fpext <2 x float> %i.ff to <2 x double> ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  %i.fj = extractelement <2 x double> %i.fh, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %i.fg, double noundef %i.fi, double noundef %i.fj) #23
  %i.fk = trunc i64 %indvars.iv to i32
  %i.fl = mul i32 %i.f, %i.fk
  %i.fm = sitofp reassoc nsz arcp contract afn i32 %i.fl to float
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.aq
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fn to double ; 3 uses
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1432
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !230 ; 2 uses
  %i.fs = fsub reassoc nsz arcp contract afn double %i.ah, %i.fr
  %i.ft = fsub reassoc nsz arcp contract afn double %i.ak, %i.fr
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.fo, double noundef %i.aw, double noundef %i.fs, double noundef %i.ft) #23
  call void @cairo_fill(ptr noundef %i.v) #23
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !13
  %i.fw = load float, ptr %i.bc, align 4, !tbaa !13
  %i.fx = fsub reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fx)
  %i.fz = fcmp reassoc nsz arcp contract afn ogt float %i.fy, f0x3727C5AC
  br i1 %i.fz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.az
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !13
  %i.gc = load float, ptr %i.be, align 4, !tbaa !13
  %i.gd = fsub reassoc nsz arcp contract afn float %i.gb, %i.gc
  %i.ge = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gd)
  %i.gf = fcmp reassoc nsz arcp contract afn ogt float %i.ge, f0x3727C5AC
  br i1 %i.gf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !13
  %i.gi = load float, ptr %i.bg, align 4, !tbaa !13
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gh, %i.gi
  %i.gk = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gj)
  %i.gl = fcmp reassoc nsz arcp contract afn ogt float %i.gk, f0x3727C5AC
  br i1 %i.gl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %dt_XYZ_to_sRGB.exit
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1432
  %i.go = load double, ptr %i.gn, align 8, !tbaa !230
  %i.gp = fmul reassoc nsz arcp contract afn double %i.go, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.gp) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1432
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !230 ; 3 uses
  %i.gt = fadd reassoc nsz arcp contract afn double %i.gs, %i.fo
  %i.gu = fadd reassoc nsz arcp contract afn double %i.gs, %i.aw
  %i.gv = fmul reassoc nsz arcp contract afn double %i.gs, 3.000000e+00 ; 2 uses
  %i.gw = fsub reassoc nsz arcp contract afn double %i.ah, %i.gv
  %i.gx = fsub reassoc nsz arcp contract afn double %i.ak, %i.gv
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.gt, double noundef %i.gu, double noundef %i.gw, double noundef %i.gx) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1432
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !230
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.ha) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1432
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !230 ; 2 uses
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, 2.000000e+00 ; 2 uses
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, %i.fo
  %i.hg = fadd reassoc nsz arcp contract afn double %i.he, %i.aw
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hd, 5.000000e+00 ; 2 uses
  %i.hi = fsub reassoc nsz arcp contract afn double %i.ah, %i.hh
  %i.hj = fsub reassoc nsz arcp contract afn double %i.ak, %i.hh
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.hf, double noundef %i.hg, double noundef %i.hi, double noundef %i.hj) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.b
  %i.hk = srem i32 %i.ay, %i.z
  %i.hl = sdiv i32 %i.ay, %i.z
  %i.hm = sext i32 %i.ay to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !13
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %i.ho, 8.000000e+01
  %.0 = select i1 %i.hp, double 0.000000e+00, double 1.000000e+00 ; 3 uses
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1432
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !230
  %i.ht = fmul reassoc nsz arcp contract afn double %i.hs, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.ht) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %.0, double noundef %.0, double noundef %.0) #23
  %i.hu = mul nsw i32 %i.hk, %i.f
  %i.hv = sitofp reassoc nsz arcp contract afn i32 %i.hu to float
  %i.hw = fdiv reassoc nsz arcp contract afn float %i.hv, %i.ad
  %i.hx = fpext reassoc nsz arcp contract afn float %i.hw to double
  %i.hy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1432
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !230 ; 2 uses
  %i.ib = fmul reassoc nsz arcp contract afn double %i.ia, 5.000000e+00 ; 2 uses
  %i.ic = fadd reassoc nsz arcp contract afn double %i.ib, %i.hx
  %i.id = mul nsw i32 %i.hl, %i.h
  %i.ie = sitofp reassoc nsz arcp contract afn i32 %i.id to float
  %i.if = fdiv reassoc nsz arcp contract afn float %i.ie, %i.ae
  %i.ig = fpext reassoc nsz arcp contract afn float %i.if to double
  %i.ih = fadd reassoc nsz arcp contract afn double %i.ib, %i.ig
  %i.ii = fmul reassoc nsz arcp contract afn double %i.ia, 1.100000e+01 ; 2 uses
  %i.ij = fsub reassoc nsz arcp contract afn double %i.ah, %i.ii
  %i.ik = fsub reassoc nsz arcp contract afn double %i.ak, %i.ii
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.ic, double noundef %i.ih, double noundef %i.ij, double noundef %i.ik) #23
end_hunk_0
