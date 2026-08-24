Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_draw_location:bb.a
  %i.db = fptosi double %i.da to i32              ; 4 uses
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.cu to double
  %i.dd = fmul reassoc nsz arcp contract afn double %i.cz, %i.dc
  %i.de = fptosi double %i.dd to i32              ; 4 uses
  %.not.i34 = icmp ne i32 %4, 0                   ; 2 uses
  %i.df = select i1 %.not.i34, i32 2, i32 1
  %i.dg = uitofp nneg i32 %i.df to double
  %i.dh = fmul reassoc nsz arcp contract afn double %i.cy, %i.dg
  %i.di = fptosi double %i.dh to i32              ; 6 uses
  %i.dj = fmul reassoc nsz arcp contract afn double %i.cy, 1.600000e+01
  %i.dk = fptosi double %i.dj to i32
  %i.dl = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.db, i32 noundef %i.de) #23 ; 3 uses
  %i.dm = call ptr @cairo_create(ptr noundef %i.dl) #23 ; 26 uses
  call void @cairo_set_source_rgba(ptr noundef %i.dm, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.dm) #23
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.di to double ; 9 uses
  call void @cairo_set_line_width(ptr noundef %i.dm, double noundef %i.dn) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.dm, i32 noundef 35) #23
  %i.do = shl nsw i32 %i.di, 1
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to double ; 6 uses
  call void @cairo_move_to(ptr noundef %i.dm, double noundef %i.dp, double noundef %i.dp) #23
  %i.dq = sub nsw i32 %i.db, %i.di                ; 2 uses
  %i.dr = sub nsw i32 %i.dq, %i.di
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.ds, double noundef %i.dp) #23
  %i.dt = sub nsw i32 %i.de, %i.di                ; 2 uses
  %i.du = sub nsw i32 %i.dt, %i.di
  %i.dv = sitofp reassoc nsz arcp contract afn i32 %i.du to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.ds, double noundef %i.dv) #23
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dp, double noundef %i.dv) #23
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dp, double noundef %i.dp) #23
  %i.dw = sitofp reassoc nsz arcp contract afn i32 %i.db to double
  %i.dx = fmul reassoc nnan nsz arcp contract afn double %i.dw, 5.000000e-01 ; 5 uses
  %i.dy = fadd reassoc nsz arcp contract afn double %i.dx, %i.dn ; 2 uses
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.de to double
  %i.ea = fmul reassoc nnan nsz arcp contract afn double %i.dz, 5.000000e-01 ; 5 uses
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.dk to double ; 4 uses
  %i.ec = fsub reassoc nsz arcp contract afn double %i.ea, %i.eb ; 2 uses
  call void @cairo_move_to(ptr noundef %i.dm, double noundef %i.dy, double noundef %i.ec) #23
  %i.ed = fadd reassoc nsz arcp contract afn double %i.ea, %i.eb ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dy, double noundef %i.ed) #23
  %i.ee = fsub reassoc nsz arcp contract afn double %i.dx, %i.eb ; 2 uses
  %i.ef = fsub reassoc nsz arcp contract afn double %i.ea, %i.dn ; 2 uses
  call void @cairo_move_to(ptr noundef %i.dm, double noundef %i.ee, double noundef %i.ef) #23
  %i.eg = fadd reassoc nsz arcp contract afn double %i.dx, %i.eb ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.eg, double noundef %i.ef) #23
  call void @cairo_stroke(ptr noundef %i.dm) #23
  %i.eh = icmp eq i32 %i.cp, 1024
  %i.ei = icmp eq i32 %i.cp, 16
  %or.cond.i35 = or i1 %i.eh, %i.ei
  %i.ej = icmp eq i32 %i.cu, 1024
  %or.cond3.i = or i1 %or.cond.i35, %i.ej
  %i.ek = icmp eq i32 %i.cu, 16
  %or.cond5.i = or i1 %i.ek, %or.cond3.i
  %i.el = and i1 %.not.i34, %or.cond5.i
  %i.em = select i1 %i.el, i32 36, i32 34
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.dm, i32 noundef %i.em) #23
  call void @cairo_move_to(ptr noundef %i.dm, double noundef %i.dn, double noundef %i.dn) #23
  %i.en = sitofp reassoc nsz arcp contract afn i32 %i.dq to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.en, double noundef %i.dn) #23
  %i.eo = sitofp reassoc nsz arcp contract afn i32 %i.dt to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.en, double noundef %i.eo) #23
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dn, double noundef %i.eo) #23
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dn, double noundef %i.dn) #23
  call void @cairo_move_to(ptr noundef %i.dm, double noundef %i.dx, double noundef %i.ec) #23
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dx, double noundef %i.ed) #23
  call void @cairo_move_to(ptr noundef %i.dm, double noundef %i.ee, double noundef %i.ea) #23
  call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.eg, double noundef %i.ea) #23
  call void @cairo_stroke(ptr noundef %i.dm) #23
  call void @cairo_destroy(ptr noundef %i.dm) #23
  %i.ep = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.dl, i32 noundef 0, i32 noundef 0, i32 noundef %i.db, i32 noundef %i.de) #23
  call void @cairo_surface_destroy(ptr noundef %i.dl) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_draw_ellipse.exit, %bb.e
  %.027 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.x, %bb.a ], [ %i.x, %bb.e ]
  %.026 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.ah, %bb.a ], [ %i.ah, %bb.e ]
  %.0 = phi ptr [ %i.cj, %_draw_ellipse.exit ], [ null, %bb.a ], [ %i.ep, %bb.e ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eq = fptosi float %.027 to i32
  store i32 %i.eq, ptr %1, align 4, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = fptosi float %.026 to i32
  store i32 %i.er, ptr %2, align 4, !tbaa !135
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !167
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %.not73 = icmp eq ptr %i.g, null
  br i1 %.not73, label %.thread77.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.i, ptr noundef nonnull %i.g) #23 ; 0 uses
  store ptr null, ptr %i.f, align 8, !tbaa !132
  br label %.thread77.sink.split

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !168  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !169  ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.thread77

