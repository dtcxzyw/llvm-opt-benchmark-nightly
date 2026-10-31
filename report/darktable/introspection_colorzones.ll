Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorzones?download=true
inline.NumInlined: 220
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_area_draw_callback:bb.a
  %i.wo = fptosi double %i.wn to i32
  %i.wp = sitofp reassoc nsz arcp contract afn i32 %i.wj to double
  %i.wq = fmul reassoc nsz arcp contract afn double %i.wm, %i.wp
  %i.wr = fptosi double %i.wq to i32
  %i.ws = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.wo, i32 noundef %i.wr) #29 ; 4 uses
  %i.wt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 1440
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !188 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.ws, double noundef %i.wv, double noundef %i.wv) #29
  %i.ww = call ptr @cairo_create(ptr noundef %i.ws) #29 ; 75 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.wx = call ptr @gtk_widget_get_style_context(ptr noundef %0) #29
  %i.wy = call i32 @gtk_style_context_lookup_color(ptr noundef %i.wx, ptr noundef nonnull @.str.82, ptr noundef nonnull %5) #29
  %.not523 = icmp eq i32 %i.wy, 0
  br i1 %.not523, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit576
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wz, i8 0, i64 16, i1 false)
  call void @llvm.masked.store.v4f64.p0(<4 x double> <double 1.000000e+00, double poison, double poison, double 1.000000e+00>, ptr align 8 %5, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !171
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit576
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.ww, ptr noundef nonnull %5) #29
  call void @cairo_paint(ptr noundef %i.ww) #29
  %i.xa = sitofp reassoc nsz arcp contract afn i32 %i.wf to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.ww, double noundef %i.xa, double noundef %i.xa) #29
  %i.xb = shl nsw i32 %i.wf, 1                    ; 2 uses
  %i.xc = sub nsw i32 %i.wh, %i.xb                ; 4 uses
  %i.xd = sub nsw i32 %i.wj, %i.xb                ; 6 uses
  %i.xe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 1432
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !180
  call void @cairo_set_line_width(ptr noundef %i.ww, double noundef %i.xg) #29
  call void @cairo_set_source_rgb(ptr noundef %i.ww, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #29
  %i.xh = sitofp reassoc nsz arcp contract afn i32 %i.xc to double ; 4 uses
  %i.xi = sitofp reassoc nsz arcp contract afn i32 %i.xd to double ; 6 uses
  call void @cairo_rectangle(ptr noundef %i.ww, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.xh, double noundef %i.xi) #29
  call void @cairo_stroke(ptr noundef %i.ww) #29
  call void @cairo_set_source_rgb(ptr noundef %i.ww, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #29
  call void @cairo_rectangle(ptr noundef %i.ww, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.xh, double noundef %i.xi) #29
  call void @cairo_fill(ptr noundef %i.ww) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call fastcc void @_select_base_display_color(ptr noundef %2, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  call void @cairo_set_antialias(ptr noundef %i.ww, i32 noundef 1) #29
  %i.xj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.val = load float, ptr %i.xj, align 4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val533 = load float, ptr %i.xk, align 8       ; 2 uses
  %i.xl = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.85) #29 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.h, i64 5300 ; 16 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.h, i64 5308 ; 14 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.h, i64 5304 ; 12 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xl, f0x42B504F3 ; 2 uses
  %i.xr = sitofp reassoc nsz arcp contract afn i32 %i.xc to float ; 12 uses
  %i.xs = fmul reassoc nnan nsz arcp contract afn float %i.xr, 1.562500e-02
  %i.xt = fpext reassoc nsz arcp contract afn float %i.xs to double
  %i.xu = sitofp reassoc nsz arcp contract afn i32 %i.xd to float ; 2 uses
  %i.xv = fmul reassoc nnan nsz arcp contract afn float %i.xu, f0x3CE38E39
  %i.xw = fpext reassoc nsz arcp contract afn float %i.xv to double
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %.val, %i.xl
  %factor.op.fmul.i.reass = fmul reassoc nsz arcp contract afn float %factor.op.fmul, 2.000000e+00
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.n
  %.013.i = phi i32 [ 0, %bb.n ], [ %i.yf, %bb.o ] ; 3 uses
  %i.xx = uitofp nsz nneg i32 %.013.i to float
  %i.xy = fmul reassoc nnan nsz arcp contract afn float %i.xx, f0x3CEA0EA1 ; 2 uses
  %i.xz = fsub reassoc nsz arcp contract afn float f0x3F81D41D, %i.xy
  %i.ya = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xy
  %i.yb = mul nsw i32 %.013.i, %i.xd
  %i.yc = sitofp reassoc nsz arcp contract afn i32 %i.yb to float
  %i.yd = fmul reassoc nnan nsz arcp contract afn float %i.yc, f0x3CE38E39
  %i.ye = fpext reassoc nsz arcp contract afn float %i.yd to double
  br label %bb.p

bb.o:                                             ; preds = %bb.z
  %i.yf = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %exitcond14.not.i = icmp eq i32 %i.yf, 36
  br i1 %exitcond14.not.i, label %_draw_background.exit, label %.preheader.i

bb.p:                                             ; preds = %bb.z, %.preheader.i
  %.05012.i = phi i32 [ 0, %.preheader.i ], [ %i.aba, %bb.z ] ; 3 uses
  %i.yg = load float, ptr %i.xm, align 4, !tbaa !189 ; 4 uses
  %i.yh = load float, ptr %i.xn, align 4, !tbaa !163 ; 2 uses
  %i.yi = fdiv reassoc nsz arcp contract afn float %i.xz, %i.yg
  %i.yj = fadd reassoc nsz arcp contract afn float %i.yi, %i.yh ; 3 uses
  %i.yk = fdiv reassoc nsz arcp contract afn float %i.ya, %i.yg
  %i.yl = uitofp nsz nneg i32 %.05012.i to float
  %i.ym = fmul reassoc nnan nsz arcp contract afn float %i.yl, f0x3C820821 ; 2 uses
  %i.yn = fadd reassoc nsz arcp contract afn float %i.ym, f0x3C020821
  %i.yo = load float, ptr %i.xo, align 8, !tbaa !190 ; 2 uses
  %i.yp = fdiv reassoc nsz arcp contract afn float %i.yn, %i.yg
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yp, %i.yo ; 2 uses
  %i.yr = load i32, ptr %3, align 4, !tbaa !133   ; 2 uses
  switch i32 %i.yr, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ys = fmul reassoc nsz arcp contract afn float %i.yq, 1.000000e+02
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.yt = fmul reassoc nsz arcp contract afn float %factor.op.fmul.i.reass, %i.yq
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.yu = fdiv reassoc nsz arcp contract afn float %i.ym, %i.yg
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yo, %i.yu
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.18.0.i = phi nsz float [ %i.yv, %bb.s ], [ %.val533, %bb.q ], [ %.val533, %bb.r ] ; 4 uses
  %.sroa.11.0.i = phi nsz float [ %i.xq, %bb.s ], [ %i.xq, %bb.q ], [ %i.yt, %bb.r ] ; 4 uses
  %.sroa.05.0.i = phi nsz float [ 5.000000e+01, %bb.s ], [ %i.ys, %bb.q ], [ 5.000000e+01, %bb.r ] ; 4 uses
  %i.yw = load i32, ptr %i.vz, align 8, !tbaa !54
  switch i32 %i.yw, label %bb.y [
    i32 0, label %bb.u
    i32 1, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.yx = icmp eq i32 %i.yr, 0
  br i1 %i.yx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.yy = fmul reassoc nsz arcp contract afn float %.sroa.05.0.i, %i.yj
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yj, 1.000000e+02
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, -5.000000e+01
  %i.zb = fadd reassoc nsz arcp contract afn float %i.za, %.sroa.05.0.i
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.zc = fmul reassoc nsz arcp contract afn float %i.yj, 2.000000e+00
  %i.zd = fmul reassoc nsz arcp contract afn float %i.zc, %.sroa.11.0.i
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.ze = fadd reassoc nsz arcp contract afn float %i.yh, 5.000000e-01
  %i.zf = fadd reassoc nsz arcp contract afn float %i.ze, %i.yk
  %i.zg = fadd reassoc nsz arcp contract afn float %i.zf, %.sroa.18.0.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.18.1.i = phi nsz float [ %i.zg, %bb.y ], [ %.sroa.18.0.i, %bb.v ], [ %.sroa.18.0.i, %bb.w ], [ %.sroa.18.0.i, %bb.x ]
  %.sroa.11.1.i = phi nsz float [ %.sroa.11.0.i, %bb.y ], [ %.sroa.11.0.i, %bb.v ], [ %.sroa.11.0.i, %bb.w ], [ %i.zd, %bb.x ]
  %.sroa.05.1.i = phi nsz float [ %.sroa.05.0.i, %bb.y ], [ %i.yy, %bb.v ], [ %i.zb, %bb.w ], [ %.sroa.05.0.i, %bb.x ] ; 7 uses
  %i.zh = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, f0x40C90FDB
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.zh) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.zi = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.05.1.i, float 1.000000e+02)
  %i.zj = fsub reassoc nsz arcp contract afn float %i.zi, %.sroa.05.1.i
  %i.zk = fadd reassoc nsz arcp contract afn float %.sroa.05.1.i, -2.000000e+01
  %i.zl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.zk, float 0.000000e+00)
  %i.zm = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.zl, float 8.000000e+01)
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zj, 1.250000e-04
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zn, %i.zm
  %i.zp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.zo ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.zq = fmul reassoc nsz arcp contract afn float %.sroa.05.1.i, %.sroa.11.1.i
  %i.zr = fmul reassoc nsz arcp contract afn float %i.zp, %i.zp
  %i.zs = fmul reassoc nsz arcp contract afn float %i.zr, %i.zq
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, %i.zp ; 2 uses
  %i.zu = fmul reassoc nsz arcp contract afn float %cos.i, 2.000000e-03
  %i.zv = fmul reassoc nsz arcp contract afn float %i.zu, %i.zt
  %i.zw = fdiv reassoc nsz arcp contract afn float %i.zv, %.sroa.05.1.i
  %i.zx = fmul reassoc nsz arcp contract afn float %.sroa.05.1.i, 8.620690e-03
  %i.zy = fmul reassoc nsz arcp contract afn float %sin.i, 5.000000e-03
  %i.zz = fmul reassoc nsz arcp contract afn float %i.zy, %i.zt
  %i.aaa = fdiv reassoc nsz arcp contract afn float %i.zz, %.sroa.05.1.i
  %i.aab = fadd reassoc nsz arcp contract afn float %i.zx, f0x3E0D3DCB ; 3 uses
  %i.aac = fadd reassoc nsz arcp contract afn float %i.zw, %i.aab
  %i.aad = fsub reassoc nsz arcp contract afn float %i.aab, %i.aaa
  %i.aae = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.aaf = insertelement <4 x float> %i.aae, float %i.aab, i64 1
  %i.aag = insertelement <4 x float> %i.aaf, float %i.aad, i64 2
  %i.aah = shufflevector <4 x float> %i.aag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.aai = fmul reassoc nsz arcp contract afn <4 x float> %i.aah, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.aaj = fmul reassoc nsz arcp contract afn <4 x float> %i.aah, <float f0x3E038026, float f0x3E038026, float f0x3E038026, float 0.000000e+00>
  %i.aak = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aai, splat (float f0x3E53DCB1)
  %i.aal = fmul reassoc nsz arcp contract afn <4 x float> %i.aai, %i.aai
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, %i.aai
  %i.aan = fadd reassoc nsz arcp contract afn <4 x float> %i.aaj, splat (float f0xBC911AA6)
  %i.aao = select <4 x i1> %i.aak, <4 x float> %i.aam, <4 x float> %i.aan
  %i.aap = fmul reassoc nsz arcp contract afn <4 x float> %i.aao, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float 0.000000e+00>
  store <4 x float> %i.aap, ptr %i.a, align 16, !tbaa !12
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.a, ptr noundef %i.b)
  %i.aaq = load float, ptr %i.b, align 16, !tbaa !12
  %i.aar = fpext reassoc nsz arcp contract afn float %i.aaq to double
  %i.aas = load <2 x float>, ptr %i.xp, align 4, !tbaa !12
  %i.aat = fpext reassoc nsz arcp contract afn <2 x float> %i.aas to <2 x double> ; 2 uses
  %i.aau = extractelement <2 x double> %i.aat, i64 0
  %i.aav = extractelement <2 x double> %i.aat, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.ww, double noundef %i.aar, double noundef %i.aau, double noundef %i.aav) #29
  %i.aaw = mul nsw i32 %.05012.i, %i.xc
  %i.aax = sitofp reassoc nsz arcp contract afn i32 %i.aaw to float
  %i.aay = fmul reassoc nnan nsz arcp contract afn float %i.aax, 1.562500e-02
  %i.aaz = fpext reassoc nsz arcp contract afn float %i.aay to double
  call void @cairo_rectangle(ptr noundef %i.ww, double noundef %i.aaz, double noundef %i.ye, double noundef %i.xt, double noundef %i.xw) #29
  call void @cairo_fill(ptr noundef %i.ww) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aba = add nuw nsw i32 %.05012.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aba, 64
  br i1 %exitcond.not.i, label %bb.o, label %bb.p

