Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_images_count:bb.a
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.h, i32 noundef %i.j) #23 ; 3 uses
  %i.l = tail call ptr @cairo_create(ptr noundef %i.k) #23 ; 8 uses
  tail call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.l, i32 noundef 33) #23
  tail call void @cairo_paint(ptr noundef %i.l) #23
  %.not = icmp eq i32 %1, 0
  %i.m = select i1 %.not, i32 32, i32 31
  tail call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.l, i32 noundef %i.m) #23
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1432
  %i.p = load double, ptr %i.o, align 8, !tbaa !102
  %i.q = fmul reassoc nsz arcp contract afn double %i.p, 6.000000e+00
  %i.r = fadd reassoc nsz arcp contract afn double %i.q, 6.000000e+00
  tail call void @cairo_set_font_size(ptr noundef %i.l, double noundef %i.r) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @cairo_text_extents(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %4) #23
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !290
  %i.u = load double, ptr %4, align 8, !tbaa !291 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.u, 4.000000e+00
  %i.w = fadd reassoc nsz arcp contract afn double %i.v, %i.t
  store double %i.w, ptr %2, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !292 ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, 2.000000e+00
  store double %i.z, ptr %3, align 8, !tbaa !135
  %i.aa = fadd reassoc nsz arcp contract afn double %i.y, 1.000000e+00
  call void @cairo_move_to(ptr noundef %i.l, double noundef %i.u, double noundef %i.aa) #23
  call void @cairo_show_text(ptr noundef %i.l, ptr noundef nonnull %i.a) #23
  call void @cairo_destroy(ptr noundef %i.l) #23
  %i.ab = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.k, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef %i.j) #23
  call void @cairo_surface_destroy(ptr noundef %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.ab
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_set_font_size(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_text_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_show_text(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #15

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_view_map_draw_location(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca [2 x %struct._OsmGpsMapPoint], align 16 ; 5 uses
  %4 = alloca %struct.dt_map_box_t, align 16      ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !169
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc ptr @_draw_location(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.f, i32 noundef %2) ; 3 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !135
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = tail call ptr @osm_gps_map_image_add_with_alignment(ptr noundef %i.k, float noundef %i.o, float noundef %i.n, ptr noundef nonnull %i.i, float noundef 5.000000e-01, float noundef 5.000000e-01) #23
  tail call void @g_object_unref(ptr noundef nonnull %i.i) #23
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.e, label %.thread38

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = icmp eq ptr %1, %i.s
  br i1 %i.t, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.01016.i = load ptr, ptr %i.v, align 8, !tbaa !140 ; 2 uses
  %.not17.i = icmp eq ptr %.01016.i, null
  br i1 %.not17.i, label %.thread, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01018.i, i64 8
  %.010.i = load ptr, ptr %i.w, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp eq ptr %.010.i, null
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01018.i = phi ptr [ %.010.i, %bb.g ], [ %.01016.i, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %.01018.i, align 8, !tbaa !142 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !150
  %.not13.i = icmp eq i32 %i.y, %i.u
  br i1 %.not13.i, label %_others_location_draw.exit.thread, label %bb.g

_others_location_draw.exit.thread:                ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !182 ; 2 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !202
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !202
  %i.ae = icmp eq ptr %i.aa, null
  br i1 %i.ae, label %.thread, label %.thread38

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %_others_location_draw.exit.thread
  tail call void @dt_map_location_get_polygons(ptr noundef nonnull %1) #23
  br label %.thread38

.thread38:                                        ; preds = %bb.d, %.thread, %_others_location_draw.exit.thread
  %i.af = tail call ptr @osm_gps_map_polygon_new() #23 ; 5 uses
  %i.ag = tail call ptr @osm_gps_map_track_new() #23 ; 4 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ag, ptr noundef nonnull @.str.68, double noundef 2.000000e+00, ptr noundef nonnull @.str.69, double noundef 9.000000e-01, ptr noundef null) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !293
  %i.aj = fptrunc reassoc nsz arcp contract afn double %i.ai to float ; 2 uses
  %i.ak = load double, ptr %i.f, align 8, !tbaa !294
  %i.al = fptrunc reassoc nsz arcp contract afn double %i.ak to float ; 2 uses
  %i.am = tail call ptr @osm_gps_map_point_new_degrees(float noundef %i.aj, float noundef %i.al) #23 ; 2 uses
  %i.an = tail call ptr @osm_gps_map_point_new_degrees(float noundef 0.000000e+00, float noundef 0.000000e+00) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !131
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.ap, ptr noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !117
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !131
  %i.as = add nsw i32 %i.ar, 1
  %i.at = load i32, ptr %i.b, align 4, !tbaa !131
  %i.au = add nsw i32 %i.at, 1
  call void @osm_gps_map_convert_screen_to_geographic(ptr noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au, ptr noundef %i.an) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !107
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  call void @osm_gps_map_point_free(ptr noundef %i.am) #23
  call void @osm_gps_map_point_free(ptr noundef %i.an) #23
  %i.av = load float, ptr %i.c, align 4, !tbaa !107
  %i.aw = fsub reassoc nsz arcp contract afn float %i.aj, %i.av
  %i.ax = load float, ptr %i.d, align 4, !tbaa !107
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !117
  call void (ptr, ptr, ...) @g_object_get(ptr noundef %i.az, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.e, ptr noundef null) #23
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !131
  %i.bb = add nsw i32 %i.ba, 1
  %.val.i = load ptr, ptr %i.ao, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @osm_gps_map_get_bbox(ptr noundef %.val.i, ptr noundef nonnull %3, ptr noundef nonnull %i.bc) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @osm_gps_map_point_get_degrees(ptr noundef nonnull %3, ptr noundef nonnull %i.bd, ptr noundef nonnull %4) #23
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @osm_gps_map_point_get_degrees(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf) #23
  %i.bg = load <4 x float>, ptr %4, align 16, !tbaa !107
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bh, <float 1.800000e+02, float 1.800000e+02, float 9.000000e+01, float 9.000000e+01>
  %i.bj = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bh, <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>
  %i.bk = select <4 x i1> %i.bj, <4 x float> <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>, <4 x float> %i.bh
  %i.bl = select <4 x i1> %i.bi, <4 x float> <float 1.800000e+02, float 1.800000e+02, float 9.000000e+01, float 9.000000e+01>, <4 x float> %i.bk ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.bo = fsub reassoc nsz arcp contract afn <4 x float> %i.bm, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn <4 x float> %i.bo, splat (float 5.000000e-01) ; 2 uses
  %i.bq = fsub reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bp ; 3 uses
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bp ; 3 uses
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> %i.br, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %5 = extractelement <4 x float> %i.bq, i64 0
  %6 = fcmp reassoc nsz arcp contract afn ogt float %5, 1.800000e+02
  %i.bt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>
  %i.bu = select <4 x i1> %i.bt, <4 x float> <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>, <4 x float> %i.bs ; 4 uses
  %7 = extractelement <4 x float> %i.bu, i64 0
  %8 = select i1 %6, float 1.800000e+02, float %7
  %9 = extractelement <4 x float> %i.br, i64 1
  %10 = fcmp reassoc nsz arcp contract afn ogt float %9, 1.800000e+02
  %11 = extractelement <4 x float> %i.bu, i64 1
  %12 = select i1 %10, float 1.800000e+02, float %11
  %13 = extractelement <4 x float> %i.br, i64 2
  %14 = fcmp reassoc nsz arcp contract afn ogt float %13, 9.000000e+01
  %15 = extractelement <4 x float> %i.bu, i64 2
  %16 = select i1 %14, float 9.000000e+01, float %15
  %17 = extractelement <4 x float> %i.bq, i64 3
  %18 = fcmp reassoc nsz arcp contract afn ogt float %17, 9.000000e+01
  %19 = extractelement <4 x float> %i.bu, i64 3
  %20 = select i1 %18, float 9.000000e+01, float %19
  %.075.i = load ptr, ptr %i.q, align 8, !tbaa !140 ; 2 uses
  %.not76.i = icmp eq ptr %.075.i, null
  br i1 %.not76.i, label %_view_map_add_polygon_location.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.thread38, %bb.n
  %.080.i = phi ptr [ %.0.i, %bb.n ], [ %.075.i, %.thread38 ] ; 2 uses
  %.05079.i = phi float [ %.1.i, %bb.n ], [ 0.000000e+00, %.thread38 ] ; 4 uses
  %.05178.i = phi float [ %.152.i, %bb.n ], [ 0.000000e+00, %.thread38 ] ; 4 uses
  %.05377.i = phi i32 [ %i.cr, %bb.n ], [ 0, %.thread38 ] ; 2 uses
  %i.bv = load ptr, ptr %.080.i, align 8, !tbaa !142 ; 4 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !172 ; 5 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ugt float %i.bw, %16
  %i.by = fcmp reassoc nsz arcp contract afn ult float %i.bw, %20
  %or.cond.i = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i34
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !173 ; 4 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ult float %i.ca, %8
  %i.cc = fcmp reassoc nsz arcp contract afn ugt float %i.ca, %12
  %or.cond66.i = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond66.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = fsub reassoc nsz arcp contract afn float %i.bw, %.05178.i
  %i.ce = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cd)
  %i.cf = fcmp reassoc nsz arcp contract afn ogt float %i.ce, %i.aw
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = fsub reassoc nsz arcp contract afn float %i.ca, %.05079.i
  %i.ch = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cg)
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, %i.ay
  br i1 %i.ci, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cj = call ptr @osm_gps_map_point_new_degrees(float noundef %i.bw, float noundef %i.ca) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ag, ptr noundef %i.cj) #23
  %i.ck = load float, ptr %i.bv, align 4, !tbaa !172
  %i.cl = load float, ptr %i.bz, align 4, !tbaa !173
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %.lr.ph.i34
  %i.cm = srem i32 %.05377.i, %i.bb
  %.not63.i = icmp eq i32 %i.cm, 0
  br i1 %.not63.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !173
  %i.cp = call ptr @osm_gps_map_point_new_degrees(float noundef %i.bw, float noundef %i.co) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ag, ptr noundef %i.cp) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.152.i = phi nsz float [ %i.ck, %bb.k ], [ %.05178.i, %bb.j ], [ %.05178.i, %bb.l ], [ %.05178.i, %bb.m ]
  %.1.i = phi nsz float [ %i.cl, %bb.k ], [ %.05079.i, %bb.j ], [ %.05079.i, %bb.l ], [ %.05079.i, %bb.m ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.080.i, i64 8
  %i.cr = add nuw nsw i32 %.05377.i, 1
  %.0.i = load ptr, ptr %i.cq, align 8, !tbaa !140 ; 2 uses
  %.not.i35 = icmp eq ptr %.0.i, null
  br i1 %.not.i35, label %_view_map_add_polygon_location.exit, label %.lr.ph.i34

_view_map_add_polygon_location.exit:              ; preds = %bb.n, %.thread38
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.70, ptr noundef %i.ag, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null) #23
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !117
  call void @osm_gps_map_polygon_add(ptr noundef %i.cs, ptr noundef %i.af) #23
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
  %i.x = uitofp nneg i32 %i.w to float            ; 8 uses
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
  %i.ah = fptrunc reassoc nsz arcp contract afn double %i.ag to float ; 7 uses
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
  %i.au = icmp samesign ugt i32 %i.ao, %i.at
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = uitofp nsz nneg i32 %i.at to float
  %i.aw = uitofp nsz nneg i32 %i.ao to float
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.av, %i.aw
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  br label %_draw_ellipse.exit

bb.d:                                             ; preds = %bb.b
  %i.az = uitofp nsz nneg i32 %i.ao to float
  %i.ba = uitofp nsz nneg i32 %i.at to float
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.az, %i.ba
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  br label %_draw_ellipse.exit

_draw_ellipse.exit:                               ; preds = %bb.c, %bb.d
  %i.bd = phi double [ %i.ay, %bb.c ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.be = phi double [ 1.000000e+00, %bb.c ], [ %i.bc, %bb.d ] ; 2 uses
  %i.bf = call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.at)
  %i.bg = shl nuw i32 %i.bf, 1
  %i.bh = uitofp i32 %i.bg to double
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1432
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !102 ; 3 uses
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bk, %i.bh
  %i.bm = fptosi double %i.bl to i32              ; 5 uses
  %.not.i = icmp ne i32 %4, 0                     ; 2 uses
  %i.bn = select i1 %.not.i, i32 2, i32 1
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bk, %i.bo
  %i.bq = fptosi double %i.bp to i32
  %i.br = fmul reassoc nsz arcp contract afn double %i.bk, 1.600000e+01
  %i.bs = fptosi double %i.br to i32
  %i.bt = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bm, i32 noundef %i.bm) #23 ; 3 uses
  %i.bu = call ptr @cairo_create(ptr noundef %i.bt) #23 ; 30 uses
  call void @cairo_set_source_rgba(ptr noundef %i.bu, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.bu) #23
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bq to double ; 4 uses
  call void @cairo_set_line_width(ptr noundef %i.bu, double noundef %i.bv) #23
  %i.bw = icmp eq i32 %i.ao, 1024
  %i.bx = icmp eq i32 %i.ao, 16
  %or.cond.i = or i1 %i.bw, %i.bx
  %i.by = and i1 %.not.i, %or.cond.i
  %i.bz = select i1 %i.by, i32 36, i32 34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @cairo_get_matrix(ptr noundef %i.bu, ptr noundef nonnull %5) #23
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %i.bm to double ; 2 uses
  %i.cb = fmul reassoc nnan nsz arcp contract afn double %i.ca, 5.000000e-01 ; 16 uses
  call void @cairo_translate(ptr noundef %i.bu, double noundef %i.cb, double noundef %i.cb) #23
  call void @cairo_scale(ptr noundef %i.bu, double noundef %i.be, double noundef %i.bd) #23
  %i.cc = fmul reassoc nnan nsz arcp contract afn double %i.ca, -5.000000e-01 ; 4 uses
  call void @cairo_translate(ptr noundef %i.bu, double noundef %i.cc, double noundef %i.cc) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.bu, i32 noundef 35) #23
  %i.cd = fsub reassoc nsz arcp contract afn double %i.cb, %i.bv ; 4 uses
  %i.ce = fsub reassoc nsz arcp contract afn double %i.cd, %i.bv
  call void @cairo_arc(ptr noundef %i.bu, double noundef %i.cb, double noundef %i.cb, double noundef %i.ce, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #23
  call void @cairo_set_matrix(ptr noundef %i.bu, ptr noundef nonnull %5) #23
  call void @cairo_stroke(ptr noundef %i.bu) #23
  %i.cf = fadd reassoc nsz arcp contract afn double %i.cb, %i.bv ; 2 uses
  %i.cg = sitofp reassoc nsz arcp contract afn i32 %i.bs to double ; 2 uses
  %i.ch = fsub reassoc nsz arcp contract afn double %i.cb, %i.cg ; 4 uses
  call void @cairo_move_to(ptr noundef %i.bu, double noundef %i.cf, double noundef %i.ch) #23
  %i.ci = fadd reassoc nsz arcp contract afn double %i.cb, %i.cg ; 4 uses
  call void @cairo_line_to(ptr noundef %i.bu, double noundef %i.cf, double noundef %i.ci) #23
  call void @cairo_move_to(ptr noundef %i.bu, double noundef %i.ch, double noundef %i.cd) #23
  call void @cairo_line_to(ptr noundef %i.bu, double noundef %i.ci, double noundef %i.cd) #23
  call void @cairo_stroke(ptr noundef %i.bu) #23
  call void @cairo_get_matrix(ptr noundef %i.bu, ptr noundef nonnull %5) #23
  call void @cairo_translate(ptr noundef %i.bu, double noundef %i.cb, double noundef %i.cb) #23
end_hunk_0