.lr.ph:                                           ; preds = %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !166
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv116 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next117, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 8 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !173
  %i.t = icmp eq i32 %i.s, %i.p
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.not71 = icmp eq i32 %2, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br i1 %.not71, label %.preheader83.preheader, label %.preheader87

.preheader83.preheader:                           ; preds = %bb.g
  %.not160 = icmp eq i64 %indvars.iv, 0
  br i1 %.not160, label %.preheader, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader83.preheader
  %i.v = load i32, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph156

.preheader87:                                     ; preds = %bb.g
  %3 = zext nneg i32 %i.n to i64                  ; 2 uses
  %indvars.iv.next111152 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next111152, %3
  br i1 %4, label %.lr.ph154.preheader, label %.preheader84

.lr.ph154.preheader:                              ; preds = %.preheader87
  %i.w = load i32, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph154

bb.h:                                             ; preds = %.lr.ph154
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv.next111153, 1 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next111, %3
  br i1 %5, label %.lr.ph154, label %.preheader84

.preheader84:                                     ; preds = %bb.h, %.preheader87
  %.not98 = icmp eq i64 %indvars.iv, 0
  br i1 %.not98, label %.thread77, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader84
  %i.x = load i32, ptr %i.u, align 8, !tbaa !172
  %wide.trip.count119 = zext nneg i32 %indvars.iv116 to i64
  br label %bb.i

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.h
  %indvars.iv.next111153 = phi i64 [ %indvars.iv.next111, %bb.h ], [ %indvars.iv.next111152, %.lr.ph154.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv.next111153
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, %i.w
  br i1 %i.ab, label %.thread80, label %bb.h

bb.i:                                             ; preds = %.lr.ph97, %bb.j
  %indvars.iv113 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next114, %bb.j ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv113
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !170
  %i.af = icmp eq i32 %i.ae, %i.x
  br i1 %i.af, label %.thread80, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count119
  br i1 %exitcond120.not, label %.thread77, label %bb.i

.preheader83:                                     ; preds = %.lr.ph156
  %i.ag = icmp sgt i64 %indvars.iv123155, 1
  br i1 %i.ag, label %.lr.ph156, label %.preheader

.preheader:                                       ; preds = %.preheader83, %.preheader83.preheader
  %i.ah = zext nneg i32 %i.n to i64
  %indvars.iv.next127157 = add nsw i64 %i.ah, -1  ; 2 uses
  %i.ai = icmp sgt i64 %indvars.iv.next127157, %indvars.iv
  br i1 %i.ai, label %.lr.ph159.preheader, label %.thread77

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph159

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %.preheader83
  %indvars.iv123155 = phi i64 [ %indvars.iv.next124, %.preheader83 ], [ %indvars.iv, %.lr.ph156.preheader ] ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123155, -1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv.next124
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !170
  %i.an = icmp eq i32 %i.am, %i.v
  br i1 %i.an, label %.thread80, label %.preheader83

bb.k:                                             ; preds = %.lr.ph159
  %indvars.iv.next127 = add nsw i64 %indvars.iv.next127158, -1 ; 2 uses
  %i.ao = icmp sgt i64 %indvars.iv.next127, %indvars.iv
  br i1 %i.ao, label %.lr.ph159, label %.thread77

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.k
  %indvars.iv.next127158 = phi i64 [ %indvars.iv.next127, %bb.k ], [ %indvars.iv.next127157, %.lr.ph159.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds [40 x i8], ptr %i.l, i64 %indvars.iv.next127158
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !170
  %i.as = icmp eq i32 %i.ar, %i.aj
  br i1 %i.as, label %.thread80, label %bb.k

bb.l:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next117 = add nuw nsw i32 %indvars.iv116, 1
  br i1 %exitcond.not, label %.thread77, label %bb.f

.thread80:                                        ; preds = %.lr.ph154, %bb.i, %.lr.ph156, %.lr.ph159
  %.582.in = phi i64 [ %indvars.iv.next127158, %.lr.ph159 ], [ %indvars.iv.next124, %.lr.ph156 ], [ %indvars.iv113, %bb.i ], [ %indvars.iv.next111153, %.lr.ph154 ]
  %sext = shl i64 %.582.in, 32
  %i.at = ashr exact i64 %sext, 32
  %i.au = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !173
  store i32 %i.aw, ptr %1, align 8, !tbaa !166
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !132 ; 2 uses
  %.not72 = icmp eq ptr %i.ay, null
  br i1 %.not72, label %.thread77.sink.split, label %bb.m

bb.m:                                             ; preds = %.thread80
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117
  %i.bb = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.ba, ptr noundef nonnull %i.ay) #23 ; 0 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !132
  br label %.thread77.sink.split

.thread77.sink.split:                             ; preds = %.thread80, %bb.m, %bb.c, %bb.d
  %i.bc = tail call fastcc i32 @_view_map_draw_image(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, ptr noundef %0) ; 0 uses
  %i.bd = load i32, ptr %1, align 8, !tbaa !166
  tail call void @dt_control_set_mouse_over_id(i32 noundef %i.bd) #23
  br label %.thread77

.thread77:                                        ; preds = %bb.l, %bb.j, %bb.k, %.preheader, %.thread77.sink.split, %bb.e, %.preheader84, %bb.a
  %.167 = phi i32 [ 1, %.thread77.sink.split ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %.preheader84 ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  ret i32 %.167
}

declare void @dt_control_set_mouse_over_id(i32 noundef) local_unnamed_addr #4

declare ptr @osm_gps_map_image_get_point(ptr noundef) local_unnamed_addr #4

declare i32 @dt_map_location_included(float noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_zoom_and_center(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree readonly captures(none) %.304.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca [2 x %struct._OsmGpsMapPoint], align 16 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.i = getelementptr inbounds nuw i8, ptr %.304.val, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  call void (ptr, ptr, ...) @g_object_get(ptr noundef %i.j, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.b, ptr noundef null) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @osm_gps_map_get_bbox(ptr noundef %i.k, ptr noundef nonnull %3, ptr noundef nonnull %i.l) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.m, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #23
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #23
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.a, align 4, !tbaa !135  ; 2 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !135
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.p, 1
  store i32 %i.s, ptr %i.a, align 4, !tbaa !135
  %i.t = load i32, ptr %i.c, align 4, !tbaa !135
  %i.u = load i32, ptr %i.d, align 4, !tbaa !135
  %i.v = shl nsw i32 %0, 1
  %i.w = add i32 %i.t, %i.v
  %i.x = add i32 %i.w, %i.u
  %i.y = sdiv i32 %i.x, 4
  %i.z = load i32, ptr %i.e, align 4, !tbaa !135
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !135
  %i.ab = shl nsw i32 %1, 1
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = sdiv i32 %i.ad, 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.af = icmp eq i32 %2, 1
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %or.cond = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !135
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !135
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !135
  %i.al = sub i32 %i.aj, %0
  %i.am = add i32 %i.al, %i.ak
  %i.an = load i32, ptr %i.e, align 4, !tbaa !135
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !135
  %i.ap = sub i32 %i.an, %1
  %i.aq = add i32 %i.ap, %i.ao
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.020 = phi i32 [ %i.y, %bb.c ], [ %i.am, %bb.e ]
  %.019 = phi i32 [ %i.ae, %bb.c ], [ %i.aq, %bb.e ]
  %i.ar = call ptr @osm_gps_map_point_new_degrees(float noundef 0.000000e+00, float noundef 0.000000e+00) #23 ; 3 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !117
  call void @osm_gps_map_convert_screen_to_geographic(ptr noundef %i.as, i32 noundef %.020, i32 noundef %.019, ptr noundef %i.ar) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.ar, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #23
  call void @osm_gps_map_point_free(ptr noundef %i.ar) #23
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.au = load float, ptr %i.g, align 4, !tbaa !107
  %i.av = load float, ptr %i.h, align 4, !tbaa !107
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !135
  call void @osm_gps_map_set_center_and_zoom(ptr noundef %i.at, float noundef %i.au, float noundef %i.av, i32 noundef %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #4

declare void @dt_map_location_set_data(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_map_location_update_images(ptr noundef) local_unnamed_addr #4

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_view_map_signal_change_delayed(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !112  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !112
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !123
  tail call void @dt_control_signal_block_by_func(ptr noundef %i.f, ptr noundef nonnull @_view_map_geotag_changed, ptr noundef nonnull %0) #23
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !123
  tail call void @dt_control_signal_block_by_func(ptr noundef %i.g, ptr noundef nonnull @_view_map_collection_changed, ptr noundef nonnull %0) #23
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !121
  %i.i = trunc i32 %i.h to i1
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.k = icmp ne i32 %i.j, 0
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.d, label %_view_map_signal_change_raise.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.m = and i32 %i.l, 1048576
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_view_map_signal_change_raise.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef 888, ptr noundef nonnull @__FUNCTION__._view_map_signal_change_raise) #23
  br label %_view_map_signal_change_raise.exit

_view_map_signal_change_raise.exit:               ; preds = %bb.c, %bb.d, %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !123
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.n, i32 noundef 10, ptr noundef null, i32 noundef 0) #23
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !123
  tail call void @dt_control_signal_unblock_by_func(ptr noundef %i.o, ptr noundef nonnull @_view_map_collection_changed, ptr noundef nonnull %0) #23
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !123
  tail call void @dt_control_signal_unblock_by_func(ptr noundef %i.p, ptr noundef nonnull @_view_map_geotag_changed, ptr noundef nonnull %0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_view_map_signal_change_raise.exit
  %.0 = phi i32 [ 0, %_view_map_signal_change_raise.exit ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}
end_hunk_0
