Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colormapping?download=true
inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@gui_init:bb.a
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
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  br label %.preheader

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @cairo_destroy(ptr noundef %i.y) #21
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.u, double noundef 0.000000e+00, double noundef 0.000000e+00) #21
  call void @cairo_paint(ptr noundef %1) #21
  call void @cairo_surface_destroy(ptr noundef %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 1

.preheader:                                       ; preds = %.preheader60, %.preheader
  %.05562 = phi i32 [ -1, %.preheader60 ], [ %i.bo, %.preheader ] ; 2 uses
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %.05562 to float ; 3 uses
  %i.bo = add nsw i32 %.05562, 1                  ; 3 uses
  %i.bp = mul nsw i32 %i.bo, %i.z
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.bp to double
  %i.br = fmul reassoc nnan nsz arcp contract afn double %i.bq, f0x3FD5555555555555 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !192
  %i.bs = load float, ptr %i.bk, align 4, !tbaa !82
  %i.bt = load float, ptr %i.bm, align 4, !tbaa !82
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = load float, ptr %i.bj, align 4, !tbaa !82
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bv, %i.bs
  %i.bx = load float, ptr %i.bl, align 4, !tbaa !82
  %i.by = fadd reassoc nsz arcp contract afn float %i.bu, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.by, i64 1
  %i.cb = fpext reassoc nsz arcp contract afn <2 x float> %i.ca to <2 x double>
  store <2 x double> %i.cb, ptr %i.at, align 8, !tbaa !193
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !97
  call void @cmsDoTransform(ptr noundef %i.cc, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.cd = load double, ptr %i.a, align 16, !tbaa !193
  %i.ce = load double, ptr %i.av, align 8, !tbaa !193
  %i.cf = load double, ptr %i.aw, align 16, !tbaa !193
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.cd, double noundef %i.ce, double noundef %i.cf) #21
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1432
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !190
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, 5.000000e-01 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn double %i.ay, %i.cj
  %i.cl = fsub reassoc nsz arcp contract afn double %i.ba, %i.cj
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.bf, double noundef %i.br, double noundef %i.ck, double noundef %i.cl) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !192
  %i.cm = load <2 x float>, ptr %i.bj, align 4, !tbaa !82
  %i.cn = load <2 x float>, ptr %i.bk, align 4, !tbaa !82
  %i.co = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bn, i64 1
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cm
  %i.cr = fpext reassoc nsz arcp contract afn <2 x float> %i.cq to <2 x double>
  store <2 x double> %i.cr, ptr %i.at, align 8, !tbaa !193
  %i.cs = load ptr, ptr %i.au, align 8, !tbaa !97
  call void @cmsDoTransform(ptr noundef %i.cs, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.ct = load double, ptr %i.a, align 16, !tbaa !193
  %i.cu = load double, ptr %i.av, align 8, !tbaa !193
  %i.cv = load double, ptr %i.aw, align 16, !tbaa !193
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.ct, double noundef %i.cu, double noundef %i.cv) #21
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1432
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !190
  %i.cz = fmul reassoc nsz arcp contract afn double %i.cy, 5.000000e-01 ; 2 uses
  %i.da = fsub reassoc nsz arcp contract afn double %i.ay, %i.cz
  %i.db = fsub reassoc nsz arcp contract afn double %i.ba, %i.cz
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.ay, double noundef %i.br, double noundef %i.da, double noundef %i.db) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !192
  %i.dc = load float, ptr %i.bk, align 4, !tbaa !82
  %i.dd = load float, ptr %i.bm, align 4, !tbaa !82
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bn
  %i.df = load <2 x float>, ptr %i.bj, align 4, !tbaa !82
  %i.dg = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.de, i64 1
  %i.di = fadd reassoc nsz arcp contract afn <2 x float> %i.dh, %i.df
  %i.dj = fpext reassoc nsz arcp contract afn <2 x float> %i.di to <2 x double>
  store <2 x double> %i.dj, ptr %i.at, align 8, !tbaa !193
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !97
  call void @cmsDoTransform(ptr noundef %i.dk, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.dl = load double, ptr %i.a, align 16, !tbaa !193
  %i.dm = load double, ptr %i.av, align 8, !tbaa !193
  %i.dn = load double, ptr %i.aw, align 16, !tbaa !193
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.dl, double noundef %i.dm, double noundef %i.dn) #21
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1432
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !190
  %i.dr = fmul reassoc nsz arcp contract afn double %i.dq, 5.000000e-01 ; 2 uses
  %i.ds = fsub reassoc nsz arcp contract afn double %i.ay, %i.dr
  %i.dt = fsub reassoc nsz arcp contract afn double %i.ba, %i.dr
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.bi, double noundef %i.br, double noundef %i.ds, double noundef %i.dt) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond.not = icmp eq i32 %i.bo, 2
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  call void @cairo_translate(ptr noundef %i.y, double noundef %i.bc, double noundef 0.000000e+00) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.du = load i32, ptr %i.aa, align 4, !tbaa !81
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next, %i.dv
  br i1 %i.dw, label %.preheader60, label %._crit_edge
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

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #21 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.ar

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.ag = mul i64 %i.x, %i.u
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.aa, ptr noundef %i.af, i64 noundef %i.ag) #21
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #21 ; 0 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !74  ; 2 uses
  %i.aj = and i32 %i.ai, 8
  %.not73 = icmp eq i32 %i.aj, 0                  ; 2 uses
  br i1 %.not73, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %i.ak = icmp sgt i32 %i.r, 0
  %i.al = icmp sgt i32 %i.p, 0
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %.preheader47.preheader.i, label %.preheader46.i

.preheader47.preheader.i:                         ; preds = %bb.g
  %i.am = zext nneg i32 %i.p to i64               ; 3 uses
  %wide.trip.count56.i = zext nneg i32 %i.r to i64
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i32 %i.p, 1
  %unroll_iter = and i64 %i.am, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.p to i1
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %._crit_edge.i, %.preheader47.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.preheader47.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv53.i, %i.am  ; 3 uses
  br i1 %i.an, label %.epil.preheader, label %.preheader47.i.new

.preheader46.i:                                   ; preds = %._crit_edge.i, %bb.g
  %load_initial116 = load i32, ptr %i.a, align 16
  br label %bb.p

._crit_edge.i.unr-lcssa:                          ; preds = %bb.o
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader47.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader47.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.ap = add nuw nsw i64 %indvars.iv.i.epil.init, %i.ao
  %i.aq = shl i64 %i.ap, 2
  %i.ar = and i64 %i.aq, 4294967292
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load float, ptr %i.as, align 16, !tbaa !82
end_hunk_0
