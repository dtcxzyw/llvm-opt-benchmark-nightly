Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_scroll_event:bb.a
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, 1.100000e+00
  store double %i.bo, ptr %i.bm, align 8, !tbaa !209
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bn, f0x3FED1745D1745D17
  store double %i.bp, ptr %i.bm, align 8, !tbaa !209
  br label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.bq = load i32, ptr %i.bd, align 8, !tbaa !208
  %i.br = call i32 @gtk_accelerator_get_default_mod_mask() #23
  %i.bs = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !131
  %i.bt = or i32 %i.bs, %i.bq
  %i.bu = and i32 %i.bt, %i.br
  %.not52 = icmp eq i32 %i.bu, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !207
  %i.bx = icmp eq i32 %i.bw, 1                    ; 2 uses
  br i1 %.not52, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 3 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !134 ; 2 uses
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = fmul reassoc nsz arcp contract afn double %i.bz, 1.100000e+00
  store double %i.ca, ptr %i.by, align 8, !tbaa !134
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.cb = fmul reassoc nsz arcp contract afn double %i.bz, f0x3FED1745D1745D17
  store double %i.cb, ptr %i.by, align 8, !tbaa !134
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 3 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !209 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 2 uses
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !134
  %i.cg = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cf, i64 1
  %i.ci = fmul reassoc nsz arcp contract afn <2 x double> %i.ch, splat (double 1.100000e+00)
  store <2 x double> %i.ci, ptr %i.cc, align 8, !tbaa !135
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cj = load double, ptr %i.ce, align 8, !tbaa !134
  %i.ck = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = fmul reassoc nsz arcp contract afn <2 x double> %i.cl, splat (double f0x3FED1745D1745D17)
  store <2 x double> %i.cm, ptr %i.cc, align 8, !tbaa !135
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.r, %bb.q, %bb.j, %bb.k
  call fastcc void @_view_map_draw_main_location(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ax)
  %.val44 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val44, i64 168 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !110 ; 2 uses
  %.not.i47 = icmp eq i32 %i.co, 0
  br i1 %.not.i47, label %_view_map_update_location_geotag.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %.val44, i64 176
  call void @dt_map_location_set_data(i32 noundef %i.co, ptr noundef nonnull %i.cp) #23
  %i.cq = call i32 @dt_map_location_update_images(ptr noundef nonnull %i.cn) #23
  %.not6.i = icmp eq i32 %i.cq, 0
  br i1 %.not6.i, label %_view_map_update_location_geotag.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.cs = trunc i32 %i.cr to i1
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.cu = icmp ne i32 %i.ct, 0
  %or.cond.i48 = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %or.cond.i48, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.cw = and i32 %i.cv, 1048576
  %.not7.i = icmp eq i32 %i.cw, 0
  br i1 %.not7.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.27, i32 noundef 1224, ptr noundef nonnull @__FUNCTION__._view_map_update_location_geotag) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.cx, i32 noundef 9) #23
  br label %_view_map_update_location_geotag.exit

_view_map_update_location_geotag.exit:            ; preds = %bb.s, %bb.t, %bb.x
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 252 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !112
  %.not.i49 = icmp eq i32 %i.da, 0
  store i32 3, ptr %i.cz, align 4, !tbaa !112
  br i1 %.not.i49, label %bb.y, label %_view_map_signal_change_wait.exit

bb.y:                                             ; preds = %_view_map_update_location_geotag.exit
  %i.db = call i32 @g_timeout_add(i32 noundef 100, ptr noundef nonnull @_view_map_signal_change_delayed, ptr noundef nonnull %2) #23 ; 0 uses
  br label %_view_map_signal_change_wait.exit

bb.z:                                             ; preds = %bb.g
  %i.dc = load float, ptr %i.c, align 4, !tbaa !107
  %i.dd = load float, ptr %i.d, align 4, !tbaa !107
  %i.de = call ptr @dt_util_latitude_str(float noundef %i.dc) #23 ; 2 uses
  %i.df = call ptr @dt_util_longitude_str(float noundef %i.dd) #23 ; 2 uses
  call void (ptr, ...) @dt_toast_log(ptr noundef nonnull @.str.73, ptr noundef %i.de, ptr noundef %i.df) #23
  call void @g_free(ptr noundef %i.de) #23
  call void @g_free(ptr noundef %i.df) #23
  %i.dg = load double, ptr %i.g, align 8, !tbaa !205
  %i.dh = fptosi double %i.dg to i32
  %i.di = load double, ptr %i.i, align 8, !tbaa !206
  %i.dj = fptosi double %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !207
  %.val46 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dm = call fastcc i32 @_zoom_and_center(i32 noundef %i.dh, i32 noundef %i.dj, i32 noundef %i.dl, ptr %.val46)
  br label %_view_map_signal_change_wait.exit

bb.aa:                                            ; preds = %_view_map_get_entry_at_pos.exit.thread
  %i.dn = load float, ptr %i.c, align 4, !tbaa !107
  %i.do = load float, ptr %i.d, align 4, !tbaa !107
  %i.dp = call ptr @dt_util_latitude_str(float noundef %i.dn) #23 ; 2 uses
  %i.dq = call ptr @dt_util_longitude_str(float noundef %i.do) #23 ; 2 uses
  call void (ptr, ...) @dt_toast_log(ptr noundef nonnull @.str.73, ptr noundef %i.dp, ptr noundef %i.dq) #23
  call void @g_free(ptr noundef %i.dp) #23
  call void @g_free(ptr noundef %i.dq) #23
  %i.dr = load double, ptr %i.g, align 8, !tbaa !205
  %i.ds = fptosi double %i.dr to i32
  %i.dt = load double, ptr %i.i, align 8, !tbaa !206
  %i.du = fptosi double %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !207
  %.val45 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dx = call fastcc i32 @_zoom_and_center(i32 noundef %i.ds, i32 noundef %i.du, i32 noundef %i.dw, ptr %.val45)
  br label %_view_map_signal_change_wait.exit

