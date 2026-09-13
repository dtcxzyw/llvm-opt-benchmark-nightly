Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_center_on_bbox:bb.a
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_show_osd(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.10) #23
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @osm_gps_map_layer_add(ptr noundef %i.e, ptr noundef %i.g) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @osm_gps_map_layer_remove(ptr noundef %i.e, ptr noundef %i.g) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  tail call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %i.j, ptr noundef nonnull @.str.15) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_set_map_source(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GValue, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 8, !tbaa !116
  %i.f = tail call ptr @osm_gps_map_source_get_friendly_name(i32 noundef %1) #23
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.1, ptr noundef %i.f) #23
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = call ptr @g_value_init(ptr noundef nonnull %2, i64 noundef 24) #23 ; 0 uses
  call void @g_value_set_int(ptr noundef nonnull %2, i32 noundef %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  call void @g_object_set_property(ptr noundef %i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #23
  call void @g_value_unset(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @_view_map_add_marker(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca double, align 8                   ; 6 uses
  %i.l = alloca double, align 8                   ; 6 uses
  switch i32 %1, label %_view_map_draw_single_image.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.l
    i32 4, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.m, align 8, !tbaa !18  ; 2 uses
  %.val9 = load ptr, ptr %2, align 8, !tbaa !142  ; 2 uses
  %i.n = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.o = getelementptr i8, ptr %.val, i64 64
  %.val.val10 = load ptr, ptr %i.o, align 8, !tbaa !105
  %.val9.val = load float, ptr %.val9, align 4, !tbaa !172
  %i.p = getelementptr i8, ptr %.val9, i64 4
  %.val9.val11 = load float, ptr %i.p, align 4, !tbaa !173
  %i.q = tail call ptr @osm_gps_map_image_add_with_alignment(ptr noundef %.val.val, float noundef %.val9.val, float noundef %.val9.val11, ptr noundef %.val.val10, float noundef 5.000000e-01, float noundef 1.000000e+00) #23
  br label %_view_map_draw_single_image.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 304
  %.val12 = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.s = tail call ptr @osm_gps_map_track_new() #23 ; 7 uses
  %.not1.i = icmp eq ptr %2, null
  br i1 %.not1.i, label %_view_map_add_track.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.k
  %.04.i = phi ptr [ %i.bz, %bb.k ], [ %2, %bb.c ] ; 2 uses
  %.not243.i = phi i1 [ true, %bb.k ], [ false, %bb.c ]
  %.0232.i = phi ptr [ %i.x, %bb.k ], [ undef, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %.04.i, align 8, !tbaa !142 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !172
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !173
  %i.x = call ptr @osm_gps_map_point_new_degrees(float noundef %i.u, float noundef %i.w) #23 ; 5 uses
  br i1 %.not243.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @osm_gps_map_track_add_point(ptr noundef %i.s, ptr noundef %i.x) #23
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.x, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #23
  call void @osm_gps_map_point_get_degrees(ptr noundef %.0232.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.y = load float, ptr %i.e, align 4, !tbaa !107 ; 2 uses
  %i.z = load float, ptr %i.g, align 4, !tbaa !107 ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn float %i.y, %i.z
  %i.ab = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, 1.000000e+00
  %.pre.i.i = load float, ptr %i.f, align 4, !tbaa !107 ; 2 uses
  %.pre23.i.i = load float, ptr %i.h, align 4, !tbaa !107 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fsub reassoc nsz arcp contract afn float %.pre.i.i, %.pre23.i.i
  %i.ae = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ad)
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.ae, 1.000000e+00
  br i1 %i.af, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ah = fpext reassoc nsz arcp contract afn float %.pre.i.i to double
  %i.ai = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.aj = fpext reassoc nsz arcp contract afn float %.pre23.i.i to double
  call void @dt_gpx_geodesic_distance(double noundef %i.ag, double noundef %i.ah, double noundef %i.ai, double noundef %i.aj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #23
  %i.ak = load double, ptr %i.i, align 8          ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn olt double %i.ak, 1.000000e+05
  br i1 %i.al, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g, %bb.f
  call void @osm_gps_map_track_add_point(ptr noundef %i.s, ptr noundef %i.x) #23
  br label %_track_add_point.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  %i.am = fmul reassoc nsz arcp contract afn double %i.ak, 1.000000e-05
  %i.an = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32              ; 4 uses
  %.not19.i.i = icmp slt i32 %i.ao, 1
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ap = uitofp nneg i32 %i.ao to double         ; 2 uses
  %i.aq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ap
  %i.ar = load float, ptr %i.g, align 4, !tbaa !107
  %i.as = fpext reassoc nsz arcp contract afn float %i.ar to double
  %i.at = load float, ptr %i.h, align 4, !tbaa !107
  %i.au = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.av = load float, ptr %i.e, align 4, !tbaa !107
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.ax = load float, ptr %i.f, align 4, !tbaa !107
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  %i.az = load double, ptr %i.j, align 8, !tbaa !135
  call void @dt_gpx_geodesic_intermediate_point(double noundef %i.as, double noundef %i.au, double noundef %i.aw, double noundef %i.ay, double noundef %i.az, i32 noundef 1, double noundef %i.aq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #23
  %i.ba = load double, ptr %i.k, align 8, !tbaa !135
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  %i.bc = load double, ptr %i.l, align 8, !tbaa !135
  %i.bd = fptrunc reassoc nsz arcp contract afn double %i.bc to float
  %i.be = call ptr @osm_gps_map_point_new_degrees(float noundef %i.bb, float noundef %i.bd) #23 ; 2 uses
  call void @osm_gps_map_track_add_point(ptr noundef %i.s, ptr noundef %i.be) #23
  call void @osm_gps_map_point_free(ptr noundef %i.be) #23
  %exitcond.peel.not.i.i = icmp eq i32 %i.ao, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i.preheader

.peel.next.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %i.bf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ap
  br label %.peel.next.i.i

._crit_edge.i.i:                                  ; preds = %.peel.next.i.i, %.lr.ph.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %_track_add_point.exit.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.preheader, %.peel.next.i.i
  %.021.i.i = phi i32 [ %i.bw, %.peel.next.i.i ], [ 2, %.peel.next.i.i.preheader ] ; 3 uses
  %i.bg = uitofp nneg i32 %.021.i.i to double
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, %i.bf
  %i.bi = load float, ptr %i.g, align 4, !tbaa !107
  %i.bj = fpext reassoc nsz arcp contract afn float %i.bi to double
  %i.bk = load float, ptr %i.h, align 4, !tbaa !107
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = load float, ptr %i.e, align 4, !tbaa !107
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double
  %i.bo = load float, ptr %i.f, align 4, !tbaa !107
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bo to double
  %i.bq = load double, ptr %i.j, align 8, !tbaa !135
  call void @dt_gpx_geodesic_intermediate_point(double noundef %i.bj, double noundef %i.bl, double noundef %i.bn, double noundef %i.bp, double noundef %i.bq, i32 noundef 0, double noundef %i.bh, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #23
  %i.br = load double, ptr %i.k, align 8, !tbaa !135
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  %i.bt = load double, ptr %i.l, align 8, !tbaa !135
  %i.bu = fptrunc reassoc nsz arcp contract afn double %i.bt to float
  %i.bv = call ptr @osm_gps_map_point_new_degrees(float noundef %i.bs, float noundef %i.bu) #23 ; 2 uses
  call void @osm_gps_map_track_add_point(ptr noundef %i.s, ptr noundef %i.bv) #23
  call void @osm_gps_map_point_free(ptr noundef %i.bv) #23
  %i.bw = add nuw i32 %.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.021.i.i, %i.ao
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !234

_track_add_point.exit.i:                          ; preds = %._crit_edge.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @osm_gps_map_point_free(ptr noundef %.0232.i) #23
  br label %bb.i

bb.i:                                             ; preds = %_track_add_point.exit.i, %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !170 ; 2 uses
  %.not25.i = icmp eq ptr %i.by, null
  br i1 %.not25.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @osm_gps_map_point_free(ptr noundef %i.x) #23
  %.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !170
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bz = phi ptr [ %.pre.i, %bb.j ], [ %i.by, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_view_map_add_track.exit, label %.lr.ph.i

_view_map_add_track.exit:                         ; preds = %bb.k, %bb.c
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.s, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %.val12, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !117
  call void @osm_gps_map_track_add(ptr noundef %i.cb, ptr noundef %i.s) #23
  br label %_view_map_draw_single_image.exit

bb.l:                                             ; preds = %bb.a
  %i.cc = getelementptr i8, ptr %0, i64 304
  %.val13 = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 3 uses
  %i.cd = tail call ptr @osm_gps_map_polygon_new() #23 ; 5 uses
  %i.ce = tail call ptr @osm_gps_map_track_new() #23 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val13, i64 132
  %i.cg = getelementptr inbounds nuw i8, ptr %.val13, i64 136
  %i.ch = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.cf, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !107
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.cj = load <2 x float>, ptr %i.cg, align 4, !tbaa !107
  %i.ck = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ci ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, 5.000000e-01 ; 2 uses
  %i.cn = extractelement <2 x float> %i.ck, i64 1
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, 5.000000e-01 ; 2 uses
  %i.cp = tail call ptr @osm_gps_map_point_new_degrees(float noundef %i.cm, float noundef %i.co) #23 ; 2 uses
  %i.cq = tail call ptr @osm_gps_map_point_new_degrees(float noundef 0.000000e+00, float noundef 0.000000e+00) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !131
  %i.cr = getelementptr inbounds nuw i8, ptr %.val13, i64 8 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.cs, ptr noundef %i.cp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !117
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !131
  %i.cv = add nsw i32 %i.cu, 1
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !131
  %i.cx = add nsw i32 %i.cw, 1
  call void @osm_gps_map_convert_screen_to_geographic(ptr noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef %i.cq) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !107
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.cq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  call void @osm_gps_map_point_free(ptr noundef %i.cp) #23
  call void @osm_gps_map_point_free(ptr noundef %i.cq) #23
  %i.cy = load float, ptr %i.c, align 4, !tbaa !107
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cm, %i.cy
  %i.da = load float, ptr %i.d, align 4, !tbaa !107
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not2.i = icmp eq ptr %2, null
  br i1 %.not2.i, label %_view_map_add_polygon.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.l, %bb.n
  %.05.i = phi ptr [ %i.do, %bb.n ], [ %2, %bb.l ] ; 2 uses
  %.0284.i = phi float [ %.1.i, %bb.n ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %.0293.i = phi float [ %.130.i, %bb.n ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.dc = load ptr, ptr %.05.i, align 8, !tbaa !142 ; 3 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !172 ; 2 uses
  %i.de = fsub reassoc nsz arcp contract afn float %i.dd, %.0293.i
  %i.df = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.de)
  %i.dg = fcmp reassoc nsz arcp contract afn ogt float %i.df, %i.cz
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %.pre.i17 = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !173 ; 2 uses
  br i1 %i.dg, label %.lr.ph._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i16
  %i.dh = fsub reassoc nsz arcp contract afn float %.pre.i17, %.0284.i
  %i.di = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp reassoc nsz arcp contract afn ogt float %i.di, %i.db
  br i1 %i.dj, label %.lr.ph._crit_edge.i, label %bb.n

.lr.ph._crit_edge.i:                              ; preds = %bb.m, %.lr.ph.i16
  %i.dk = call ptr @osm_gps_map_point_new_degrees(float noundef %i.dd, float noundef %.pre.i17) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ce, ptr noundef %i.dk) #23
  %i.dl = load float, ptr %i.dc, align 4, !tbaa !172
  %i.dm = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !173
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph._crit_edge.i, %bb.m
  %.130.i = phi nsz float [ %i.dl, %.lr.ph._crit_edge.i ], [ %.0293.i, %bb.m ]
  %.1.i = phi nsz float [ %i.dm, %.lr.ph._crit_edge.i ], [ %.0284.i, %bb.m ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !170 ; 2 uses
  %.not.i18 = icmp eq ptr %i.do, null
  br i1 %.not.i18, label %_view_map_add_polygon.exit, label %.lr.ph.i16

_view_map_add_polygon.exit:                       ; preds = %bb.n, %bb.l
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.cd, ptr noundef nonnull @.str.70, ptr noundef %i.ce, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.cd, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.cd, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null) #23
  %i.dp = load ptr, ptr %i.cr, align 8, !tbaa !117
  call void @osm_gps_map_polygon_add(ptr noundef %i.dp, ptr noundef %i.cd) #23
  br label %_view_map_draw_single_image.exit

bb.o:                                             ; preds = %bb.a
  %i.dq = getelementptr i8, ptr %0, i64 304
  %.val14 = load ptr, ptr %i.dq, align 8, !tbaa !18 ; 2 uses
  %.val15 = load ptr, ptr %2, align 8, !tbaa !142 ; 4 uses
  %i.dr = load i32, ptr %.val15, align 4, !tbaa !236
  %i.ds = getelementptr inbounds nuw i8, ptr %.val15, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !237
  %i.du = tail call fastcc ptr @_draw_image(i32 noundef %i.dr, ptr noundef null, ptr noundef null, i32 noundef %i.dt, i32 noundef 1, i32 noundef -16777063, i32 noundef 1, i32 noundef 0, ptr readonly %.val14) ; 3 uses
  %.not.i19 = icmp eq ptr %i.du, null
  br i1 %.not.i19, label %_view_map_draw_single_image.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !117
  %i.dx = getelementptr inbounds nuw i8, ptr %.val15, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !238
  %i.dz = getelementptr inbounds nuw i8, ptr %.val15, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !239
  %i.eb = tail call ptr @osm_gps_map_image_add_with_alignment(ptr noundef %i.dw, float noundef %i.dy, float noundef %i.ea, ptr noundef nonnull %i.du, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  tail call void @g_object_unref(ptr noundef nonnull %i.du) #23
  br label %_view_map_draw_single_image.exit

_view_map_draw_single_image.exit:                 ; preds = %bb.p, %bb.o, %bb.a, %_view_map_add_polygon.exit, %_view_map_add_track.exit, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.q, %bb.b ], [ %i.s, %_view_map_add_track.exit ], [ %i.cd, %_view_map_add_polygon.exit ], [ %i.eb, %bb.p ], [ null, %bb.o ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_view_map_remove_marker(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  switch i32 %1, label %bb.f [
    i32 4, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.d = tail call i32 @osm_gps_map_image_remove(ptr noundef %.val.val, ptr noundef %2) #23
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val12.val = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.f = tail call i32 @osm_gps_map_track_remove(ptr noundef %.val12.val, ptr noundef %2) #23
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %.val13.val = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.h = tail call i32 @osm_gps_map_polygon_remove(ptr noundef %.val13.val, ptr noundef %2) #23
end_hunk_0
begin_hunk_1_@_view_map_draw_location:bb.a
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
  %6 = icmp sgt i32 %i.ao, %i.at
  br i1 %6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %7 = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %8 = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.au = fdiv reassoc nsz arcp contract afn float %7, %8
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double
  br label %_draw_ellipse.exit

bb.d:                                             ; preds = %bb.b
  %9 = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %10 = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.aw = fdiv reassoc nsz arcp contract afn float %9, %10
  %i.ax = fpext reassoc nsz arcp contract afn float %i.aw to double
  br label %_draw_ellipse.exit

_draw_ellipse.exit:                               ; preds = %bb.c, %bb.d
  %i.ay = phi double [ %i.av, %bb.c ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.az = phi double [ 1.000000e+00, %bb.c ], [ %i.ax, %bb.d ] ; 2 uses
  %i.ba = call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  %11 = sitofp reassoc nsz arcp contract afn i32 %i.ba to double
  %12 = fmul reassoc nnan nsz arcp contract afn double %11, 2.000000e+00
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1432
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !102 ; 3 uses
  %i.be = fmul reassoc nsz arcp contract afn double %12, %i.bd
  %i.bf = fptosi double %i.be to i32              ; 5 uses
  %.not.i = icmp ne i32 %4, 0                     ; 2 uses
  %i.bg = select i1 %.not.i, i32 2, i32 1
  %i.bh = uitofp nneg i32 %i.bg to double
  %i.bi = fmul reassoc nsz arcp contract afn double %i.bd, %i.bh
  %i.bj = fptosi double %i.bi to i32
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bd, 1.600000e+01
  %i.bl = fptosi double %i.bk to i32
  %i.bm = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bf, i32 noundef %i.bf) #23 ; 3 uses
  %i.bn = call ptr @cairo_create(ptr noundef %i.bm) #23 ; 30 uses
  call void @cairo_set_source_rgba(ptr noundef %i.bn, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.bn) #23
  %i.bo = sitofp reassoc nsz arcp contract afn i32 %i.bj to double ; 4 uses
  call void @cairo_set_line_width(ptr noundef %i.bn, double noundef %i.bo) #23
  %i.bp = icmp eq i32 %i.ao, 1024
  %i.bq = icmp eq i32 %i.ao, 16
  %or.cond.i = or i1 %i.bp, %i.bq
  %i.br = and i1 %.not.i, %or.cond.i
  %i.bs = select i1 %i.br, i32 36, i32 34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @cairo_get_matrix(ptr noundef %i.bn, ptr noundef nonnull %5) #23
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.bf to double ; 2 uses
  %i.bu = fmul reassoc nnan nsz arcp contract afn double %i.bt, 5.000000e-01 ; 16 uses
  call void @cairo_translate(ptr noundef %i.bn, double noundef %i.bu, double noundef %i.bu) #23
  call void @cairo_scale(ptr noundef %i.bn, double noundef %i.az, double noundef %i.ay) #23
  %i.bv = fmul reassoc nnan nsz arcp contract afn double %i.bt, -5.000000e-01 ; 4 uses
  call void @cairo_translate(ptr noundef %i.bn, double noundef %i.bv, double noundef %i.bv) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.bn, i32 noundef 35) #23
  %i.bw = fsub reassoc nsz arcp contract afn double %i.bu, %i.bo ; 4 uses
  %i.bx = fsub reassoc nsz arcp contract afn double %i.bw, %i.bo
  call void @cairo_arc(ptr noundef %i.bn, double noundef %i.bu, double noundef %i.bu, double noundef %i.bx, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #23
  call void @cairo_set_matrix(ptr noundef %i.bn, ptr noundef nonnull %5) #23
  call void @cairo_stroke(ptr noundef %i.bn) #23
  %i.by = fadd reassoc nsz arcp contract afn double %i.bu, %i.bo ; 2 uses
  %i.bz = sitofp reassoc nsz arcp contract afn i32 %i.bl to double ; 2 uses
  %i.ca = fsub reassoc nsz arcp contract afn double %i.bu, %i.bz ; 4 uses
  call void @cairo_move_to(ptr noundef %i.bn, double noundef %i.by, double noundef %i.ca) #23
  %i.cb = fadd reassoc nsz arcp contract afn double %i.bu, %i.bz ; 4 uses
  call void @cairo_line_to(ptr noundef %i.bn, double noundef %i.by, double noundef %i.cb) #23
  call void @cairo_move_to(ptr noundef %i.bn, double noundef %i.ca, double noundef %i.bw) #23
  call void @cairo_line_to(ptr noundef %i.bn, double noundef %i.cb, double noundef %i.bw) #23
  call void @cairo_stroke(ptr noundef %i.bn) #23
  call void @cairo_get_matrix(ptr noundef %i.bn, ptr noundef nonnull %5) #23
  call void @cairo_translate(ptr noundef %i.bn, double noundef %i.bu, double noundef %i.bu) #23
  call void @cairo_scale(ptr noundef %i.bn, double noundef %i.az, double noundef %i.ay) #23
  call void @cairo_translate(ptr noundef %i.bn, double noundef %i.bv, double noundef %i.bv) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.bn, i32 noundef %i.bs) #23
  call void @cairo_arc(ptr noundef %i.bn, double noundef %i.bu, double noundef %i.bu, double noundef %i.bw, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #23
  call void @cairo_set_matrix(ptr noundef %i.bn, ptr noundef nonnull %5) #23
  call void @cairo_stroke(ptr noundef %i.bn) #23
  call void @cairo_move_to(ptr noundef %i.bn, double noundef %i.bu, double noundef %i.ca) #23
  call void @cairo_line_to(ptr noundef %i.bn, double noundef %i.bu, double noundef %i.cb) #23
  call void @cairo_move_to(ptr noundef %i.bn, double noundef %i.ca, double noundef %i.bu) #23
  call void @cairo_line_to(ptr noundef %i.bn, double noundef %i.cb, double noundef %i.bu) #23
  call void @cairo_stroke(ptr noundef %i.bn) #23
  call void @cairo_destroy(ptr noundef %i.bn) #23
  %i.cc = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.bm, i32 noundef 0, i32 noundef 0, i32 noundef %i.bf, i32 noundef %i.bf) #23
  call void @cairo_surface_destroy(ptr noundef %i.bm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.x, %i.ah
  %. = select nsz i1 %i.cd, float %i.x, float %i.ah ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ce = icmp samesign ugt i32 %i.w, 1024
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.600000e+01
  %i.cg = select reassoc nsz arcp contract afn i1 %i.cf, float 1.600000e+01, float %i.x
  %i.ch = fptosi float %i.cg to i32
  %i.ci = select i1 %i.ce, i32 1024, i32 %i.ch    ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt double %i.ag, f0x4090000010000000
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ah, 1.600000e+01
  %i.cl = select reassoc nsz arcp contract afn i1 %i.ck, float 1.600000e+01, float %i.ah
  %i.cm = fptosi float %i.cl to i32
  %i.cn = select i1 %i.cj, i32 1024, i32 %i.cm    ; 3 uses
  %13 = sitofp reassoc nsz arcp contract afn i32 %i.ci to double
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1432
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !102 ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn double %i.cq, 2.000000e+00 ; 2 uses
  %14 = fmul reassoc nsz arcp contract afn double %i.cr, %13
  %15 = fptosi double %14 to i32                  ; 4 uses
  %16 = sitofp reassoc nsz arcp contract afn i32 %i.cn to double
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cr, %16
  %i.ct = fptosi double %i.cs to i32              ; 4 uses
  %.not.i34 = icmp ne i32 %4, 0                   ; 2 uses
  %i.cu = select i1 %.not.i34, i32 2, i32 1
  %i.cv = uitofp nneg i32 %i.cu to double
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cq, %i.cv
  %i.cx = fptosi double %i.cw to i32              ; 6 uses
  %i.cy = fmul reassoc nsz arcp contract afn double %i.cq, 1.600000e+01
  %i.cz = fptosi double %i.cy to i32
  %i.da = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %15, i32 noundef %i.ct) #23 ; 3 uses
  %i.db = call ptr @cairo_create(ptr noundef %i.da) #23 ; 26 uses
  call void @cairo_set_source_rgba(ptr noundef %i.db, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.db) #23
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.cx to double ; 9 uses
  call void @cairo_set_line_width(ptr noundef %i.db, double noundef %i.dc) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.db, i32 noundef 35) #23
  %i.dd = shl nsw i32 %i.cx, 1
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.dd to double ; 6 uses
  call void @cairo_move_to(ptr noundef %i.db, double noundef %i.de, double noundef %i.de) #23
  %i.df = sub nsw i32 %15, %i.cx                  ; 2 uses
  %i.dg = sub nsw i32 %i.df, %i.cx
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %i.dg to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dh, double noundef %i.de) #23
  %i.di = sub nsw i32 %i.ct, %i.cx                ; 2 uses
  %i.dj = sub nsw i32 %i.di, %i.cx
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %i.dj to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dh, double noundef %i.dk) #23
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.de, double noundef %i.dk) #23
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.de, double noundef %i.de) #23
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %15 to double
  %i.dm = fmul reassoc nnan nsz arcp contract afn double %i.dl, 5.000000e-01 ; 5 uses
  %i.dn = fadd reassoc nsz arcp contract afn double %i.dm, %i.dc ; 2 uses
  %i.do = sitofp reassoc nsz arcp contract afn i32 %i.ct to double
  %i.dp = fmul reassoc nnan nsz arcp contract afn double %i.do, 5.000000e-01 ; 5 uses
  %i.dq = sitofp reassoc nsz arcp contract afn i32 %i.cz to double ; 4 uses
  %i.dr = fsub reassoc nsz arcp contract afn double %i.dp, %i.dq ; 2 uses
  call void @cairo_move_to(ptr noundef %i.db, double noundef %i.dn, double noundef %i.dr) #23
  %i.ds = fadd reassoc nsz arcp contract afn double %i.dp, %i.dq ; 2 uses
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dn, double noundef %i.ds) #23
  %i.dt = fsub reassoc nsz arcp contract afn double %i.dm, %i.dq ; 2 uses
  %i.du = fsub reassoc nsz arcp contract afn double %i.dp, %i.dc ; 2 uses
  call void @cairo_move_to(ptr noundef %i.db, double noundef %i.dt, double noundef %i.du) #23
  %i.dv = fadd reassoc nsz arcp contract afn double %i.dm, %i.dq ; 2 uses
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dv, double noundef %i.du) #23
  call void @cairo_stroke(ptr noundef %i.db) #23
  %i.dw = icmp eq i32 %i.ci, 1024
  %i.dx = icmp eq i32 %i.ci, 16
  %or.cond.i35 = or i1 %i.dw, %i.dx
  %i.dy = icmp eq i32 %i.cn, 1024
  %or.cond3.i = or i1 %or.cond.i35, %i.dy
  %i.dz = icmp eq i32 %i.cn, 16
  %or.cond5.i = or i1 %i.dz, %or.cond3.i
  %i.ea = and i1 %.not.i34, %or.cond5.i
  %i.eb = select i1 %i.ea, i32 36, i32 34
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.db, i32 noundef %i.eb) #23
  call void @cairo_move_to(ptr noundef %i.db, double noundef %i.dc, double noundef %i.dc) #23
  %i.ec = sitofp reassoc nsz arcp contract afn i32 %i.df to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.ec, double noundef %i.dc) #23
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.di to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.ec, double noundef %i.ed) #23
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dc, double noundef %i.ed) #23
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dc, double noundef %i.dc) #23
  call void @cairo_move_to(ptr noundef %i.db, double noundef %i.dm, double noundef %i.dr) #23
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dm, double noundef %i.ds) #23
  call void @cairo_move_to(ptr noundef %i.db, double noundef %i.dt, double noundef %i.dp) #23
  call void @cairo_line_to(ptr noundef %i.db, double noundef %i.dv, double noundef %i.dp) #23
  call void @cairo_stroke(ptr noundef %i.db) #23
  call void @cairo_destroy(ptr noundef %i.db) #23
  %i.ee = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.da, i32 noundef 0, i32 noundef 0, i32 noundef %15, i32 noundef %i.ct) #23
  call void @cairo_surface_destroy(ptr noundef %i.da) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_draw_ellipse.exit, %bb.e
  %.027 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.x, %bb.a ], [ %i.x, %bb.e ]
  %.026 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.ah, %bb.a ], [ %i.ah, %bb.e ]
  %.0 = phi ptr [ %i.cc, %_draw_ellipse.exit ], [ null, %bb.a ], [ %i.ee, %bb.e ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ef = fptosi float %.027 to i32
  store i32 %i.ef, ptr %1, align 4, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = fptosi float %.026 to i32
  store i32 %i.eg, ptr %2, align 4, !tbaa !131
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
end_hunk_1
begin_hunk_2_@_view_map_center_on_image_list:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.p = call i32 @sqlite3_step(ptr noundef %i.o) #23
  %i.q = icmp eq i32 %i.p, 100
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  br i1 %i.q, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.s = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.r, i32 noundef 0) #23
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.u = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.t, i32 noundef 1) #23
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.w = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.v, i32 noundef 2) #23
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.y = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.x, i32 noundef 3) #23
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.aa = call i32 @sqlite3_column_int(ptr noundef %i.z, i32 noundef 4) #23
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.ad = call i32 @sqlite3_finalize(ptr noundef %i.ac) #23 ; 0 uses
  call void @g_free(ptr noundef %i.d) #23
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = insertelement <4 x double> poison, double %i.y, i64 0
  %i.af = insertelement <4 x double> %i.ae, double %i.w, i64 1
  %i.ag = insertelement <4 x double> %i.af, double %i.u, i64 2
  %i.ah = insertelement <4 x double> %i.ag, double %i.s, i64 3 ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt <4 x double> %i.ah, <double 1.800000e+02, double 1.800000e+02, double 9.000000e+01, double 9.000000e+01>
  %i.aj = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.ah, <double -1.800000e+02, double -1.800000e+02, double -9.000000e+01, double -9.000000e+01>
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.ao = select <4 x i1> %i.aj, <4 x double> <double -1.800000e+02, double -1.800000e+02, double -9.000000e+01, double -9.000000e+01>, <4 x double> %i.ah
  %i.ap = select <4 x i1> %i.ai, <4 x double> <double 1.800000e+02, double 1.800000e+02, double 9.000000e+01, double 9.000000e+01>, <4 x double> %i.ao ; 3 uses
  %i.aq = fptrunc <4 x double> %i.ap to <4 x float> ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  %i.as = extractelement <4 x float> %i.aq, i64 1
  %i.at = extractelement <4 x float> %i.aq, i64 2
  %i.au = extractelement <4 x float> %i.aq, i64 3
  call void @osm_gps_map_zoom_fit_bbox(ptr noundef %i.am, float noundef %i.au, float noundef %i.at, float noundef %i.as, float noundef %i.ar) #23
  %i.av = load <2 x float>, ptr %i.an, align 4, !tbaa !107
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ax = fpext <4 x float> %i.aw to <4 x double>
  %i.ay = fmul reassoc nsz arcp contract afn <4 x double> %i.ax, <double 1.000000e+00, double 2.000000e-01, double 1.000000e+00, double 2.000000e-01> ; 2 uses
  %i.az = fadd reassoc nsz arcp contract afn <4 x double> %i.ap, %i.ay
  %i.ba = fsub reassoc nsz arcp contract afn <4 x double> %i.ap, %i.ay
  %i.bb = shufflevector <4 x double> %i.az, <4 x double> %i.ba, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt <4 x double> %i.bb, <double 1.800000e+02, double 1.800000e+02, double 9.000000e+01, double 9.000000e+01>
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117
  %i.bg = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.bb, <double -1.800000e+02, double -1.800000e+02, double -9.000000e+01, double -9.000000e+01>
  %i.bh = select <4 x i1> %i.bg, <4 x double> <double -1.800000e+02, double -1.800000e+02, double -9.000000e+01, double -9.000000e+01>, <4 x double> %i.bb
  %i.bi = select <4 x i1> %i.bc, <4 x double> <double 1.800000e+02, double 1.800000e+02, double 9.000000e+01, double 9.000000e+01>, <4 x double> %i.bh
  %i.bj = fptrunc <4 x double> %i.bi to <4 x float> ; 4 uses
  %i.bk = extractelement <4 x float> %i.bj, i64 0
  %i.bl = extractelement <4 x float> %i.bj, i64 1
  %i.bm = extractelement <4 x float> %i.bj, i64 2
  %i.bn = extractelement <4 x float> %i.bj, i64 3
  call void @osm_gps_map_zoom_fit_bbox(ptr noundef %i.bf, float noundef %i.bn, float noundef %i.bm, float noundef %i.bl, float noundef %i.bk) #23
  br label %bb.h

