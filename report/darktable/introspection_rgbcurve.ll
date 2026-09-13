Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rgbcurve?download=true
inline.NumInlined: 134
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_area_draw_callback:bb.a
  %i.yg = sitofp reassoc nsz arcp contract afn i32 %i.yf to double
  %i.yh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !226
  %i.yj = sitofp reassoc nsz arcp contract afn i32 %i.yi to double
  %i.yk = fadd reassoc nsz arcp contract afn double %i.yg, %i.yj
  %i.yl = fsub reassoc nsz arcp contract afn double %i.yd, %i.yk
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.yc, double noundef %i.yl) #24
  call void @pango_cairo_show_layout(ptr noundef %i.jy, ptr noundef %i.wc) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @pango_font_description_free(ptr noundef %i.wb) #24
  call void @g_object_unref(ptr noundef %i.wc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.aa, %bb.l
  %i.ym = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 2892
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !156
  %.not476 = icmp eq i32 %i.yo, 0
  br i1 %.not476, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.yp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !210
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 336
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !222
  %i.ys = call ptr @pango_font_description_copy_static(ptr noundef %i.yr) #24 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.ys, i32 noundef 700) #24
  call void @pango_font_description_set_absolute_size(ptr noundef %i.ys, double noundef 1.024000e+03) #24
  %i.yt = call ptr @pango_cairo_create_layout(ptr noundef %i.jy) #24 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.yt, ptr noundef %i.ys) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) @.str.77, i64 24, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.yt, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.yt, ptr noundef nonnull %5, ptr noundef null) #24
  %i.yu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !224
  %i.yw = sitofp reassoc nsz arcp contract afn i32 %i.yv to double
  %i.yx = fmul reassoc nnan nsz arcp contract afn double %i.ks, 1.024000e+03
  %i.yy = fdiv reassoc nsz arcp contract afn double %i.yx, %i.yw
  call void @pango_font_description_set_absolute_size(ptr noundef %i.ys, double noundef %i.yy) #24
  call void @pango_layout_set_font_description(ptr noundef %i.yt, ptr noundef %i.ys) #24
  %i.yz = load float, ptr %i.kh, align 8, !tbaa !154
  %i.za = fmul reassoc nsz arcp contract afn float %i.yz, 1.000000e+02
  %i.zb = fadd reassoc nsz arcp contract afn float %i.za, -1.000000e+02
  %i.zc = fptosi float %i.zb to i32
  %i.zd = load <2 x float>, ptr %i.ki, align 4, !tbaa !16
  %i.ze = fmul reassoc nsz arcp contract afn <2 x float> %i.zd, splat (float 1.000000e+02) ; 2 uses
  %i.zf = extractelement <2 x float> %i.ze, i64 0
  %i.zg = fptosi float %i.zf to i32
  %i.zh = extractelement <2 x float> %i.ze, i64 1
  %i.zi = fptosi float %i.zh to i32
  %i.zj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.78, i32 noundef %i.zc, i32 noundef %i.zg, i32 noundef %i.zi) #24 ; 0 uses
  call void @cairo_set_source_rgba(ptr noundef %i.jy, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 5.000000e-01) #24
  call void @pango_layout_set_text(ptr noundef %i.yt, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.yt, ptr noundef nonnull %5, ptr noundef null) #24
  %i.zk = fmul reassoc nnan nsz arcp contract afn float %i.lb, 9.800000e-01
  %i.zl = load i32, ptr %i.yu, align 4, !tbaa !224
  %i.zm = sitofp reassoc nsz arcp contract afn i32 %i.zl to float
  %i.zn = load i32, ptr %5, align 4, !tbaa !227
  %i.zo = sitofp reassoc nsz arcp contract afn i32 %i.zn to float
  %i.zp = fadd reassoc nsz arcp contract afn float %i.zm, %i.zo
  %i.zq = fsub reassoc nsz arcp contract afn float %i.zk, %i.zp
  %i.zr = fpext reassoc nsz arcp contract afn float %i.zq to double
  %i.zs = fmul reassoc nnan nsz arcp contract afn double %i.kf, -2.000000e-02
  %i.zt = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !225
  %i.zv = sitofp reassoc nsz arcp contract afn i32 %i.zu to double
  %i.zw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !226
  %i.zy = sitofp reassoc nsz arcp contract afn i32 %i.zx to double
  %i.zz = fadd reassoc nsz arcp contract afn double %i.zv, %i.zy
  %i.aaa = fsub reassoc nsz arcp contract afn double %i.zs, %i.zz
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.zr, double noundef %i.aaa) #24
  call void @pango_cairo_show_layout(ptr noundef %i.jy, ptr noundef %i.yt) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @pango_font_description_free(ptr noundef %i.ys) #24
  call void @g_object_unref(ptr noundef %i.yt) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.aab = load i32, ptr %i.pq, align 8, !tbaa !130
  %i.aac = icmp sgt i32 %i.aab, -1
  br i1 %i.aac, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !210
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 336
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !222
  %i.aag = call ptr @pango_font_description_copy_static(ptr noundef %i.aaf) #24 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.aag, i32 noundef 700) #24
  call void @pango_font_description_set_absolute_size(ptr noundef %i.aag, double noundef 1.024000e+03) #24
  %i.aah = call ptr @pango_cairo_create_layout(ptr noundef %i.jy) #24 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.aah, ptr noundef %i.aag) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.75, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.aah, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aah, ptr noundef nonnull %6, ptr noundef null) #24
  %i.aai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !224
  %i.aak = sitofp reassoc nsz arcp contract afn i32 %i.aaj to double
  %i.aal = fmul reassoc nnan nsz arcp contract afn double %i.ks, 1.024000e+03
  %i.aam = fdiv reassoc nsz arcp contract afn double %i.aal, %i.aak
  call void @pango_font_description_set_absolute_size(ptr noundef %i.aag, double noundef %i.aam) #24
  call void @pango_layout_set_font_description(ptr noundef %i.aah, ptr noundef %i.aag) #24
  %i.aan = load i32, ptr %i.pq, align 8, !tbaa !130
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aao
  %i.aaq = load <2 x float>, ptr %i.aap, align 4, !tbaa !16
  %i.aar = fmul reassoc nsz arcp contract afn <2 x float> %i.aaq, splat (float 2.550000e+02) ; 2 uses
  %i.aas = extractelement <2 x float> %i.aar, i64 0 ; 2 uses
  %i.aat = extractelement <2 x float> %i.aar, i64 1 ; 2 uses
  %i.aau = fsub reassoc nsz arcp contract afn float %i.aat, %i.aas
  %i.aav = fpext reassoc nsz arcp contract afn float %i.aas to double
  %i.aaw = fpext reassoc nsz arcp contract afn float %i.aat to double
  %i.aax = fpext reassoc nsz arcp contract afn float %i.aau to double
  %i.aay = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.79, double noundef %i.aav, double noundef %i.aaw, double noundef %i.aax) #24 ; 0 uses
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #24
  call void @pango_layout_set_text(ptr noundef %i.aah, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aah, ptr noundef nonnull %6, ptr noundef null) #24
  %i.aaz = fmul reassoc nnan nsz arcp contract afn float %i.lb, 9.800000e-01
  %i.aba = load i32, ptr %i.aai, align 4, !tbaa !224
  %i.abb = sitofp reassoc nsz arcp contract afn i32 %i.aba to float
  %i.abc = load i32, ptr %6, align 4, !tbaa !227
  %i.abd = sitofp reassoc nsz arcp contract afn i32 %i.abc to float
  %i.abe = fadd reassoc nsz arcp contract afn float %i.abb, %i.abd
  %i.abf = fsub reassoc nsz arcp contract afn float %i.aaz, %i.abe
  %i.abg = fpext reassoc nsz arcp contract afn float %i.abf to double
  %i.abh = fmul reassoc nnan nsz arcp contract afn double %i.kf, -2.000000e-02
  %i.abi = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !225
  %i.abk = sitofp reassoc nsz arcp contract afn i32 %i.abj to double
  %i.abl = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !226
  %i.abn = sitofp reassoc nsz arcp contract afn i32 %i.abm to double
  %i.abo = fadd reassoc nsz arcp contract afn double %i.abk, %i.abn
  %i.abp = fsub reassoc nsz arcp contract afn double %i.abh, %i.abo
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.abg, double noundef %i.abp) #24
  call void @pango_cairo_show_layout(ptr noundef %i.jy, ptr noundef %i.aah) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @pango_font_description_free(ptr noundef %i.aag) #24
  call void @g_object_unref(ptr noundef %i.aah) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #24
  %i.abq = load i32, ptr %i.pq, align 8, !tbaa !130
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.abr ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !24
  %i.abu = load float, ptr %i.kh, align 8, !tbaa !154 ; 2 uses
  %i.abv = load float, ptr %i.ki, align 4, !tbaa !155
  %i.abw = fsub reassoc nsz arcp contract afn float %i.abt, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !25
  %i.abz = load float, ptr %i.kj, align 8, !tbaa !131
  %i.aca = fsub reassoc nsz arcp contract afn float %i.aby, %i.abz
  %i.acb = fmul reassoc nsz arcp contract afn float %i.abu, %i.lb
  %i.acc = fmul reassoc nsz arcp contract afn float %i.acb, %i.abw
  %i.acd = fpext reassoc nsz arcp contract afn float %i.acc to double
  %i.ace = fmul reassoc nsz arcp contract afn float %i.abu, %i.kk
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, %i.aca
  %i.acg = fpext reassoc nsz arcp contract afn float %i.acf to double
  %i.ach = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 1432
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !152
  %i.ack = fmul reassoc nsz arcp contract afn double %i.acj, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.jy, double noundef %i.acd, double noundef %i.acg, double noundef %i.ack, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.acl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 1432
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !152
  %i.aco = fmul reassoc nsz arcp contract afn double %i.acn, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.jy, double noundef %i.aco) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #24
  %i.acp = load float, ptr %i.bt, align 4, !tbaa !16
  %i.acq = load float, ptr %i.kh, align 8, !tbaa !154
  %i.acr = load float, ptr %i.kj, align 8, !tbaa !131
  %i.acs = fsub reassoc nsz arcp contract afn float %i.acp, %i.acr
  %i.act = fmul reassoc nsz arcp contract afn float %i.acq, %i.or
  %i.acu = fmul reassoc nsz arcp contract afn float %i.act, %i.acs
  %i.acv = fpext reassoc nsz arcp contract afn float %i.acu to double
  call void @cairo_move_to(ptr noundef %i.jy, double noundef 0.000000e+00, double noundef %i.acv) #24
  %i.acw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gy
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ak
  call void @cairo_stroke(ptr noundef %i.jy) #24
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.ak
  %indvars.iv550 = phi i64 [ 1, %bb.af ], [ %indvars.iv.next551, %bb.ak ] ; 3 uses
  %i.acx = trunc nuw nsw i64 %indvars.iv550 to i32
  %i.acy = uitofp nneg i32 %i.acx to float
  %i.acz = fmul reassoc nnan nsz arcp contract afn float %i.acy, f0x3B808081 ; 3 uses
  %i.ada = fcmp reassoc nsz arcp contract afn ogt float %i.acz, %i.gy
  br i1 %i.ada, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.adb = fmul reassoc nsz arcp contract afn float %i.acz, %i.acw
  %i.adc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adb, float %.2.i)
  %i.add = fmul reassoc nsz arcp contract afn float %i.adc, %i.id
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv550
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi nsz float [ %i.add, %bb.ai ], [ %i.adf, %bb.aj ]
  %i.adg = load float, ptr %i.kh, align 8, !tbaa !154
  %i.adh = load <2 x float>, ptr %i.ki, align 4, !tbaa !16
  %i.adi = insertelement <2 x float> poison, float %i.acz, i64 0
  %i.adj = insertelement <2 x float> %i.adi, float %.0, i64 1
  %i.adk = fsub reassoc nsz arcp contract afn <2 x float> %i.adj, %i.adh
  %i.adl = insertelement <2 x float> poison, float %i.adg, i64 0
  %i.adm = shufflevector <2 x float> %i.adl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adn = fmul reassoc nsz arcp contract afn <2 x float> %i.adm, %i.la
  %i.ado = fmul reassoc nsz arcp contract afn <2 x float> %i.adn, %i.adk
  %i.adp = fpext <2 x float> %i.ado to <2 x double> ; 2 uses
  %i.adq = extractelement <2 x double> %i.adp, i64 0
  %i.adr = extractelement <2 x double> %i.adp, i64 1
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.adq, double noundef %i.adr) #24
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond553.not = icmp eq i64 %indvars.iv.next551, 256
  br i1 %exitcond553.not, label %bb.ag, label %bb.ah

