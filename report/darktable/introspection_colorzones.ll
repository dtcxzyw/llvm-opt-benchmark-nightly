Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorzones?download=true
inline.NumInlined: 220
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_area_scrolled_callback:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 484
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !54
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = sitofp reassoc nsz arcp contract afn i32 %i.bw to double
  %i.by = fdiv reassoc nsz arcp contract afn double 2.000000e-01, %i.bx ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn olt double %i.bp, %i.by
  %. = select reassoc nsz arcp contract afn i1 %i.bz, double %i.by, double %i.bp
  %i.ca = fptrunc reassoc nsz arcp contract afn double %. to float
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cb = phi float [ 1.000000e+00, %bb.k ], [ %i.ca, %bb.l ]
  store float %i.cb, ptr %i.bi, align 8, !tbaa !167
  call void @gtk_widget_queue_draw(ptr noundef %0) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !16
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.cc to float
  %i.ce = fmul reassoc nnan nsz arcp contract afn float %i.cd, -1.000000e-03
  %i.cf = fptosi float %i.ce to i32               ; 2 uses
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !16
  %i.cg = load i32, ptr %i.ba, align 4, !tbaa !164
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cf to float
  %i.ci = load i32, ptr %i.g, align 8, !tbaa !354
  call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.cg, float noundef 0.000000e+00, float noundef %i.ch, i32 noundef %i.ci)
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.h, %bb.e, %bb.f, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.c
  %.1 = phi i32 [ 1, %bb.o ], [ %i.o, %bb.c ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_area_key_press_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2892
  %i.c = load i32, ptr %i.b, align 4, !tbaa !202
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.fold.split

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.fold.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !356
  switch i32 %i.j, label %.fold.split [
    i32 65362, label %bb.g
    i32 65431, label %bb.g
    i32 65364, label %bb.d
    i32 65433, label %bb.d
    i32 65363, label %bb.e
    i32 65432, label %bb.e
    i32 65361, label %bb.f
    i32 65430, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.c
  %.018 = phi nsz float [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ], [ 1.000000e-03, %bb.e ], [ -1.000000e-03, %bb.f ], [ 0.000000e+00, %bb.c ]
  %.0 = phi nsz float [ 1.000000e-03, %bb.c ], [ -1.000000e-03, %bb.d ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ], [ 1.000000e-03, %bb.c ]
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #29
  %i.k = load i32, ptr %i.f, align 4, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !357
  tail call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.k, float noundef %.018, float noundef %.0, i32 noundef %i.m)
  br label %.fold.split

.fold.split:                                      ; preds = %bb.c, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.1
}

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_bottom_area_draw_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct.dt_iop_colorzones_params_t, align 4 ; 5 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %5 = alloca %struct._GdkRGBA, align 8           ; 6 uses
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [4 x float], align 16             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !47  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(520) %3, ptr noundef nonnull align 4 dereferenceable(520) %i.i, i64 520, i1 false), !tbaa.struct !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #29
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1432
  %i.l = load double, ptr %i.k, align 8, !tbaa !180
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, 5.000000e+00
  %i.n = fptosi double %i.m to i32                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !186  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !187  ; 2 uses
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.p to double
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !188 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.u, %i.s
  %i.w = fptosi double %i.v to i32
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.r to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.u, %i.x
  %i.z = fptosi double %i.y to i32
  %i.aa = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.w, i32 noundef %i.z) #29 ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1440
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !188 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.aa, double noundef %i.ad, double noundef %i.ad) #29
  %i.ae = call ptr @cairo_create(ptr noundef %i.aa) #29 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.af = call ptr @gtk_widget_get_style_context(ptr noundef %0) #29
  %i.ag = call i32 @gtk_style_context_lookup_color(ptr noundef %i.af, ptr noundef nonnull @.str.82, ptr noundef nonnull %5) #29
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  call void @llvm.masked.store.v4f64.p0(<4 x double> <double 1.000000e+00, double poison, double poison, double 1.000000e+00>, ptr align 8 %5, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !171
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.ae, ptr noundef nonnull %5) #29
  call void @cairo_paint(ptr noundef %i.ae) #29
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.n to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.ae, double noundef %i.ai, double noundef %i.ai) #29
  %i.aj = shl nsw i32 %i.n, 1                     ; 2 uses
  %i.ak = sub nsw i32 %i.p, %i.aj                 ; 4 uses
  %i.al = sub nsw i32 %i.r, %i.aj                 ; 2 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1432
  %i.ao = load double, ptr %i.an, align 8, !tbaa !180
  call void @cairo_set_line_width(ptr noundef %i.ae, double noundef %i.ao) #29
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #29
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ak to double ; 2 uses
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.al to double ; 3 uses
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ap, double noundef %i.aq) #29
  call void @cairo_stroke(ptr noundef %i.ae) #29
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #29
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ap, double noundef %i.aq) #29
  call void @cairo_fill(ptr noundef %i.ae) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call fastcc void @_select_base_display_color(ptr noundef nonnull %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  call void @cairo_set_antialias(ptr noundef %i.ae, i32 noundef 1) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 5300
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 5304
  %i.at = load i32, ptr %3, align 4, !tbaa !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aw = load float, ptr %i.av, align 4
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.aw, 2.000000e+00
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load float, ptr %i.ax, align 8          ; 2 uses
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ak to float
  %i.ba = fmul reassoc nnan nsz arcp contract afn float %i.az, 1.562500e-02
  %i.bb = fpext reassoc nsz arcp contract afn float %i.ba to double
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  call void @cairo_set_antialias(ptr noundef %i.ae, i32 noundef 0) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.bd = load i32, ptr %i.bc, align 16, !tbaa !191
  %.not70 = icmp eq i32 %i.bd, 0
  br i1 %.not70, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.h
  %.079 = phi i32 [ 0, %bb.c ], [ %i.dc, %bb.h ]  ; 3 uses
  %i.be = uitofp nsz nneg i32 %.079 to float
  %6 = load float, ptr %i.ar, align 4, !tbaa !189
  %7 = load float, ptr %i.as, align 8, !tbaa !190 ; 2 uses
  %i.bf = fmul reassoc nnan nsz arcp contract afn float %i.be, f0x3C820821
  %8 = insertelement <2 x float> poison, float %i.bf, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fadd reassoc nsz arcp contract afn <2 x float> %9, <float f0x3C020821, float -0.000000e+00>
  %11 = insertelement <2 x float> poison, float %6, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fdiv reassoc nsz arcp contract afn <2 x float> %10, %12 ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0
  %i.bg = fadd reassoc nsz arcp contract afn float %14, %7 ; 2 uses
  %15 = extractelement <2 x float> %13, i64 1
  %i.bh = fadd reassoc nsz arcp contract afn float %15, %7
  switch i32 %i.at, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bg, 1.000000e+02
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.reass = fmul reassoc nsz arcp contract afn float %i.bg, %factor.op.fmul
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.075.0 = phi nsz float [ 5.000000e+01, %bb.g ], [ %i.bi, %bb.f ], [ 5.000000e+01, %bb.e ] ; 7 uses
  %.sroa.676.0 = phi nsz float [ %.reass, %bb.g ], [ f0x42B504F3, %bb.f ], [ f0x42B504F3, %bb.e ]
  %.sroa.11.0 = phi nsz float [ %i.ay, %bb.g ], [ %i.ay, %bb.f ], [ %i.bh, %bb.e ]
  %i.bj = fmul reassoc nsz arcp contract afn float %.sroa.11.0, f0x40C90FDB
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bj) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bk = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.075.0, float 1.000000e+02)
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bk, %.sroa.075.0
  %i.bm = fadd reassoc nsz arcp contract afn float %.sroa.075.0, -2.000000e+01
  %i.bn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float 0.000000e+00)
  %i.bo = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bn, float 8.000000e+01)
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bl, 1.250000e-04
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, %i.bo
  %i.br = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bq ; 3 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %.sroa.075.0
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %.sroa.676.0 ; 2 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 2.000000e-03
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %cos
  %i.by = fdiv reassoc nsz arcp contract afn float %i.bx, %.sroa.075.0
  %i.bz = fmul reassoc nsz arcp contract afn float %.sroa.075.0, 8.620690e-03
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bv, 5.000000e-03
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %sin
  %i.cc = fdiv reassoc nsz arcp contract afn float %i.cb, %.sroa.075.0
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bz, f0x3E0D3DCB ; 3 uses
  %i.ce = fadd reassoc nsz arcp contract afn float %i.by, %i.cd
  %i.cf = fsub reassoc nsz arcp contract afn float %i.cd, %i.cc
  %i.cg = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %i.cf, i64 2
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0x3E038026, float f0x3E038026, float f0x3E038026, float 0.000000e+00>
  %i.cm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ck, splat (float f0x3E53DCB1)
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, %i.ck
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ck
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.cl, splat (float f0xBC911AA6)
  %i.cq = select <4 x i1> %i.cm, <4 x float> %i.co, <4 x float> %i.cp
  %i.cr = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float 0.000000e+00>
  store <4 x float> %i.cr, ptr %i.d, align 16, !tbaa !12
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.d, ptr noundef %i.e)
  %i.cs = load float, ptr %i.e, align 16, !tbaa !12
  %i.ct = fpext reassoc nsz arcp contract afn float %i.cs to double
  %i.cu = load <2 x float>, ptr %i.au, align 4, !tbaa !12
  %i.cv = fpext <2 x float> %i.cu to <2 x double> ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = extractelement <2 x double> %i.cv, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef %i.ct, double noundef %i.cw, double noundef %i.cx) #29
  %i.cy = mul nsw i32 %.079, %i.ak
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.cy to float
  %i.da = fmul reassoc nnan nsz arcp contract afn float %i.cz, 1.562500e-02
  %i.db = fpext reassoc nsz arcp contract afn float %i.da to double
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef %i.db, double noundef 0.000000e+00, double noundef %i.bb, double noundef %i.aq) #29
  call void @cairo_fill(ptr noundef %i.ae) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.dc = add nuw nsw i32 %.079, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, 64
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.i:                                             ; preds = %bb.d
  call fastcc void @_draw_color_picker(ptr noundef nonnull %2, ptr noundef %i.ae, ptr noundef %3, ptr noundef nonnull %i.g, i32 noundef %i.ak, i32 noundef %i.al, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  call void @cairo_set_operator(ptr noundef %i.ae, i32 noundef 1) #29
  call void @cairo_destroy(ptr noundef %i.ae) #29
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #29
  call void @cairo_paint(ptr noundef %1) #29
  call void @cairo_surface_destroy(ptr noundef %i.aa) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_bottom_area_button_press_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !209
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !210
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5300
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5308
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !163
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.h, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  tail call void @gtk_widget_queue_draw(ptr noundef %i.k) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @dt_bauhaus_combobox_new_interpolation(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_interpolator_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !47  ; 2 uses
  %i.h = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #29 ; 2 uses
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.l = load i32, ptr %i.k, align 8, !tbaa !54
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  store i32 %i.h, ptr %i.n, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.sink.split
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #29
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.o, ptr noundef nonnull %1, i32 noundef 1, ptr noundef %0) #29
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140
  tail call void @gtk_widget_queue_draw(ptr noundef %i.q) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.f, i32 noundef %i.l) #29
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  tail call void @gtk_widget_queue_draw(ptr noundef %i.n) #29
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
end_hunk_0