_draw_background.exit:                            ; preds = %bb.o
  call void @cairo_set_antialias(ptr noundef %i.ww, i32 noundef 0) #29
  %i.abb = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.abc = load i32, ptr %i.abb, align 16, !tbaa !191
  %.not524 = icmp eq i32 %i.abc, 0
  br i1 %.not524, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %_draw_background.exit
  %i.abd = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !192
  %.not525 = icmp eq i32 %i.abe, 1
  br i1 %.not525, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.abf = load i32, ptr %3, align 4, !tbaa !133  ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.abh = load ptr, ptr %i.abg, align 16, !tbaa !300 ; 2 uses
  %i.abi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !193
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 176
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !301
  %.not526 = icmp eq i32 %i.abk, 0                ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.abm = sext i32 %i.abf to i64
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !16
  %i.abp = uitofp reassoc nsz arcp contract afn i32 %i.abo to float ; 2 uses
  br i1 %.not526, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.abq = fadd reassoc nsz arcp contract afn float %i.abp, 1.000000e+00
  %i.abr = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.abq)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.abs = phi reassoc nsz arcp contract afn float [ %i.abr, %bb.ac ], [ %i.abp, %bb.ab ] ; 3 uses
  %i.abt = icmp ne ptr %i.abh, null
  %i.abu = fcmp reassoc nsz arcp contract afn ogt float %i.abs, 0.000000e+00
  %or.cond = select i1 %i.abt, i1 %i.abu, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @cairo_save(ptr noundef %i.ww) #29
  call void @cairo_translate(ptr noundef %i.ww, double noundef 0.000000e+00, double noundef %i.xi) #29
  %i.abv = fmul reassoc nnan nsz arcp contract afn double %i.xh, f0x3F70101010101010
  %i.abw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 1432
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !180
  %i.abz = fmul reassoc nsz arcp contract afn double %i.aby, 5.000000e+00
  %i.aca = fsub reassoc nsz arcp contract afn double %i.abz, %i.xi
  %i.acb = fpext reassoc nsz arcp contract afn float %i.abs to double
  %i.acc = fdiv reassoc nsz arcp contract afn double %i.aca, %i.acb
  call void @cairo_scale(ptr noundef %i.ww, double noundef %i.abv, double noundef %i.acc) #29
  call void @cairo_set_source_rgba(ptr noundef %i.ww, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 5.000000e-01) #29
  %i.acd = load float, ptr %i.xm, align 4, !tbaa !189 ; 5 uses
  %i.ace = load float, ptr %i.xo, align 8, !tbaa !190
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, 2.550000e+02 ; 4 uses
  %i.acg = load float, ptr %i.xn, align 4, !tbaa !163
  %i.ach = fmul reassoc nsz arcp contract afn float %i.acg, %i.abs ; 3 uses
  %i.aci = fneg reassoc nsz arcp contract afn float %i.acf
  %i.acj = fpext reassoc nsz arcp contract afn float %i.aci to double
  %i.ack = fneg reassoc nsz arcp contract afn float %i.ach ; 2 uses
  %i.acl = fpext reassoc nsz arcp contract afn float %i.ack to double
  call void @cairo_move_to(ptr noundef %i.ww, double noundef %i.acj, double noundef %i.acl) #29
  %i.acm = sext i32 %i.abf to i64
  %invariant.gep36.i = getelementptr [4 x i8], ptr %i.abh, i64 %i.acm ; 2 uses
  br i1 %.not526, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.ae, %.split.us.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.split.us.i ], [ 0, %bb.ae ] ; 3 uses
  %.idx34.i = shl nuw nsw i64 %indvars.iv30.i, 4
  %gep37.i = getelementptr i8, ptr %invariant.gep36.i, i64 %.idx34.i
  %i.acn = load i32, ptr %gep37.i, align 4, !tbaa !16
  %i.aco = uitofp reassoc nsz arcp contract afn i32 %i.acn to float
  %i.acp = fsub reassoc nsz arcp contract afn float %i.aco, %i.ach
  %i.acq = fmul reassoc nsz arcp contract afn float %i.acp, %i.acd ; 2 uses
  %i.acr = fcmp reassoc nsz arcp contract afn olt float %i.acq, 0.000000e+00
  %i.acs = select reassoc nsz arcp contract afn i1 %i.acr, float 0.000000e+00, float %i.acq
  %i.act = trunc nuw nsw i64 %indvars.iv30.i to i32
  %i.acu = uitofp nsz nneg i32 %i.act to float
  %i.acv = fsub reassoc nsz arcp contract afn float %i.acu, %i.acf
  %i.acw = fmul reassoc nsz arcp contract afn float %i.acv, %i.acd
  %i.acx = fpext reassoc nsz arcp contract afn float %i.acw to double
  %i.acy = fadd reassoc nsz arcp contract afn float %i.acs, 1.000000e+00
  %i.acz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.acy)
  %i.ada = fpext reassoc nsz arcp contract afn float %i.acz to double
  call void @cairo_line_to(ptr noundef %i.ww, double noundef %i.acx, double noundef %i.ada) #29
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 256
  br i1 %exitcond33.not.i, label %dt_draw_histogram_8_zoomed.exit, label %.split.us.i