bb.al:                                            ; preds = %dt_iop_estimate_exp.exit, %bb.ag
  call void @cairo_destroy(ptr noundef %i.jy) #24
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ju, double noundef 0.000000e+00, double noundef 0.000000e+00) #24
  call void @cairo_paint(ptr noundef %1) #24
  call void @cairo_surface_destroy(ptr noundef %i.ju) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_area_button_press_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !88  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !41  ; 19 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2892
  %i.i = load i32, ptr %i.h, align 4, !tbaa !156
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.o = sext i32 %i.k to i64                     ; 14 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11   ; 6 uses
  %i.r = getelementptr [160 x i8], ptr %i.b, i64 %i.o ; 29 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !241
  switch i32 %i.t, label %bb.y [
    i32 1, label %bb.c
    i32 3, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %1, align 8, !tbaa !242    ; 2 uses
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !243
  %i.y = tail call i32 @gtk_accelerator_get_default_mod_mask() #24
  %i.z = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !11
  %i.aa = or i32 %i.z, %i.x
  %i.ab = and i32 %i.aa, %i.y
  %i.ac = icmp eq i32 %i.ab, 4
  %i.ad = icmp slt i32 %i.q, 20
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 8 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.critedge, label %thread-pre-split

.critedge:                                        ; preds = %bb.e
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1432
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !152
  %i.ak = fptosi double %i.aj to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #24
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = shl nsw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.ak to double
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.aq = load <2 x i32>, ptr %i.al, align 4, !tbaa !11
  %i.ar = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.at = sub nsw <2 x i32> %i.aq, %i.as          ; 2 uses
  %i.au = load <2 x double>, ptr %i.an, align 8, !tbaa !134
  %i.av = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fsub reassoc nsz arcp contract afn <2 x double> %i.au, %i.aw ; 3 uses
  %i.ay = sitofp <2 x i32> %i.at to <2 x double>  ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ax, %i.ay
  %i.ba = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ax, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x double> zeroinitializer, <2 x double> %i.ax
  %i.bc = select <2 x i1> %i.az, <2 x double> %i.ay, <2 x double> %i.bb
  %i.bd = sitofp <2 x i32> %i.at to <2 x float>
  %i.be = fpext <2 x float> %i.bd to <2 x double>
  %i.bf = fdiv reassoc nsz arcp contract afn <2 x double> %i.bc, %i.be ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  store double %i.bg, ptr %i.ap, align 8, !tbaa !160
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  %i.bi = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store double %i.bi, ptr %i.bj, align 8, !tbaa !161
  %i.bk = fptrunc reassoc nsz arcp contract afn double %i.bg to float
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 3224 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !154
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 3228
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !155
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bo ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !145
  %i.bt = call reassoc nsz arcp contract afn fastcc float @dt_draw_curve_calc_value(ptr noundef %i.bs, float noundef %i.bq) ; 9 uses
  %i.bu = fcmp reassoc nsz arcp contract afn oge float %i.bt, 0.000000e+00
  %i.bv = fcmp reassoc nsz arcp contract afn ole float %i.bt, 1.000000e+00
  %or.cond3 = and i1 %i.bu, %i.bv
  br i1 %or.cond3, label %bb.f, label %bb.p

bb.f:                                             ; preds = %.critedge
  %i.bw = call fastcc i32 @_add_node(ptr noundef nonnull %i.r, ptr noundef nonnull %i.p, float noundef %i.bq, float noundef %i.bt) ; 6 uses
  %i.bx = icmp sgt i32 %i.q, 0
  br i1 %i.bx, label %.lr.ph202, label %._crit_edge203

.lr.ph202:                                        ; preds = %bb.f
  %i.by = load float, ptr %i.bl, align 8, !tbaa !154 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 3232
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !131 ; 6 uses
  %wide.trip.count217 = zext nneg i32 %i.q to i64 ; 6 uses
  %min.iters.check271 = icmp ult i32 %i.q, 17
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.memcheck263

scalar.ph270.preheader:                           ; preds = %bb.j, %vector.memcheck263, %.lr.ph202
  %indvars.iv214.ph = phi i64 [ 0, %vector.memcheck263 ], [ 0, %.lr.ph202 ], [ %n.vec273, %bb.j ] ; 4 uses
  %i.cb = sub nsw i64 %wide.trip.count217, %indvars.iv214.ph
  %xtraiter300 = and i64 %i.cb, 3                 ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %scalar.ph270.prol.loopexit, label %scalar.ph270.prol

scalar.ph270.prol:                                ; preds = %scalar.ph270.preheader, %bb.h
  %indvars.iv214.prol = phi i64 [ %indvars.iv.next215.prol, %bb.h ], [ %indvars.iv214.ph, %scalar.ph270.preheader ] ; 2 uses
  %prol.iter302 = phi i64 [ %prol.iter302.next, %bb.h ], [ 0, %scalar.ph270.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv214.prol
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !25
  %i.cf = fsub reassoc nsz arcp contract afn float %i.ce, %i.ca
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.by
  %i.ch = fsub reassoc nsz arcp contract afn float %i.bt, %i.cg ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.ch
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ci, 1.600000e-03
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph270.prol
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %scalar.ph270.prol
  %indvars.iv.next215.prol = add nuw nsw i64 %indvars.iv214.prol, 1 ; 2 uses
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %scalar.ph270.prol.loopexit, label %scalar.ph270.prol, !llvm.loop !228

scalar.ph270.prol.loopexit:                       ; preds = %bb.h, %scalar.ph270.preheader
  %indvars.iv214.unr = phi i64 [ %indvars.iv214.ph, %scalar.ph270.preheader ], [ %indvars.iv.next215.prol, %bb.h ]
  %i.ck = sub nsw i64 %indvars.iv214.ph, %wide.trip.count217
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge203, label %scalar.ph270

vector.memcheck263:                               ; preds = %.lr.ph202
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.zd = load float, ptr %i.wi, align 8, !tbaa !16
  %i.ze = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zc, float %i.zd)
  %i.zf = fmul reassoc nsz arcp contract afn float %i.ze, %i.za
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ay, %bb.ax
  %i.zg = phi reassoc nsz arcp contract afn float [ %i.yz, %bb.ax ], [ %i.zf, %bb.ay ]
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.zg, ptr %i.zh, align 4, !tbaa !16
  %i.zi = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zi
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !16 ; 3 uses
  %i.zl = fcmp reassoc nsz arcp contract afn olt float %i.zk, %i.vl
  br i1 %i.zl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader.1
  %i.zm = load float, ptr %i.wh, align 4, !tbaa !16
  %i.zn = load float, ptr %i.vk, align 8, !tbaa !16
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zn, %i.zk
  %i.zp = load float, ptr %i.wi, align 8, !tbaa !16
  %i.zq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zo, float %i.zp)
  %i.zr = fmul reassoc nsz arcp contract afn float %i.zq, %i.zm
  br label %.preheader.2

