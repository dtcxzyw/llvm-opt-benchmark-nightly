Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_draw_location:bb.a
  %i.bp = fmul reassoc nsz arcp contract afn <4 x float> %i.bo, splat (float 5.000000e-01) ; 2 uses
  %i.bq = fsub reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bp ; 3 uses
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bp ; 3 uses
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> %i.br, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.bt = extractelement <4 x float> %i.bq, i64 0
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 1.800000e+02
  %i.bv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>
  %i.bw = select <4 x i1> %i.bv, <4 x float> <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>, <4 x float> %i.bs ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0
  %i.by = select i1 %i.bu, float 1.800000e+02, float %i.bx
  %i.bz = extractelement <4 x float> %i.br, i64 1
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 1.800000e+02
  %i.cb = extractelement <4 x float> %i.bw, i64 1
  %i.cc = select i1 %i.ca, float 1.800000e+02, float %i.cb
  %i.cd = extractelement <4 x float> %i.br, i64 2
  %i.ce = fcmp reassoc nsz arcp contract afn ogt float %i.cd, 9.000000e+01
  %i.cf = extractelement <4 x float> %i.bw, i64 2
  %i.cg = select i1 %i.ce, float 9.000000e+01, float %i.cf
  %i.ch = extractelement <4 x float> %i.bq, i64 3
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 9.000000e+01
  %i.cj = extractelement <4 x float> %i.bw, i64 3
  %i.ck = select i1 %i.ci, float 9.000000e+01, float %i.cj
  %.075.i = load ptr, ptr %i.q, align 8, !tbaa !140 ; 2 uses
  %.not76.i = icmp eq ptr %.075.i, null
  br i1 %.not76.i, label %_view_map_add_polygon_location.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.thread38, %bb.n
  %.080.i = phi ptr [ %.0.i, %bb.n ], [ %.075.i, %.thread38 ] ; 2 uses
  %.05079.i = phi float [ %.1.i, %bb.n ], [ 0.000000e+00, %.thread38 ] ; 4 uses
  %.05178.i = phi float [ %.152.i, %bb.n ], [ 0.000000e+00, %.thread38 ] ; 4 uses
  %.05377.i = phi i32 [ %i.dh, %bb.n ], [ 0, %.thread38 ] ; 2 uses
  %i.cl = load ptr, ptr %.080.i, align 8, !tbaa !142 ; 4 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !172 ; 5 uses
  %i.cn = fcmp reassoc nsz arcp contract afn ugt float %i.cm, %i.cg
  %i.co = fcmp reassoc nsz arcp contract afn ult float %i.cm, %i.ck
  %or.cond.i = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !173 ; 4 uses
  %i.cr = fcmp reassoc nsz arcp contract afn ult float %i.cq, %i.by
  %i.cs = fcmp reassoc nsz arcp contract afn ugt float %i.cq, %i.cc
  %or.cond66.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond66.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = fsub reassoc nsz arcp contract afn float %i.cm, %.05178.i
  %i.cu = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ct)
  %i.cv = fcmp reassoc nsz arcp contract afn ogt float %i.cu, %i.aw
  br i1 %i.cv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = fsub reassoc nsz arcp contract afn float %i.cq, %.05079.i
  %i.cx = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp reassoc nsz arcp contract afn ogt float %i.cx, %i.ay
  br i1 %i.cy, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cz = call ptr @osm_gps_map_point_new_degrees(float noundef %i.cm, float noundef %i.cq) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ag, ptr noundef %i.cz) #23
  %i.da = load float, ptr %i.cl, align 4, !tbaa !172
  %i.db = load float, ptr %i.cp, align 4, !tbaa !173
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %.lr.ph.i34
  %i.dc = srem i32 %.05377.i, %i.bb
  %.not63.i = icmp eq i32 %i.dc, 0
  br i1 %.not63.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !173
  %i.df = call ptr @osm_gps_map_point_new_degrees(float noundef %i.cm, float noundef %i.de) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ag, ptr noundef %i.df) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.152.i = phi nsz float [ %i.da, %bb.k ], [ %.05178.i, %bb.j ], [ %.05178.i, %bb.l ], [ %.05178.i, %bb.m ]
  %.1.i = phi nsz float [ %i.db, %bb.k ], [ %.05079.i, %bb.j ], [ %.05079.i, %bb.l ], [ %.05079.i, %bb.m ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.080.i, i64 8
  %i.dh = add nuw nsw i32 %.05377.i, 1
  %.0.i = load ptr, ptr %i.dg, align 8, !tbaa !140 ; 2 uses
  %.not.i35 = icmp eq ptr %.0.i, null
  br i1 %.not.i35, label %_view_map_add_polygon_location.exit, label %.lr.ph.i34

_view_map_add_polygon_location.exit:              ; preds = %bb.n, %.thread38
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.70, ptr noundef %i.ag, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null) #23
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !117
  call void @osm_gps_map_polygon_add(ptr noundef %i.di, ptr noundef %i.af) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.c, %_view_map_add_polygon_location.exit
  %.0 = phi ptr [ %i.af, %_view_map_add_polygon_location.exit ], [ %i.p, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_draw_location(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct._cairo_matrix, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !295
  %i.g = fptrunc reassoc nsz arcp contract afn double %i.f to float ; 2 uses
  %i.h = load double, ptr %3, align 8, !tbaa !296
  %i.i = fptrunc reassoc nsz arcp contract afn double %i.h to float ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !175
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float ; 2 uses
  %i.m = tail call ptr @osm_gps_map_point_new_degrees(float noundef %i.g, float noundef %i.i) #23 ; 2 uses
  %i.n = fadd reassoc nsz arcp contract afn float %i.l, %i.g
  %i.o = fadd reassoc nsz arcp contract afn float %i.l, %i.i
  %i.p = tail call ptr @osm_gps_map_point_new_degrees(float noundef %i.n, float noundef %i.o) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.r, ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.s, ptr noundef %i.p, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  call void @osm_gps_map_point_free(ptr noundef %i.m) #23
  call void @osm_gps_map_point_free(ptr noundef %i.p) #23
  %i.t = load i32, ptr %i.c, align 4, !tbaa !131
  %i.u = load i32, ptr %i.a, align 4, !tbaa !131
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = call i32 @llvm.abs.i32(i32 %i.v, i1 true) ; 3 uses
  %i.x = uitofp nneg i32 %i.w to float            ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.y = fpext fast float %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !176
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !297
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ab, %i.ad
  %i.af = load double, ptr %i.j, align 8, !tbaa !175
  %i.ag = fdiv reassoc nsz arcp contract afn double %i.ae, %i.af ; 3 uses
  %i.ah = fptrunc reassoc nsz arcp contract afn double %i.ag to float ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !181
  switch i32 %i.aj, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp samesign ugt i32 %i.w, 1024
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.600000e+01
  %i.am = select reassoc nsz arcp contract afn i1 %i.al, float 1.600000e+01, float %i.x
  %i.an = fptosi float %i.am to i32
  %i.ao = select i1 %i.ak, i32 1024, i32 %i.an    ; 6 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.ag, f0x4090000010000000
  %i.aq = fcmp reassoc nsz arcp contract afn olt float %i.ah, 1.600000e+01
  %i.ar = select reassoc nsz arcp contract afn i1 %i.aq, float 1.600000e+01, float %i.ah
  %i.as = fptosi float %i.ar to i32
  %i.at = select i1 %i.ap, i32 1024, i32 %i.as    ; 4 uses
  %i.au = icmp sgt i32 %i.ao, %i.at
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.av, %i.aw
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  br label %_draw_ellipse.exit

bb.d:                                             ; preds = %bb.b
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.az, %i.ba
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  br label %_draw_ellipse.exit

_draw_ellipse.exit:                               ; preds = %bb.c, %bb.d
  %i.bd = phi double [ %i.ay, %bb.c ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.be = phi double [ 1.000000e+00, %bb.c ], [ %i.bc, %bb.d ] ; 2 uses
  %i.bf = call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to double
  %i.bh = fmul reassoc nnan nsz arcp contract afn double %i.bg, 2.000000e+00
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1432
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !102 ; 3 uses
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bh, %i.bk
  %i.bm = fptosi double %i.bl to i32              ; 5 uses
  %.not.i = icmp ne i32 %4, 0
  %6 = add nuw nsw i32 %4, 1
  %i.bn = uitofp nneg i32 %6 to double
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bk, %i.bn
  %i.bp = fptosi double %i.bo to i32
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bk, 1.600000e+01
  %i.br = fptosi double %i.bq to i32
  %i.bs = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bm, i32 noundef %i.bm) #23 ; 3 uses
  %i.bt = call ptr @cairo_create(ptr noundef %i.bs) #23 ; 30 uses
  call void @cairo_set_source_rgba(ptr noundef %i.bt, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.bt) #23
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.bp to double ; 4 uses
  call void @cairo_set_line_width(ptr noundef %i.bt, double noundef %i.bu) #23
  %i.bv = icmp eq i32 %i.ao, 1024
  %i.bw = icmp eq i32 %i.ao, 16
  %or.cond.i = or i1 %i.bv, %i.bw
  %i.bx = and i1 %.not.i, %or.cond.i
  %i.by = select i1 %i.bx, i32 36, i32 34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @cairo_get_matrix(ptr noundef %i.bt, ptr noundef nonnull %5) #23
  %i.bz = sitofp reassoc nsz arcp contract afn i32 %i.bm to double ; 2 uses
  %i.ca = fmul reassoc nnan nsz arcp contract afn double %i.bz, 5.000000e-01 ; 16 uses
  call void @cairo_translate(ptr noundef %i.bt, double noundef %i.ca, double noundef %i.ca) #23
  call void @cairo_scale(ptr noundef %i.bt, double noundef %i.be, double noundef %i.bd) #23
  %i.cb = fmul reassoc nnan nsz arcp contract afn double %i.bz, -5.000000e-01 ; 4 uses
  call void @cairo_translate(ptr noundef %i.bt, double noundef %i.cb, double noundef %i.cb) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.bt, i32 noundef 35) #23
  %i.cc = fsub reassoc nsz arcp contract afn double %i.ca, %i.bu ; 4 uses
  %i.cd = fsub reassoc nsz arcp contract afn double %i.cc, %i.bu
  call void @cairo_arc(ptr noundef %i.bt, double noundef %i.ca, double noundef %i.ca, double noundef %i.cd, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #23
  call void @cairo_set_matrix(ptr noundef %i.bt, ptr noundef nonnull %5) #23
  call void @cairo_stroke(ptr noundef %i.bt) #23
  %i.ce = fadd reassoc nsz arcp contract afn double %i.ca, %i.bu ; 2 uses
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.br to double ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn double %i.ca, %i.cf ; 4 uses
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.ce, double noundef %i.cg) #23
  %i.ch = fadd reassoc nsz arcp contract afn double %i.ca, %i.cf ; 4 uses
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ce, double noundef %i.ch) #23
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cg, double noundef %i.cc) #23
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ch, double noundef %i.cc) #23
  call void @cairo_stroke(ptr noundef %i.bt) #23
  call void @cairo_get_matrix(ptr noundef %i.bt, ptr noundef nonnull %5) #23
  call void @cairo_translate(ptr noundef %i.bt, double noundef %i.ca, double noundef %i.ca) #23
  call void @cairo_scale(ptr noundef %i.bt, double noundef %i.be, double noundef %i.bd) #23
  call void @cairo_translate(ptr noundef %i.bt, double noundef %i.cb, double noundef %i.cb) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.bt, i32 noundef %i.by) #23
  call void @cairo_arc(ptr noundef %i.bt, double noundef %i.ca, double noundef %i.ca, double noundef %i.cc, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #23
  call void @cairo_set_matrix(ptr noundef %i.bt, ptr noundef nonnull %5) #23
  call void @cairo_stroke(ptr noundef %i.bt) #23
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.ca, double noundef %i.cg) #23
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ca, double noundef %i.ch) #23
  call void @cairo_move_to(ptr noundef %i.bt, double noundef %i.cg, double noundef %i.ca) #23
  call void @cairo_line_to(ptr noundef %i.bt, double noundef %i.ch, double noundef %i.ca) #23
  call void @cairo_stroke(ptr noundef %i.bt) #23
  call void @cairo_destroy(ptr noundef %i.bt) #23
  %i.ci = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.bs, i32 noundef 0, i32 noundef 0, i32 noundef %i.bm, i32 noundef %i.bm) #23
  call void @cairo_surface_destroy(ptr noundef %i.bs) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.x, %i.ah
  %. = select nsz i1 %i.cj, float %i.x, float %i.ah ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ck = icmp samesign ugt i32 %i.w, 1024
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.600000e+01
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float 1.600000e+01, float %i.x
  %i.cn = fptosi float %i.cm to i32
  %i.co = select i1 %i.ck, i32 1024, i32 %i.cn    ; 3 uses
  %i.cp = fcmp reassoc nsz arcp contract afn ogt double %i.ag, f0x4090000010000000
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.ah, 1.600000e+01
  %i.cr = select reassoc nsz arcp contract afn i1 %i.cq, float 1.600000e+01, float %i.ah
  %i.cs = fptosi float %i.cr to i32
  %i.ct = select i1 %i.cp, i32 1024, i32 %i.cs    ; 3 uses
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.co to double
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1432
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !102 ; 3 uses
  %i.cy = fmul reassoc nsz arcp contract afn double %i.cx, 2.000000e+00 ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn double %i.cy, %i.cu
  %i.da = fptosi double %i.cz to i32              ; 4 uses
  %i.db = sitofp reassoc nsz arcp contract afn i32 %i.ct to double
  %i.dc = fmul reassoc nsz arcp contract afn double %i.cy, %i.db
  %i.dd = fptosi double %i.dc to i32              ; 4 uses
  %.not.i34 = icmp ne i32 %4, 0
  %7 = add nuw nsw i32 %4, 1
  %i.de = uitofp nneg i32 %7 to double
  %i.df = fmul reassoc nsz arcp contract afn double %i.cx, %i.de
  %i.dg = fptosi double %i.df to i32              ; 6 uses
  %i.dh = fmul reassoc nsz arcp contract afn double %i.cx, 1.600000e+01
  %i.di = fptosi double %i.dh to i32
  %i.dj = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.da, i32 noundef %i.dd) #23 ; 3 uses
  %i.dk = call ptr @cairo_create(ptr noundef %i.dj) #23 ; 26 uses
  call void @cairo_set_source_rgba(ptr noundef %i.dk, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.dk) #23
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dg to double ; 9 uses
  call void @cairo_set_line_width(ptr noundef %i.dk, double noundef %i.dl) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.dk, i32 noundef 35) #23
  %i.dm = shl nsw i32 %i.dg, 1
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.dm to double ; 6 uses
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.dn, double noundef %i.dn) #23
  %i.do = sub nsw i32 %i.da, %i.dg                ; 2 uses
  %i.dp = sub nsw i32 %i.do, %i.dg
  %i.dq = sitofp reassoc nsz arcp contract afn i32 %i.dp to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dq, double noundef %i.dn) #23
  %i.dr = sub nsw i32 %i.dd, %i.dg                ; 2 uses
  %i.ds = sub nsw i32 %i.dr, %i.dg
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.ds to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dq, double noundef %i.dt) #23
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dn, double noundef %i.dt) #23
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dn, double noundef %i.dn) #23
  %i.du = sitofp reassoc nsz arcp contract afn i32 %i.da to double
  %i.dv = fmul reassoc nnan nsz arcp contract afn double %i.du, 5.000000e-01 ; 5 uses
  %i.dw = fadd reassoc nsz arcp contract afn double %i.dv, %i.dl ; 2 uses
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dd to double
  %i.dy = fmul reassoc nnan nsz arcp contract afn double %i.dx, 5.000000e-01 ; 5 uses
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.di to double ; 4 uses
  %i.ea = fsub reassoc nsz arcp contract afn double %i.dy, %i.dz ; 2 uses
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.dw, double noundef %i.ea) #23
  %i.eb = fadd reassoc nsz arcp contract afn double %i.dy, %i.dz ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dw, double noundef %i.eb) #23
  %i.ec = fsub reassoc nsz arcp contract afn double %i.dv, %i.dz ; 2 uses
  %i.ed = fsub reassoc nsz arcp contract afn double %i.dy, %i.dl ; 2 uses
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.ec, double noundef %i.ed) #23
  %i.ee = fadd reassoc nsz arcp contract afn double %i.dv, %i.dz ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.ee, double noundef %i.ed) #23
  call void @cairo_stroke(ptr noundef %i.dk) #23
  %i.ef = icmp eq i32 %i.co, 1024
  %i.eg = icmp eq i32 %i.co, 16
  %or.cond.i35 = or i1 %i.ef, %i.eg
  %i.eh = icmp eq i32 %i.ct, 1024
  %or.cond3.i = or i1 %or.cond.i35, %i.eh
  %i.ei = icmp eq i32 %i.ct, 16
  %or.cond5.i = or i1 %i.ei, %or.cond3.i
  %i.ej = and i1 %.not.i34, %or.cond5.i
  %i.ek = select i1 %i.ej, i32 36, i32 34
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.dk, i32 noundef %i.ek) #23
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.dl, double noundef %i.dl) #23
  %i.el = sitofp reassoc nsz arcp contract afn i32 %i.do to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.el, double noundef %i.dl) #23
  %i.em = sitofp reassoc nsz arcp contract afn i32 %i.dr to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.el, double noundef %i.em) #23
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dl, double noundef %i.em) #23
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dl, double noundef %i.dl) #23
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.dv, double noundef %i.ea) #23
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.dv, double noundef %i.eb) #23
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.ec, double noundef %i.dy) #23
  call void @cairo_line_to(ptr noundef %i.dk, double noundef %i.ee, double noundef %i.dy) #23
  call void @cairo_stroke(ptr noundef %i.dk) #23
  call void @cairo_destroy(ptr noundef %i.dk) #23
  %i.en = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.dj, i32 noundef 0, i32 noundef 0, i32 noundef %i.da, i32 noundef %i.dd) #23
  call void @cairo_surface_destroy(ptr noundef %i.dj) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_draw_ellipse.exit, %bb.e
  %.027 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.x, %bb.a ], [ %i.x, %bb.e ]
  %.026 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.ah, %bb.a ], [ %i.ah, %bb.e ]
  %.0 = phi ptr [ %i.ci, %_draw_ellipse.exit ], [ null, %bb.a ], [ %i.en, %bb.e ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eo = fptosi float %.027 to i32
  store i32 %i.eo, ptr %1, align 4, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ep = fptosi float %.026 to i32
  store i32 %i.ep, ptr %2, align 4, !tbaa !131
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret ptr %.0
}