_view_map_signal_change_wait.exit:                ; preds = %bb.y, %_view_map_update_location_geotag.exit, %bb.aa, %bb.z
  %.0 = phi i32 [ %i.dx, %bb.aa ], [ %i.dm, %bb.z ], [ 1, %_view_map_update_location_geotag.exit ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.f, %_view_map_signal_change_wait.exit
  %.1 = phi i32 [ %.0, %_view_map_signal_change_wait.exit ], [ 1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @_drag_and_drop_received(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %8 = alloca %struct.dt_image_geoloc_t, align 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 10 uses
  %i.g = icmp ne ptr %4, null
  %i.h = icmp eq i32 %5, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @gtk_selection_data_get_length(ptr noundef nonnull %4) #23
  %i.j = ashr i32 %i.i, 2                         ; 4 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @gtk_selection_data_get_data(ptr noundef nonnull %4) #23 ; 2 uses
  %i.l = icmp eq i32 %i.j, 1
  br i1 %i.l, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !131
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @osm_gps_map_point_new_degrees(float noundef 0.000000e+00, float noundef 0.000000e+00) #23 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  tail call void @osm_gps_map_convert_screen_to_geographic(ptr noundef %i.q, i32 noundef %2, i32 noundef %3, ptr noundef %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %i.r = load float, ptr %i.a, align 4, !tbaa !107 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.u = load float, ptr %i.b, align 4, !tbaa !107 ; 2 uses
  %i.v = insertelement <2 x float> poison, float %i.u, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.r, i64 1
  %i.x = fpext <2 x float> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !135
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 208 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !210
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float
  %i.ab = call reassoc nsz arcp contract afn fastcc double @_view_map_get_angles_ratio(ptr noundef %i.f, float noundef %i.r, float noundef %i.u) ; 2 uses
  store double %i.ab, ptr %i.y, align 8, !tbaa !210
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !134
  %i.ae = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.af = fmul reassoc nsz arcp contract afn double %i.ad, %i.ae
  %i.ag = fdiv reassoc nsz arcp contract afn double %i.af, %i.ab
  store double %i.ag, ptr %i.ac, align 8, !tbaa !134
  call void @osm_gps_map_point_free(ptr noundef %i.o) #23
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_view_map_update_location_geotag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 176
  call void @dt_map_location_set_data(i32 noundef %i.ai, ptr noundef nonnull %i.aj) #23
  %i.ak = call i32 @dt_map_location_update_images(ptr noundef nonnull %i.ah) #23
  %.not6.i = icmp eq i32 %i.ak, 0
  br i1 %.not6.i, label %_view_map_update_location_geotag.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.am = trunc i32 %i.al to i1
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.i = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.aq = and i32 %i.ap, 1048576
  %.not7.i = icmp eq i32 %i.aq, 0
  br i1 %.not7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.27, i32 noundef 1224, ptr noundef nonnull @__FUNCTION__._view_map_update_location_geotag) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ar, i32 noundef 9) #23
  br label %_view_map_update_location_geotag.exit

_view_map_update_location_geotag.exit:            ; preds = %bb.e, %bb.f, %bb.j
  call fastcc void @_view_map_draw_main_location(ptr noundef nonnull %i.f, ptr noundef nonnull %i.s)
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 252 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !112
  %.not.i59 = icmp eq i32 %i.au, 0
  store i32 1, ptr %i.at, align 4, !tbaa !112
  br i1 %.not.i59, label %bb.k, label %_view_map_signal_change_wait.exit

bb.k:                                             ; preds = %_view_map_update_location_geotag.exit
  %i.av = call i32 @g_timeout_add(i32 noundef 100, ptr noundef nonnull @_view_map_signal_change_delayed, ptr noundef nonnull %7) #23 ; 0 uses
  br label %_view_map_signal_change_wait.exit

_view_map_signal_change_wait.exit:                ; preds = %_view_map_update_location_geotag.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.aw = icmp sgt i32 %i.j, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.l
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.054.lcssa = phi ptr [ null, %bb.l ], [ %i.bw, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ax = tail call ptr @osm_gps_map_point_new_degrees(float noundef 0.000000e+00, float noundef 0.000000e+00) #23 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !136
  %i.bc = sub nsw i32 %2, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !137
  %i.bf = sub nsw i32 %3, %i.be
  tail call void @osm_gps_map_convert_screen_to_geographic(ptr noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf, ptr noundef %i.ax) #23
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.ax, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #23
  call void @osm_gps_map_point_free(ptr noundef %i.ax) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bg = load float, ptr %i.c, align 4, !tbaa !107
  %i.bh = load float, ptr %i.d, align 4, !tbaa !107
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fpext <2 x float> %i.bj to <2 x double>
  store <2 x double> %i.bk, ptr %8, align 16, !tbaa !135
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double +qnan, ptr %i.bl, align 16, !tbaa !211
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void @dt_control_signal_block_by_func(ptr noundef %i.bm, ptr noundef nonnull @_view_map_collection_changed, ptr noundef nonnull %7) #23
  call void @dt_image_set_locations(ptr noundef %.054.lcssa, ptr noundef nonnull %8, i32 noundef 1) #23
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void @dt_control_signal_unblock_by_func(ptr noundef %i.bn, ptr noundef nonnull @_view_map_collection_changed, ptr noundef nonnull %7) #23
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.bp = trunc i32 %i.bo to i1
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.br = icmp ne i32 %i.bq, 0
  %or.cond3 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.05460 = phi ptr [ null, %.lr.ph.preheader ], [ %i.bw, %.lr.ph ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !131
  %i.bu = sext i32 %i.bt to i64
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = tail call ptr @g_list_prepend(ptr noundef %.05460, ptr noundef %i.bv) #23 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.by = and i32 %i.bx, 1048576
  %.not58 = icmp eq i32 %i.by, 0
  br i1 %.not58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef 3037, ptr noundef nonnull @__FUNCTION__._drag_and_drop_received) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %._crit_edge
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bz, i32 noundef 10, ptr noundef %.054.lcssa, i32 noundef 0) #23
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !117
  call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %i.ca, ptr noundef nonnull @.str.15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.o, %_view_map_signal_change_wait.exit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.o ], [ 1, %_view_map_signal_change_wait.exit ]
  call void @gtk_drag_finish(ptr noundef %1, i32 noundef %.2, i32 noundef 0, i32 noundef %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_dnd_get_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr nofree noundef readonly captures(none) %5) #1 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !103

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 3054, ptr noundef nonnull @__func__._view_map_dnd_get_callback, ptr noundef nonnull @.str.89) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq i32 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 3 uses
  %.not40 = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %.not40, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @g_list_length(ptr noundef nonnull %i.g) #23 ; 2 uses
  %.not42 = icmp eq i32 %i.h, 0
  br i1 %.not42, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #27 ; 4 uses
  %.not43 = icmp eq ptr %i.k, null
  br i1 %.not43, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.03245 = load ptr, ptr %i.f, align 8, !tbaa !140 ; 2 uses
  %.not4446 = icmp eq ptr %.03245, null
  br i1 %.not4446, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.l = tail call ptr @gtk_selection_data_get_target(ptr noundef nonnull %2) #23
  %i.m = trunc i64 %i.j to i32
  tail call void @gtk_selection_data_set(ptr noundef nonnull %2, ptr noundef %i.l, i32 noundef 32, ptr noundef nonnull %i.k, i32 noundef %i.m) #23
  tail call void @free(ptr noundef nonnull %i.k) #23
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.03248 = phi ptr [ %.032, %.lr.ph ], [ %.03245, %.preheader ] ; 2 uses
  %i.n = load ptr, ptr %.03248, align 8, !tbaa !142
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = trunc i64 %i.o to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %.03248, i64 8
  %.032 = load ptr, ptr %i.r, align 8, !tbaa !140 ; 2 uses
  %.not44 = icmp eq ptr %.032, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.t = load i32, ptr %i.s, align 8, !tbaa !110
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 -1, ptr %i.a, align 4
  %i.u = tail call ptr @gtk_selection_data_get_target(ptr noundef nonnull %2) #23
  call void @gtk_selection_data_set(ptr noundef nonnull %2, ptr noundef %i.u, i32 noundef 32, ptr noundef nonnull %i.a, i32 noundef 4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 1, ptr %i.c, align 4, !tbaa !131
  call void @dt_image_full_path(i32 noundef %i.x, ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.c) #23
  %i.y = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.z = call ptr @gtk_selection_data_get_target(ptr noundef nonnull %2) #23
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #28
  %i.ab = trunc i64 %i.aa to i32
  call void @gtk_selection_data_set(ptr noundef nonnull %2, ptr noundef %i.z, i32 noundef 8, ptr noundef nonnull %i.y, i32 noundef %i.ab) #23
  call void @g_free(ptr noundef nonnull %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %._crit_edge, %bb.f, %bb.i, %bb.j, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_view_map_dnd_failed_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  tail call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %i.d, ptr noundef nonnull @.str.15) #23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_changed_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load i32, ptr @first_times, align 4, !tbaa !131 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr @first_times, align 4, !tbaa !131
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !108
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @g_timeout_add(i32 noundef 100, ptr noundef nonnull @_view_map_changed_callback_wait, ptr noundef nonnull %1) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %i.e, align 4, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !106
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
end_hunk_0
begin_hunk_1_@_view_map_add_marker:bb.a
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
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.k = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.j, ptr noundef %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.k, %bb.e ], [ 0, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_add_location(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %3 = alloca %struct.dt_location_draw_t, align 8 ; 14 uses
  %4 = alloca %struct.dt_map_box_t, align 16      ; 8 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %2, ptr %3, align 8, !tbaa !150
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_view_map_update_location_geotag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !175 ; 2 uses
  %i.k = fcmp reassoc nsz arcp contract afn une double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !176 ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn une double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.p = load <2 x double>, ptr %1, align 8, !tbaa !135 ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.j, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.m, i64 1 ; 2 uses
  %i.s = fadd reassoc nsz arcp contract afn <2 x double> %i.p, %i.r ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.s, <double 1.800000e+02, double 9.000000e+01>
  %i.u = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.s, <double -1.800000e+02, double -9.000000e+01>
  %i.v = select <2 x i1> %i.u, <2 x double> <double -1.800000e+02, double -9.000000e+01>, <2 x double> %i.s
  %i.w = select <2 x i1> %i.t, <2 x double> <double 1.800000e+02, double 9.000000e+01>, <2 x double> %i.v ; 2 uses
  %i.x = fsub reassoc nsz arcp contract afn <2 x double> %i.p, %i.r ; 3 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.x, <double 1.800000e+02, double 9.000000e+01>
  %i.z = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.x, <double -1.800000e+02, double -9.000000e+01>
  %i.aa = select <2 x i1> %i.z, <2 x double> <double -1.800000e+02, double -9.000000e+01>, <2 x double> %i.x
  %i.ab = select <2 x i1> %i.y, <2 x double> <double 1.800000e+02, double 9.000000e+01>, <2 x double> %i.aa ; 2 uses
  %i.ac = fcmp ule <2 x double> %i.w, %i.ab
  %i.ad = bitcast <2 x i1> %i.ac to i2
  %i.ae = icmp eq i2 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_view_map_update_location_geotag.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  %i.ag = load float, ptr %i.af, align 4, !tbaa !177
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.aj = fcmp reassoc nsz arcp contract afn olt double %i.ai, %i.ah
  br i1 %i.aj, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  %i.al = load float, ptr %i.ak, align 4, !tbaa !178
  %i.am = fpext reassoc nsz arcp contract afn float %i.al to double
  %i.an = fcmp reassoc nsz arcp contract afn ogt double %i.ai, %i.am
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !179
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt double %i.ar, %i.aq
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.au = load float, ptr %i.at, align 4, !tbaa !180
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double
  %i.aw = fcmp reassoc nsz arcp contract afn olt double %i.ar, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !117
  %i.az = shufflevector <2 x double> %i.w, <2 x double> %i.ab, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.ba = fptrunc <4 x double> %i.az to <4 x float> ; 4 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = extractelement <4 x float> %i.ba, i64 1
  %i.bd = extractelement <4 x float> %i.ba, i64 2
  %i.be = extractelement <4 x float> %i.ba, i64 3
  tail call void @osm_gps_map_zoom_fit_bbox(ptr noundef %i.ay, float noundef %i.bb, float noundef %i.bc, float noundef %i.bd, float noundef %i.be) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call fastcc void @_view_map_draw_main_location(ptr noundef nonnull %i.h, ptr noundef nonnull %3)
  br label %_view_map_update_location_geotag.exit

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !181 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.bg, ptr %i.bi, align 8, !tbaa !169
  %i.bj = icmp eq i32 %i.bg, 2
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !240
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bn = call ptr @dt_map_location_convert_polygons(ptr noundef %i.bl, ptr noundef nonnull %4, ptr noundef nonnull %i.bm) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !182
  %i.bp = load float, ptr %4, align 16, !tbaa !241
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !242
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !243
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !244
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !117
  call void @osm_gps_map_zoom_fit_bbox(ptr noundef %i.by, float noundef %i.br, float noundef %i.bv, float noundef %i.bp, float noundef %i.bt) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double 1.000000e+00, ptr %i.bz, align 8, !tbaa !245
  %i.ca = load <2 x float>, ptr %i.bu, align 4, !tbaa !107
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.cc = load <4 x float>, ptr %4, align 16, !tbaa !107
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ce = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, %i.cd
  %i.cf = fsub reassoc nsz arcp contract afn <4 x float> %i.cb, %i.cd
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ch = fpext <4 x float> %i.cg to <4 x double>
  %i.ci = fmul reassoc nsz arcp contract afn <4 x double> %i.ch, splat (double 5.000000e-01)
  store <4 x double> %i.ci, ptr %i.bh, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !117
  call void (ptr, ptr, ...) @g_object_get(ptr noundef %i.ck, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.e, ptr noundef null) #23
  %i.cl = load float, ptr %i.e, align 4, !tbaa !107 ; 4 uses
  %i.cm = load float, ptr %i.f, align 4, !tbaa !107 ; 4 uses
  %i.cn = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cm, i64 1
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  store <2 x double> %i.cp, ptr %i.bh, align 8, !tbaa !135
  %i.cq = call ptr @osm_gps_map_point_new_degrees(float noundef %i.cm, float noundef %i.cl) #23 ; 2 uses
  %i.cr = call ptr @osm_gps_map_point_new_degrees(float noundef 0.000000e+00, float noundef 0.000000e+00) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !131
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !117
  call void @osm_gps_map_convert_geographic_to_screen(ptr noundef %i.cs, ptr noundef %i.cq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !117
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !131
  %i.cv = add nsw i32 %i.cu, 128
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !131
  %i.cx = add nsw i32 %i.cw, 128
  call void @osm_gps_map_convert_screen_to_geographic(ptr noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef %i.cr) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !107
  call void @osm_gps_map_point_get_degrees(ptr noundef %i.cr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  call void @osm_gps_map_point_free(ptr noundef %i.cq) #23
  call void @osm_gps_map_point_free(ptr noundef %i.cr) #23
  %i.cy = load float, ptr %i.c, align 4, !tbaa !107
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cm, %i.cy ; 2 uses
  %i.da = load float, ptr %i.d, align 4, !tbaa !107
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cl ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %i.cz, 0.000000e+00
  %i.dd = fcmp reassoc nsz arcp contract afn ogt float %i.db, 0.000000e+00
  %or.cond.i = select i1 %i.dc, i1 %i.dd, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  store float %i.cz, ptr %i.df, align 4, !tbaa !246
  store float %i.db, ptr %i.de, align 8, !tbaa !247
  br label %_view_map_thumb_angles.exit

bb.o:                                             ; preds = %bb.m
  %i.dg = load float, ptr %i.de, align 8, !tbaa !247
  br label %_view_map_thumb_angles.exit

_view_map_thumb_angles.exit:                      ; preds = %bb.n, %bb.o
  %.0 = phi nsz float [ %i.db, %bb.n ], [ %i.dg, %bb.o ]
  %i.dh = call reassoc nsz arcp contract afn fastcc double @_view_map_get_angles_ratio(ptr noundef nonnull %i.h, float noundef %i.cm, float noundef %i.cl) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.dh, ptr %i.di, align 8, !tbaa !245
  %i.dj = fpext reassoc nsz arcp contract afn float %.0 to double ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.dj, ptr %i.dk, align 8, !tbaa !248
  %i.dl = fdiv reassoc nsz arcp contract afn double %i.dj, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %i.dl, ptr %i.dm, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.p

bb.p:                                             ; preds = %_view_map_thumb_angles.exit, %bb.l
  call fastcc void @_view_map_draw_main_location(ptr noundef %i.h, ptr noundef nonnull %3)
  %.val = load ptr, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp eq i32 %i.do, 0
  br i1 %.not.i, label %_view_map_update_location_geotag.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 176
  call void @dt_map_location_set_data(i32 noundef %i.do, ptr noundef nonnull %i.dp) #23
  %i.dq = call i32 @dt_map_location_update_images(ptr noundef nonnull %i.dn) #23
  %.not6.i = icmp eq i32 %i.dq, 0
  br i1 %.not6.i, label %_view_map_update_location_geotag.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.ds = trunc i32 %i.dr to i1
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.du = icmp ne i32 %i.dt, 0
  %or.cond.i69 = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond.i69, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.dw = and i32 %i.dv, 1048576
  %.not7.i = icmp eq i32 %i.dw, 0
  br i1 %.not7.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.27, i32 noundef 1224, ptr noundef nonnull @__FUNCTION__._view_map_update_location_geotag) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.dx, i32 noundef 9) #23
  br label %_view_map_update_location_geotag.exit

_view_map_update_location_geotag.exit:            ; preds = %bb.u, %bb.q, %bb.p, %bb.d, %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_location_action(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %.not16.i = icmp eq ptr %i.g, null
  br i1 %.not16.i, label %_others_location.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01017.i = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.c ] ; 5 uses
  %i.h = load ptr, ptr %.01017.i, align 8, !tbaa !142 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !150
  %.not13.i = icmp eq i32 %i.i, %i.e
  br i1 %.not13.i, label %_others_location.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01017.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_others_location.exit.thread, label %.lr.ph.i

_others_location.exit:                            ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168  ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_view_map_delete_other_location.exit, label %bb.e

bb.e:                                             ; preds = %_others_location.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !169
  %.not7.i.i = icmp eq i32 %i.o, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  br i1 %.not7.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.q, ptr noundef nonnull %i.m) #23 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i32 @osm_gps_map_polygon_remove(ptr noundef %i.q, ptr noundef nonnull %i.m) #23 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.l, align 8, !tbaa !168
  br label %_view_map_delete_other_location.exit

_view_map_delete_other_location.exit:             ; preds = %_others_location.exit, %bb.h
  tail call void @dt_map_location_free_polygons(ptr noundef nonnull %i.h) #23
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !113
  %i.u = tail call ptr @g_list_remove_link(ptr noundef %i.t, ptr noundef nonnull %.01017.i) #23
  store ptr %i.u, ptr %i.f, align 8, !tbaa !113
  %i.v = load ptr, ptr %.01017.i, align 8, !tbaa !142
  tail call void @g_free(ptr noundef %i.v) #23
  tail call void @g_list_free(ptr noundef nonnull %.01017.i) #23
  br label %_others_location.exit.thread

_others_location.exit.thread:                     ; preds = %bb.d, %bb.c, %_view_map_delete_other_location.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !168  ; 3 uses
  %.not.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i14, label %_view_map_remove_location.exit, label %bb.i

bb.i:                                             ; preds = %_others_location.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.z = load i32, ptr %i.y, align 8, !tbaa !169
  %.not7.i = icmp eq i32 %i.z, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.ab, ptr noundef nonnull %i.x) #23 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ad = tail call i32 @osm_gps_map_polygon_remove(ptr noundef %i.ab, ptr noundef nonnull %i.x) #23 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.w, align 8, !tbaa !168
  br label %_view_map_remove_location.exit