bb.ba:                                            ; preds = %.preheader.1
  %i.zs = fmul reassoc nsz arcp contract afn float %i.zk, 6.553600e+04
  %i.zt = fptosi float %i.zs to i32
  %narrow147.1 = tail call i32 @llvm.smax.i32(i32 %i.zt, i32 0)
  %i.zu = tail call i32 @llvm.umin.i32(i32 %narrow147.1, i32 65535)
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.zv
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !16
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.ba, %bb.az
  %i.zy = phi reassoc nsz arcp contract afn float [ %i.zx, %bb.ba ], [ %i.zr, %bb.az ]
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zi
  store float %i.zy, ptr %i.zz, align 4, !tbaa !16
  %i.aaa = or disjoint i64 %indvars.iv, 2         ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aaa
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !16 ; 3 uses
  %i.aad = fcmp reassoc nsz arcp contract afn olt float %i.aac, %i.vl
  br i1 %i.aad, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.preheader.2
  %i.aae = load float, ptr %i.wh, align 4, !tbaa !16
  %i.aaf = load float, ptr %i.vk, align 8, !tbaa !16
  %i.aag = fmul reassoc nsz arcp contract afn float %i.aaf, %i.aac
  %i.aah = load float, ptr %i.wi, align 8, !tbaa !16
  %i.aai = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aag, float %i.aah)
  %i.aaj = fmul reassoc nsz arcp contract afn float %i.aai, %i.aae
  br label %.loopexit.sink.split

bb.bc:                                            ; preds = %.preheader.2
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aac, 6.553600e+04
  %i.aal = fptosi float %i.aak to i32
  %narrow147.2 = tail call i32 @llvm.smax.i32(i32 %i.aal, i32 0)
  %i.aam = tail call i32 @llvm.umin.i32(i32 %narrow147.2, i32 65535)
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aan
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !16
  br label %.loopexit.sink.split

bb.bd:                                            ; preds = %bb.aw
  br i1 %.not.i145, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aaq = load i32, ptr %i.wa, align 4, !tbaa !84
  %.not.i.i146 = icmp eq i32 %i.aaq, 0
  br i1 %.not.i.i146, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aar = load i32, ptr %i.wb, align 64, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call fastcc void @dt_ioppr_apply_trc(ptr noundef readonly %i.yr, ptr noundef %i.a, ptr noundef nonnull readonly %i.wd, ptr noundef nonnull readonly %i.wc, i32 noundef %i.aar)
  %i.aas = load float, ptr %i.we, align 16, !tbaa !16
  %i.aat = load float, ptr %i.a, align 16, !tbaa !16
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aat, %i.aas
  %i.aav = load <2 x float>, ptr %i.wf, align 4, !tbaa !16
  %i.aaw = load <2 x float>, ptr %i.wg, align 4, !tbaa !16
  %i.aax = fmul reassoc nsz arcp contract afn <2 x float> %i.aaw, %i.aav ; 2 uses
  %i.aay = extractelement <2 x float> %i.aax, i64 0
  %i.aaz = fadd reassoc nsz arcp contract afn float %i.aay, %i.aau
  %i.aba = extractelement <2 x float> %i.aax, i64 1
  %i.abb = fadd reassoc nsz arcp contract afn float %i.aaz, %i.aba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %dt_rgb_norm.exit

bb.bg:                                            ; preds = %bb.be
  %i.abc = load float, ptr %i.we, align 4, !tbaa !16
  %i.abd = load float, ptr %i.yr, align 4, !tbaa !16
  %i.abe = fmul reassoc nsz arcp contract afn float %i.abd, %i.abc
  %i.abf = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.abg = load <2 x float>, ptr %i.wf, align 4, !tbaa !16
  %i.abh = load <2 x float>, ptr %i.abf, align 4, !tbaa !16
  %i.abi = fmul reassoc nsz arcp contract afn <2 x float> %i.abh, %i.abg ; 2 uses
  %i.abj = extractelement <2 x float> %i.abi, i64 0
  %i.abk = fadd reassoc nsz arcp contract afn float %i.abj, %i.abe
  %i.abl = extractelement <2 x float> %i.abi, i64 1
  %i.abm = fadd reassoc nsz arcp contract afn float %i.abk, %i.abl
  br label %dt_rgb_norm.exit