.critedge:                                        ; preds = %bb.e
  %i.bo = call i32 @sqlite3_finalize(ptr noundef %i.r) #23 ; 0 uses
  call void @g_free(ptr noundef %i.d) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.critedge, %bb.g
  %.058 = phi i32 [ 1, %bb.g ], [ 0, %.critedge ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.058
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_undo_do_undo(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_undo_do_redo(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @osm_gps_map_scroll(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @osm_gps_map_zoom_fit_bbox(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare i32 @osm_gps_map_layer_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_value_init(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @g_value_set_int(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_object_set_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_value_unset(ptr noundef) local_unnamed_addr #4

declare void @osm_gps_map_track_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_gpx_geodesic_distance(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_gpx_geodesic_intermediate_point(double noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @osm_gps_map_track_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_map_location_convert_polygons(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc double @_view_map_get_angles_ratio(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call ptr @osm_gps_map_point_new_degrees(float noundef %1, float noundef %2) #23 ; 2 uses
  %i.f = fadd reassoc nsz arcp contract afn float %1, 2.000000e+00
  %i.g = fadd reassoc nsz arcp contract afn float %2, 2.000000e+00
  %i.h = tail call ptr @osm_gps_map_point_new_degrees(float noundef %i.f, float noundef %i.g) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.j, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.k, ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  call void @osm_gps_map_point_free(ptr noundef %i.e) #23
  call void @osm_gps_map_point_free(ptr noundef %i.h) #23
  %i.l = load i32, ptr %i.c, align 4, !tbaa !131
  %i.m = load i32, ptr %i.a, align 4, !tbaa !131
  %i.n = sub nsw i32 %i.l, %i.m                   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.d, align 4, !tbaa !131
  %i.q = load i32, ptr %i.b, align 4, !tbaa !131
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = uitofp nneg i32 %i.n to float
  %i.v = fdiv reassoc nsz arcp contract afn float %i.t, %i.u
  %i.w = fpext reassoc nsz arcp contract afn float %i.v to double
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi nsz double [ %i.w, %bb.b ], [ 1.000000e+00, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret double %.0
}

declare ptr @g_list_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_image_get_location(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gtk_selection_data_get_length(ptr noundef) local_unnamed_addr #4

declare ptr @gtk_selection_data_get_data(ptr noundef) local_unnamed_addr #4

declare void @dt_image_set_locations(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_drag_finish(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

declare void @gtk_selection_data_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_selection_data_get_target(ptr noundef) local_unnamed_addr #4

declare void @dt_image_full_path(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { cold nounwind }

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
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!14 = !{!"dt_action_t", !8, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = !{!"dt_view_t", !14, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !7, i64 232, !15, i64 296, !11, i64 304, !8, i64 312, !8, i64 316, !16, i64 320, !16, i64 324, !16, i64 328, !16, i64 332, !16, i64 336, !16, i64 340, !16, i64 344, !16, i64 348}
!18 = !{!17, !11, i64 304}
!19 = !{!"p1 _ZTS10_OsmGpsMap", !11, i64 0}
!20 = !{!"p1 _ZTS15_OsmGpsMapLayer", !11, i64 0}
!21 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!22 = !{!"p1 _ZTS17dt_geo_position_t", !11, i64 0}
!23 = !{!"p1 _ZTS10_GdkPixbuf", !11, i64 0}
!24 = !{!"p1 _ZTS6_GList", !11, i64 0}
!25 = !{!"p1 _ZTS12sqlite3_stmt", !11, i64 0}
!26 = !{!"dt_map_box_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!27 = !{!"p1 _ZTS14dt_map_image_t", !11, i64 0}
!28 = !{!"double", !7, i64 0}
!29 = !{!"dt_map_location_data_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !8, i64 40, !24, i64 48, !8, i64 56}
!30 = !{!"dt_location_draw_t", !8, i64 0, !29, i64 8, !11, i64 72}
!31 = !{!"", !30, i64 0, !8, i64 80, !8, i64 84, !24, i64 88}
!32 = !{!"dt_map_t", !8, i64 0, !19, i64 8, !8, i64 16, !20, i64 24, !21, i64 32, !22, i64 40, !8, i64 48, !23, i64 56, !23, i64 64, !24, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !16, i64 100, !16, i64 104, !25, i64 112, !8, i64 120, !8, i64 124, !8, i64 128, !26, i64 132, !8, i64 148, !8, i64 152, !8, i64 156, !27, i64 160, !31, i64 168}
!33 = !{!32, !8, i64 0}
!34 = !{!"dt_codepath_t", !8, i64 0}
!35 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!36 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!37 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!38 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!39 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!40 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!41 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!42 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!43 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!44 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!45 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!46 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!47 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!48 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!49 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!50 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!51 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!52 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!53 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!54 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!55 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!56 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!57 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!58 = !{!"dt_pthread_mutex_t", !7, i64 0}
!59 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!60 = !{!"_Bool", !7, i64 0}
!61 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!62 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!63 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!64 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!65 = !{!"", !59, i64 0, !58, i64 8, !7, i64 48, !60, i64 96, !60, i64 97, !61, i64 104, !62, i64 112, !63, i64 120, !64, i64 128, !64, i64 136, !64, i64 144}
!66 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!67 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!68 = !{!"long", !7, i64 0}
!69 = !{!"p1 int", !11, i64 0}
!70 = !{!"dt_sys_resources_t", !68, i64 0, !68, i64 8, !69, i64 16, !69, i64 24, !8, i64 32}
!71 = !{!"dt_backthumb_t", !28, i64 0, !28, i64 8, !8, i64 16, !8, i64 20}
!72 = !{!"dt_gimp_t", !8, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !8, i64 28}
!73 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!74 = !{!"dt_splash_t", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !8, i64 32}
!75 = !{!"darktable_t", !34, i64 0, !8, i64 4, !8, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !35, i64 48, !36, i64 56, !37, i64 64, !38, i64 72, !39, i64 80, !40, i64 88, !41, i64 96, !42, i64 104, !43, i64 112, !44, i64 120, !45, i64 128, !46, i64 136, !47, i64 144, !48, i64 152, !49, i64 160, !50, i64 168, !51, i64 176, !52, i64 184, !53, i64 192, !54, i64 200, !55, i64 208, !56, i64 216, !57, i64 224, !7, i64 232, !58, i64 2792, !58, i64 2832, !58, i64 2872, !58, i64 2912, !58, i64 2952, !58, i64 2992, !12, i64 3032, !12, i64 3040, !12, i64 3048, !12, i64 3056, !12, i64 3064, !12, i64 3072, !12, i64 3080, !12, i64 3088, !12, i64 3096, !12, i64 3104, !12, i64 3112, !12, i64 3120, !12, i64 3128, !65, i64 3136, !24, i64 3288, !28, i64 3296, !24, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !66, i64 3520, !67, i64 3528, !70, i64 3536, !71, i64 3576, !72, i64 3600, !74, i64 3632, !8, i64 3672}
!76 = !{!75, !39, i64 80}
!77 = !{!"p1 _ZTS9dt_view_t", !11, i64 0}
!78 = !{!"p1 _ZTS12_GtkTreeView", !11, i64 0}
!79 = !{!"dt_history_copy_item_t", !24, i64 0, !78, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!80 = !{!"", !73, i64 0, !73, i64 8, !73, i64 16, !8, i64 24, !8, i64 28}
!81 = !{!"dt_act_on_cache_t", !24, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !21, i64 24, !8, i64 32, !8, i64 36}
!82 = !{!"", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!83 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!84 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!85 = !{!"", !84, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!86 = !{!"", !84, i64 0, !11, i64 8}
!87 = !{!"", !84, i64 0}
!88 = !{!"", !84, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!89 = !{!"", !77, i64 0, !11, i64 8}
!90 = !{!"", !84, i64 0, !77, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120}
!91 = !{!"", !77, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!92 = !{!"", !77, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!93 = !{!"", !85, i64 0, !86, i64 32, !87, i64 48, !88, i64 56, !87, i64 96, !89, i64 104, !90, i64 120, !91, i64 248, !87, i64 280, !92, i64 288, !89, i64 384}
!94 = !{!"dt_view_manager_t", !24, i64 0, !77, i64 8, !21, i64 16, !79, i64 24, !80, i64 56, !81, i64 88, !81, i64 128, !82, i64 168, !83, i64 216, !73, i64 232, !73, i64 240, !73, i64 248, !73, i64 256, !73, i64 264, !73, i64 272, !73, i64 280, !93, i64 288}
!95 = !{!94, !77, i64 576}
!96 = !{!75, !42, i64 104}
!97 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!98 = !{!"dt_gui_widgets_t", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!99 = !{!"dt_gui_scrollbars_t", !73, i64 0, !73, i64 8, !8, i64 16}
!100 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!101 = !{!"dt_gui_gtk_t", !97, i64 0, !98, i64 8, !99, i64 56, !100, i64 80, !8, i64 88, !12, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !28, i64 1384, !28, i64 1392, !28, i64 1400, !28, i64 1408, !73, i64 1416, !28, i64 1424, !28, i64 1432, !28, i64 1440, !28, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!102 = !{!101, !28, i64 1432}
!103 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!104 = !{!32, !23, i64 56}
!105 = !{!32, !23, i64 64}
!106 = !{!32, !8, i64 120}
!107 = !{!16, !16, i64 0}
!108 = !{!32, !8, i64 148}
!109 = !{!32, !8, i64 152}
!110 = !{!32, !8, i64 168}
!111 = !{!32, !11, i64 240}
!112 = !{!32, !8, i64 252}
!113 = !{!32, !24, i64 256}
!114 = !{!32, !27, i64 160}
!115 = !{!7, !7, i64 0}
!116 = !{!32, !8, i64 16}
!117 = !{!32, !19, i64 8}
!118 = !{!32, !20, i64 24}
!119 = !{!32, !25, i64 112}
!120 = !{!75, !8, i64 3312}
!121 = !{!75, !8, i64 8}
!122 = !{!75, !41, i64 96}
!123 = !{!"p1 _ZTS10_GdkWindow", !11, i64 0}
!124 = !{!"p1 _ZTS10_GdkDevice", !11, i64 0}
!125 = !{!21, !21, i64 0}
!126 = !{!"_GSList", !11, i64 0, !21, i64 8}
!127 = !{!126, !11, i64 0}
!128 = !{!"p1 _ZTS15_OsmGpsMapImage", !11, i64 0}
!129 = !{!"dt_map_image_t", !8, i64 0, !28, i64 8, !28, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !128, i64 40, !8, i64 48, !8, i64 52, !8, i64 56}
!130 = !{!129, !128, i64 40}
!131 = !{!8, !8, i64 0}
!132 = !{!129, !8, i64 48}
!133 = !{!129, !8, i64 52}
!134 = !{!32, !28, i64 200}
!135 = !{!28, !28, i64 0}
!136 = !{!32, !8, i64 92}
!137 = !{!32, !8, i64 96}
!138 = !{!"dt_image_geoloc_t", !28, i64 0, !28, i64 8, !28, i64 16}
!139 = !{!32, !24, i64 72}
!140 = !{!24, !24, i64 0}
!141 = !{!"_GList", !11, i64 0, !24, i64 8, !24, i64 16}
!142 = !{!141, !11, i64 0}
end_hunk_2