.split.i:                                         ; preds = %bb.ae, %.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i ], [ 0, %bb.ae ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %gep.i = getelementptr i8, ptr %invariant.gep36.i, i64 %.idx.i
  %i.adb = load i32, ptr %gep.i, align 4, !tbaa !16
  %i.adc = uitofp reassoc nsz arcp contract afn i32 %i.adb to float
  %i.add = fsub reassoc nsz arcp contract afn float %i.adc, %i.ach
  %i.ade = fmul reassoc nsz arcp contract afn float %i.add, %i.acd ; 2 uses
  %i.adf = fcmp reassoc nsz arcp contract afn olt float %i.ade, 0.000000e+00
  %i.adg = select reassoc nsz arcp contract afn i1 %i.adf, float 0.000000e+00, float %i.ade
  %i.adh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.adi = uitofp nsz nneg i32 %i.adh to float
  %i.adj = fsub reassoc nsz arcp contract afn float %i.adi, %i.acf
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adj, %i.acd
  %i.adl = fpext reassoc nsz arcp contract afn float %i.adk to double
  %i.adm = fpext reassoc nsz arcp contract afn float %i.adg to double
  call void @cairo_line_to(ptr noundef %i.ww, double noundef %i.adl, double noundef %i.adm) #29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i535 = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i535, label %dt_draw_histogram_8_zoomed.exit, label %.split.i

dt_draw_histogram_8_zoomed.exit:                  ; preds = %.split.i, %.split.us.i
  %i.adn = fsub reassoc nsz arcp contract afn float 2.550000e+02, %i.acf
  %i.ado = fpext reassoc nsz arcp contract afn float %i.adn to double
  %i.adp = fmul reassoc nsz arcp contract afn float %i.acd, %i.ack
  %i.adq = fpext reassoc nsz arcp contract afn float %i.adp to double
  call void @cairo_line_to(ptr noundef %i.ww, double noundef %i.ado, double noundef %i.adq) #29
  call void @cairo_close_path(ptr noundef %i.ww) #29
  call void @cairo_fill(ptr noundef %i.ww) #29
  call void @cairo_restore(ptr noundef %i.ww) #29
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %dt_draw_histogram_8_zoomed.exit, %bb.aa
  call fastcc void @_draw_color_picker(ptr noundef nonnull %2, ptr noundef %i.ww, ptr noundef %3, ptr noundef nonnull %i.h, i32 noundef %i.xc, i32 noundef %i.xd, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_draw_background.exit
  %i.adr = getelementptr inbounds nuw i8, ptr %i.h, i64 5312 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !166
  %.not527 = icmp eq i32 %i.ads, 0
  br i1 %.not527, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @cairo_set_source_rgb(ptr noundef %i.ww, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #29
  %i.adt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 1432
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !180
  call void @cairo_set_line_width(ptr noundef %i.ww, double noundef %i.adv) #29
  %i.adw = getelementptr inbounds nuw i8, ptr %3, i64 484
  %i.adx = sext i32 %i.wa to i64                  ; 2 uses
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.adw, i64 %i.adx ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !16
  %i.aea = icmp sgt i32 %i.adz, 0
  br i1 %i.aea, label %.lr.ph601, label %.loopexit

.lr.ph601:                                        ; preds = %bb.ah
  %i.aeb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1432
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !180
  %i.aee = fmul reassoc nsz arcp contract afn double %i.aed, 7.000000e+00
  %i.aef = fptrunc reassoc nsz arcp contract afn double %i.aee to float ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aeh = getelementptr inbounds [160 x i8], ptr %i.aeg, i64 %i.adx
  %i.aei = add nsw i32 %i.xd, %i.wf
  %i.aej = sitofp reassoc nsz arcp contract afn i32 %i.aei to double
  %i.aek = fneg reassoc nsz arcp contract afn float %i.aef
  %i.ael = fmul reassoc nsz arcp contract afn float %i.aef, -5.000000e-01
  %i.aem = fpext reassoc nsz arcp contract afn float %i.ael to double
  %i.aen = fmul reassoc nsz arcp contract afn float %i.aef, 5.000000e-01
  %i.aeo = fpext reassoc nsz arcp contract afn float %i.aen to double ; 2 uses
  %i.aep = fpext reassoc nsz arcp contract afn float %i.aek to double
  %i.aeq = fpext reassoc nsz arcp contract afn float %i.aef to double
  %i.aer = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph601, %bb.al
  %indvars.iv663 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next664, %bb.al ] ; 3 uses
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.aeh, i64 %indvars.iv663
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !14
  %i.aeu = load float, ptr %i.xm, align 4, !tbaa !189
  %i.aev = load float, ptr %i.xo, align 8, !tbaa !190
  %i.aew = fsub reassoc nsz arcp contract afn float %i.aet, %i.aev
  %i.aex = fmul reassoc nsz arcp contract afn float %i.aeu, %i.xr
  %i.aey = fmul reassoc nsz arcp contract afn float %i.aex, %i.aew
  %i.aez = fpext reassoc nsz arcp contract afn float %i.aey to double
  %i.afa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 1432
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !180
  %i.afd = fsub reassoc nsz arcp contract afn double %i.aej, %i.afc
  call void @cairo_move_to(ptr noundef %i.ww, double noundef %i.aez, double noundef %i.afd) #29
  call void @cairo_rel_line_to(ptr noundef %i.ww, double noundef %i.aem, double noundef 0.000000e+00) #29
  call void @cairo_rel_line_to(ptr noundef %i.ww, double noundef %i.aeo, double noundef %i.aep) #29
  call void @cairo_rel_line_to(ptr noundef %i.ww, double noundef %i.aeo, double noundef %i.aeq) #29
  call void @cairo_close_path(ptr noundef %i.ww) #29
  %i.afe = load i32, ptr %i.aer, align 4, !tbaa !172
end_hunk_0
begin_hunk_1_@_area_draw_callback:bb.a
  %i.bwy = fmul reassoc nsz arcp contract afn float %i.bwx, %i.bwu
  %i.bwz = fpext reassoc nsz arcp contract afn float %i.bwy to double
  %i.bxa = load float, ptr %i.alt, align 8, !tbaa !167
  %i.bxb = fmul reassoc nsz arcp contract afn float %i.bxa, %i.xr
  %i.bxc = fpext reassoc nsz arcp contract afn float %i.bxb to double
  call void @cairo_arc(ptr noundef %i.ww, double noundef %i.bww, double noundef %i.bwz, double noundef %i.bxc, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #29
  br label %.sink.split

bb.bc:                                            ; preds = %.preheader, %bb.bc
  %indvars.iv698 = phi i64 [ 255, %.preheader ], [ %indvars.iv.next699, %bb.bc ] ; 4 uses
  %i.bxd = trunc nuw nsw i64 %indvars.iv698 to i32
  %i.bxe = uitofp nneg i32 %i.bxd to float
  %i.bxf = fmul reassoc nnan nsz arcp contract afn float %i.bxe, f0x3B808081
  %i.bxg = getelementptr inbounds nuw [4 x i8], ptr %i.bvq, i64 %indvars.iv698
  %i.bxh = load float, ptr %i.bxg, align 4, !tbaa !12
  %i.bxi = load float, ptr %i.xm, align 4, !tbaa !189 ; 2 uses
  %i.bxj = load float, ptr %i.xo, align 8, !tbaa !190
  %i.bxk = fsub reassoc nsz arcp contract afn float %i.bxf, %i.bxj
  %i.bxl = load float, ptr %i.xn, align 4, !tbaa !163
  %i.bxm = fsub reassoc nsz arcp contract afn float %i.bxh, %i.bxl
  %i.bxn = fmul reassoc nsz arcp contract afn float %i.bxi, %i.xr
  %i.bxo = fmul reassoc nsz arcp contract afn float %i.bxn, %i.bxk
  %i.bxp = fpext reassoc nsz arcp contract afn float %i.bxo to double
  %i.bxq = fmul reassoc nsz arcp contract afn float %i.bxi, %i.ahg
  %i.bxr = fmul reassoc nsz arcp contract afn float %i.bxq, %i.bxm
  %i.bxs = fpext reassoc nsz arcp contract afn float %i.bxr to double
  call void @cairo_line_to(ptr noundef %i.ww, double noundef %i.bxp, double noundef %i.bxs) #29
  %indvars.iv.next699 = add nsw i64 %indvars.iv698, -1
  %.not740 = icmp eq i64 %indvars.iv698, 0
  br i1 %.not740, label %bb.bb, label %bb.bc

bb.bd:                                            ; preds = %bb.aw, %._crit_edge607
  %i.bxt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 1432
  %i.bxv = load double, ptr %i.bxu, align 8, !tbaa !180
  call void @cairo_set_line_width(ptr noundef %i.ww, double noundef %i.bxv) #29
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.h, i64 140 ; 2 uses
  %i.bxx = load i32, ptr %i.bxw, align 4, !tbaa !164
  %i.bxy = icmp sgt i32 %i.bxx, -1
  br i1 %i.bxy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @cairo_set_source_rgb(ptr noundef %i.ww, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #29
  %i.bxz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bya = load i32, ptr %i.vz, align 8, !tbaa !54
  %i.byb = zext i32 %i.bya to i64
  %i.byc = getelementptr inbounds nuw [160 x i8], ptr %i.bxz, i64 %i.byb
  %i.byd = load i32, ptr %i.bxw, align 4, !tbaa !164
  %i.bye = sext i32 %i.byd to i64
  %i.byf = getelementptr inbounds [8 x i8], ptr %i.byc, i64 %i.bye ; 2 uses
  %i.byg = load float, ptr %i.byf, align 4, !tbaa !14
  %i.byh = load float, ptr %i.xm, align 4, !tbaa !189 ; 2 uses
  %i.byi = load float, ptr %i.xo, align 8, !tbaa !190
  %i.byj = fsub reassoc nsz arcp contract afn float %i.byg, %i.byi
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byf, i64 4
  %i.byl = load float, ptr %i.byk, align 4, !tbaa !15
  %i.bym = load float, ptr %i.xn, align 4, !tbaa !163
  %i.byn = fsub reassoc nsz arcp contract afn float %i.byl, %i.bym
  %i.byo = fmul reassoc nsz arcp contract afn float %i.byh, %i.xr
  %i.byp = fmul reassoc nsz arcp contract afn float %i.byo, %i.byj
  %i.byq = fpext reassoc nsz arcp contract afn float %i.byp to double
  %i.byr = fneg reassoc nsz arcp contract afn float %i.xu
  %i.bys = fmul reassoc nsz arcp contract afn float %i.byh, %i.byr
  %i.byt = fmul reassoc nsz arcp contract afn float %i.bys, %i.byn
  %i.byu = fpext reassoc nsz arcp contract afn float %i.byt to double
  %i.byv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 1432
  %i.byx = load double, ptr %i.byw, align 8, !tbaa !180
  %i.byy = fmul reassoc nsz arcp contract afn double %i.byx, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.ww, double noundef %i.byq, double noundef %i.byu, double noundef %i.byy, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #29
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bb, %bb.be
  call void @cairo_stroke(ptr noundef %i.ww) #29
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.bd
  call void @cairo_set_operator(ptr noundef %i.ww, i32 noundef 1) #29
  call void @cairo_destroy(ptr noundef %i.ww) #29
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ws, double noundef 0.000000e+00, double noundef 0.000000e+00) #29
  call void @cairo_paint(ptr noundef %1) #29
  call void @cairo_surface_destroy(ptr noundef %i.ws) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_area_button_press_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca [20 x float], align 16            ; 7 uses
  %i.b = alloca [20 x float], align 16            ; 7 uses
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !143 ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2892
  %i.k = load i32, ptr %i.j, align 4, !tbaa !202
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 484 ; 2 uses
  %i.o = sext i32 %i.m to i64                     ; 10 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.s = getelementptr inbounds [160 x i8], ptr %i.r, i64 %i.o ; 22 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !209
  switch i32 %i.u, label %bb.aj [
    i32 1, label %bb.c
    i32 3, label %bb.y
  ]

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 5312 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !166
  %.not153 = icmp eq i32 %i.w, 0
  br i1 %.not153, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %1, align 8, !tbaa !210
  %.not154 = icmp eq i32 %i.x, 5
  br i1 %.not154, label %.thread176, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !333
  %i.aa = tail call i32 @gtk_accelerator_get_default_mod_mask() #29
  %i.ab = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !16
  %i.ac = or i32 %i.ab, %i.z
  %i.ad = and i32 %i.ac, %i.aa
  %.not181 = icmp eq i32 %i.ad, 4
  br i1 %.not181, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i32 1, ptr %i.ae, align 8, !tbaa !165
  br label %bb.aj

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pr = load i32, ptr %1, align 8, !tbaa !210    ; 2 uses
  %i.af = icmp eq i32 %.pr, 4
  br i1 %i.af, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !333
  %i.ai = tail call i32 @gtk_accelerator_get_default_mod_mask() #29
  %i.aj = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !16
  %i.ak = or i32 %i.aj, %i.ah
  %i.al = and i32 %i.ak, %i.ai
  %i.am = icmp eq i32 %i.al, 4
  %i.an = icmp slt i32 %i.q, 20
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.i, label %thread-pre-split174

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 8 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !164
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.v, align 8, !tbaa !166
  %.not156 = icmp eq i32 %i.ar, 0
  br i1 %.not156, label %thread-pre-split174, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1432
  %i.au = load double, ptr %i.at, align 8, !tbaa !180
  %i.av = fmul reassoc nsz arcp contract afn double %i.au, 5.000000e+00
  %i.aw = fptosi double %i.av to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #29
  %i.ax = shl nsw i32 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.aw to double
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bc = load <2 x i32>, ptr %i.ay, align 4, !tbaa !16
  %i.bd = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.be = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bf = sub nsw <2 x i32> %i.bc, %i.be          ; 2 uses
  %i.bg = load <2 x double>, ptr %i.az, align 8, !tbaa !171
  %i.bh = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fsub reassoc nsz arcp contract afn <2 x double> %i.bg, %i.bi ; 3 uses
  %i.bk = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bf to <2 x double> ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.bj, %i.bk
  %i.bm = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.bj, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x double> zeroinitializer, <2 x double> %i.bj
  %i.bo = select <2 x i1> %i.bl, <2 x double> %i.bk, <2 x double> %i.bn
  %i.bp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bf to <2 x float>
  %i.bq = fpext reassoc nsz arcp contract afn <2 x float> %i.bp to <2 x double>
  %i.br = fdiv reassoc nsz arcp contract afn <2 x double> %i.bo, %i.bq ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0 ; 2 uses
  store double %i.bs, ptr %i.bb, align 8, !tbaa !204
  %i.bt = extractelement <2 x double> %i.br, i64 1
  %i.bu = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store double %i.bu, ptr %i.bv, align 8, !tbaa !203
  %i.bw = fptrunc reassoc nsz arcp contract afn double %i.bs to float
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 5300 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !189
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 5304
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !190
  %i.cb = fdiv reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.ca ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !154 ; 5 uses
  %i.ch = zext i8 %i.cg to i32
  %.not35.i = icmp eq i8 %i.cg, 0
  br i1 %.not35.i, label %._crit_edge.i, label %iter.check311

iter.check311:                                    ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 4 uses
  %wide.trip.count.i = zext i8 %i.cg to i64       ; 6 uses
  %min.iters.check295 = icmp ult i8 %i.cg, 4
  br i1 %min.iters.check295, label %vec.epilog.scalar.ph313.preheader, label %vector.main.loop.iter.check296

vector.main.loop.iter.check296:                   ; preds = %iter.check311
  %min.iters.check297 = icmp ult i8 %i.cg, 16
  br i1 %min.iters.check297, label %vec.epilog.ph315, label %vector.ph298

vector.ph298:                                     ; preds = %vector.main.loop.iter.check296
  %i.cj = and i64 %wide.trip.count.i, 12
  %n.vec299 = and i64 %wide.trip.count.i, 240     ; 4 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.ph298, %vector.body300
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next308, %vector.body300 ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index301
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index301
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %wide.vec302 = load <16 x float>, ptr %i.ck, align 4, !tbaa !12 ; 2 uses
  %strided.vec303 = shufflevector <16 x float> %wide.vec302, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec304 = shufflevector <16 x float> %wide.vec302, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec305 = load <16 x float>, ptr %i.cm, align 4, !tbaa !12 ; 2 uses
  %strided.vec306 = shufflevector <16 x float> %wide.vec305, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec307 = shufflevector <16 x float> %wide.vec305, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index301 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store <8 x float> %strided.vec303, ptr %i.cn, align 16, !tbaa !12
  store <8 x float> %strided.vec306, ptr %i.co, align 16, !tbaa !12
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index301 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store <8 x float> %strided.vec304, ptr %i.cp, align 16, !tbaa !12
  store <8 x float> %strided.vec307, ptr %i.cq, align 16, !tbaa !12
  %index.next308 = add nuw i64 %index301, 16      ; 2 uses
  %i.cr = icmp eq i64 %index.next308, %n.vec299
  br i1 %i.cr, label %middle.block309, label %vector.body300, !llvm.loop !315

middle.block309:                                  ; preds = %vector.body300
  %cmp.n310 = icmp eq i64 %n.vec299, %wide.trip.count.i
  br i1 %cmp.n310, label %._crit_edge.i, label %vec.epilog.iter.check312

vec.epilog.iter.check312:                         ; preds = %middle.block309
  %min.epilog.iters.check314 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check314, label %vec.epilog.scalar.ph313.preheader, label %vec.epilog.ph315, !prof !155

vec.epilog.ph315:                                 ; preds = %vector.main.loop.iter.check296, %vec.epilog.iter.check312
  %vec.epilog.resume.val316 = phi i64 [ %n.vec299, %vec.epilog.iter.check312 ], [ 0, %vector.main.loop.iter.check296 ]
  %n.vec317 = and i64 %wide.trip.count.i, 252     ; 3 uses
  br label %vec.epilog.vector.body318

vec.epilog.vector.body318:                        ; preds = %vec.epilog.vector.body318, %vec.epilog.ph315
  %index319 = phi i64 [ %vec.epilog.resume.val316, %vec.epilog.ph315 ], [ %index.next323, %vec.epilog.vector.body318 ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index319
  %wide.vec320 = load <8 x float>, ptr %i.cs, align 4, !tbaa !12 ; 2 uses
  %strided.vec321 = shufflevector <8 x float> %wide.vec320, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec322 = shufflevector <8 x float> %wide.vec320, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index319
  store <4 x float> %strided.vec321, ptr %i.ct, align 16, !tbaa !12
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index319
  store <4 x float> %strided.vec322, ptr %i.cu, align 16, !tbaa !12
  %index.next323 = add nuw i64 %index319, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next323, %n.vec317
  br i1 %i.cv, label %vec.epilog.middle.block324, label %vec.epilog.vector.body318, !llvm.loop !316

vec.epilog.middle.block324:                       ; preds = %vec.epilog.vector.body318
  %cmp.n325 = icmp eq i64 %n.vec317, %wide.trip.count.i
  br i1 %cmp.n325, label %._crit_edge.i, label %vec.epilog.scalar.ph313.preheader

vec.epilog.scalar.ph313.preheader:                ; preds = %iter.check311, %vec.epilog.iter.check312, %vec.epilog.middle.block324
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check311 ], [ %n.vec299, %vec.epilog.iter.check312 ], [ %n.vec317, %vec.epilog.middle.block324 ]
  br label %vec.epilog.scalar.ph313

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph313, %middle.block309, %vec.epilog.middle.block324, %.critedge
  %i.cw = load i32, ptr %i.ce, align 8, !tbaa !160
  %i.cx = call ptr @interpolate_set(i32 noundef %i.ch, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.cw) #29 ; 3 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %dt_draw_curve_calc_value.exit, label %bb.k

vec.epilog.scalar.ph313:                          ; preds = %vec.epilog.scalar.ph313.preheader, %vec.epilog.scalar.ph313
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph313 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph313.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i ; 2 uses
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !157
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store float %i.cz, ptr %i.da, align 4, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !158
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store float %i.dc, ptr %i.dd, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph313, !llvm.loop !317

bb.k:                                             ; preds = %._crit_edge.i
  %i.de = load i8, ptr %i.cf, align 4, !tbaa !154
  %i.df = zext i8 %i.de to i32
  %i.dg = load i32, ptr %i.ce, align 8, !tbaa !160
  %i.dh = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.df, ptr noundef nonnull %i.a, float noundef %i.cc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cx, i32 noundef %i.dg) #29
  call void @free(ptr noundef nonnull %i.cx) #29
  br label %dt_draw_curve_calc_value.exit

dt_draw_curve_calc_value.exit:                    ; preds = %._crit_edge.i, %bb.k
  %.026.i = phi nsz float [ %i.dh, %bb.k ], [ 0.000000e+00, %._crit_edge.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !161 ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn ogt float %.026.i, %i.dj
  %.026..i = select reassoc nsz arcp contract afn i1 %i.dk, float %.026.i, float %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !162 ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %.026..i, %i.dm
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.dn, float %.026..i, float %i.dm ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.do = fcmp reassoc nsz arcp contract afn oge float %spec.select.i, 0.000000e+00
  %i.dp = fcmp reassoc nsz arcp contract afn ole float %spec.select.i, 1.000000e+00
  %or.cond3 = and i1 %i.do, %i.dp
  br i1 %or.cond3, label %bb.l, label %bb.v

bb.l:                                             ; preds = %dt_draw_curve_calc_value.exit
  %i.dq = call fastcc i32 @_add_node(ptr noundef nonnull %i.s, ptr noundef nonnull %i.p, float noundef %i.cc, float noundef %spec.select.i) ; 6 uses
  %i.dr = icmp sgt i32 %i.q, 0
  br i1 %i.dr, label %.lr.ph189, label %._crit_edge

.lr.ph189:                                        ; preds = %bb.l
  %i.ds = load float, ptr %i.bx, align 4, !tbaa !189 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 5308
  %i.du = load float, ptr %i.dt, align 4, !tbaa !163 ; 6 uses
  %wide.trip.count194 = zext nneg i32 %i.q to i64 ; 6 uses
  %min.iters.check329 = icmp ult i32 %i.q, 17
  br i1 %min.iters.check329, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %bb.p, %vector.memcheck, %.lr.ph189
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph189 ], [ %n.vec331, %bb.p ] ; 4 uses
  %i.dv = sub nsw i64 %wide.trip.count194, %indvars.iv.ph
  %xtraiter = and i64 %i.dv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %bb.n
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %bb.n ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.n ], [ 0, %scalar.ph.preheader ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.prol
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !15
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dy, %i.du
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.ds
  %i.eb = fsub reassoc nsz arcp contract afn float %spec.select.i, %i.ea ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.eb
  %i.ed = fcmp reassoc nsz arcp contract afn olt float %i.ec, 1.600000e-03
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %scalar.ph.prol
  store i32 %i.dq, ptr %i.ao, align 4, !tbaa !164
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %scalar.ph.prol
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !318

scalar.ph.prol.loopexit:                          ; preds = %bb.n, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %bb.n ]
  %i.ee = sub nsw i64 %indvars.iv.ph, %wide.trip.count194
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph189
  %i.eg = getelementptr i8, ptr %i.d, i64 144
  %i.eh = mul nsw i64 %i.o, 160                   ; 2 uses
  %i.ei = getelementptr i8, ptr %i.f, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = shl nuw nsw i64 %wide.trip.count194, 3
  %i.el = getelementptr i8, ptr %i.f, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ek
  %i.en = getelementptr i8, ptr %i.em, i64 4
end_hunk_1
begin_hunk_2_@_area_button_press_callback:bb.a
  %i.lp = and i32 %i.lo, %i.lm
  %.not180 = icmp eq i32 %i.lp, 4
  %i.lq = load ptr, ptr %i.c, align 16, !tbaa !47
  br i1 %.not180, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lr = zext nneg i32 %i.kp to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store float 5.000000e-01, ptr %i.lt, align 4, !tbaa !15
  br label %_delete_node.exit

bb.ah:                                            ; preds = %bb.af
  %i.lu = load i32, ptr %i.p, align 4, !tbaa !16  ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %.preheader.i, label %bb.ai

.preheader.i:                                     ; preds = %bb.ah
  %i.lw = add nsw i32 %i.lu, -1                   ; 4 uses
  %i.lx = icmp samesign ult i32 %i.kp, %i.lw
  br i1 %i.lx, label %iter.check, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i
  %.pre.i = zext nneg i32 %i.lw to i64
  br label %._crit_edge.i168

iter.check:                                       ; preds = %.preheader.i
  %i.ly = zext nneg i32 %i.kp to i64              ; 6 uses
  %wide.trip.count.i169 = zext nneg i32 %i.lw to i64 ; 5 uses
  %i.lz = sub nsw i64 %wide.trip.count.i169, %i.ly ; 7 uses
  %min.iters.check = icmp ult i64 %i.lz, 4
  br i1 %min.iters.check, label %.lr.ph.i170.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check205 = icmp ult i64 %i.lz, 16
  br i1 %min.iters.check205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ma = and i64 %i.lz, 12
  %n.vec = and i64 %i.lz, -16                     ; 4 uses
  %i.mb = add nsw i64 %n.vec, %i.ly
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mc = add nuw i64 %index, %i.ly               ; 4 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = getelementptr [8 x i8], ptr %i.s, i64 %i.mc
  %i.mg = getelementptr i8, ptr %i.mf, i64 72
  %wide.vec = load <16 x float>, ptr %i.me, align 4, !tbaa !12
  %wide.vec207 = load <16 x float>, ptr %i.mg, align 4, !tbaa !12
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.mc
  %i.mi = getelementptr [8 x i8], ptr %i.s, i64 %i.mc
  %i.mj = getelementptr i8, ptr %i.mi, i64 64
  store <16 x float> %wide.vec, ptr %i.mh, align 4, !tbaa !12
  store <16 x float> %wide.vec207, ptr %i.mj, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mk = icmp eq i64 %index.next, %n.vec
  br i1 %i.mk, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lz, %n.vec
  br i1 %cmp.n, label %._crit_edge.i168, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i170.preheader, label %vec.epilog.ph, !prof !155

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec211 = and i64 %i.lz, -4                   ; 3 uses
  %i.ml = add nsw i64 %n.vec211, %i.ly
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index212 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next217, %vec.epilog.vector.body ] ; 2 uses
  %i.mm = add nuw i64 %index212, %i.ly            ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %wide.vec213 = load <8 x float>, ptr %i.mo, align 4, !tbaa !12
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.mm
  store <8 x float> %wide.vec213, ptr %i.mp, align 4, !tbaa !12
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next217, %n.vec211
  br i1 %i.mq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !331

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n218 = icmp eq i64 %i.lz, %n.vec211
  br i1 %cmp.n218, label %._crit_edge.i168, label %.lr.ph.i170.preheader

