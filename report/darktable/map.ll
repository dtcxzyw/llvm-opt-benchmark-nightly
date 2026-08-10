inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_draw_location:bb.a

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
  %indvars.iv117 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next118, %bb.l ] ; 2 uses
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
  %.not162 = icmp eq i64 %indvars.iv, 0
  br i1 %.not162, label %.preheader, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %.preheader83.preheader
  %i.v = load i32, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph157

.preheader87:                                     ; preds = %bb.g
  %i.w = zext nneg i32 %i.n to i64                ; 2 uses
  %indvars.iv.next112153 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next112153, %i.w
  br i1 %i.x, label %.lr.ph155.preheader, label %.preheader84

.lr.ph155.preheader:                              ; preds = %.preheader87
  %i.y = load i32, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph155

bb.h:                                             ; preds = %.lr.ph155
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv.next112154, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next112, %i.w
  br i1 %i.z, label %.lr.ph155, label %.preheader84

.preheader84:                                     ; preds = %bb.h, %.preheader87
  %.not99 = icmp eq i64 %indvars.iv, 0
  br i1 %.not99, label %.thread77, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader84
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !172
  %wide.trip.count120 = zext nneg i32 %indvars.iv117 to i64
  br label %bb.i

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.h
  %indvars.iv.next112154 = phi i64 [ %indvars.iv.next112, %bb.h ], [ %indvars.iv.next112153, %.lr.ph155.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv.next112154
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !170
  %i.ae = icmp eq i32 %i.ad, %i.y
  br i1 %i.ae, label %.thread80, label %bb.h

bb.i:                                             ; preds = %.lr.ph98, %bb.j
  %indvars.iv114 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next115, %bb.j ] ; 3 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv114
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !170
  %i.ai = icmp eq i32 %i.ah, %i.aa
  br i1 %i.ai, label %.thread80, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count120
  br i1 %exitcond121.not, label %.thread77, label %bb.i

.preheader83:                                     ; preds = %.lr.ph157
  %i.aj = icmp sgt i64 %indvars.iv124156, 1
  br i1 %i.aj, label %.lr.ph157, label %.preheader

.preheader:                                       ; preds = %.preheader83, %.preheader83.preheader
  %i.ak = zext nneg i32 %i.n to i64
  %indvars.iv.next128158 = add nsw i64 %i.ak, -1  ; 2 uses
  %i.al = icmp sgt i64 %indvars.iv.next128158, %indvars.iv
  br i1 %i.al, label %.lr.ph161.preheader, label %.thread77

.lr.ph161.preheader:                              ; preds = %.preheader
  %i.am = load i32, ptr %i.u, align 8, !tbaa !172
  br label %.lr.ph161

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.preheader83
  %indvars.iv124156 = phi i64 [ %indvars.iv.next125, %.preheader83 ], [ %indvars.iv, %.lr.ph157.preheader ] ; 2 uses
  %indvars.iv.next125 = add nsw i64 %indvars.iv124156, -1 ; 3 uses
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv.next125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !170
  %i.aq = icmp eq i32 %i.ap, %i.v
  br i1 %i.aq, label %.thread80, label %.preheader83

bb.k:                                             ; preds = %.lr.ph161
  %indvars.iv.next128 = add nsw i64 %indvars.iv.next128160, -1 ; 2 uses
  %i.ar = icmp sgt i64 %indvars.iv.next128, %indvars.iv
  br i1 %i.ar, label %.lr.ph161, label %.thread77

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %bb.k
  %indvars.iv.next128160 = phi i64 [ %indvars.iv.next128, %bb.k ], [ %indvars.iv.next128158, %.lr.ph161.preheader ] ; 4 uses
  %indvars.iv127159 = phi i64 [ %indvars.iv.next128160, %bb.k ], [ 1, %.lr.ph161.preheader ]
  %i.as = getelementptr inbounds [40 x i8], ptr %i.l, i64 %indvars.iv.next128160
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !170
  %i.av = icmp eq i32 %i.au, %i.am
  br i1 %i.av, label %3, label %bb.k

bb.l:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next118 = add nuw nsw i32 %indvars.iv117, 1
  br i1 %exitcond.not, label %.thread77, label %bb.f

3:                                                ; preds = %.lr.ph161
  %4 = icmp eq i64 %indvars.iv127159, 0
  br i1 %4, label %.thread77, label %.thread80

.thread80:                                        ; preds = %.lr.ph155, %bb.i, %.lr.ph157, %3
  %.582.in = phi i64 [ %indvars.iv.next128160, %3 ], [ %indvars.iv114, %bb.i ], [ %indvars.iv.next125, %.lr.ph157 ], [ %indvars.iv.next112154, %.lr.ph155 ]
  %sext = shl i64 %.582.in, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !173
  store i32 %i.az, ptr %1, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132 ; 2 uses
  %.not72 = icmp eq ptr %i.bb, null
  br i1 %.not72, label %.thread77.sink.split, label %bb.m

bb.m:                                             ; preds = %.thread80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.be = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.bd, ptr noundef nonnull %i.bb) #23 ; 0 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !132
  br label %.thread77.sink.split

.thread77.sink.split:                             ; preds = %.thread80, %bb.m, %bb.c, %bb.d
  %i.bf = tail call fastcc i32 @_view_map_draw_image(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, ptr noundef %0) ; 0 uses
  %i.bg = load i32, ptr %1, align 8, !tbaa !166
  tail call void @dt_control_set_mouse_over_id(i32 noundef %i.bg) #23
  br label %.thread77

.thread77:                                        ; preds = %bb.l, %bb.j, %bb.k, %.preheader, %.thread77.sink.split, %bb.e, %.preheader84, %3, %bb.a
  %.167 = phi i32 [ 1, %.thread77.sink.split ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %3 ], [ 0, %bb.e ], [ 0, %.preheader84 ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
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

declare void @dt_control_signal_block_by_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_control_signal_unblock_by_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @osm_gps_map_set_center_and_zoom(ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @g_object_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_value_get_int(ptr noundef) local_unnamed_addr #4

declare void @dt_ctl_switch_mode_to(ptr noundef) local_unnamed_addr #4

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_signal_emit_by_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_view_map_center_on_image_list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.86, ptr noundef %1) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
end_hunk_0
