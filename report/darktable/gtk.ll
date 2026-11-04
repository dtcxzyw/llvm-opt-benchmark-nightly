Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gtk?download=true
inline.NumInlined: 219
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dt_gui_get_scroll_unit_delta
define range(i32 0, 2) i32 @dt_gui_get_scroll_unit_delta(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef %0) #16
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %dt_gui_get_scroll_unit_deltas.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  switch i32 %i.c, label %dt_gui_get_scroll_unit_deltas.exit [
    i32 2, label %bb.j
    i32 3, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not48.i = icmp eq i8 %i.f, 0
  br i1 %.not48.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %dt_gui_get_scroll_unit_deltas.exit

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !70
  %i.i = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.h ; 4 uses
  store double %i.j, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load double, ptr %i.k, align 8, !tbaa !71
  %i.m = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.n = fadd reassoc nsz arcp contract afn double %i.m, %i.l ; 4 uses
  store double %i.n, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.o = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.j) ; 2 uses
  %i.p = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.n) ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn une double %i.o, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn une double %i.p, 0.000000e+00
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i, label %bb.i, label %dt_gui_get_scroll_unit_deltas.exit

bb.i:                                             ; preds = %bb.h
  %i.s = fsub reassoc nsz arcp contract afn double %i.j, %i.o
  store double %i.s, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.t = fsub reassoc nsz arcp contract afn double %i.n, %i.p
  store double %i.t, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.u = fptosi double %i.j to i32
  %i.v = fptosi double %i.n to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.c, %bb.d, %bb.e
  %.04.ph = phi i32 [ %i.u, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ -1, %bb.b ]
  %.03.ph = phi i32 [ %i.v, %bb.i ], [ 1, %bb.e ], [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = add nsw i32 %.03.ph, %.04.ph
  store i32 %i.w, ptr %1, align 4, !tbaa !72
  br label %dt_gui_get_scroll_unit_deltas.exit

dt_gui_get_scroll_unit_deltas.exit:               ; preds = %bb.h, %bb.g, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_valid_window_placement(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._cairo_rectangle_int, align 4 ; 8 uses
  %i.a = tail call ptr @gdk_display_get_default() #16 ; 2 uses
  %i.b = tail call i32 @gdk_display_get_n_monitors(ptr noundef %i.a) #16 ; 2 uses
  %.not43 = icmp sgt i32 %i.b, 0
  br i1 %.not43, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = shl nsw i32 %4, 1                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = add nsw i32 %2, %0
  %i.h = add nsw i32 %3, %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.03244 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bb.e ] ; 2 uses
  %i.i = call ptr @gdk_display_get_monitor(ptr noundef %i.a, i32 noundef %.03244) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @gdk_monitor_get_geometry(ptr noundef %i.i, ptr noundef nonnull %5) #16
  %i.j = load i32, ptr %i.c, align 4, !tbaa !74
  %i.k = sub nsw i32 %i.j, %i.d                   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !75
  %i.m = sub nsw i32 %i.l, %i.d                   ; 2 uses
  %i.n = icmp slt i32 %i.k, 1
  %i.o = icmp slt i32 %i.m, 1
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.f, align 4, !tbaa !217
  %i.q = add nsw i32 %i.p, %4                     ; 2 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !76
  %i.s = add nsw i32 %i.r, %4                     ; 2 uses
  %i.t = add nsw i32 %i.s, %i.k
  %i.u = icmp slt i32 %0, %i.t
  %i.v = icmp sgt i32 %i.g, %i.s
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = add nsw i32 %i.q, %i.m
  %i.y = icmp slt i32 %1, %i.x
  %i.z = icmp sgt i32 %i.h, %i.q
  %i.aa = select i1 %i.w, i1 %i.y, i1 false
  %or.cond3 = select i1 %i.aa, i1 %i.z, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ab = add nuw nsw i32 %.03244, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  %.not42 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.not42
}

declare ptr @gdk_display_get_default() local_unnamed_addr #2

declare i32 @gdk_display_get_n_monitors(ptr noundef) local_unnamed_addr #2