.lr.ph.i170.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i171.ph = phi i64 [ %i.ly, %iter.check ], [ %i.mb, %vec.epilog.iter.check ], [ %i.ml, %vec.epilog.middle.block ]
  br label %.lr.ph.i170

._crit_edge.i168:                                 ; preds = %.lr.ph.i170, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %wide.trip.count.i169, %middle.block ], [ %wide.trip.count.i169, %vec.epilog.middle.block ], [ %wide.trip.count.i169, %.lr.ph.i170 ]
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.pre-phi.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !15
  %i.mt = zext nneg i32 %i.lu to i64
  %i.mu = getelementptr [8 x i8], ptr %i.s, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 -8
  store float 0.000000e+00, ptr %i.mv, align 4, !tbaa !14
  store i32 %i.lw, ptr %i.p, align 4, !tbaa !16
  br label %_delete_node.exit

.lr.ph.i170:                                      ; preds = %.lr.ph.i170.preheader, %.lr.ph.i170
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i172, %.lr.ph.i170 ], [ %indvars.iv.i171.ph, %.lr.ph.i170.preheader ] ; 2 uses
  %indvars.iv.next.i172 = add nuw nsw i64 %indvars.iv.i171, 1 ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i172
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i171
  %i.my = load <2 x float>, ptr %i.mw, align 4, !tbaa !12
  store <2 x float> %i.my, ptr %i.mx, align 4, !tbaa !12
  %exitcond.not.i173 = icmp eq i64 %indvars.iv.next.i172, %wide.trip.count.i169
  br i1 %exitcond.not.i173, label %._crit_edge.i168, label %.lr.ph.i170, !llvm.loop !332