declare void @dt_map_location_get_polygons(ptr noundef) local_unnamed_addr #4

declare ptr @osm_gps_map_point_new_degrees(float noundef, float noundef) local_unnamed_addr #4

declare void @osm_gps_map_convert_geographic_to_screen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @osm_gps_map_point_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

declare void @cairo_get_matrix(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_set_matrix(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @osm_gps_map_polygon_new() local_unnamed_addr #4

declare ptr @osm_gps_map_track_new() local_unnamed_addr #4

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @osm_gps_map_track_add_point(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @osm_gps_map_polygon_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @osm_gps_map_convert_screen_to_geographic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_map_location_get_locations_on_map(ptr noundef) local_unnamed_addr #4

declare ptr @dt_util_latitude_str(float noundef) local_unnamed_addr #4

declare ptr @dt_util_longitude_str(float noundef) local_unnamed_addr #4

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #4

declare ptr @osm_gps_map_get_event_location(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_target_list_new(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_drag_begin_with_coordinates(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_image_new_from_pixbuf(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #4

declare void @gtk_drag_set_icon_widget(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_target_list_unref(ptr noundef) local_unnamed_addr #4

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_display_next_image(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !152
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %.not73 = icmp eq ptr %i.g, null
  br i1 %.not73, label %.thread77.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.i, ptr noundef nonnull %i.g) #23 ; 0 uses
  store ptr null, ptr %i.f, align 8, !tbaa !130
  br label %.thread77.sink.split

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !154  ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.thread77

.lr.ph:                                           ; preds = %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !151
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv116 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next117, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 8 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !158
  %i.t = icmp eq i32 %i.s, %i.p
  br i1 %i.t, label %bb.g, label %bb.l
end_hunk_0