bb.bh:                                            ; preds = %bb.bd
  %i.abn = load float, ptr %i.yr, align 4, !tbaa !16
  %i.abo = fmul reassoc nsz arcp contract afn float %i.abn, f0x3E63D838
  %i.abp = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.abq = load <2 x float>, ptr %i.abp, align 4, !tbaa !16
  %i.abr = fmul reassoc nsz arcp contract afn <2 x float> %i.abq, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.abs = extractelement <2 x float> %i.abr, i64 0
  %i.abt = fadd reassoc nsz arcp contract afn float %i.abs, %i.abo
  %i.abu = extractelement <2 x float> %i.abr, i64 1
  %i.abv = fadd reassoc nsz arcp contract afn float %i.abt, %i.abu
  br label %dt_rgb_norm.exit

bb.bi:                                            ; preds = %bb.aw
  %i.abw = load float, ptr %i.yr, align 4, !tbaa !16
  %i.abx = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !16
  %i.abz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abw, float %i.aby)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !16
  %i.acc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abz, float %i.acb)
  br label %dt_rgb_norm.exit

bb.bj:                                            ; preds = %bb.aw
  %i.acd = load float, ptr %i.yr, align 4, !tbaa !16
  %i.ace = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !16
  %i.acg = fadd reassoc nsz arcp contract afn float %i.acf, %i.acd
  %i.ach = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !16
  %i.acj = fadd reassoc nsz arcp contract afn float %i.acg, %i.aci
  %i.ack = fmul reassoc nsz arcp contract afn float %i.acj, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.bk:                                            ; preds = %bb.aw
  %i.acl = load float, ptr %i.yr, align 4, !tbaa !16
  %i.acm = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !16
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acn, %i.acl
  %i.acp = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !16
  %i.acr = fadd reassoc nsz arcp contract afn float %i.aco, %i.acq
  br label %dt_rgb_norm.exit

bb.bl:                                            ; preds = %bb.aw
  %i.acs = load float, ptr %i.yr, align 4, !tbaa !16 ; 2 uses
  %i.act = fmul reassoc nsz arcp contract afn float %i.acs, %i.acs
  %i.acu = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.acv = load <2 x float>, ptr %i.acu, align 4, !tbaa !16 ; 2 uses
  %i.acw = fmul reassoc nsz arcp contract afn <2 x float> %i.acv, %i.acv ; 2 uses
  %i.acx = extractelement <2 x float> %i.acw, i64 0
  %i.acy = fadd reassoc nsz arcp contract afn float %i.acx, %i.act
  %i.acz = extractelement <2 x float> %i.acw, i64 1
  %i.ada = fadd reassoc nsz arcp contract afn float %i.acy, %i.acz
  %i.adb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ada)
  br label %dt_rgb_norm.exit

bb.bm:                                            ; preds = %bb.aw
  %i.adc = load float, ptr %i.yr, align 4, !tbaa !16 ; 3 uses
  %i.add = fmul reassoc nsz arcp contract afn float %i.adc, %i.adc ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.adf = fmul reassoc nsz arcp contract afn float %i.add, %i.adc
  %i.adg = load <2 x float>, ptr %i.ade, align 4, !tbaa !16 ; 3 uses
  %i.adh = fmul reassoc nsz arcp contract afn <2 x float> %i.adg, %i.adg ; 3 uses
  %i.adi = fmul reassoc nsz arcp contract afn <2 x float> %i.adh, %i.adg ; 2 uses
  %i.adj = extractelement <2 x float> %i.adi, i64 0
  %i.adk = fadd reassoc nsz arcp contract afn float %i.adj, %i.adf
  %i.adl = extractelement <2 x float> %i.adi, i64 1
  %i.adm = fadd reassoc nsz arcp contract afn float %i.adk, %i.adl
  %i.adn = extractelement <2 x float> %i.adh, i64 0
  %i.ado = fadd reassoc nsz arcp contract afn float %i.adn, %i.add
  %i.adp = extractelement <2 x float> %i.adh, i64 1
  %i.adq = fadd reassoc nsz arcp contract afn float %i.ado, %i.adp
  %i.adr = fdiv reassoc nsz arcp contract afn float %i.adm, %i.adq
  br label %dt_rgb_norm.exit

bb.bn:                                            ; preds = %bb.aw
  %i.ads = load float, ptr %i.yr, align 4, !tbaa !16
  %i.adt = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !16
  %i.adv = fadd reassoc nsz arcp contract afn float %i.adu, %i.ads
  %i.adw = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !16
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adv, %i.adx
  %i.adz = fmul reassoc nsz arcp contract afn float %i.ady, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.0.i = phi nsz float [ %i.adz, %bb.bn ], [ %i.acc, %bb.bi ], [ %i.ack, %bb.bj ], [ %i.acr, %bb.bk ], [ %i.adb, %bb.bl ], [ %i.adr, %bb.bm ], [ %i.abv, %bb.bh ], [ %i.abb, %bb.bf ], [ %i.abm, %bb.bg ] ; 5 uses
  %i.aea = fcmp reassoc nsz arcp contract afn ogt float %.0.i, 0.000000e+00
  br i1 %i.aea, label %bb.bo, label %.loopexit.loopexit161

bb.bo:                                            ; preds = %dt_rgb_norm.exit
  %i.aeb = fcmp reassoc nsz arcp contract afn olt float %.0.i, %i.vl
  br i1 %i.aeb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.aec = fmul reassoc nnan nsz arcp contract afn float %.0.i, 6.553600e+04
  %i.aed = fptosi float %i.aec to i32
  %7 = tail call i32 @llvm.smax.i32(i32 %i.aed, i32 0)
  %i.aee = tail call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aef
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !16
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.aei = load float, ptr %i.wh, align 4, !tbaa !16
  %i.aej = load float, ptr %i.vk, align 8, !tbaa !16
  %i.aek = fmul reassoc nsz arcp contract afn float %i.aej, %.0.i
  %i.ael = load float, ptr %i.wi, align 8, !tbaa !16
  %i.aem = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aek, float %i.ael)
  %i.aen = fmul reassoc nsz arcp contract afn float %i.aem, %i.aei
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.aeo = phi reassoc nsz arcp contract afn float [ %i.aeh, %bb.bp ], [ %i.aen, %bb.bq ]
  %i.aep = fdiv reassoc nsz arcp contract afn float %i.aeo, %.0.i
  br label %.loopexit.loopexit161