_view_map_remove_location.exit:                   ; preds = %_others_location.exit.thread, %bb.l
  store i32 0, ptr %i.d, align 8, !tbaa !110
  br label %bb.m

bb.m:                                             ; preds = %_view_map_remove_location.exit, %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  tail call fastcc void @_view_map_draw_other_locations(ptr noundef %i.b, ptr noundef nonnull %i.ae)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_drag_set_icon(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !160
  %i.f = call fastcc ptr @_draw_image(i32 noundef %2, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef 1, i32 noundef -18, i32 noundef 1, i32 noundef %i.e, ptr %i.c) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @gtk_image_new_from_pixbuf(ptr noundef nonnull %i.f) #23 ; 3 uses
  call void @dt_gui_add_class(ptr noundef %i.g, ptr noundef nonnull @.str.74) #23
  call void @gtk_widget_show(ptr noundef %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !136
  %i.j = load i32, ptr %i.a, align 4, !tbaa !131
  %i.k = add nsw i32 %i.j, 17
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1432
  %i.o = load double, ptr %i.n, align 8, !tbaa !102
  %i.p = fmul reassoc nsz arcp contract afn double %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !137
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.r to double
  %i.t = fadd reassoc nsz arcp contract afn double %i.p, %i.s
  %i.u = fptosi double %i.t to i32
  call void @gtk_drag_set_icon_widget(ptr noundef %1, ptr noundef %i.g, i32 noundef %i.i, i32 noundef %i.u) #23
  call void @g_object_unref(ptr noundef nonnull %i.f) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_view_map_redraw(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  tail call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %i.d, ptr noundef nonnull @.str.15) #23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_view_map_display_selected(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call fastcc i32 @_view_map_center_on_image_list(ptr noundef %0, ptr noundef nonnull @.str.84)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @_view_map_center_on_image_list(ptr noundef nonnull %0, ptr noundef nonnull @.str.85)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.54) #23 ; 3 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, 1.800000e+02
  %i.h = fcmp reassoc nsz arcp contract afn olt float %i.f, -1.800000e+02
  %i.i = select reassoc nsz arcp contract afn i1 %i.h, float -1.800000e+02, float %i.f
  %i.j = select reassoc nsz arcp contract afn i1 %i.g, float 1.800000e+02, float %i.i
  %i.k = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.53) #23 ; 3 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, 9.000000e+01
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.k, -9.000000e+01
  %i.n = select reassoc nsz arcp contract afn i1 %i.m, float -9.000000e+01, float %i.k
  %i.o = select reassoc nsz arcp contract afn i1 %i.l, float 9.000000e+01, float %i.n
  %i.p = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.55) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  tail call void @osm_gps_map_set_center_and_zoom(ptr noundef %i.r, float noundef %i.o, float noundef %i.j, i32 noundef %i.p) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @_view_map_filmstrip_activate_callback(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.dt_image_geoloc_t, align 16 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_view_map_center_on_image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @dt_image_get_location(i32 noundef %1, ptr noundef nonnull %3) #23
  %i.d = load double, ptr %3, align 16, !tbaa !250
  %i.e = fcmp uno double %i.d, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = fcmp uno double %i.g, 0.000000e+00
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  call void (ptr, ptr, ...) @g_object_get(ptr noundef %i.j, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, ptr noundef null) #23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !131
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = load <2 x double>, ptr %3, align 16, !tbaa !135
  %i.p = fptrunc <2 x double> %i.o to <2 x float> ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = extractelement <2 x float> %i.p, i64 1
  call void @osm_gps_map_set_center_and_zoom(ptr noundef %i.n, float noundef %i.r, float noundef %i.q, i32 noundef %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_view_map_center_on_image.exit

_view_map_center_on_image.exit:                   ; preds = %bb.a, %bb.d
  ret void
}

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @leave(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GValue, align 8            ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.b = call ptr @g_value_init(ptr noundef nonnull %1, i64 noundef 24) #23 ; 0 uses
  call void @g_value_set_int(ptr noundef nonnull %1, i32 noundef 0) #23
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  call void @g_object_set_property(ptr noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #23
  call void @g_value_unset(ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_view_map_location_action(ptr noundef %0, i32 noundef 0)
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.h = and i32 %i.g, 1048576
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 2295, ptr noundef nonnull @__FUNCTION__.leave) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void @dt_control_signal_disconnect(ptr noundef %i.i, ptr noundef nonnull @_view_map_filmstrip_activate_callback, ptr noundef nonnull %0) #23
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143
  %i.l = call ptr @dt_ui_thumbtable(ptr noundef %i.k) #23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.o = call i32 @g_signal_handlers_disconnect_matched(ptr noundef %i.n, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_view_map_dnd_remove_callback, ptr noundef nonnull %0) #23 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139  ; 2 uses
  %.not12 = icmp eq ptr %i.s, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @g_list_free(ptr noundef nonnull %i.s) #23
  store ptr null, ptr %i.r, align 8, !tbaa !139
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117
  call void @gtk_widget_hide(ptr noundef %i.u) #23
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143
  %i.x = call ptr @dt_ui_center_base(ptr noundef %i.w) #23
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !117
  call void @gtk_container_remove(ptr noundef %i.x, ptr noundef %i.y) #23
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 576
  store ptr null, ptr %i.aa, align 8, !tbaa !95
  ret void
}

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_signal_handlers_disconnect_matched(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_ui_thumbtable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_view_map_dnd_remove_callback(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) #1 {
bb.a:
  %8 = alloca %struct.dt_image_geoloc_t, align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp ne ptr %4, null
  %i.d = icmp eq i32 %5, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @gtk_selection_data_get_length(ptr noundef nonnull %4) #23
  %i.f = ashr i32 %i.e, 2                         ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @gtk_selection_data_get_data(ptr noundef nonnull %4) #23
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.022.lcssa = phi ptr [ null, %bb.c ], [ %i.q, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const._view_map_dnd_remove_callback.geoloc, i64 24, i1 false)
  call void @dt_image_set_locations(ptr noundef %.022.lcssa, ptr noundef nonnull %8, i32 noundef 1) #23
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.j = trunc i32 %i.i to i1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond3 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02230 = phi ptr [ null, %.lr.ph.preheader ], [ %i.q, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !131
  %i.o = sext i32 %i.n to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call ptr @g_list_prepend(ptr noundef %.02230, ptr noundef %i.p) #23 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.s = and i32 %i.r, 1048576
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef 3140, ptr noundef nonnull @__FUNCTION__._view_map_dnd_remove_callback) #23
  br label %bb.f

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @gtk_drag_finish(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %6) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.t, i32 noundef 10, ptr noundef %.022.lcssa, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @gtk_drag_finish(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef %6) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %i.v, ptr noundef nonnull @.str.15) #23
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  ret void
}

declare void @g_list_free(ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_hide(ptr noundef) local_unnamed_addr #4

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @_view_map_undo_callback, i32 noundef 122, i32 noundef 4) #23 ; 0 uses
  %i.b = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @_view_map_redo_callback, i32 noundef 121, i32 noundef 4) #23 ; 0 uses
  %i.c = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @_view_map_scroll_right_callback, i32 noundef 65363, i32 noundef 0) #23 ; 0 uses
  %i.d = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @_view_map_scroll_right_wide_callback, i32 noundef 65363, i32 noundef 4) #23 ; 0 uses
  %i.e = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @_view_map_scroll_left_callback, i32 noundef 65361, i32 noundef 0) #23 ; 0 uses
  %i.f = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @_view_map_scroll_left_wide_callback, i32 noundef 65361, i32 noundef 4) #23 ; 0 uses
  %i.g = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @_view_map_scroll_up_callback, i32 noundef 65362, i32 noundef 0) #23 ; 0 uses
  %i.h = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @_view_map_scroll_up_wide_callback, i32 noundef 65362, i32 noundef 4) #23 ; 0 uses
  %i.i = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @_view_map_scroll_down_callback, i32 noundef 65364, i32 noundef 0) #23 ; 0 uses
  %i.j = tail call ptr @dt_action_register(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @_view_map_scroll_down_wide_callback, i32 noundef 65364, i32 noundef 4) #23 ; 0 uses
  ret void
}