bb.ai:                                            ; preds = %bb.ah
  store <2 x float> splat (float 5.000000e-01), ptr %i.s, align 4, !tbaa !12
  br label %_delete_node.exit

_delete_node.exit:                                ; preds = %bb.ag, %._crit_edge.i168, %bb.ai
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #29
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !140
  tail call void @gtk_widget_queue_draw(ptr noundef %i.na) #29
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  tail call void @dt_dev_add_history_item(ptr noundef %i.nb, ptr noundef nonnull %2, i32 noundef 1) #29
  store i32 -2, ptr %i.ko, align 4, !tbaa !164
  br label %bb.aj

bb.aj:                                            ; preds = %bb.f, %bb.v, %_reset_nodes.exit, %bb.ae, %_delete_node.exit, %bb.b, %bb.y, %bb.w, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.v ], [ 1, %_reset_nodes.exit ], [ 1, %_delete_node.exit ], [ 1, %bb.f ], [ 1, %bb.ae ], [ 0, %bb.b ], [ 0, %bb.y ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @_area_button_release_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #12 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2892
  %i.c = load i32, ptr %i.b, align 4, !tbaa !202
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store i32 0, ptr %i.i, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_area_motion_notify_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !180
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 5.000000e+00
  %i.i = fptosi double %i.h to i32                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #29
  %i.j = shl nsw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !16
  %i.m = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.n = shufflevector <2 x i32> %i.m, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.o = sub nsw <2 x i32> %i.l, %i.n             ; 5 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2892
  %i.r = load i32, ptr %i.q, align 4, !tbaa !202
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.w = load <2 x double>, ptr %i.s, align 8, !tbaa !171
  %i.x = load <2 x double>, ptr %i.u, align 8, !tbaa !171
  %i.y = insertelement <2 x double> poison, double %i.v, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fsub reassoc nsz arcp contract afn <2 x double> %i.x, %i.z ; 3 uses
  %i.ab = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x double> ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.aa, %i.ab
  %i.ad = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.aa, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.aa
  %i.af = select <2 x i1> %i.ac, <2 x double> %i.ab, <2 x double> %i.ae
  %i.ag = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x float>
  %i.ah = fpext reassoc nsz arcp contract afn <2 x float> %i.ag to <2 x double>
  %i.ai = fdiv reassoc nsz arcp contract afn <2 x double> %i.af, %i.ah ; 3 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  store double %i.aj, ptr %i.s, align 8, !tbaa !204
  %i.ak = extractelement <2 x double> %i.ai, i64 1
  %i.al = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ak ; 2 uses
  store double %i.al, ptr %i.t, align 8, !tbaa !203
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !339
  %i.ao = and i32 %i.an, 256
  %.not244 = icmp eq i32 %i.ao, 0
  br i1 %.not244, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fptrunc reassoc nsz arcp contract afn <2 x double> %i.w to <2 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 5300
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !189 ; 3 uses
  %i.as = fpext reassoc nsz arcp contract afn float %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 5304 ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = fpext reassoc nsz arcp contract afn <2 x float> %i.ap to <2 x double>
  %i.ax = insertelement <2 x double> %i.ai, double %i.al, i64 1
  %i.ay = fsub reassoc nsz arcp contract afn <2 x double> %i.aw, %i.ax
  %i.az = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv reassoc nsz arcp contract afn <2 x double> %i.ay, %i.ba
  %i.bc = load <2 x float>, ptr %i.at, align 8, !tbaa !12
  %i.bd = fpext reassoc nsz arcp contract afn <2 x float> %i.bc to <2 x double>
  %i.be = fadd reassoc nsz arcp contract afn <2 x double> %i.bb, %i.bd ; 2 uses
  %i.bf = fptrunc reassoc nsz arcp contract afn <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bh, %i.bf
  %i.bj = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.be, splat (double f0xB690000000000000)
  %i.bk = select <2 x i1> %i.bj, <2 x float> zeroinitializer, <2 x float> %i.bf
  %i.bl = select <2 x i1> %i.bi, <2 x float> %i.bh, <2 x float> %i.bk
  store <2 x float> %i.bl, ptr %i.at, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !140
  call void @gtk_widget_queue_draw(ptr noundef %i.bn) #29
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  %i.bo = extractelement <2 x i32> %i.o, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !54 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 484 ; 2 uses
  %i.bs = sext i32 %i.bq to i64                   ; 4 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds [160 x i8], ptr %i.bv, i64 %i.bs ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !204
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !203
  %i.cb = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.ce = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x double> ; 2 uses
  %i.cf = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x float>
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.bo to double
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !340
  %i.cj = load <2 x double>, ptr %i.cc, align 8, !tbaa !171
  %i.ck = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fsub reassoc nsz arcp contract afn <2 x double> %i.cj, %i.cl ; 3 uses
  %i.cn = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.cm, %i.ce
  %i.co = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.cm, zeroinitializer
  %i.cp = select <2 x i1> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cm
  %i.cq = select <2 x i1> %i.cn, <2 x double> %i.ce, <2 x double> %i.cp
  %i.cr = fpext reassoc nsz arcp contract afn <2 x float> %i.cf to <2 x double>
  %i.cs = fdiv reassoc nsz arcp contract afn <2 x double> %i.cq, %i.cr ; 3 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0 ; 3 uses
  store double %i.ct, ptr %i.bx, align 8, !tbaa !204
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.cu ; 5 uses
  store double %i.cv, ptr %i.bz, align 8, !tbaa !203
  %i.cw = fptrunc reassoc nsz arcp contract afn double %i.ct to float ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 5300
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !189 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 5304
  %i.da = load float, ptr %i.cz, align 8, !tbaa !190 ; 3 uses
  %i.db = fdiv reassoc nsz arcp contract afn float %i.cw, %i.cy
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.da ; 8 uses
  %i.dd = fpext reassoc nsz arcp contract afn float %i.dc to double
  %i.de = fmul reassoc nsz arcp contract afn double %i.dd, 8.000000e+00
  %i.df = fadd reassoc nsz arcp contract afn double %i.de, 5.000000e-01
  %i.dg = fptosi double %i.df to i32
  %i.dh = srem i32 %i.dg, 8
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !341
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 580
  store i32 %i.dh, ptr %i.dj, align 4, !tbaa !350
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !339
  %i.dm = and i32 %i.dl, 256
  %.not238 = icmp eq i32 %i.dm, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !166
  %.not241 = icmp eq i32 %i.do, 0                 ; 2 uses
  br i1 %.not238, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not241, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !165
  %.not240 = icmp eq i32 %i.dq, 0
  br i1 %.not240, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !172 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  br i1 %i.dt, label %.thread273, label %.thread

.thread273:                                       ; preds = %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !164
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !164 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 3 uses
  %i.dx = icmp sgt i32 %.pre, -1
  br i1 %i.dx, label %bb.i, label %bb.v

bb.i:                                             ; preds = %.thread273, %bb.h
  %i.dy = phi ptr [ %i.dv, %.thread273 ], [ %i.dw, %bb.h ]
  %i.dz = phi i32 [ %i.ds, %.thread273 ], [ %.pre, %bb.h ]
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 5308
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !163
  %i.ee = load <2 x float>, ptr %i.eb, align 4, !tbaa !12
  %i.ef = insertelement <2 x float> poison, float %i.da, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ed, i64 1
  %i.eh = fsub reassoc nsz arcp contract afn <2 x float> %i.ee, %i.eg
  %i.ei = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, %i.ej
  %i.el = fpext reassoc nsz arcp contract afn <2 x float> %i.ek to <2 x double>
  %i.em = insertelement <2 x double> poison, double %i.by, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.cb, i64 1 ; 2 uses
  %i.eo = fsub reassoc nsz arcp contract afn <2 x double> %i.en, %i.el
  %i.ep = fptrunc reassoc nsz arcp contract afn <2 x double> %i.eo to <2 x float>
  %i.eq = fpext reassoc nsz arcp contract afn <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.er = insertelement <2 x double> %i.cs, double %i.cv, i64 1
  %i.es = fsub reassoc nsz arcp contract afn <2 x double> %i.er, %i.eq
  %i.et = fptrunc reassoc nsz arcp contract afn <2 x double> %i.es to <2 x float>
  %i.eu = fsub reassoc nsz arcp contract afn <2 x double> %i.en, %i.eq
  %i.ev = fptrunc reassoc nsz arcp contract afn <2 x double> %i.eu to <2 x float>
  %i.ew = fsub reassoc nsz arcp contract afn <2 x float> %i.et, %i.ev
  %i.ex = fdiv reassoc nsz arcp contract afn <2 x float> %i.ew, %i.ej ; 2 uses
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #29
  %i.ey = load i32, ptr %i.dy, align 4, !tbaa !164
  %i.ez = load i32, ptr %i.dk, align 8, !tbaa !339
  %i.fa = extractelement <2 x float> %i.ex, i64 0
  %i.fb = extractelement <2 x float> %i.ex, i64 1
  call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.ey, float noundef %i.fa, float noundef %i.fb, i32 noundef %i.ez)
  br label %bb.ad