.loopexit.loopexit161:                            ; preds = %bb.br, %dt_rgb_norm.exit
  %.0123 = phi nsz float [ %i.aep, %bb.br ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 3 uses
  %i.aeq = load float, ptr %i.yr, align 4, !tbaa !16
  %i.aer = fmul reassoc nsz arcp contract afn float %i.aeq, %.0123
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.aer, ptr %i.aes, align 4, !tbaa !16
  %i.aet = or disjoint i64 %indvars.iv, 1         ; 2 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aet
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !16
  %i.aew = fmul reassoc nsz arcp contract afn float %i.aev, %.0123
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aet
  store float %i.aew, ptr %i.aex, align 4, !tbaa !16
  %i.aey = or disjoint i64 %indvars.iv, 2         ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aey
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !16
  %i.afb = fmul reassoc nsz arcp contract afn float %i.afa, %.0123
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.bb, %bb.bc, %bb.au, %bb.av, %.loopexit.loopexit161
  %.sink208 = phi i64 [ %i.aey, %.loopexit.loopexit161 ], [ %i.ya, %bb.au ], [ %i.ya, %bb.av ], [ %i.aaa, %bb.bc ], [ %i.aaa, %bb.bb ]
  %.sink = phi float [ %i.afb, %.loopexit.loopexit161 ], [ %i.yj, %bb.au ], [ %i.yp, %bb.av ], [ %i.aap, %bb.bc ], [ %i.aaj, %bb.bb ]
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sink208
  store float %.sink, ptr %i.afc, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.am
  %i.afd = or disjoint i64 %indvars.iv, 3         ; 2 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afd
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !16
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afd
  store float %i.aff, ptr %i.afg, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.afh = icmp ugt i64 %i.vx, %indvars.iv.next
  br i1 %i.afh, label %bb.am, label %.loopexit156

.loopexit156:                                     ; preds = %.loopexit, %_generate_curve_lut.exit, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !293
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !173
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !173
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 248), align 8, !tbaa !173
  store ptr @introspection_init.f9, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 864), align 16, !tbaa !173
  store ptr @introspection_init.f11, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1040), align 16, !tbaa !173
  store ptr @introspection_init.f12, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1128), align 8, !tbaa !173
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.66) #27
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.67) #27
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.68) #27
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.69) #27
  %.not28 = icmp eq i32 %i.e, 0
  br i1 %.not28, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.70) #27
  %.not29 = icmp eq i32 %i.f, 0
  br i1 %.not29, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.71) #27
  %.not30 = icmp eq i32 %i.g, 0
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.72) #27
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.73) #27
  %.not32 = icmp eq i32 %i.k, 0
  br i1 %.not32, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 492
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.74) #27
  %.not33 = icmp eq i32 %i.m, 0
  br i1 %.not33, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 492
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.15) #27
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(23) @.str.43) #27
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 508
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.45) #27
  %.not36 = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  %spec.select = select i1 %.not36, ptr %i.t, ptr null
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f, %bb.e, %bb.d, %bb.a, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.c
end_hunk_1
begin_hunk_2_@dt_ioppr_apply_trc:bb.a
bb.c:                                             ; preds = %bb.b
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !16 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !16
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = load float, ptr %3, align 4, !tbaa !16
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.d ], [ %i.z, %bb.c ], [ %i.h, %bb.a ]
  store float %i.ai, ptr %1, align 4, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !174 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !16
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16 ; 4 uses
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !16
  %i.at = load float, ptr %i.aq, align 4, !tbaa !16
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1 = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !16 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !16
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.g ], [ %i.bp, %bb.h ], [ %i.ao, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !174 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !16
  %i.bv = fcmp reassoc nsz arcp contract afn ult float %i.bu, 0.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !16 ; 4 uses
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !16
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !16
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !16
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float %i.cf)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cb
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bx, %i.b ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, 0.000000e+00
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ci, %i.b
  %..i.2 = select reassoc nsz arcp contract afn i1 %i.ck, float %i.ci, float %i.b
  %i.cl = select reassoc nsz arcp contract afn i1 %i.cj, float %..i.2, float 0.000000e+00 ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.cl, %i.d
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cm, float %i.cl, float %i.d
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.co to float
  %i.cq = fsub reassoc nnan nsz arcp contract afn float %i.cl, %i.cp
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cr ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !16 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !16
  %i.cw = fsub reassoc nsz arcp contract afn float %i.cv, %i.ct
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cq
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.ct
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.ch, %bb.k ], [ %i.cy, %bb.l ], [ %i.bx, %bb.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #18

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_push_group_with_content(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_draw_histogram_8_zoomed(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) unnamed_addr #20 {
bb.a:
  %i.a = fneg reassoc nsz arcp contract afn float %4
  %i.b = fpext reassoc nsz arcp contract afn float %i.a to double
  %i.c = fneg reassoc nsz arcp contract afn float %5 ; 2 uses
  %i.d = fpext reassoc nsz arcp contract afn float %i.c to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.b, double noundef %i.d) #24
  %.not = icmp eq i32 %6, 0
  %i.e = sext i32 %2 to i64
  %invariant.gep36 = getelementptr [4 x i8], ptr %1, i64 %i.e ; 2 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.split.us ], [ 0, %bb.a ] ; 3 uses
  %.idx34 = shl i64 %indvars.iv30, 4
  %gep37 = getelementptr i8, ptr %invariant.gep36, i64 %.idx34
  %i.f = load i32, ptr %gep37, align 4, !tbaa !11
  %i.g = uitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.h = fsub reassoc nsz arcp contract afn float %i.g, %5
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %3 ; 2 uses
  %i.j = fcmp reassoc nsz arcp contract afn olt float %i.i, 0.000000e+00
  %i.k = select reassoc nsz arcp contract afn i1 %i.j, float 0.000000e+00, float %i.i
  %i.l = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = fsub reassoc nsz arcp contract afn float %i.m, %4
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %3
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double
  %i.q = fadd reassoc nsz arcp contract afn float %i.k, 1.000000e+00
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.q)
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.p, double noundef %i.s) #24
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 256
  br i1 %exitcond33.not, label %.split27.us, label %.split.us

.split27.us:                                      ; preds = %.split, %.split.us
  %i.t = fsub reassoc nsz arcp contract afn float 2.550000e+02, %4
  %i.u = fpext reassoc nsz arcp contract afn float %i.t to double
  %i.v = fmul reassoc nsz arcp contract afn float %3, %i.c
  %i.w = fpext reassoc nsz arcp contract afn float %i.v to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.u, double noundef %i.w) #24
  tail call void @cairo_close_path(ptr noundef %0) #24
  tail call void @cairo_fill(ptr noundef %0) #24
  ret void

.split:                                           ; preds = %bb.a, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split ], [ 0, %bb.a ] ; 3 uses
  %.idx = shl i64 %indvars.iv, 4
  %gep = getelementptr i8, ptr %invariant.gep36, i64 %.idx
  %i.x = load i32, ptr %gep, align 4, !tbaa !11
  %i.y = uitofp reassoc nsz arcp contract afn i32 %i.x to float
  %i.z = fsub reassoc nsz arcp contract afn float %i.y, %5
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %3 ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  %i.ac = select reassoc nsz arcp contract afn i1 %i.ab, float 0.000000e+00, float %i.aa
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %4
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %3
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ac to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ah, double noundef %i.ai) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.split27.us, label %.split
}

declare void @cairo_pop_group_to_source(ptr noundef) local_unnamed_addr #3

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_histogram_profile_info(ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace_rgb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @picker_scale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #21 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = alloca [4 x float], align 16             ; 14 uses
  %i.e = alloca [4 x float], align 16             ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 504
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  switch i32 %i.g, label %..loopexit_crit_edge [
    i32 1, label %bb.b
    i32 0, label %bb.o
  ]

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre67 = load float, ptr %.phi.trans.insert, align 4, !tbaa !16
  %.pre = load float, ptr %1, align 4, !tbaa !16
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre69 = load float, ptr %.phi.trans.insert68, align 4, !tbaa !16
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 508
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne ptr %3, null
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %.preheader, label %.preheader56.preheader

.preheader56.preheader:                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %0, align 4, !tbaa !16   ; 2 uses
  store float %i.m, ptr %1, align 4, !tbaa !16
  %i.n = load float, ptr %i.l, align 4, !tbaa !16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.n, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !16
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.s = load i32, ptr %i.r, align 4, !tbaa !84
  %.not.i.i.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 768 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 712 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 900 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 916 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 932 ; 6 uses
  br i1 %.not.i.i.i, label %dt_ioppr_rgb_matrix_to_xyz.exit.i.i.us.preheader, label %.preheader.split

dt_ioppr_rgb_matrix_to_xyz.exit.i.i.us.preheader: ; preds = %.preheader
  %i.aa = load float, ptr %0, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.ab = load float, ptr %i.x, align 4, !tbaa !16
  %i.ac = load float, ptr %i.y, align 4, !tbaa !16
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.ab
  %i.ae = load float, ptr %i.z, align 4, !tbaa !16
  %i.af = fadd reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.aa ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, f0x3C111AA7
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit.i.i.us.preheader
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ag, f0x40F92F69
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, f0x3E0D3DCB
  br label %dt_ioppr_compensate_middle_grey.exit.us

bb.d:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit.i.i.us.preheader
  %i.ak = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ag) #25
  br label %dt_ioppr_compensate_middle_grey.exit.us