declare ptr @gdk_display_get_monitor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gdk_monitor_get_geometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dt_gui_gtk_load_config() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._cairo_rectangle_int, align 8 ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 7 uses
  %i.e = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.7) #16 ; 2 uses
  %i.f = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.8) #16 ; 2 uses
  %i.g = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.9) #16
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.9) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.k = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.10) #16
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.10) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  tail call void @gtk_window_resize(ptr noundef %i.d, i32 noundef %i.e, i32 noundef %i.f) #16
  %i.o = tail call ptr @gdk_display_get_default() #16 ; 2 uses
  %i.p = tail call i32 @gdk_display_get_n_monitors(ptr noundef %i.o) #16 ; 2 uses
  %.not43.i = icmp sgt i32 %i.p, 0
  br i1 %.not43.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %i.n, i64 1
  %i.t = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %i.f, i64 1
  %i.v = add nsw <2 x i32> %i.s, %i.u
  %i.w = insertelement <4 x i32> poison, i32 %i.j, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.n, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.03244.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  %i.y = call ptr @gdk_display_get_monitor(ptr noundef %i.o, i32 noundef %.03244.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @gdk_monitor_get_geometry(ptr noundef %i.y, ptr noundef nonnull %0) #16
  %i.z = load <2 x i32>, ptr %i.q, align 8, !tbaa !72 ; 2 uses
  %1 = icmp slt <2 x i32> %i.z, splat (i32 49)    ; 2 uses
  %2 = extractelement <2 x i1> %1, i64 0
  %3 = extractelement <2 x i1> %1, i64 1
  %or.cond.i = select i1 %2, i1 true, i1 %3
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw <2 x i32> %i.z, splat (i32 -48)
  %i.ab = load <2 x i32>, ptr %0, align 8, !tbaa !72
  %i.ac = add nsw <2 x i32> %i.ab, splat (i32 24) ; 2 uses
  %i.ad = add nsw <2 x i32> %i.aa, %i.ac
  %i.ae = shufflevector <2 x i32> %i.v, <2 x i32> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ah = icmp sgt <4 x i32> %i.ae, %i.ag
  %i.ai = freeze <4 x i1> %i.ah
  %i.aj = bitcast <4 x i1> %i.ai to i4
  %i.ak = icmp eq i4 %i.aj, -1
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.al = add nuw nsw i32 %.03244.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %i.p
  br i1 %exitcond.not.i, label %.loopexit, label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @gtk_window_move(ptr noundef %i.d, i32 noundef %i.j, i32 noundef %i.n) #16
  br label %bb.j

.loopexit:                                        ; preds = %bb.h, %bb.e
  call void @gtk_window_move(ptr noundef %i.d, i32 noundef 0, i32 noundef 0) #16
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %i.am = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.11) #16
  %.not16 = icmp eq i32 %i.am, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @gtk_window_fullscreen(ptr noundef %i.d) #16
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @gtk_window_unfullscreen(ptr noundef %i.d) #16
  %i.an = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.12) #16
  %.not17 = icmp eq i32 %i.an, 0
  br i1 %.not17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @gtk_window_maximize(ptr noundef %i.d) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @gtk_window_unmaximize(ptr noundef %i.d) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ao = call i32 @dt_conf_key_exists(ptr noundef nonnull @.str.13) #16
  %.not18 = icmp eq i32 %i.ao, 0
  br i1 %.not18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.13) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink = phi i32 [ %i.ap, %bb.p ], [ 0, %bb.o ]
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1376
  store i32 %.sink, ptr %i.ar, align 8, !tbaa !81
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @dt_ui_main_window(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  ret ptr %i.b
}

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_fullscreen(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_unfullscreen(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_maximize(ptr noundef) local_unnamed_addr #2

declare void @gtk_window_unmaximize(ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_key_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dt_gui_gtk_write_config() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @gtk_window_get_size(ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #16
  call void @gtk_window_get_position(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.i = load i32, ptr %i.a, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.9, i32 noundef %i.i) #16
  %i.j = load i32, ptr %i.b, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.10, i32 noundef %i.j) #16
  %i.k = load i32, ptr %i.c, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.7, i32 noundef %i.k) #16
  %i.l = load i32, ptr %i.d, align 4, !tbaa !72
  call void @dt_conf_set_int(ptr noundef nonnull @.str.8, i32 noundef %i.l) #16
  %i.m = call ptr @gtk_widget_get_window(ptr noundef %i.h) #16
  %i.n = call i32 @gdk_window_get_state(ptr noundef %i.m) #16
  %i.o = and i32 %i.n, 4
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.12, i32 noundef %i.o) #16
  %i.p = call ptr @gtk_widget_get_window(ptr noundef %i.h) #16
  %i.q = call i32 @gdk_window_get_state(ptr noundef %i.p) #16
  %i.r = and i32 %i.q, 16
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.11, i32 noundef %i.r) #16
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1376
  %i.u = load i32, ptr %i.t, align 8, !tbaa !81
  call void @dt_conf_set_bool(ptr noundef nonnull @.str.13, i32 noundef %i.u) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

declare void @gtk_window_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_window_get_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_conf_set_bool(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gdk_window_get_state(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_gui_gtk_set_source_rgb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.d, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_gui_gtk_set_source_rgba(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %.sroa.0.0.copyload = load double, ptr %i.d, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !69
  %i.e = fpext reassoc nsz arcp contract afn float %2 to double
  %i.f = fmul reassoc nsz arcp contract afn double %.sroa.6.0.copyload, %i.e
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %i.f) #16
  ret void
}

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_gui_gtk_quit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = tail call ptr @gtk_widget_get_style_context(ptr noundef %i.d) #16
  tail call void @gtk_style_context_add_class(ptr noundef %i.e, ptr noundef nonnull @.str.14) #16
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #16
end_hunk_0