bb.j:                                             ; preds = %bb.d
  br i1 %.not241, label %bb.x, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 -1, ptr %i.fc, align 4, !tbaa !164
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !165
  %.not243 = icmp eq i32 %i.fe, 0
  br i1 %.not243, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !172
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !167
  call fastcc void @dt_iop_colorzones_get_params(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef %i.bq, double noundef %i.ct, double noundef %i.cv, float noundef %i.fj)
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #29
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.fl = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bs
  call void @dt_dev_add_history_item_target(ptr noundef %i.fk, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.fl) #29
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.fm = fcmp reassoc nsz arcp contract afn ogt double %i.ci, %i.ch
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 7 uses
  br i1 %i.fm, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.fn, align 4, !tbaa !172
  %i.fo = zext i32 %i.bq to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !16 ; 3 uses
  %i.fr = getelementptr inbounds nuw [160 x i8], ptr %i.bv, i64 %i.fo ; 6 uses
  %i.fs = icmp sgt i32 %i.fq, 1
  br i1 %i.fs, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !14
  %i.fu = fsub reassoc nsz arcp contract afn float %i.ft, %i.dc
  %i.fv = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fu) ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fq to i64
  %i.fw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.fw, 3                    ; 3 uses
  %i.fx = add nsw i32 %i.fq, -2
  %i.fy = icmp ult i32 %i.fx, 3
  br i1 %i.fy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fw, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %bb.t ] ; 6 uses
  %.0220254 = phi float [ %i.fv, %.lr.ph.preheader.new ], [ %.1221.3, %bb.t ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.t ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !14
  %i.gb = fsub reassoc nsz arcp contract afn float %i.ga, %i.dc
  %i.gc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gb) ; 2 uses
  %i.gd = fcmp reassoc nsz arcp contract afn olt float %i.gc, %.0220254
  br i1 %i.gd, label %bb.p, label %.lr.ph.1