declare ptr @dt_action_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_view_map_undo_callback(ptr noundef %0) #1 {
bb.a:
  %.not5.i = icmp eq ptr %0, null
  br i1 %.not5.i, label %dt_action_view.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.06.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 3 uses
end_hunk_1
begin_hunk_2_@_view_map_changed_callback_wait:bb.a
  br i1 %.not200.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !165
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !163
  %i.dn = call ptr @dt_database_get(ptr noundef %i.dm) #23
  %i.do = call ptr @sqlite3_errmsg(ptr noundef %i.dn) #23
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.27, i32 noundef 1477, ptr noundef nonnull @__FUNCTION__._view_map_changed_callback_delayed, ptr noundef %i.do) #29 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.dr = and i32 %i.dq, 16
  %.not.i211.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i211.i, label %dt_get_perf_times.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ds = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #23 ; 0 uses
  %i.dt = load i64, ptr %4, align 8, !tbaa !261
  %i.du = add nsw i64 %i.dt, -1290608000
  %i.dv = sitofp reassoc nsz arcp contract afn i64 %i.du to double
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !262
  %i.dy = sitofp reassoc nsz arcp contract afn i64 %i.dx to double
  %i.dz = fmul reassoc nnan nsz arcp contract afn double %i.dy, f0x3EB0C6F7A0B5ED8D
  %i.ea = fadd reassoc nsz arcp contract afn double %i.dz, %i.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store double %i.ea, ptr %7, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.eb = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #23 ; 0 uses
  %i.ec = load i64, ptr %3, align 8, !tbaa !266
  %i.ed = sitofp reassoc nsz arcp contract afn i64 %i.ec to double
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !267
  %i.eg = sitofp reassoc nsz arcp contract afn i64 %i.ef to double
  %i.eh = fmul reassoc nnan nsz arcp contract afn double %i.eg, f0x3EB0C6F7A0B5ED8D
  %i.ei = fadd reassoc nsz arcp contract afn double %i.eh, %i.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ei, ptr %i.ej, align 8, !tbaa !268
  br label %dt_get_perf_times.exit.i

dt_get_perf_times.exit.i:                         ; preds = %bb.af, %bb.ae
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.el = call i32 @sqlite3_step(ptr noundef %i.ek) #23
  %i.em = icmp eq i32 %i.el, 100
  br i1 %i.em, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %dt_get_perf_times.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %dt_get_perf_times.exit.i ] ; 2 uses
  %i.en = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.eo = call i32 @sqlite3_column_int(ptr noundef %i.en, i32 noundef 0) #23
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv.i ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store i32 %i.eo, ptr %i.eq, align 8, !tbaa !158
  %i.er = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.es = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.er, i32 noundef 1) #23
  %i.et = fmul reassoc nsz arcp contract afn double %i.es, f0x3F91DF46A2529D39
  store double %i.et, ptr %i.ep, align 8, !tbaa !269
  %i.eu = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.ev = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.eu, i32 noundef 2) #23
  %i.ew = fmul reassoc nsz arcp contract afn double %i.ev, f0x3F91DF46A2529D39
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store double %i.ew, ptr %i.ex, align 8, !tbaa !270
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  store i32 -1, ptr %i.ey, align 4, !tbaa !156
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ez = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.fa = call i32 @sqlite3_step(ptr noundef %i.ez) #23
  %i.fb = icmp eq i32 %i.fa, 100
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.dh
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %dt_get_perf_times.exit.i
  call void @dt_show_times(ptr noundef nonnull %7, ptr noundef nonnull @.str.57) #23
  %i.fe = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.58) #23
  %i.ff = sitofp reassoc nsz arcp contract afn i32 %i.fe to float
  %i.fg = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.59) #23 ; 2 uses
  %i.fh = load i32, ptr %i.a, align 4, !tbaa !131
  %i.fi = lshr i32 156412000, %i.fh
  %i.fj = uitofp reassoc nsz arcp contract afn nneg i32 %i.fi to float
  %i.fk = fmul reassoc nnan nsz arcp contract afn float %i.fj, %i.ff
  %i.fl = fpext reassoc nnan nsz arcp contract afn float %i.fk to double ; 2 uses
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.fn = and i32 %i.fm, 16
  %.not.i212.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i212.i, label %iter.check, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.fo = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #23 ; 0 uses
  %i.fp = load i64, ptr %2, align 8, !tbaa !261
  %i.fq = add nsw i64 %i.fp, -1290608000
  %i.fr = sitofp reassoc nsz arcp contract afn i64 %i.fq to double
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !262
  %i.fu = sitofp reassoc nsz arcp contract afn i64 %i.ft to double
  %i.fv = fmul reassoc nnan nsz arcp contract afn double %i.fu, f0x3EB0C6F7A0B5ED8D
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fv, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store double %i.fw, ptr %7, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.fx = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #23 ; 0 uses
  %i.fy = load i64, ptr %1, align 8, !tbaa !266
  %i.fz = sitofp reassoc nsz arcp contract afn i64 %i.fy to double
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !267
  %i.gc = sitofp reassoc nsz arcp contract afn i64 %i.gb to double
  %i.gd = fmul reassoc nnan nsz arcp contract afn double %i.gc, f0x3EB0C6F7A0B5ED8D
  %i.ge = fadd reassoc nsz arcp contract afn double %i.gd, %i.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ge, ptr %i.gf, align 8, !tbaa !268
  br label %iter.check

iter.check:                                       ; preds = %bb.ag, %._crit_edge.i
  store ptr %i.di, ptr @db.0, align 8, !tbaa !190
  %i.gg = fmul reassoc nnan nsz arcp contract afn double %i.fl, f0x3DE2397A416EC565
  %i.gh = icmp ugt i32 %i.fg, 1
  %i.gi = sext i1 %i.gh to i32
  %i.gj = add i32 %i.fg, %i.gi                    ; 2 uses
  store i32 %i.gj, ptr @db.6, align 8, !tbaa !271
  store i32 0, ptr @db.7, align 8, !tbaa !272
  %i.gk = load <2 x float>, ptr %i.ch, align 8, !tbaa !107
  %i.gl = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.aj, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !107
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %min.iters.check = icmp samesign ult i32 %.0173.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check147 = icmp samesign ult i32 %.0173.i, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.dh, 24
  %n.vec = and i64 %i.dh, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %vec.ind
  %wide.gep148 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %step.add
  %wide.gep149 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %step.add.2
  %wide.gep150 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %step.add.3
  %wide.gep151 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.gep152 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep148, i64 24
  %wide.gep153 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep149, i64 24
  %wide.gep154 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep150, i64 24
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep151, <8 x i1> splat (i1 true)), !tbaa !273
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep152, <8 x i1> splat (i1 true)), !tbaa !273
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep153, <8 x i1> splat (i1 true)), !tbaa !273
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep154, <8 x i1> splat (i1 true)), !tbaa !273
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !276

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec155 = and i64 %i.dh, 2147483640           ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ]
  %vec.ind157 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next161, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep158 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %vec.ind157
  %wide.gep159 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep158, i64 24
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep159, <8 x i1> splat (i1 true)), !tbaa !273
  %index.next160 = add nuw i64 %index156, 8       ; 2 uses
  %vec.ind.next161 = add nuw nsw <8 x i64> %vec.ind157, splat (i64 8)
  %i.gp = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.gp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !252

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %n.vec155, %i.dh
  br i1 %cmp.n162, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec155, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gq = fpext <2 x float> %i.gk to <2 x double>
  %i.gr = fpext <2 x float> %i.gm to <2 x double>
  %i.gs = fmul reassoc nsz arcp contract afn <2 x double> %i.gq, splat (double f0x3F91DF46A2529D39)
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.gu = fmul reassoc nsz arcp contract afn <2 x double> %i.gr, splat (double f0x3F91DF46A2529D39)
  %i.gv = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gx = fdiv reassoc nsz arcp contract afn <2 x double> %i.gu, %i.gw
  %i.gy = call reassoc nsz arcp contract afn <2 x double> @llvm.floor.v2f64(<2 x double> %i.gx)
  %i.gz = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.gw ; 7 uses
  %i.ha = fsub reassoc nsz arcp contract afn <2 x double> %i.gt, %i.gz
  %i.hb = fdiv reassoc nsz arcp contract afn <2 x double> %i.ha, %i.gw
  %i.hc = call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.hb)
  %i.hd = fadd reassoc nsz arcp contract afn <2 x double> %i.hc, splat (double 1.000000e+00) ; 2 uses
  %i.he = extractelement <2 x double> %i.hd, i64 1
  %i.hf = fptoui double %i.he to i32
  %.fr76.i.i.i = freeze i32 %i.hf                 ; 7 uses
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  %i.hh = fptoui double %i.hg to i32              ; 4 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = call noalias ptr @calloc(i64 noundef %i.hi, i64 noundef 8) #24 ; 7 uses
  store ptr %i.hj, ptr @db.1, align 8, !tbaa !191
  store i32 %.fr76.i.i.i, ptr @db.4, align 8, !tbaa !192
  store i32 %i.hh, ptr @db.3, align 4, !tbaa !193
  %.not.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.i.i.i