dt_ioppr_compensate_middle_grey.exit.us:          ; preds = %bb.d, %bb.c
  %i.al = phi reassoc nsz arcp contract afn float [ %i.ak, %bb.d ], [ %i.aj, %bb.c ]
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, 1.160000e+00
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, -1.600000e-01 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  store float %i.an, ptr %1, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.aq = load float, ptr %i.x, align 4, !tbaa !16
  %i.ar = load float, ptr %i.y, align 4, !tbaa !16
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.aq
  %i.at = load float, ptr %i.z, align 4, !tbaa !16
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, %i.at
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.ap ; 3 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, f0x3C111AA7
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_ioppr_compensate_middle_grey.exit.us
  %i.ax = fmul reassoc nsz arcp contract afn float %i.av, f0x40F92F69
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, f0x3E0D3DCB
  br label %dt_ioppr_compensate_middle_grey.exit.us.1

bb.f:                                             ; preds = %dt_ioppr_compensate_middle_grey.exit.us
  %i.az = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.av) #25
  br label %dt_ioppr_compensate_middle_grey.exit.us.1

dt_ioppr_compensate_middle_grey.exit.us.1:        ; preds = %bb.f, %bb.e
  %i.ba = phi reassoc nsz arcp contract afn float [ %i.az, %bb.f ], [ %i.ay, %bb.e ]
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 1.160000e+00
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, -1.600000e-01 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bc, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.bg = load float, ptr %i.x, align 4, !tbaa !16
  %i.bh = load float, ptr %i.y, align 4, !tbaa !16
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = load float, ptr %i.z, align 4, !tbaa !16
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.bf ; 3 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt float %i.bl, f0x3C111AA7
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %dt_ioppr_compensate_middle_grey.exit.us.1
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, f0x40F92F69
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, f0x3E0D3DCB
  br label %dt_ioppr_compensate_middle_grey.exit.us.2

bb.h:                                             ; preds = %dt_ioppr_compensate_middle_grey.exit.us.1
  %i.bp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bl) #25
  br label %dt_ioppr_compensate_middle_grey.exit.us.2

dt_ioppr_compensate_middle_grey.exit.us.2:        ; preds = %bb.h, %bb.g
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.bp, %bb.h ], [ %i.bo, %bb.g ]
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, 1.160000e+00
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, -1.600000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.bu = load i32, ptr %i.bt, align 64, !tbaa !86 ; 3 uses
  %i.bv = load float, ptr %0, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.bw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bv, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bx, ptr %i.e, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull readonly %i.e, ptr noundef %i.d, ptr noundef nonnull readonly %i.u, ptr noundef nonnull readonly %i.t, i32 noundef %i.bu)
  %i.by = load float, ptr %i.d, align 16, !tbaa !16
  %i.bz = load float, ptr %i.v, align 4, !tbaa !16
  %i.ca = load float, ptr %i.w, align 8, !tbaa !16
  %i.cb = load float, ptr %i.x, align 4, !tbaa !16
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.by
  %i.cd = load float, ptr %i.y, align 4, !tbaa !16
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.bz
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cc
  %i.cg = load float, ptr %i.z, align 4, !tbaa !16
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.ca
  %i.ci = fadd reassoc nsz arcp contract afn float %i.cf, %i.ch ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, f0x3C111AA7
  br i1 %i.cj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.split
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ci, f0x40F92F69
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, f0x3E0D3DCB
  br label %dt_ioppr_compensate_middle_grey.exit

bb.j:                                             ; preds = %.preheader.split
  %i.cm = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ci) #25
  br label %dt_ioppr_compensate_middle_grey.exit

dt_ioppr_compensate_middle_grey.exit:             ; preds = %bb.i, %bb.j
  %i.cn = phi reassoc nsz arcp contract afn float [ %i.cm, %bb.j ], [ %i.cl, %bb.i ]
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, 1.160000e+00
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, -1.600000e-01 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  store float %i.cp, ptr %1, align 4, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.cs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cr, i64 0
end_hunk_2
begin_hunk_3_@dt_draw_curve_calc_value:bb.a
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec42, %wide.trip.count
  br i1 %cmp.n48, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.t = load i32, ptr %0, align 8, !tbaa !142
  %i.u = call ptr @interpolate_set(i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.t) #24 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !298
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !299
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !296

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %i.c, align 4, !tbaa !143
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i32, ptr %0, align 8, !tbaa !142
  %i.ae = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.ac, ptr noundef nonnull %i.a, float noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, i32 noundef %i.ad) #24
  call void @free(ptr noundef nonnull %i.u) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.026 = phi nsz float [ %i.ae, %bb.b ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %.026, %i.ag
  %.026. = select reassoc nsz arcp contract afn i1 %i.ah, float %.026, float %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !301 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %.026., %i.aj
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ak, float %.026., float %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret float %spec.select
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item_target(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_move_point_internal(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !41  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds [160 x i8], ptr %i.b, i64 %i.g ; 6 uses
  %i.i = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %1, i32 noundef %4) #24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !130
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.l
  %i.n = insertelement <2 x float> poison, float %i.i, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = insertelement <2 x float> poison, float %2, i64 0
  %i.q = insertelement <2 x float> %i.p, float %3, i64 1
  %i.r = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.q
  %i.s = load <2 x float>, ptr %i.m, align 4, !tbaa !16
  %i.t = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.r ; 3 uses
  %i.u = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.t, zeroinitializer
  %i.v = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.t, splat (float 1.000000e+00)
  %i.w = select <2 x i1> %i.v, <2 x float> %i.t, <2 x float> splat (float 1.000000e+00)
  %i.x = select <2 x i1> %i.u, <2 x float> zeroinitializer, <2 x float> %i.w ; 5 uses
  tail call void @gtk_widget_queue_draw(ptr noundef %1) #24
  %i.y = load i32, ptr %i.j, align 8, !tbaa !130  ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.g
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %i.ac = icmp sgt i32 %i.y, 0                    ; 2 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24
  %i.ah = extractelement <2 x float> %i.x, i64 0
  %i.ai = fsub reassoc nsz arcp contract afn float %i.ah, %i.ag
  %i.aj = fcmp reassoc nsz arcp contract afn ugt float %i.ai, 2.500000e-03
  br i1 %i.aj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = icmp slt i32 %i.y, %i.ak
  br i1 %i.al, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.am = sext i32 %i.y to i64
  %i.an = getelementptr [8 x i8], ptr %i.h, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !24
  %i.aq = extractelement <2 x float> %i.x, i64 0
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq
  %i.as = fcmp reassoc nsz arcp contract afn ugt float %i.ar, 2.500000e-03
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not.old = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ] ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %i.y to i64
  %i.au = getelementptr [8 x i8], ptr %i.h, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !24
  %i.ax = extractelement <2 x float> %i.x, i64 0
  %i.ay = fcmp reassoc nsz arcp contract afn ult float %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %_sanity_check.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = add nsw i32 %i.ab, -1
  %i.ba = icmp slt i32 %i.y, %i.az
  br i1 %i.ba, label %bb.i, label %_sanity_check.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = sext i32 %i.y to i64                    ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.h, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !24
  %i.bf = extractelement <2 x float> %i.x, i64 0
  %i.bg = fcmp reassoc nsz arcp contract afn ole float %i.be, %i.bf
  %or.cond = or i1 %.not.old, %i.bg
  br i1 %or.cond, label %_sanity_check.exit.thread, label %bb.j

_sanity_check.exit:                               ; preds = %bb.h
  br i1 %.not.old, label %_sanity_check.exit.thread, label %_sanity_check.exit._crit_edge

_sanity_check.exit._crit_edge:                    ; preds = %_sanity_check.exit
  %.pre = sext i32 %i.y to i64
  br label %bb.j

bb.j:                                             ; preds = %_sanity_check.exit._crit_edge, %bb.i
  %.pre-phi = phi i64 [ %.pre, %_sanity_check.exit._crit_edge ], [ %i.bb, %bb.i ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre-phi
  store <2 x float> %i.x, ptr %i.bh, align 4, !tbaa !16
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.bj = getelementptr inbounds [32 x i8], ptr %1, i64 %i.g
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.bi, ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.bj) #24
  br label %_sanity_check.exit.thread

_sanity_check.exit.thread:                        ; preds = %bb.i, %bb.g, %bb.j, %_sanity_check.exit
  ret void
}

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #3