bb.p:                                             ; preds = %.lr.ph
  %i.ge = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ge, ptr %i.fn, align 4, !tbaa !172
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.p, %.lr.ph
  %.1221 = phi nsz float [ %i.gc, %bb.p ], [ %.0220254, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !14
  %i.gh = fsub reassoc nsz arcp contract afn float %i.gg, %i.dc
  %i.gi = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gh) ; 2 uses
  %i.gj = fcmp reassoc nsz arcp contract afn olt float %i.gi, %.1221
  br i1 %i.gj, label %bb.q, label %.lr.ph.2

bb.q:                                             ; preds = %.lr.ph.1
  %i.gk = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.gk, ptr %i.fn, align 4, !tbaa !172
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.q, %.lr.ph.1
  %.1221.1 = phi nsz float [ %i.gi, %bb.q ], [ %.1221, %.lr.ph.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.1
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !14
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gm, %i.dc
  %i.go = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gn) ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.go, %.1221.1
  br i1 %i.gp, label %bb.r, label %.lr.ph.3

bb.r:                                             ; preds = %.lr.ph.2
  %i.gq = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.gq, ptr %i.fn, align 4, !tbaa !172
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.r, %.lr.ph.2
  %.1221.2 = phi nsz float [ %i.go, %bb.r ], [ %.1221.1, %.lr.ph.2 ] ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.2
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !14
  %i.gt = fsub reassoc nsz arcp contract afn float %i.gs, %i.dc
  %i.gu = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gt) ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn olt float %i.gu, %.1221.2
  br i1 %i.gv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.3
  %i.gw = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.gw, ptr %i.fn, align 4, !tbaa !172
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.3
  %.1221.3 = phi nsz float [ %i.gu, %bb.s ], [ %.1221.2, %.lr.ph.3 ] ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  store i32 -1, ptr %i.fn, align 4, !tbaa !172
  br label %.loopexit

bb.v:                                             ; preds = %bb.h
  %i.gx = icmp slt i32 %i.bu, 20
  %i.gy = icmp eq i32 %.pre, -1
  %or.cond = and i1 %i.gx, %i.gy
  br i1 %or.cond, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.gz = fptrunc reassoc nsz arcp contract afn double %i.cv to float
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 5308
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !163
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.gz, %i.cy
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hb, %i.hc
  %i.he = call fastcc i32 @_add_node(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bt, float noundef %i.dc, float noundef %i.hd)
  store i32 %i.he, ptr %i.dw, align 4, !tbaa !164
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #29
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.hg = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bs
  call void @dt_dev_add_history_item_target(ptr noundef %i.hf, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.hg) #29
  %.pre268 = load i32, ptr %i.dw, align 4, !tbaa !164
  br label %bb.z

bb.x:                                             ; preds = %bb.j
  %i.hh = fptrunc reassoc nsz arcp contract afn double %i.cv to float ; 3 uses
  %i.hi = icmp sgt i32 %i.bu, 0
  br i1 %i.hi, label %.lr.ph259, label %._crit_edge

.lr.ph259:                                        ; preds = %bb.x
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 5308
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !163
  %wide.trip.count264 = zext nneg i32 %i.bu to i64 ; 2 uses
  %i.hl = insertelement <2 x float> poison, float %i.da, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.hk, i64 1 ; 3 uses
  %xtraiter277 = and i64 %wide.trip.count264, 1
  %i.hn = icmp eq i32 %i.bu, 1
  br i1 %i.hn, label %.epil.preheader, label %.lr.ph259.new