.lr.ph73.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.hk = fdiv reassoc nsz arcp contract afn double f0x41FC18116A43E0F9, %i.fl ; 2 uses
  %i.hl = zext i32 %.fr76.i.i.i to i64            ; 8 uses
  %.not77.i.i.i = icmp eq i32 %.fr76.i.i.i, 0
  br i1 %.not77.i.i.i, label %.lr.ph73.split.i.i.i.preheader, label %.lr.ph73.split.us.i.i.i.preheader

.lr.ph73.split.us.i.i.i.preheader:                ; preds = %.lr.ph73.i.i.i
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %min.iters.check163 = icmp ult i32 %.fr76.i.i.i, 8
  %min.iters.check165 = icmp ult i32 %.fr76.i.i.i, 32
  %i.ho = and i64 %i.hl, 24
  %n.vec167 = and i64 %i.hl, 4294967264           ; 4 uses
  %cmp.n181 = icmp eq i64 %n.vec167, %i.hl
  %min.epilog.iters.check185 = icmp eq i64 %i.ho, 0
  %n.vec188 = and i64 %i.hl, 4294967288           ; 3 uses
  %cmp.n199 = icmp eq i64 %n.vec188, %i.hl
  br label %.lr.ph73.split.us.i.i.i

.lr.ph73.split.i.i.i.preheader:                   ; preds = %.lr.ph73.i.i.i
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph73.split.i.i.i

.lr.ph73.split.us.i.i.i:                          ; preds = %.lr.ph73.split.us.i.i.i.preheader, %..loopexit_crit_edge.us.i.i.i
  %indvars.iv85.i.i.i = phi i64 [ %indvars.iv.next86.i.i.i, %..loopexit_crit_edge.us.i.i.i ], [ 0, %.lr.ph73.split.us.i.i.i.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv85.i.i.i ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load <2 x double>, ptr %i.hr, align 8, !tbaa !135 ; 3 uses
  %i.hu = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ht, %i.gt
  %i.hv = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ht, %i.gz
  %i.hw = select <2 x i1> %i.hv, <2 x double> %i.gz, <2 x double> %i.ht
  %i.hx = select <2 x i1> %i.hu, <2 x double> %i.gt, <2 x double> %i.hw
  %i.hy = fsub reassoc nsz arcp contract afn <2 x double> %i.hx, %i.gz
  %i.hz = fmul reassoc nsz arcp contract afn <2 x double> %i.hy, %i.hn
  %i.ia = fptoui <2 x double> %i.hz to <2 x i32>  ; 3 uses
  store <2 x i32> %i.ia, ptr %i.hs, align 8, !tbaa !131
  %i.ib = extractelement <2 x i32> %i.ia, i64 0
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.ic ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !195 ; 2 uses
  %.not64.us.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not64.us.i.i.i, label %iter.check182, label %..loopexit_crit_edge.us.i.i.i

iter.check182:                                    ; preds = %.lr.ph73.split.us.i.i.i
  %i.if = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 8) #24 ; 11 uses
  store ptr %i.if, ptr %i.id, align 8, !tbaa !195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ]
  br i1 %min.iters.check163, label %.preheader.us.i.i.i.preheader, label %vector.main.loop.iter.check164

vector.main.loop.iter.check164:                   ; preds = %iter.check182
  br i1 %min.iters.check165, label %vec.epilog.ph186, label %vector.body168

vector.body168:                                   ; preds = %vector.main.loop.iter.check164, %vector.body168
  %index169 = phi i64 [ %index.next178, %vector.body168 ], [ 0, %vector.main.loop.iter.check164 ]
  %vec.ind170 = phi <8 x i64> [ %vec.ind.next179, %vector.body168 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check164 ] ; 5 uses
  %step.add171 = add nuw <8 x i64> %vec.ind170, splat (i64 8)
  %step.add.2172 = add nuw <8 x i64> %vec.ind170, splat (i64 16)
  %step.add.3173 = add nuw <8 x i64> %vec.ind170, splat (i64 24)
  %wide.gep174 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %vec.ind170
  %wide.gep175 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add171
  %wide.gep176 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add.2172
  %wide.gep177 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add.3173
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true)), !tbaa !197
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true)), !tbaa !197
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep176, <8 x i1> splat (i1 true)), !tbaa !197
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true)), !tbaa !197
  %index.next178 = add nuw i64 %index169, 32      ; 2 uses
  %vec.ind.next179 = add nuw <8 x i64> %vec.ind170, splat (i64 32)
  %i.ig = icmp eq i64 %index.next178, %n.vec167
  br i1 %i.ig, label %middle.block180, label %vector.body168, !llvm.loop !253

middle.block180:                                  ; preds = %vector.body168
  br i1 %cmp.n181, label %..loopexit_crit_edge.us.i.i.i, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block180
  br i1 %min.epilog.iters.check185, label %.preheader.us.i.i.i.preheader, label %vec.epilog.ph186, !prof !276

vec.epilog.ph186:                                 ; preds = %vector.main.loop.iter.check164, %vec.epilog.iter.check183
  %vec.epilog.resume.val187 = phi i64 [ %n.vec167, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check164 ] ; 2 uses
  %broadcast.splatinsert189 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val187, i64 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction191 = or disjoint <8 x i64> %broadcast.splat190, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body192

vec.epilog.vector.body192:                        ; preds = %vec.epilog.vector.body192, %vec.epilog.ph186
  %index193 = phi i64 [ %vec.epilog.resume.val187, %vec.epilog.ph186 ], [ %index.next196, %vec.epilog.vector.body192 ]
  %vec.ind194 = phi <8 x i64> [ %induction191, %vec.epilog.ph186 ], [ %vec.ind.next197, %vec.epilog.vector.body192 ] ; 2 uses
  %wide.gep195 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %vec.ind194
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep195, <8 x i1> splat (i1 true)), !tbaa !197
  %index.next196 = add nuw i64 %index193, 8       ; 2 uses
  %vec.ind.next197 = add nuw nsw <8 x i64> %vec.ind194, splat (i64 8)
  %i.ih = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.ih, label %vec.epilog.middle.block198, label %vec.epilog.vector.body192, !llvm.loop !254

vec.epilog.middle.block198:                       ; preds = %vec.epilog.vector.body192
  br i1 %cmp.n199, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i.preheader

.preheader.us.i.i.i.preheader:                    ; preds = %iter.check182, %vec.epilog.iter.check183, %vec.epilog.middle.block198
  %indvars.iv80.i.i.i.ph = phi i64 [ 0, %iter.check182 ], [ %n.vec167, %vec.epilog.iter.check183 ], [ %n.vec188, %vec.epilog.middle.block198 ]
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %.preheader.us.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ %indvars.iv.next81.i.i.i, %.preheader.us.i.i.i ], [ %indvars.iv80.i.i.i.ph, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv80.i.i.i
  store i32 -1, ptr %i.ii, align 4, !tbaa !197
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %exitcond84.not.i.i.i = icmp eq i64 %indvars.iv.next81.i.i.i, %i.hl
  br i1 %exitcond84.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !255

..loopexit_crit_edge.us.i.i.i:                    ; preds = %.preheader.us.i.i.i, %middle.block180, %vec.epilog.middle.block198, %.lr.ph73.split.us.i.i.i
  %i.ij = phi ptr [ %i.ie, %.lr.ph73.split.us.i.i.i ], [ %i.if, %middle.block180 ], [ %i.if, %vec.epilog.middle.block198 ], [ %i.if, %.preheader.us.i.i.i ]
  %i.ik = extractelement <2 x i32> %i.ia, i64 1
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.il ; 3 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !197
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  store i32 %i.in, ptr %i.io, align 8, !tbaa !273
  %i.ip = trunc nuw i64 %indvars.iv85.i.i.i to i32
  store i32 %i.ip, ptr %i.im, align 4, !tbaa !197
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !198
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !198
  %indvars.iv.next86.i.i.i = add nuw nsw i64 %indvars.iv85.i.i.i, 1 ; 2 uses
  %exitcond89.not.i.i.i = icmp eq i64 %indvars.iv.next86.i.i.i, %i.dh
  br i1 %exitcond89.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.split.us.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i32 -1, ptr %i.iu, align 8, !tbaa !273
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.dh
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !256

.lr.ph73.split.i.i.i:                             ; preds = %.lr.ph73.split.i.i.i.preheader, %.preheader.i.i.i
  %indvars.iv90.i.i.i = phi i64 [ %indvars.iv.next91.i.i.i, %.preheader.i.i.i ], [ 0, %.lr.ph73.split.i.i.i.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv90.i.i.i ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load <2 x double>, ptr %i.iv, align 8, !tbaa !135 ; 3 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ix, %i.gt
  %i.iz = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ix, %i.gz
  %i.ja = select <2 x i1> %i.iz, <2 x double> %i.gz, <2 x double> %i.ix
  %i.jb = select <2 x i1> %i.iy, <2 x double> %i.gt, <2 x double> %i.ja
  %i.jc = fsub reassoc nsz arcp contract afn <2 x double> %i.jb, %i.gz
  %i.jd = fmul reassoc nsz arcp contract afn <2 x double> %i.jc, %i.hq
  %i.je = fptoui <2 x double> %i.jd to <2 x i32>  ; 3 uses
  store <2 x i32> %i.je, ptr %i.iw, align 8, !tbaa !131
  %i.jf = extractelement <2 x i32> %i.je, i64 0
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !195 ; 2 uses
  %.not64.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not64.i.i.i, label %bb.ah, label %.preheader.i.i.i

bb.ah:                                            ; preds = %.lr.ph73.split.i.i.i
  %i.jj = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 8) #24 ; 2 uses
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !195
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ah, %.lr.ph73.split.i.i.i
  %i.jk = phi ptr [ %i.jj, %bb.ah ], [ %i.ji, %.lr.ph73.split.i.i.i ]
  %i.jl = extractelement <2 x i32> %i.je, i64 1
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jm ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !197
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !273
  %i.jq = trunc nuw i64 %indvars.iv90.i.i.i to i32
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !197
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !198
  %i.jt = add i32 %i.js, 1
end_hunk_2
begin_hunk_3_@_add_expand_cluster:bb.a
.loopexit91:                                      ; preds = %_not_clustered.exit.thread, %bb.e, %bb.d, %.thread
  %.not65 = icmp eq i32 %1, 0
  br i1 %.not65, label %_not_clustered.exit74.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit91
  %i.aw = add i32 %1, -1                          ; 2 uses
  %i.ax = load ptr, ptr @db.1, align 8, !tbaa !191
  %i.ay = zext i32 %0 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !195 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ba, null
  br i1 %.not.i71, label %_not_clustered.exit74.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = zext i32 %i.aw to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_not_clustered.exit74.thread, label %_not_clustered.exit74

_not_clustered.exit74:                            ; preds = %bb.i
  %i.bg = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !197
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !156
  %.not66 = icmp sgt i32 %i.bl, -1
  br i1 %.not66, label %_not_clustered.exit74.thread, label %bb.j

bb.j:                                             ; preds = %_not_clustered.exit74
  %i.bm = add nsw i32 %spec.store.select, -1
  tail call fastcc void @_add_expand_cluster(i32 noundef %0, i32 noundef %i.aw, i32 noundef %2, i32 noundef %i.bm)
  br label %_not_clustered.exit74.thread

_not_clustered.exit74.thread:                     ; preds = %bb.h, %bb.i, %bb.j, %_not_clustered.exit74, %.loopexit91
  %i.bn = add i32 %1, 1                           ; 3 uses
  %i.bo = load i32, ptr @db.4, align 8, !tbaa !192
  %i.bp = icmp ult i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %_not_clustered.exit78.thread

bb.k:                                             ; preds = %_not_clustered.exit74.thread
  %i.bq = load ptr, ptr @db.1, align 8, !tbaa !191
  %i.br = zext i32 %0 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !195 ; 2 uses
  %.not.i75 = icmp eq ptr %i.bt, null
  br i1 %.not.i75, label %_not_clustered.exit78.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = zext i32 %i.bn to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !198
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_not_clustered.exit78.thread, label %_not_clustered.exit78

_not_clustered.exit78:                            ; preds = %bb.l
  %i.bz = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.ca = load i32, ptr %i.bv, align 4, !tbaa !197
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !156
  %.not67 = icmp sgt i32 %i.ce, -1
  br i1 %.not67, label %_not_clustered.exit78.thread, label %bb.m

bb.m:                                             ; preds = %_not_clustered.exit78
  %i.cf = add nsw i32 %spec.store.select, -1
  tail call fastcc void @_add_expand_cluster(i32 noundef %0, i32 noundef %i.bn, i32 noundef %2, i32 noundef %i.cf)
  br label %_not_clustered.exit78.thread

_not_clustered.exit78.thread:                     ; preds = %bb.k, %bb.l, %bb.m, %_not_clustered.exit78, %_not_clustered.exit74.thread
  %i.cg = add i32 %0, 1                           ; 3 uses
  %i.ch = load i32, ptr @db.3, align 4, !tbaa !193
  %i.ci = icmp ult i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_not_clustered.exit78.thread
  %i.cj = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  %i.ck = zext i32 %i.cg to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !195
  %.not68 = icmp eq ptr %i.cm, null
  br i1 %.not68, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 1) ; 2 uses
  %i.co = add i32 %1, 2                           ; 2 uses
  %i.cp = add nuw nsw i32 %i.cn, 1                ; 2 uses
  %i.cq = load i32, ptr @db.4, align 8, !tbaa !192 ; 2 uses
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 %i.co)
  %i.cs = icmp ult i32 %i.cp, %i.cr
  br i1 %i.cs, label %.lr.ph100.split.preheader, label %.loopexit

