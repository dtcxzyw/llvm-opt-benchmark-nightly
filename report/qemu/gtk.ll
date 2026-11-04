Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/gtk?download=true
inline.NumInlined: 111
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gd_draw_event:bb.a
bb.n:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 168
  store <2 x double> %i.at, ptr %i.be, align 8
  br label %gd_update_scale.exit

gd_update_scale.exit:                             ; preds = %.gd_update_scale.exit_crit_edge, %bb.j, %bb.m, %bb.n
  %i.bf = phi <2 x double> [ %i.aj, %.gd_update_scale.exit_crit_edge ], [ %i.ag, %bb.j ], [ %i.bd, %bb.m ], [ %i.at, %bb.n ]
  %i.bg = phi <2 x double> [ %i.am, %.gd_update_scale.exit_crit_edge ], [ %i.ae, %bb.j ], [ %i.as, %bb.m ], [ %i.as, %bb.n ]
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bj = fmul <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = fptosi double %i.bk to i32              ; 4 uses
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  %i.bn = fptosi double %i.bm to i32              ; 3 uses
  %i.bo = icmp sgt i32 %i.t, %i.bl
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %gd_update_scale.exit
  %i.bp = sub i32 %i.t, %i.bl
  %i.bq = sdiv i32 %i.bp, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %gd_update_scale.exit
  %.052 = phi i32 [ %i.bq, %bb.o ], [ 0, %gd_update_scale.exit ] ; 2 uses
  %i.br = icmp sgt i32 %i.v, %i.bn
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = sub i32 %i.v, %i.bn
  %i.bt = sdiv i32 %i.bs, 2
  %i.bu = sitofp i32 %i.bt to double
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi double [ %i.bu, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.bv = sitofp i32 %i.t to double
  %i.bw = sitofp i32 %i.v to double
  tail call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bv, double noundef %i.bw) #15
  %i.bx = add i32 %.052, %i.bl
  %i.by = sitofp i32 %i.bx to double
  %i.bz = sub i32 0, %i.bl
  %i.ca = sitofp i32 %i.bz to double
  %i.cb = sitofp i32 %i.bn to double
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.by, double noundef %.0, double noundef %i.ca, double noundef %i.cb) #15
  tail call void @cairo_fill(ptr noundef %1) #15
  %i.cc = load double, ptr %i.bh, align 8
  %i.cd = load double, ptr %i.bi, align 8
  tail call void @cairo_scale(ptr noundef %1, double noundef %i.cc, double noundef %i.cd) #15
  %i.ce = load ptr, ptr %i.i, align 8
  %i.cf = sitofp i32 %.052 to double
  %i.cg = load <2 x double>, ptr %i.bh, align 8
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %.0, i64 1
  %i.cj = fdiv <2 x double> %i.ci, %i.cg          ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = extractelement <2 x double> %i.cj, i64 1
  tail call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ce, double noundef %i.ck, double noundef %i.cl) #15
  tail call void @cairo_paint(ptr noundef %1) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.r, %bb.c
  %.053 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.r ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.053
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @gd_render_event(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @gd_gl_area_draw(ptr noundef nonnull %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gd_resize_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.QemuUIInfo, align 4         ; 5 uses
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %2, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.e = load <2 x double>, ptr %i.d, align 8
  %i.f = tail call ptr @gtk_widget_get_window(ptr noundef %0) #15
  %i.g = tail call i32 @gdk_window_get_scale_factor(ptr noundef %i.f) #15
  %i.h = load ptr, ptr %3, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.l = load i32, ptr %i.k, align 8
  %.not18 = icmp eq i32 %i.l, 0
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = fdiv <2 x double> %i.c, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi <2 x double> [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call zeroext i1 @qemu_console_ui_info_supported(ptr noundef %i.p) #15
  br i1 %i.q, label %bb.e, label %gd_set_ui_size.exit

bb.e:                                             ; preds = %bb.d
  %i.r = sitofp i32 %i.g to double
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = tail call ptr @qemu_console_get_ui_info(ptr noundef %i.s) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = insertelement <2 x double> poison, double %i.r, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.n, %i.w
  %i.y = fptosi <2 x double> %i.x to <2 x i32>
  store <2 x i32> %i.y, ptr %i.u, align 4
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = call i32 @qemu_console_set_ui_info(ptr noundef %i.z, ptr noundef nonnull %4, i1 noundef zeroext true) #15 ; 0 uses
  br label %gd_set_ui_size.exit

gd_set_ui_size.exit:                              ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @gd_event(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2) #0 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %gd_motion_event.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %gd_motion_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val99.i = load ptr, ptr %i.f, align 8
  %i.g = tail call i32 @pixman_image_get_width(ptr noundef %.val99.i) #15
  %i.h = sitofp i32 %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.j = load double, ptr %i.i, align 8
  %i.k = fmul double %i.j, %i.h
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8
  %.val102.i = load ptr, ptr %i.m, align 8
  %i.n = tail call i32 @pixman_image_get_height(ptr noundef %.val102.i) #15
  %i.o = sitofp i32 %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.q = load double, ptr %i.p, align 8
  %i.r = fmul double %i.q, %i.o
  %i.s = fptosi double %i.r to i32                ; 2 uses
  %i.t = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %0) #15 ; 3 uses
  %i.u = tail call i32 @gtk_widget_get_allocated_height(ptr noundef %0) #15 ; 3 uses
  %i.v = icmp sgt i32 %i.t, %i.l
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sub i32 %i.t, %i.l
  %i.x = sdiv i32 %i.w, 2
  %i.y = sitofp i32 %i.x to double
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.080.i = phi double [ %i.y, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.z = icmp sgt i32 %i.u, %i.s
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = sub i32 %i.u, %i.s
  %i.ab = sdiv i32 %i.aa, 2
  %i.ac = sitofp i32 %i.ab to double
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.079.i = phi double [ %i.ac, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load <2 x double>, ptr %i.ad, align 8
  %i.af = insertelement <2 x double> poison, double %.080.i, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %.079.i, i64 1
  %i.ah = fsub <2 x double> %i.ae, %i.ag
  %i.ai = load <2 x double>, ptr %i.i, align 8
  %i.aj = fdiv <2 x double> %i.ah, %i.ai
  %i.ak = fptosi <2 x double> %i.aj to <2 x i32>  ; 9 uses
  %i.al = tail call i32 @gtk_widget_get_scale_factor(ptr noundef %0) #15
  %i.am = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %trace_gd_motion_event.exit.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.an = load i16, ptr @_TRACE_GD_MOTION_EVENT_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.an, 0
  br i1 %.not5.i.i, label %trace_gd_motion_event.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 32768
  %.not6.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not6.i.i, label %trace_gd_motion_event.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = extractelement <2 x i32> %i.ak, i64 0
  %i.ar = extractelement <2 x i32> %i.ak, i64 1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.al, i32 noundef %i.aq, i32 noundef %i.ar) #15
  br label %trace_gd_motion_event.exit.i

trace_gd_motion_event.exit.i:                     ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call zeroext i1 @qemu_input_is_absolute(ptr noundef %i.at) #15
  br i1 %i.au, label %bb.k, label %bb.o

bb.k:                                             ; preds = %trace_gd_motion_event.exit.i
  %i.av = icmp slt <2 x i32> %i.ak, zeroinitializer ; 2 uses
  %4 = extractelement <2 x i1> %i.av, i64 0
  %5 = extractelement <2 x i1> %i.av, i64 1
  %or.cond.i = select i1 %4, i1 true, i1 %5
  br i1 %or.cond.i, label %gd_motion_event.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.e, align 8
  %.val98.i = load ptr, ptr %i.aw, align 8
  %i.ax = tail call i32 @pixman_image_get_width(ptr noundef %.val98.i) #15
  %i.ay = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  %.not92.i = icmp sgt i32 %i.ax, %i.ay
  br i1 %.not92.i, label %bb.m, label %gd_motion_event.exit

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.e, align 8
  %.val101.i = load ptr, ptr %i.az, align 8
  %i.ba = tail call i32 @pixman_image_get_height(ptr noundef %.val101.i) #15
  %i.bb = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  %.not93.i = icmp sgt i32 %i.ba, %i.bb
  br i1 %.not93.i, label %bb.n, label %gd_motion_event.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.as, align 8
  %i.bd = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %i.bd, align 8
  %i.be = tail call i32 @pixman_image_get_width(ptr noundef %.val.i) #15
  tail call void @qemu_input_queue_abs(ptr noundef %i.bc, i32 noundef 0, i32 noundef %i.ay, i32 noundef 0, i32 noundef %i.be) #15
  %i.bf = load ptr, ptr %i.as, align 8
  %i.bg = load ptr, ptr %i.e, align 8
  %.val100.i = load ptr, ptr %i.bg, align 8
  %i.bh = tail call i32 @pixman_image_get_height(ptr noundef %.val100.i) #15
  tail call void @qemu_input_queue_abs(ptr noundef %i.bf, i32 noundef 1, i32 noundef %i.bb, i32 noundef 0, i32 noundef %i.bh) #15
  br label %.sink.split.i

bb.o:                                             ; preds = %trace_gd_motion_event.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  %i.bj = load i32, ptr %i.bi, align 4
  %.not91.i = icmp eq i32 %i.bj, 0
  br i1 %.not91.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bl, %2
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.as, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = extractelement <2 x i32> %i.ak, i64 0
  %i.br = sub i32 %i.bq, %i.bp
  tail call void @qemu_input_queue_rel(ptr noundef %i.bn, i32 noundef 0, i32 noundef %i.br) #15
  %i.bs = load ptr, ptr %i.as, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = extractelement <2 x i32> %i.ak, i64 1
  %i.bw = sub i32 %i.bv, %i.bu
  tail call void @qemu_input_queue_rel(ptr noundef %i.bs, i32 noundef 1, i32 noundef %i.bw) #15
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.n
  tail call void @qemu_input_event_sync() #15
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.by = extractelement <2 x i32> %i.ak, i64 0
  store i32 %i.by, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.ca = extractelement <2 x i32> %i.ak, i64 1
  store i32 %i.ca, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 212 ; 2 uses
  store i32 1, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.as, align 8
  %i.cd = tail call zeroext i1 @qemu_input_is_absolute(ptr noundef %i.cc) #15
  br i1 %i.cd, label %gd_motion_event.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, %2
  br i1 %i.cg, label %bb.t, label %gd_motion_event.exit

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.d, align 8
  %i.ci = tail call ptr @gtk_widget_get_screen(ptr noundef %i.ch) #15
  %i.cj = tail call ptr @gtk_widget_get_display(ptr noundef %0) #15
  %i.ck = tail call ptr @gtk_widget_get_window(ptr noundef %0) #15
  %i.cl = tail call ptr @gdk_display_get_monitor_at_window(ptr noundef %i.cj, ptr noundef %i.ck) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !13
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cn = load double, ptr %i.cm, align 8
  %i.co = fptosi double %i.cn to i32              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cq = load double, ptr %i.cp, align 8
  %i.cr = fptosi double %i.cq to i32              ; 2 uses
  call void @gdk_monitor_get_geometry(ptr noundef %i.cl, ptr noundef nonnull %3) #15
  %i.cs = load i32, ptr %3, align 8               ; 2 uses
  %.not94.i = icmp slt i32 %i.cs, %i.co
  br i1 %.not94.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.ct = sub i32 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = add i32 %i.cv, -1
  %.not95.i = icmp slt i32 %i.ct, %i.cw
  br i1 %.not95.i, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not96.i = icmp slt i32 %i.cy, %i.cr
  br i1 %.not96.i, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.cz = sub i32 %i.cr, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = add i32 %i.db, -1
  %.not97.i = icmp slt i32 %i.cz, %i.dc
  br i1 %.not97.i, label %.sink.split113.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.dd = call ptr @gdk_event_get_device(ptr noundef nonnull %1) #15
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.df = load <2 x i32>, ptr %i.de, align 8
  %i.dg = sdiv <2 x i32> %i.df, splat (i32 2)
  %i.dh = load <2 x i32>, ptr %3, align 8
  %i.di = add <2 x i32> %i.dg, %i.dh              ; 2 uses
  %i.dj = extractelement <2 x i32> %i.di, i64 0
  %i.dk = extractelement <2 x i32> %i.di, i64 1
  call void @gdk_device_warp(ptr noundef %i.dd, ptr noundef %i.ci, i32 noundef %i.dj, i32 noundef %i.dk) #15
  store i32 0, ptr %i.cb, align 4
  br label %.sink.split113.i

.sink.split113.i:                                 ; preds = %.critedge.i, %bb.w
  %.1.ph.i = phi i32 [ 0, %.critedge.i ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %gd_motion_event.exit

gd_motion_event.exit:                             ; preds = %.sink.split113.i, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.k ], [ 1, %bb.s ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.r ], [ %.1.ph.i, %.sink.split113.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @gd_button_event(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @qemu_input_is_absolute(ptr noundef %i.h) #15
  br i1 %i.i, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.k = load ptr, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, %2
  br i1 %.not, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %.not24 = icmp eq ptr %i.m, null
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @gtk_check_menu_item_set_active(ptr noundef %i.o, i32 noundef 1) #15
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @gd_grab_pointer(ptr noundef nonnull %2, ptr noundef nonnull @.str.66)
  br label %bb.j

thread-pre-split:                                 ; preds = %bb.c, %bb.d
  %.pr = load i32, ptr %i.b, align 4
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.a
  %i.p = phi i32 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ]
  %switch.tableidx = add i32 %i.p, -1             ; 3 uses
  %i.q = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 391, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.q, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.j

switch.lookup:                                    ; preds = %bb.h
  %i.r = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.gd_button_event, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.b
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ]
  %i.s = load i32, ptr %1, align 8                ; 2 uses
  %.off = add i32 %i.s, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.s, 4
  tail call void @qemu_input_queue_btn(ptr noundef %i.u, i32 noundef %.0, i1 noundef zeroext %i.v) #15
  tail call void @qemu_input_event_sync() #15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread, %bb.f, %bb.g, %bb.i
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @gd_scroll_event(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4
  switch i32 %i.d, label %bb.j [
    i32 0, label %.thread
    i32 1, label %bb.b
    i32 2, label %.thread43
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

bb.c:                                             ; preds = %bb.a
  br label %.thread43

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store double 0.000000e+00, ptr %i.a, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store double 0.000000e+00, ptr %i.b, align 8, !annotation !13
  %i.e = call i32 @gdk_event_get_scroll_deltas(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load double, ptr %i.b, align 8           ; 2 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %.thread49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = fcmp olt double %i.f, 0.000000e+00
  br i1 %i.h, label %.thread49, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load double, ptr %i.a, align 8           ; 2 uses
end_hunk_0