.lr.ph259.new:                                    ; preds = %.lr.ph259
  %unroll_iter282 = and i64 %wide.trip.count264, 2147483646
  br label %bb.y

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.y
  %lcmp.mod279.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod279.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph259
  %indvars.iv261.epil.init = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next262.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0214257.epil.init = phi i32 [ -1, %.lr.ph259 ], [ %spec.select251.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0215256.epil.init = phi float [ 1.600000e-03, %.lr.ph259 ], [ %spec.select250.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod281 = trunc i32 %i.bu to i1
  call void @llvm.assume(i1 %lcmp.mod281)
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv261.epil.init
  %i.hp = load <2 x float>, ptr %i.ho, align 4, !tbaa !12
  %i.hq = fsub reassoc nsz arcp contract afn <2 x float> %i.hp, %i.hm ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 1
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %i.cy
  %i.ht = fsub reassoc nsz arcp contract afn float %i.hh, %i.hs ; 2 uses
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %i.ht
  %i.hv = extractelement <2 x float> %i.hq, i64 0
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %i.cy
end_hunk_2
begin_hunk_3_@_area_motion_notify_callback:bb.a

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.x
  %.0214.lcssa = phi i32 [ -1, %bb.x ], [ %spec.select251.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select251.epil, %.epil.preheader ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %.0214.lcssa, ptr %i.ic, align 4, !tbaa !164
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph259.new
  %indvars.iv261 = phi i64 [ 0, %.lr.ph259.new ], [ %indvars.iv.next262.1, %bb.y ] ; 4 uses
  %.0214257 = phi i32 [ -1, %.lr.ph259.new ], [ %spec.select251.1, %bb.y ]
  %.0215256 = phi float [ 1.600000e-03, %.lr.ph259.new ], [ %spec.select250.1, %bb.y ] ; 2 uses
  %niter283 = phi i64 [ 0, %.lr.ph259.new ], [ %niter283.next.1, %bb.y ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv261
  %i.ie = load <2 x float>, ptr %i.id, align 4, !tbaa !12
  %i.if = fsub reassoc nsz arcp contract afn <2 x float> %i.ie, %i.hm ; 2 uses
  %i.ig = extractelement <2 x float> %i.if, i64 1
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, %i.cy
  %i.ii = fsub reassoc nsz arcp contract afn float %i.hh, %i.ih ; 2 uses
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.ii
  %i.ik = extractelement <2 x float> %i.if, i64 0
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %i.cy
  %i.im = fsub reassoc nsz arcp contract afn float %i.cw, %i.il ; 2 uses
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, %i.im
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.ij ; 2 uses
  %i.ip = fcmp reassoc nsz arcp contract afn olt float %i.io, %.0215256 ; 2 uses
  %spec.select250 = select nsz i1 %i.ip, float %i.io, float %.0215256 ; 2 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv261 to i32
  %spec.select251 = select i1 %i.ip, i32 %i.iq, i32 %.0214257
  %indvars.iv.next262 = or disjoint i64 %indvars.iv261, 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next262
  %i.is = load <2 x float>, ptr %i.ir, align 4, !tbaa !12
  %i.it = fsub reassoc nsz arcp contract afn <2 x float> %i.is, %i.hm ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 1
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.cy
  %i.iw = fsub reassoc nsz arcp contract afn float %i.hh, %i.iv ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.iw
  %i.iy = extractelement <2 x float> %i.it, i64 0
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %i.cy
  %i.ja = fsub reassoc nsz arcp contract afn float %i.cw, %i.iz ; 2 uses
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.ja
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.ix ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn olt float %i.jc, %spec.select250 ; 2 uses
  %spec.select250.1 = select nsz i1 %i.jd, float %i.jc, float %spec.select250 ; 2 uses
  %i.je = trunc nuw nsw i64 %indvars.iv.next262 to i32
  %spec.select251.1 = select i1 %i.jd, i32 %i.je, i32 %spec.select251 ; 3 uses
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.y

bb.z:                                             ; preds = %bb.w, %._crit_edge
  %i.jf = phi i32 [ %.pre268, %bb.w ], [ %.0214.lcssa, %._crit_edge ]
  %i.jg = icmp sgt i32 %i.jf, -1
  br i1 %i.jg, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  call void @gtk_widget_grab_focus(ptr noundef %0) #29
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.0220254.epil.init = phi float [ %i.fv, %.lr.ph.preheader ], [ %.1221.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod276 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod276)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.ac, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.ac ] ; 3 uses
  %.0220254.epil = phi float [ %.0220254.epil.init, %.lr.ph.epil.preheader ], [ %.1221.epil, %bb.ac ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.epil
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !14
  %i.jj = fsub reassoc nsz arcp contract afn float %i.ji, %i.dc
  %i.jk = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jj) ; 2 uses
  %i.jl = fcmp reassoc nsz arcp contract afn olt float %i.jk, %.0220254.epil
  br i1 %i.jl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.epil
  %i.jm = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.jm, ptr %i.fn, align 4, !tbaa !172
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.epil
  %.1221.epil = phi nsz float [ %i.jk, %bb.ab ], [ %.0220254.epil, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !337

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.ac, %bb.v, %bb.o, %bb.z, %bb.aa, %bb.m, %bb.l, %bb.u
  call void @gtk_widget_queue_draw(ptr noundef %0) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %.loopexit, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_area_leave_notify_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2892
  %i.c = load i32, ptr %i.b, align 4, !tbaa !202
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !47  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !203
  %i.h = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.g)
  %i.i = fneg reassoc nsz arcp contract afn double %i.h
  store double %i.i, ptr %i.f, align 8, !tbaa !203
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !352
  %i.l = and i32 %i.k, 256
  %.not6 = icmp eq i32 %i.l, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  store i32 -1, ptr %i.m, align 4, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @_area_scrolled_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !47  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.f = tail call i32 @dt_gui_ignore_scroll(ptr noundef %1) #29
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !354
  %i.i = tail call i32 @gtk_accelerator_get_default_mod_mask() #29
  %i.j = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !16
  %i.k = or i32 %i.j, %i.h
  %i.l = and i32 %i.k, %i.i
  %.not76 = icmp eq i32 %i.l, 8
  br i1 %.not76, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173
  %i.o = tail call i32 @gtk_widget_event(ptr noundef %i.n, ptr noundef nonnull %1) #29
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2892
  %i.r = load i32, ptr %i.q, align 4, !tbaa !202
  %.not69 = icmp eq i32 %i.r, 0
  br i1 %.not69, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #29
  %.not73 = icmp eq i32 %i.s, 0
  br i1 %.not73, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #29
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 5300 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !189 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 5304 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !16
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to double
  %i.z = fmul reassoc nnan nsz arcp contract afn double %i.y, 1.000000e-01
  %i.aa = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.z
  %i.ab = fpext reassoc nsz arcp contract afn float %i.v to double
  %i.ac = fmul reassoc nsz arcp contract afn double %i.aa, %i.ab ; 2 uses
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  %i.ae = fcmp reassoc nsz arcp contract afn olt double %i.ac, f0x3FEFFFFFF0000000
  %spec.select = select i1 %i.ae, float 1.000000e+00, float %i.ad ; 4 uses
  store float %spec.select, ptr %i.u, align 4, !tbaa !189
  %i.af = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %spec.select
  %i.ah = load <2 x double>, ptr %i.t, align 8, !tbaa !171
  %i.ai = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ah to <2 x float> ; 2 uses
  %i.aj = load <2 x float>, ptr %i.w, align 8, !tbaa !12
  %i.ak = insertelement <2 x float> poison, float %i.v, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv reassoc nsz arcp contract afn <2 x float> %i.ai, %i.al
  %i.an = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x float> %i.ai, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn <2 x float> %i.am, %i.aj
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ap ; 3 uses
  %i.as = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ar, %i.at
  %i.av = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ar, zeroinitializer
  %i.aw = select <2 x i1> %i.av, <2 x float> zeroinitializer, <2 x float> %i.ar
  %i.ax = select <2 x i1> %i.au, <2 x float> %i.at, <2 x float> %i.aw
  store <2 x float> %i.ax, ptr %i.w, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !140
  call void @gtk_widget_queue_draw(ptr noundef %i.az) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !164
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !166
  %.not70 = icmp eq i32 %i.be, 0
  br i1 %.not70, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #29
  %.not71 = icmp eq i32 %i.bf, 0
  br i1 %.not71, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !166
  %.not72 = icmp eq i32 %i.bh, 0
  br i1 %.not72, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !167
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !16
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to double
  %i.bn = fmul reassoc nnan nsz arcp contract afn double %i.bm, 1.000000e-01
  %i.bo = fadd reassoc nnan nsz arcp contract afn double %i.bn, 1.000000e+00
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bo, %i.bk ; 3 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ogt double %i.bp, 1.000000e+00
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
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
  %.079 = phi i32 [ 0, %bb.c ], [ %i.dm, %bb.h ]  ; 3 uses
  %i.be = uitofp nsz nneg i32 %.079 to float
  %i.bf = load float, ptr %i.ar, align 4, !tbaa !189
  %i.bg = load float, ptr %i.as, align 8, !tbaa !190 ; 2 uses
  %i.bh = fmul reassoc nnan nsz arcp contract afn float %i.be, f0x3C820821
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bj, <float f0x3C020821, float -0.000000e+00>
  %i.bl = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fdiv reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bm ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bg ; 2 uses
  %i.bq = extractelement <2 x float> %i.bn, i64 1
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bg
  switch i32 %i.at, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bp, 1.000000e+02
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.reass = fmul reassoc nsz arcp contract afn float %i.bp, %factor.op.fmul
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.075.0 = phi nsz float [ 5.000000e+01, %bb.g ], [ %i.bs, %bb.f ], [ 5.000000e+01, %bb.e ] ; 7 uses
  %.sroa.676.0 = phi nsz float [ %.reass, %bb.g ], [ f0x42B504F3, %bb.f ], [ f0x42B504F3, %bb.e ]
  %.sroa.11.0 = phi nsz float [ %i.ay, %bb.g ], [ %i.ay, %bb.f ], [ %i.br, %bb.e ]
  %i.bt = fmul reassoc nsz arcp contract afn float %.sroa.11.0, f0x40C90FDB
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bt) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bu = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.075.0, float 1.000000e+02)
  %i.bv = fsub reassoc nsz arcp contract afn float %i.bu, %.sroa.075.0
  %i.bw = fadd reassoc nsz arcp contract afn float %.sroa.075.0, -2.000000e+01
  %i.bx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bw, float 0.000000e+00)
  %i.by = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bx, float 8.000000e+01)
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bv, 1.250000e-04
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.by
  %i.cb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ca ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.cb
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %.sroa.075.0
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %.sroa.676.0 ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 2.000000e-03
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %cos
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ch, %.sroa.075.0
  %i.cj = fmul reassoc nsz arcp contract afn float %.sroa.075.0, 8.620690e-03
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cf, 5.000000e-03
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, %sin
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %.sroa.075.0
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cj, f0x3E0D3DCB ; 3 uses
  %i.co = fadd reassoc nsz arcp contract afn float %i.ci, %i.cn
  %i.cp = fsub reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.cq = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.cp, i64 2
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.ct, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.cv = fmul reassoc nsz arcp contract afn <4 x float> %i.ct, <float f0x3E038026, float f0x3E038026, float f0x3E038026, float 0.000000e+00>
  %i.cw = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.cu, splat (float f0x3E53DCB1)
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %i.cu, %i.cu
  %i.cy = fmul reassoc nsz arcp contract afn <4 x float> %i.cx, %i.cu
  %i.cz = fadd reassoc nsz arcp contract afn <4 x float> %i.cv, splat (float f0xBC911AA6)
  %i.da = select <4 x i1> %i.cw, <4 x float> %i.cy, <4 x float> %i.cz
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.da, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float 0.000000e+00>
  store <4 x float> %i.db, ptr %i.d, align 16, !tbaa !12
  call fastcc void @dt_XYZ_to_sRGB(ptr noundef %i.d, ptr noundef %i.e)
  %i.dc = load float, ptr %i.e, align 16, !tbaa !12
  %i.dd = fpext reassoc nsz arcp contract afn float %i.dc to double
  %i.de = load <2 x float>, ptr %i.au, align 4, !tbaa !12
  %i.df = fpext reassoc nsz arcp contract afn <2 x float> %i.de to <2 x double> ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = extractelement <2 x double> %i.df, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.ae, double noundef %i.dd, double noundef %i.dg, double noundef %i.dh) #29
  %i.di = mul nsw i32 %.079, %i.ak
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %i.di to float
  %i.dk = fmul reassoc nnan nsz arcp contract afn float %i.dj, 1.562500e-02
  %i.dl = fpext reassoc nsz arcp contract afn float %i.dk to double
  call void @cairo_rectangle(ptr noundef %i.ae, double noundef %i.dl, double noundef 0.000000e+00, double noundef %i.bb, double noundef %i.aq) #29
  call void @cairo_fill(ptr noundef %i.ae) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.dm = add nuw nsw i32 %.079, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dm, 64
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
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.20, i32 noundef %i.d) #29
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !170
  tail call void @free(ptr noundef %i.g) #29
  tail call void @free(ptr noundef %i.e) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  tail call void @free(ptr noundef %i.k) #29
  tail call void @free(ptr noundef %i.i) #29
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170
  tail call void @free(ptr noundef %i.o) #29
  tail call void @free(ptr noundef %i.m) #29
  ret void
}

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #30 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !214
  store i32 -999, ptr %i.a, align 4, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !360
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  tail call void @free(ptr noundef %i.b) #29
  store ptr null, ptr %i.a, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((216, 220)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !35  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 644
  %.val = load i32, ptr %i.e, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !374
  %i.h = and i32 %i.g, -2
  %i.i = lshr i32 %.val, 2
  %.lobit = and i32 %i.i, 1
  %.sink283 = or disjoint i32 %i.h, %.lobit
end_hunk_3