declare float @dt_accel_get_speed_multiplier(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_deltas(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_delta(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }

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
!11 = !{!8, !8, i64 0}
!12 = !{!"dt_iop_rgbcurve_params_t", !7, i64 0, !7, i64 480, !7, i64 492, !8, i64 504, !8, i64 508, !8, i64 512}
!13 = !{!12, !8, i64 508}
!14 = !{!12, !8, i64 512}
!15 = !{!"float", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"p1 _ZTS11dt_action_t", !17, i64 0}
!20 = !{!"dt_action_t", !8, i64 0, !18, i64 8, !18, i64 16, !17, i64 24, !19, i64 32, !19, i64 40}
!21 = !{!"p1 _ZTS8_GModule", !17, i64 0}
!22 = !{!"dt_iop_module_so_t", !20, i64 0, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !17, i64 376, !17, i64 384, !17, i64 392, !17, i64 400, !17, i64 408, !17, i64 416, !17, i64 424, !17, i64 432, !17, i64 440, !17, i64 448, !17, i64 456, !17, i64 464, !17, i64 472, !17, i64 480, !21, i64 488, !7, i64 496, !17, i64 520, !8, i64 528, !17, i64 536, !8, i64 544, !8, i64 548}
!23 = !{!"dt_iop_rgbcurve_node_t", !15, i64 0, !15, i64 4}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !15, i64 4}
!26 = !{!"p1 int", !17, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !27, i64 8, !8, i64 16, !8, i64 20}
!29 = !{!"p1 _ZTS12dt_develop_t", !17, i64 0}
!30 = !{!"dt_pthread_mutex_t", !7, i64 0}
!31 = !{!"p1 _ZTS25dt_develop_blend_params_t", !17, i64 0}
!32 = !{!"p1 _ZTS11_GHashTable", !17, i64 0}
!33 = !{!"", !32, i64 0, !32, i64 8}
!34 = !{!"p1 _ZTS15dt_iop_module_t", !17, i64 0}
!35 = !{!"", !34, i64 0, !8, i64 8}
!36 = !{!"", !33, i64 0, !35, i64 16}
!37 = !{!"p1 _ZTS10_GtkWidget", !17, i64 0}
!38 = !{!"p1 _ZTS7_GSList", !17, i64 0}
!39 = !{!"p1 _ZTS18dt_iop_module_so_t", !17, i64 0}
!40 = !{!"dt_iop_module_t", !8, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !17, i64 376, !17, i64 384, !17, i64 392, !17, i64 400, !17, i64 408, !17, i64 416, !17, i64 424, !17, i64 432, !17, i64 440, !21, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !26, i64 608, !28, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !29, i64 664, !8, i64 672, !8, i64 676, !17, i64 680, !17, i64 688, !8, i64 696, !17, i64 704, !30, i64 712, !17, i64 752, !17, i64 760, !31, i64 768, !31, i64 776, !17, i64 784, !36, i64 792, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !8, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !38, i64 912, !38, i64 920, !37, i64 928, !37, i64 936, !8, i64 944, !39, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !37, i64 1096, !17, i64 1104, !8, i64 1112}
!41 = !{!40, !17, i64 704}
!42 = !{!40, !17, i64 680}
!43 = !{!"p1 _ZTS7_GtkBox", !17, i64 0}
!44 = !{!"p1 _ZTS15_GtkDrawingArea", !17, i64 0}
!45 = !{!"p1 _ZTS12_GtkNotebook", !17, i64 0}
!46 = !{!"double", !7, i64 0}
!47 = !{!"dt_iop_rgbcurve_gui_data_t", !7, i64 0, !7, i64 24, !7, i64 36, !43, i64 48, !44, i64 56, !37, i64 64, !45, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !8, i64 104, !46, i64 112, !46, i64 120, !8, i64 128, !7, i64 132, !7, i64 1156, !7, i64 2180, !37, i64 3208, !37, i64 3216, !15, i64 3224, !15, i64 3228, !15, i64 3232}
!48 = !{!47, !37, i64 64}
!49 = !{!47, !8, i64 104}
!50 = !{!47, !45, i64 72}
!51 = !{!12, !8, i64 504}
!52 = !{!47, !37, i64 3216}
!53 = !{!47, !37, i64 3208}
!54 = !{!40, !29, i64 664}
!55 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !17, i64 0}
!56 = !{!"short", !7, i64 0}
!57 = !{!"", !56, i64 0, !56, i64 2}
!58 = !{!"", !8, i64 0, !7, i64 16}
!59 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !57, i64 48, !58, i64 64, !7, i64 96, !8, i64 112}
!60 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!61 = !{!"dt_image_geoloc_t", !46, i64 0, !46, i64 8, !46, i64 16}
!62 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!63 = !{!"p1 _ZTS6_GList", !17, i64 0}
!64 = !{!"p1 _ZTS16dt_cache_entry_t", !17, i64 0}
!65 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !27, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !15, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !27, i64 1448, !27, i64 1456, !27, i64 1464, !27, i64 1472, !8, i64 1480, !59, i64 1488, !7, i64 1616, !18, i64 1656, !8, i64 1664, !8, i64 1668, !60, i64 1672, !61, i64 1680, !62, i64 1704, !56, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !15, i64 1756, !15, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !63, i64 1856, !64, i64 1864, !8, i64 1872, !8, i64 1876}
!66 = !{!"p1 _ZTS15dt_masks_form_t", !17, i64 0}
!67 = !{!"p1 _ZTS19dt_masks_form_gui_t", !17, i64 0}
!68 = !{!"dt_dev_proxy_exposure_t", !34, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!69 = !{!"p1 _ZTS15dt_lib_module_t", !17, i64 0}
!70 = !{!"", !69, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64}
!71 = !{!"", !69, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!72 = !{!"", !68, i64 0, !34, i64 40, !70, i64 48, !71, i64 120}
!73 = !{!"dt_dev_chroma_t", !34, i64 0, !34, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!74 = !{!"", !34, i64 0, !34, i64 8, !17, i64 16}
!75 = !{!"", !37, i64 0, !37, i64 8, !8, i64 16, !8, i64 20, !15, i64 24, !15, i64 28, !8, i64 32}
!76 = !{!"", !37, i64 0, !37, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !15, i64 28}
!77 = !{!"", !37, i64 0, !37, i64 8}
!78 = !{!"", !37, i64 0, !8, i64 8}
!79 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!80 = !{!"dt_dev_viewport_t", !37, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !55, i64 80, !37, i64 88, !29, i64 96}
!81 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 16, !46, i64 24, !46, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !46, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !34, i64 88, !55, i64 96, !65, i64 112, !8, i64 2000, !8, i64 2004, !30, i64 2008, !8, i64 2048, !63, i64 2056, !8, i64 2064, !34, i64 2072, !8, i64 2080, !63, i64 2088, !63, i64 2096, !8, i64 2104, !63, i64 2112, !63, i64 2120, !26, i64 2128, !26, i64 2136, !8, i64 2144, !8, i64 2148, !63, i64 2152, !66, i64 2160, !67, i64 2168, !63, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !15, i64 2196, !15, i64 2200, !34, i64 2208, !8, i64 2216, !72, i64 2224, !73, i64 2384, !74, i64 2496, !75, i64 2520, !76, i64 2560, !77, i64 2592, !78, i64 2608, !79, i64 2624, !37, i64 2664, !37, i64 2672, !80, i64 2680, !80, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !63, i64 2904, !8, i64 2912, !29, i64 2920}
!82 = !{!81, !63, i64 2088}
!83 = !{!"dt_iop_order_iccprofile_info_t", !8, i64 0, !7, i64 4, !8, i64 516, !7, i64 576, !7, i64 640, !8, i64 704, !7, i64 712, !7, i64 736, !7, i64 768, !7, i64 816, !8, i64 852, !15, i64 856, !7, i64 896, !7, i64 960, !7, i64 1024, !7, i64 1048}
!84 = !{!83, !8, i64 852}
!85 = !{!40, !8, i64 660}
!86 = !{!83, !8, i64 704}
!87 = !{!47, !37, i64 88}
!88 = !{!40, !17, i64 688}
!89 = !{!"dt_codepath_t", !8, i64 0}
!90 = !{!"p1 _ZTS11_JsonParser", !17, i64 0}
!91 = !{!"p1 _ZTS9dt_conf_t", !17, i64 0}
!92 = !{!"p1 _ZTS8dt_lib_t", !17, i64 0}
!93 = !{!"p1 _ZTS17dt_view_manager_t", !17, i64 0}
!94 = !{!"p1 _ZTS12dt_control_t", !17, i64 0}
!95 = !{!"p1 _ZTS19dt_control_signal_t", !17, i64 0}
!96 = !{!"p1 _ZTS12dt_gui_gtk_t", !17, i64 0}
!97 = !{!"p1 _ZTS17dt_mipmap_cache_t", !17, i64 0}
!98 = !{!"p1 _ZTS16dt_image_cache_t", !17, i64 0}
!99 = !{!"p1 _ZTS12dt_bauhaus_t", !17, i64 0}
!100 = !{!"p1 _ZTS13dt_database_t", !17, i64 0}
!101 = !{!"p1 _ZTS14dt_pwstorage_t", !17, i64 0}
!102 = !{!"p1 _ZTS11dt_camctl_t", !17, i64 0}
!103 = !{!"p1 _ZTS15dt_collection_t", !17, i64 0}
!104 = !{!"p1 _ZTS14dt_selection_t", !17, i64 0}
!105 = !{!"p1 _ZTS11dt_points_t", !17, i64 0}
!106 = !{!"p1 _ZTS12dt_imageio_t", !17, i64 0}
!107 = !{!"p1 _ZTS11dt_opencl_t", !17, i64 0}
!108 = !{!"p1 _ZTS9dt_dbus_t", !17, i64 0}
!109 = !{!"p1 _ZTS9dt_undo_t", !17, i64 0}
!110 = !{!"p1 _ZTS16dt_colorspaces_t", !17, i64 0}
!111 = !{!"p1 _ZTS9dt_l10n_t", !17, i64 0}
!112 = !{!"p1 _ZTS9lua_State", !17, i64 0}
!113 = !{!"_Bool", !7, i64 0}
!114 = !{!"p1 _ZTS10_GMainLoop", !17, i64 0}
!115 = !{!"p1 _ZTS13_GMainContext", !17, i64 0}
!116 = !{!"p1 _ZTS12_GThreadPool", !17, i64 0}
!117 = !{!"p1 _ZTS12_GAsyncQueue", !17, i64 0}
!118 = !{!"", !112, i64 0, !30, i64 8, !7, i64 48, !113, i64 96, !113, i64 97, !114, i64 104, !115, i64 112, !116, i64 120, !117, i64 128, !117, i64 136, !117, i64 144}
!119 = !{!"p1 _ZTS10_GTimeZone", !17, i64 0}
!120 = !{!"p1 _ZTS10_GDateTime", !17, i64 0}
!121 = !{!"dt_sys_resources_t", !27, i64 0, !27, i64 8, !26, i64 16, !26, i64 24, !8, i64 32}
!122 = !{!"dt_backthumb_t", !46, i64 0, !46, i64 8, !8, i64 16, !8, i64 20}
!123 = !{!"dt_gimp_t", !8, i64 0, !18, i64 8, !18, i64 16, !8, i64 24, !8, i64 28}
!124 = !{!"dt_splash_t", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !8, i64 32}
!125 = !{!"darktable_t", !89, i64 0, !8, i64 4, !8, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !90, i64 48, !91, i64 56, !29, i64 64, !92, i64 72, !93, i64 80, !94, i64 88, !95, i64 96, !96, i64 104, !97, i64 112, !98, i64 120, !99, i64 128, !100, i64 136, !101, i64 144, !102, i64 152, !103, i64 160, !104, i64 168, !105, i64 176, !106, i64 184, !107, i64 192, !108, i64 200, !109, i64 208, !110, i64 216, !111, i64 224, !7, i64 232, !30, i64 2792, !30, i64 2832, !30, i64 2872, !30, i64 2912, !30, i64 2952, !30, i64 2992, !18, i64 3032, !18, i64 3040, !18, i64 3048, !18, i64 3056, !18, i64 3064, !18, i64 3072, !18, i64 3080, !18, i64 3088, !18, i64 3096, !18, i64 3104, !18, i64 3112, !18, i64 3120, !18, i64 3128, !118, i64 3136, !63, i64 3288, !46, i64 3296, !63, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !119, i64 3520, !120, i64 3528, !121, i64 3536, !122, i64 3576, !123, i64 3600, !124, i64 3632, !8, i64 3672}
!126 = !{!125, !29, i64 64}
!127 = !{!40, !37, i64 824}
!128 = !{!"llvm.loop.isvectorized", i32 1}
!129 = !{!"llvm.loop.unroll.runtime.disable"}
!130 = !{!47, !8, i64 128}
!131 = !{!47, !15, i64 3232}
!132 = !{!47, !37, i64 96}
!133 = !{!47, !44, i64 56}
!134 = !{!46, !46, i64 0}
!135 = !{!"", !8, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !7, i64 20, !7, i64 24}
!136 = !{!"p1 short", !17, i64 0}
!137 = !{!"", !8, i64 0, !8, i64 4, !136, i64 8}
!138 = !{!"dt_draw_curve_t", !135, i64 0, !137, i64 184}
!139 = !{!138, !8, i64 184}
!140 = !{!138, !8, i64 188}
!141 = !{!138, !136, i64 192}
!142 = !{!138, !8, i64 0}
!143 = !{!138, !7, i64 20}
!144 = !{!"p1 _ZTS15dt_draw_curve_t", !17, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!125, !96, i64 104}
!147 = !{!"p1 _ZTS7dt_ui_t", !17, i64 0}
!148 = !{!"dt_gui_widgets_t", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!149 = !{!"dt_gui_scrollbars_t", !37, i64 0, !37, i64 8, !8, i64 16}
!150 = !{!"p1 _ZTS14_cairo_surface", !17, i64 0}
!151 = !{!"dt_gui_gtk_t", !147, i64 0, !148, i64 8, !149, i64 56, !150, i64 80, !8, i64 88, !18, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !46, i64 1384, !46, i64 1392, !46, i64 1400, !46, i64 1408, !37, i64 1416, !46, i64 1424, !46, i64 1432, !46, i64 1440, !46, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!152 = !{!151, !46, i64 1432}
!153 = !{!56, !56, i64 0}
!154 = !{!47, !15, i64 3224}
!155 = !{!47, !15, i64 3228}
!156 = !{!81, !8, i64 2892}
!157 = !{!"p1 _ZTS10_GdkWindow", !17, i64 0}
!158 = !{!"p1 double", !17, i64 0}
!159 = !{!"p1 _ZTS10_GdkDevice", !17, i64 0}
!160 = !{!47, !46, i64 112}
!161 = !{!47, !46, i64 120}
end_hunk_3