.lr.ph100.split.preheader:                        ; preds = %bb.o
  %i.ct = add nsw i32 %spec.store.select, -1
  %i.cu = zext i32 %i.cp to i64
  br label %.lr.ph100.split

.lr.ph100.split:                                  ; preds = %.lr.ph100.split.preheader, %_not_clustered.exit82.thread
  %i.cv = phi i32 [ %i.cq, %.lr.ph100.split.preheader ], [ %i.dk, %_not_clustered.exit82.thread ] ; 3 uses
  %i.cw = phi ptr [ %i.cj, %.lr.ph100.split.preheader ], [ %i.dl, %_not_clustered.exit82.thread ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.cu, %.lr.ph100.split.preheader ], [ %indvars.iv.next105, %_not_clustered.exit82.thread ] ; 2 uses
  %.098 = phi i32 [ %i.cn, %.lr.ph100.split.preheader ], [ %i.dp, %_not_clustered.exit82.thread ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ck
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !195 ; 2 uses
  %.not.i79 = icmp eq ptr %i.cy, null
  br i1 %.not.i79, label %_not_clustered.exit82.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph100.split
  %i.cz = zext i32 %.098 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !198
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_not_clustered.exit82.thread, label %_not_clustered.exit82

_not_clustered.exit82:                            ; preds = %bb.p
  %i.de = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.df = load i32, ptr %i.da, align 4, !tbaa !197
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !156
  %.not69 = icmp sgt i32 %i.dj, -1
  br i1 %.not69, label %_not_clustered.exit82.thread, label %bb.q

bb.q:                                             ; preds = %_not_clustered.exit82
  tail call fastcc void @_add_expand_cluster(i32 noundef %i.cg, i32 noundef %.098, i32 noundef %2, i32 noundef %i.ct)
  %.pre109 = load ptr, ptr @db.1, align 8, !tbaa !191
  %.pre111 = load i32, ptr @db.4, align 8, !tbaa !192
  br label %_not_clustered.exit82.thread

_not_clustered.exit82.thread:                     ; preds = %.lr.ph100.split, %bb.p, %_not_clustered.exit82, %bb.q
  %i.dk = phi i32 [ %i.cv, %.lr.ph100.split ], [ %i.cv, %bb.p ], [ %i.cv, %_not_clustered.exit82 ], [ %.pre111, %bb.q ] ; 2 uses
  %i.dl = phi ptr [ %i.cw, %.lr.ph100.split ], [ %i.cw, %bb.p ], [ %i.cw, %_not_clustered.exit82 ], [ %.pre109, %bb.q ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.dm = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 %i.co)
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next105, %i.dn
  %i.dp = trunc nuw i64 %indvars.iv104 to i32
  br i1 %i.do, label %.lr.ph100.split, label %.loopexit, !llvm.loop !282

.loopexit:                                        ; preds = %_not_clustered.exit82.thread, %bb.o, %._crit_edge, %bb.n, %_not_clustered.exit78.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #14

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_view_map_draw_image(ptr nofree noundef captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !283
  %.not28 = icmp eq i32 %i.f, %2
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.h, ptr noundef nonnull %i.d) #23 ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !130
  %.val.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.val = phi ptr [ %.val.pre, %bb.c ], [ %i.b, %bb.a ]
  %i.j = load i32, ptr %0, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !201
  %.not30 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not30, i32 170, i32 -18
  %i.t = tail call fastcc ptr @_draw_image(i32 noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %1, i32 noundef %2, ptr %.val) ; 3 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.u, align 8, !tbaa !283
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !135
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = tail call ptr @osm_gps_map_image_add_with_alignment(ptr noundef %i.w, float noundef %i.aa, float noundef %i.ab, ptr noundef nonnull %i.t, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !130
  tail call void @g_object_unref(ptr noundef nonnull %i.t) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %.thread
  %.1 = phi i32 [ 1, %.thread ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_draw_image(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 -16777063, 171) %5, i32 noundef range(i32 0, 2) %6, i32 noundef %7, ptr nofree readonly captures(none) %.304.val) unnamed_addr #1 {
bb.a:
  %8 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 8 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !102 ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 1.280000e+02
  %i.i = fptosi double %i.h to i32                ; 6 uses
  %i.j = fmul reassoc nsz arcp contract afn double %i.g, 2.000000e+00
  %i.k = fptrunc reassoc nsz arcp contract afn double %i.j to float ; 5 uses
  %i.l = fmul reassoc nsz arcp contract afn double %i.g, 1.300000e+01
  %i.m = fptrunc reassoc nsz arcp contract afn double %i.l to float ; 4 uses
  switch i32 %7, label %.thread.thread [
    i32 0, label %bb.b
    i32 1, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.i, i32 noundef %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.not124 = icmp eq i32 %6, 0
  %i.o = select i1 %.not124, i32 0, i32 3
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %8, i32 noundef %0, i32 noundef %i.n, i32 noundef %i.o, i8 noundef signext 114, ptr noundef nonnull @.str.27, i32 noundef 1249) #23
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !286
  %i.r = icmp ne ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %or.cond = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader, label %.thread16

.preheader:                                       ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.w = zext nneg i32 %i.t to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = load i32, ptr %i.v, align 4, !tbaa !287  ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.x, %i.z
  %.not28 = icmp eq i64 %i.aa, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa25 = phi i32 [ %i.t, %.preheader ], [ %i.ae, %.lr.ph ] ; 5 uses
  %.lcssa = phi i32 [ %i.y, %.preheader ], [ %i.ah, %.lr.ph ] ; 4 uses
  %i.ab = icmp slt i32 %.lcssa25, %.lcssa
  br i1 %i.ab, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 3, %.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !286
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  store i8 -1, ptr %i.ad, align 1, !tbaa !115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !288 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !287 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.ag, %i.ai
  %i.ak = icmp ugt i64 %i.aj, %indvars.iv.next
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.al = mul nsw i32 %.lcssa25, %i.i
  %i.am = sdiv i32 %i.al, %.lcssa
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.an = mul nsw i32 %.lcssa, %i.i
  %i.ao = sdiv i32 %i.an, %.lcssa25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.090 = phi i32 [ %i.am, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.089 = phi i32 [ %i.i, %bb.c ], [ %i.ao, %bb.d ] ; 4 uses
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !286
  %i.aq = shl nsw i32 %.lcssa25, 2
  %i.ar = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.ap, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %.lcssa25, i32 noundef %.lcssa, i32 noundef %i.aq, ptr noundef null, ptr noundef null) #23 ; 3 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, i32 noundef 1268) #23
  %.not125 = icmp eq ptr %i.ar, null
  br i1 %.not125, label %.thread16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sitofp reassoc nsz arcp contract afn i32 %.090 to float
  %i.at = fmul reassoc nsz arcp contract afn float %i.k, 2.000000e+00 ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.as
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %.089 to float
  %i.ax = fadd reassoc nsz arcp contract afn float %i.at, %i.aw ; 2 uses
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.m
  %i.az = fptosi float %i.ay to i32
  %i.ba = call ptr @gdk_pixbuf_new(i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.av, i32 noundef %i.az) #23 ; 6 uses
  %.not126 = icmp eq ptr %i.ba, null
  br i1 %.not126, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @gdk_pixbuf_fill(ptr noundef nonnull %i.ba, i32 noundef %5) #23
  %i.bb = fptosi float %i.k to i32                ; 3 uses
  %i.bc = fpext reassoc nsz arcp contract afn float %i.k to double ; 3 uses
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %.090 to double
  %i.be = sitofp reassoc nsz arcp contract afn i32 %.089 to double ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.s, align 8, !tbaa !131
  %i.bg = sitofp <2 x i32> %i.bf to <2 x double>
  %i.bh = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.be, i64 1
  %i.bj = fdiv reassoc nsz arcp contract afn <2 x double> %i.bi, %i.bg ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = extractelement <2 x double> %i.bj, i64 1
  call void @gdk_pixbuf_scale(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ba, i32 noundef %i.bb, i32 noundef %i.bb, i32 noundef %.090, i32 noundef %.089, double noundef %i.bc, double noundef %i.bc, double noundef %i.bk, double noundef %i.bl, i32 noundef 3) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %.304.val, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = fptosi float %i.m to i32
  %i.bp = fptosi float %i.ax to i32
  call void @gdk_pixbuf_copy_area(ptr noundef %i.bn, i32 noundef 0, i32 noundef 0, i32 noundef %i.av, i32 noundef %i.bo, ptr noundef nonnull %i.ba, i32 noundef 0, i32 noundef %i.bp) #23
  %.not127 = icmp eq i32 %3, 0
  br i1 %.not127, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bq = call fastcc ptr @_view_map_images_count(i32 noundef %3, i32 noundef %4, ptr noundef %i.b, ptr noundef %i.a) ; 2 uses
  %i.br = load double, ptr %i.b, align 8, !tbaa !135
  %i.bs = fptosi double %i.br to i32
  %i.bt = load double, ptr %i.a, align 8, !tbaa !135 ; 2 uses
  %i.bu = fptosi double %i.bt to i32
  %i.bv = fadd reassoc nsz arcp contract afn double %i.be, %i.bc
  %i.bw = fsub reassoc nsz arcp contract afn double %i.bv, %i.bt
  %i.bx = fptosi double %i.bw to i32
  call void @gdk_pixbuf_copy_area(ptr noundef %i.bq, i32 noundef 0, i32 noundef 0, i32 noundef %i.bs, i32 noundef %i.bu, ptr noundef nonnull %i.ba, i32 noundef %i.bb, i32 noundef %i.bx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.092 = phi ptr [ %i.bq, %bb.h ], [ null, %bb.g ] ; 2 uses
  %.not128 = icmp eq ptr %1, null
  br i1 %.not128, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.090, ptr %1, align 4, !tbaa !131
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not129 = icmp eq ptr %2, null
  br i1 %.not129, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.089, ptr %2, align 4, !tbaa !131
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.by = call fastcc ptr @_view_map_images_count(i32 noundef %3, i32 noundef %4, ptr noundef %i.d, ptr noundef %i.c) ; 3 uses
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load double, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.k, 2.000000e+00
  %i.cb = fpext reassoc nsz arcp contract afn float %i.ca to double ; 2 uses
  %i.cc = fadd reassoc nsz arcp contract afn double %i.bz, %i.cb
  %i.cd = fptosi double %i.cc to i32              ; 2 uses
  %i.ce = load double, ptr %i.c, align 8, !tbaa !135 ; 2 uses
  %i.cf = fadd reassoc nsz arcp contract afn double %i.ce, %i.cb ; 2 uses
  %i.cg = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cf, %i.cg
  %i.ci = fptosi double %i.ch to i32
  %i.cj = tail call ptr @gdk_pixbuf_new(i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.cd, i32 noundef %i.ci) #23 ; 6 uses
  %.not121 = icmp eq ptr %i.cj, null
  br i1 %.not121, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @gdk_pixbuf_fill(ptr noundef nonnull %i.cj, i32 noundef %5) #23
  %i.ck = fptosi double %i.bz to i32              ; 2 uses
  %i.cl = fptosi double %i.ce to i32              ; 2 uses
  %i.cm = fptosi float %i.k to i32                ; 2 uses
  tail call void @gdk_pixbuf_copy_area(ptr noundef nonnull %i.by, i32 noundef 0, i32 noundef 0, i32 noundef %i.ck, i32 noundef %i.cl, ptr noundef nonnull %i.cj, i32 noundef %i.cm, i32 noundef %i.cm) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %.304.val, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !104
  %i.cp = fptosi float %i.m to i32
  %i.cq = fptosi double %i.cf to i32
  tail call void @gdk_pixbuf_copy_area(ptr noundef %i.co, i32 noundef 0, i32 noundef 0, i32 noundef %i.cd, i32 noundef %i.cp, ptr noundef nonnull %i.cj, i32 noundef 0, i32 noundef %i.cq) #23
  %.not122 = icmp eq ptr %1, null
  br i1 %.not122, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.ck, ptr %1, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not123 = icmp eq ptr %2, null
  br i1 %.not123, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.cl, ptr %2, align 4, !tbaa !131
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %bb.q, %bb.m
  %.3102 = phi ptr [ null, %bb.m ], [ %i.cj, %bb.q ], [ %i.cj, %bb.r ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.thread

.thread16:                                        ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread.thread

bb.t:                                             ; preds = %bb.k, %bb.l, %bb.f
  %.395.ph = phi ptr [ %.092, %bb.k ], [ %.092, %bb.l ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @g_object_unref(ptr noundef nonnull %i.ar) #23
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.t
  %.46 = phi ptr [ %.395.ph, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %.41035 = phi ptr [ %i.ba, %bb.t ], [ %.3102, %bb.s ] ; 2 uses
  %.not131 = icmp eq ptr %.46, null
  br i1 %.not131, label %.thread.thread, label %bb.u

bb.u:                                             ; preds = %.thread
  call void @g_object_unref(ptr noundef nonnull %.46) #23
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.a, %.thread16, %.thread, %bb.u
  %.4103520 = phi ptr [ null, %.thread16 ], [ %.41035, %.thread ], [ %.41035, %bb.u ], [ null, %bb.a ]
  ret ptr %.4103520
}

declare ptr @osm_gps_map_image_add_with_alignment(ptr noundef, float noundef, float noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gdk_pixbuf_new_from_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gdk_pixbuf_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gdk_pixbuf_fill(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gdk_pixbuf_scale(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #4

declare void @gdk_pixbuf_copy_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_view_map_images_count(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %4 = alloca %struct.cairo_text_extents_t, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8
  %i.b = tail call i32 @llvm.smin.i32(i32 %0, i32 99999)
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.66, i32 noundef %i.b) #23 ; 0 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1432
  %i.f = load double, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.g = fmul reassoc nsz arcp contract afn double %i.f, 1.320000e+02
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn double %i.f, 1.300000e+01
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
  %i.bq = fsub reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bp
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> %i.br, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>
  %i.bu = select <4 x i1> %i.bt, <4 x float> <float -1.800000e+02, float -1.800000e+02, float -9.000000e+01, float -9.000000e+01>, <4 x float> %i.bs
  %i.bv = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bs, <float 1.800000e+02, float 1.800000e+02, float 9.000000e+01, float 9.000000e+01>
  %i.bw = select <4 x i1> %i.bv, <4 x float> <float 1.800000e+02, float 1.800000e+02, float 9.000000e+01, float 9.000000e+01>, <4 x float> %i.bu ; 4 uses
  %.075.i = load ptr, ptr %i.q, align 8, !tbaa !140 ; 2 uses
  %.not76.i = icmp eq ptr %.075.i, null
  br i1 %.not76.i, label %_view_map_add_polygon_location.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %.thread38
  %i.bx = extractelement <4 x float> %i.bw, i64 2
  %i.by = extractelement <4 x float> %i.bw, i64 3
  %i.bz = extractelement <4 x float> %i.bw, i64 0
  %i.ca = extractelement <4 x float> %i.bw, i64 1
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader, %bb.n
  %.080.i = phi ptr [ %.0.i, %bb.n ], [ %.075.i, %.lr.ph.i34.preheader ] ; 2 uses
  %.05079.i = phi float [ %.1.i, %bb.n ], [ 0.000000e+00, %.lr.ph.i34.preheader ] ; 4 uses
  %.05178.i = phi float [ %.152.i, %bb.n ], [ 0.000000e+00, %.lr.ph.i34.preheader ] ; 4 uses
  %.05377.i = phi i32 [ %i.cx, %bb.n ], [ 0, %.lr.ph.i34.preheader ] ; 2 uses
  %i.cb = load ptr, ptr %.080.i, align 8, !tbaa !142 ; 4 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !172 ; 5 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ugt float %i.cc, %i.bx
  %i.ce = fcmp reassoc nsz arcp contract afn ult float %i.cc, %i.by
  %or.cond.i = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !173 ; 4 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ult float %i.cg, %i.bz
  %i.ci = fcmp reassoc nsz arcp contract afn ugt float %i.cg, %i.ca
  %or.cond66.i = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond66.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = fsub reassoc nsz arcp contract afn float %i.cc, %.05178.i
  %i.ck = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %i.aw
  br i1 %i.cl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = fsub reassoc nsz arcp contract afn float %i.cg, %.05079.i
  %i.cn = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cn, %i.ay
  br i1 %i.co, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cp = call ptr @osm_gps_map_point_new_degrees(float noundef %i.cc, float noundef %i.cg) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ag, ptr noundef %i.cp) #23
  %i.cq = load float, ptr %i.cb, align 4, !tbaa !172
  %i.cr = load float, ptr %i.cf, align 4, !tbaa !173
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %.lr.ph.i34
  %i.cs = srem i32 %.05377.i, %i.bb
  %.not63.i = icmp eq i32 %i.cs, 0
  br i1 %.not63.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !173
  %i.cv = call ptr @osm_gps_map_point_new_degrees(float noundef %i.cc, float noundef %i.cu) #23
  call void @osm_gps_map_track_add_point(ptr noundef %i.ag, ptr noundef %i.cv) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.152.i = phi nsz float [ %i.cq, %bb.k ], [ %.05178.i, %bb.j ], [ %.05178.i, %bb.l ], [ %.05178.i, %bb.m ]
  %.1.i = phi nsz float [ %i.cr, %bb.k ], [ %.05079.i, %bb.j ], [ %.05079.i, %bb.l ], [ %.05079.i, %bb.m ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.080.i, i64 8
  %i.cx = add nuw nsw i32 %.05377.i, 1
  %.0.i = load ptr, ptr %i.cw, align 8, !tbaa !140 ; 2 uses
  %.not.i35 = icmp eq ptr %.0.i, null
  br i1 %.not.i35, label %_view_map_add_polygon_location.exit, label %.lr.ph.i34

_view_map_add_polygon_location.exit:              ; preds = %bb.n, %.thread38
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.70, ptr noundef %i.ag, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.af, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null) #23
end_hunk_3
begin_hunk_4_@_draw_location:bb.a
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
  call void @cairo_scale(ptr noundef %i.bu, double noundef %i.be, double noundef %i.bd) #23
  call void @cairo_translate(ptr noundef %i.bu, double noundef %i.cc, double noundef %i.cc) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.bu, i32 noundef %i.bz) #23
  call void @cairo_arc(ptr noundef %i.bu, double noundef %i.cb, double noundef %i.cb, double noundef %i.cd, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #23
  call void @cairo_set_matrix(ptr noundef %i.bu, ptr noundef nonnull %5) #23
  call void @cairo_stroke(ptr noundef %i.bu) #23
  call void @cairo_move_to(ptr noundef %i.bu, double noundef %i.cb, double noundef %i.ch) #23
  call void @cairo_line_to(ptr noundef %i.bu, double noundef %i.cb, double noundef %i.ci) #23
  call void @cairo_move_to(ptr noundef %i.bu, double noundef %i.ch, double noundef %i.cb) #23
  call void @cairo_line_to(ptr noundef %i.bu, double noundef %i.ci, double noundef %i.cb) #23
  call void @cairo_stroke(ptr noundef %i.bu) #23
  call void @cairo_destroy(ptr noundef %i.bu) #23
  %i.cj = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.bt, i32 noundef 0, i32 noundef 0, i32 noundef %i.bm, i32 noundef %i.bm) #23
  call void @cairo_surface_destroy(ptr noundef %i.bt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ck = fcmp reassoc nsz arcp contract afn ogt float %i.x, %i.ah
  %. = select nsz i1 %i.ck, float %i.x, float %i.ah ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.cl = icmp samesign ugt i32 %i.w, 1024
  %i.cm = insertelement <2 x float> poison, float %i.x, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.ah, i64 1 ; 2 uses
  %i.co = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cn, splat (float 1.600000e+01)
  %i.cp = fcmp reassoc nsz arcp contract afn ogt double %i.ag, f0x4090000010000000
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1432
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !102 ; 3 uses
  %.not.i34 = icmp ne i32 %4, 0                   ; 2 uses
  %i.ct = select i1 %.not.i34, i32 2, i32 1
  %i.cu = uitofp nneg i32 %i.ct to double
  %i.cv = fmul reassoc nsz arcp contract afn double %i.cs, %i.cu
  %i.cw = fptosi double %i.cv to i32              ; 6 uses
  %i.cx = fmul reassoc nsz arcp contract afn double %i.cs, 1.600000e+01
  %i.cy = fptosi double %i.cx to i32
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.cw to double ; 9 uses
  %i.da = shl nsw i32 %i.cw, 1
  %i.db = sitofp reassoc nsz arcp contract afn i32 %i.da to double ; 6 uses
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.cy to double ; 4 uses
  %i.dd = select <2 x i1> %i.co, <2 x float> splat (float 1.600000e+01), <2 x float> %i.cn
  %i.de = fptosi <2 x float> %i.dd to <2 x i32>
  %i.df = insertelement <2 x i1> poison, i1 %i.cl, i64 0
  %i.dg = insertelement <2 x i1> %i.df, i1 %i.cp, i64 1
  %i.dh = select <2 x i1> %i.dg, <2 x i32> splat (i32 1024), <2 x i32> %i.de ; 2 uses
  %i.di = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dj = shl nuw <2 x i32> %i.dh, splat (i32 1)
  %i.dk = uitofp <2 x i32> %i.dj to <2 x double>
  %i.dl = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul reassoc nsz arcp contract afn <2 x double> %i.dm, %i.dk
  %i.do = fptosi <2 x double> %i.dn to <2 x i32>  ; 3 uses
  %i.dp = extractelement <2 x i32> %i.do, i64 0   ; 3 uses
  %i.dq = extractelement <2 x i32> %i.do, i64 1   ; 3 uses
  %i.dr = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.dp, i32 noundef %i.dq) #23 ; 3 uses
  %i.ds = call ptr @cairo_create(ptr noundef %i.dr) #23 ; 26 uses
  call void @cairo_set_source_rgba(ptr noundef %i.ds, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %i.ds) #23
  call void @cairo_set_line_width(ptr noundef %i.ds, double noundef %i.cz) #23
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.ds, i32 noundef 35) #23
  call void @cairo_move_to(ptr noundef %i.ds, double noundef %i.db, double noundef %i.db) #23
  %i.dt = sub nsw i32 %i.dp, %i.cw                ; 2 uses
  %i.du = sub nsw i32 %i.dt, %i.cw
  %i.dv = sitofp reassoc nsz arcp contract afn i32 %i.du to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.dv, double noundef %i.db) #23
  %i.dw = sub nsw i32 %i.dq, %i.cw                ; 2 uses
  %i.dx = sub nsw i32 %i.dw, %i.cw
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.dx to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.dv, double noundef %i.dy) #23
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.db, double noundef %i.dy) #23
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.db, double noundef %i.db) #23
  %i.dz = sitofp <2 x i32> %i.do to <2 x double>  ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = fmul reassoc nnan nsz arcp contract afn double %i.ea, 5.000000e-01 ; 5 uses
  %i.ec = fadd reassoc nsz arcp contract afn double %i.eb, %i.cz ; 2 uses
  %i.ed = extractelement <2 x double> %i.dz, i64 1
  %i.ee = fmul reassoc nnan nsz arcp contract afn double %i.ed, 5.000000e-01 ; 5 uses
  %i.ef = fsub reassoc nsz arcp contract afn double %i.ee, %i.dc ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ds, double noundef %i.ec, double noundef %i.ef) #23
  %i.eg = fadd reassoc nsz arcp contract afn double %i.ee, %i.dc ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.ec, double noundef %i.eg) #23
  %i.eh = fsub reassoc nsz arcp contract afn double %i.eb, %i.dc ; 2 uses
  %i.ei = fsub reassoc nsz arcp contract afn double %i.ee, %i.cz ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ds, double noundef %i.eh, double noundef %i.ei) #23
  %i.ej = fadd reassoc nsz arcp contract afn double %i.eb, %i.dc ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.ej, double noundef %i.ei) #23
  call void @cairo_stroke(ptr noundef %i.ds) #23
  %i.ek = icmp eq <4 x i32> %i.di, <i32 1024, i32 16, i32 1024, i32 16>
  %i.el = bitcast <4 x i1> %i.ek to i4
  %i.em = icmp ne i4 %i.el, 0
  %i.en = and i1 %.not.i34, %i.em
  %i.eo = select i1 %i.en, i32 36, i32 34
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.ds, i32 noundef %i.eo) #23
  call void @cairo_move_to(ptr noundef %i.ds, double noundef %i.cz, double noundef %i.cz) #23
  %i.ep = sitofp reassoc nsz arcp contract afn i32 %i.dt to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.ep, double noundef %i.cz) #23
  %i.eq = sitofp reassoc nsz arcp contract afn i32 %i.dw to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.ep, double noundef %i.eq) #23
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.cz, double noundef %i.eq) #23
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.cz, double noundef %i.cz) #23
  call void @cairo_move_to(ptr noundef %i.ds, double noundef %i.eb, double noundef %i.ef) #23
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.eb, double noundef %i.eg) #23
  call void @cairo_move_to(ptr noundef %i.ds, double noundef %i.eh, double noundef %i.ee) #23
  call void @cairo_line_to(ptr noundef %i.ds, double noundef %i.ej, double noundef %i.ee) #23
  call void @cairo_stroke(ptr noundef %i.ds) #23
  call void @cairo_destroy(ptr noundef %i.ds) #23
  %i.er = call ptr @gdk_pixbuf_get_from_surface(ptr noundef %i.dr, i32 noundef 0, i32 noundef 0, i32 noundef %i.dp, i32 noundef %i.dq) #23
  call void @cairo_surface_destroy(ptr noundef %i.dr) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_draw_ellipse.exit, %bb.e
  %.027 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.x, %bb.a ], [ %i.x, %bb.e ]
  %.026 = phi nsz float [ %., %_draw_ellipse.exit ], [ %i.ah, %bb.a ], [ %i.ah, %bb.e ]
  %.0 = phi ptr [ %i.cj, %_draw_ellipse.exit ], [ null, %bb.a ], [ %i.er, %bb.e ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.es = fptosi float %.027 to i32
  store i32 %i.es, ptr %1, align 4, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.et = fptosi float %.026 to i32
  store i32 %i.et, ptr %2, align 4, !tbaa !131
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

bb.g:                                             ; preds = %bb.f
  %.not71 = icmp eq i32 %2, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br i1 %.not71, label %.preheader83.preheader, label %.preheader87

.preheader83.preheader:                           ; preds = %bb.g
  %.not160 = icmp eq i64 %indvars.iv, 0
  br i1 %.not160, label %.preheader, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader83.preheader
  %i.v = load i32, ptr %i.u, align 8, !tbaa !157
  br label %.lr.ph156

.preheader87:                                     ; preds = %bb.g
  %i.w = zext nneg i32 %i.n to i64                ; 2 uses
  %indvars.iv.next111152 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next111152, %i.w
  br i1 %i.x, label %.lr.ph154.preheader, label %.preheader84

.lr.ph154.preheader:                              ; preds = %.preheader87
  %i.y = load i32, ptr %i.u, align 8, !tbaa !157
  br label %.lr.ph154

bb.h:                                             ; preds = %.lr.ph154
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv.next111153, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next111, %i.w
  br i1 %i.z, label %.lr.ph154, label %.preheader84

.preheader84:                                     ; preds = %bb.h, %.preheader87
end_hunk_4
begin_hunk_5_@_zoom_and_center:bb.a
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
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !131
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !131
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !131
  %i.al = sub i32 %i.aj, %0
  %i.am = add i32 %i.al, %i.ak
  %i.an = load i32, ptr %i.e, align 4, !tbaa !131
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !131
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
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !131
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
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
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  tail call void @dt_control_signal_block_by_func(ptr noundef %i.f, ptr noundef nonnull @_view_map_geotag_changed, ptr noundef nonnull %0) #23
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  tail call void @dt_control_signal_block_by_func(ptr noundef %i.g, ptr noundef nonnull @_view_map_collection_changed, ptr noundef nonnull %0) #23
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !120
  %i.i = trunc i32 %i.h to i1
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.k = icmp ne i32 %i.j, 0
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.d, label %_view_map_signal_change_raise.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.m = and i32 %i.l, 1048576
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_view_map_signal_change_raise.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef 888, ptr noundef nonnull @__FUNCTION__._view_map_signal_change_raise) #23
  br label %_view_map_signal_change_raise.exit

_view_map_signal_change_raise.exit:               ; preds = %bb.c, %bb.d, %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.n, i32 noundef 10, ptr noundef null, i32 noundef 0) #23
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
  tail call void @dt_control_signal_unblock_by_func(ptr noundef %i.o, ptr noundef nonnull @_view_map_collection_changed, ptr noundef nonnull %0) #23
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !122
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.86, ptr noundef %1) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !121
  %i.f = and i32 %i.e, 256
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.27, i32 noundef 2927, ptr noundef nonnull @__FUNCTION__._view_map_center_on_image_list, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !163
  %i.h = tail call ptr @dt_database_get(ptr noundef %i.g) #23
  %i.i = call i32 @sqlite3_prepare_v2(ptr noundef %i.h, ptr noundef %i.d, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #23
  %.not63 = icmp eq i32 %i.i, 0
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !165
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !163
  %i.l = call ptr @dt_database_get(ptr noundef %i.k) #23
  %i.m = call ptr @sqlite3_errmsg(ptr noundef %i.l) #23
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.27, i32 noundef 2927, ptr noundef nonnull @__FUNCTION__._view_map_center_on_image_list, ptr noundef %i.d, ptr noundef %i.m) #29 ; 0 uses
  br label %bb.e

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
declare i32 @llvm.umax.i32(i32, i32) #14

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

end_hunk_5
