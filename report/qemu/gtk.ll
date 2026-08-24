Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/gtk?download=true
inline.NumInlined: 111
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gd_update_geometry_hints:bb.a
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.i = load i32, ptr %i.h, align 8
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load double, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi double [ %i.k, %bb.d ], [ 2.500000e-01, %bb.c ]
  %i.o = phi double [ %i.m, %bb.d ], [ 2.500000e-01, %bb.c ]
  %.val = load ptr, ptr %i.g, align 8
  %i.p = tail call i32 @pixman_image_get_width(ptr noundef %.val) #15
  %i.q = sitofp i32 %i.p to double
  %i.r = fmul double %i.n, %i.q
  %i.s = fptosi double %i.r to i32                ; 2 uses
  store i32 %i.s, ptr %1, align 8
  %i.t = load ptr, ptr %i.f, align 8
  %.val24 = load ptr, ptr %i.t, align 8
  %i.u = tail call i32 @pixman_image_get_height(ptr noundef %.val24) #15
  %i.v = sitofp i32 %i.u to double
  %i.w = fmul double %i.o, %i.v
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.x, ptr %i.y, align 4
  %i.z = load ptr, ptr %i.e, align 8              ; 2 uses
  tail call void @gtk_widget_set_size_request(ptr noundef %i.z, i32 noundef %i.s, i32 noundef %i.x) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.019 = phi i32 [ 2, %bb.e ], [ 0, %bb.a ]
  %.0 = phi ptr [ %i.z, %bb.e ], [ null, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not23 = icmp eq ptr %i.ab, null
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ %i.ab, %bb.f ]
  call void @gtk_window_set_geometry_hints(ptr noundef %i.ad, ptr noundef %.0, ptr noundef nonnull %1, i32 noundef %.019) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

declare void @gtk_window_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gd_hw_gl_flushed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call i32 @qemu_dmabuf_get_fence_fd(ptr noundef %i.b) #15 ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_set_fd_handler(i32 noundef %i.c, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %i.e = tail call i32 @close(i32 noundef %i.c) #15 ; 0 uses
  tail call void @qemu_dmabuf_set_fence_fd(ptr noundef %i.b, i32 noundef -1) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @qemu_console_hw_gl_block(ptr noundef %i.g, i1 noundef zeroext false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @qemu_dmabuf_get_fence_fd(ptr noundef) local_unnamed_addr #2

declare void @qemu_set_fd_handler(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @qemu_dmabuf_set_fence_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qemu_console_hw_gl_block(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gd_update_monitor_refresh_rate(ptr nofree noundef captures(none) initializes((80, 88)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.QemuUIInfo, align 4         ; 5 uses
  %i.a = tail call ptr @gtk_widget_get_window(ptr noundef %1) #15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @gtk_widget_get_display(ptr noundef %1) #15
  %i.c = tail call ptr @gdk_display_get_monitor_at_window(ptr noundef %i.b, ptr noundef nonnull %i.a) #15
  %i.d = tail call i32 @gdk_monitor_get_refresh_rate(ptr noundef %i.c) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @qemu_console_ui_info_supported(ptr noundef %i.f) #15
  br i1 %i.g, label %bb.d, label %gd_set_ui_refresh_rate.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = tail call ptr @qemu_console_get_ui_info(ptr noundef %i.h) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %i.i, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = call i32 @qemu_console_set_ui_info(ptr noundef %i.k, ptr noundef nonnull %2, i1 noundef zeroext true) #15 ; 0 uses
  br label %gd_set_ui_refresh_rate.exit

gd_set_ui_refresh_rate.exit:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %.not16 = icmp eq i32 %.0, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %gd_set_ui_refresh_rate.exit
  %i.m = sdiv i32 1000000, %.0
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 30)
  %i.o = sext i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %gd_set_ui_refresh_rate.exit, %bb.e
  %i.p = phi i64 [ %i.o, %bb.e ], [ 30, %gd_set_ui_refresh_rate.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.p, ptr %i.q, align 8
  ret void
}

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_display(ptr noundef) local_unnamed_addr #2

declare ptr @gdk_display_get_monitor_at_window(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gdk_monitor_get_refresh_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gd_update_scale(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load i32, ptr %i.b, align 8
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %2, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x double>
  %i.g = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %4, i64 1
  %i.i = sitofp <2 x i32> %i.h to <2 x double>
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = fdiv <2 x double> %i.f, %i.i
  store <2 x double> %i.k, ptr %i.j, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.m = load i32, ptr %i.l, align 8
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %2, i64 1
  %i.p = sitofp <2 x i32> %i.o to <2 x double>
  %i.q = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %4, i64 1
  %i.s = sitofp <2 x i32> %i.r to <2 x double>
  %i.t = fdiv <2 x double> %i.p, %i.s             ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %i.v = load i32, ptr %i.u, align 4
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = extractelement <2 x double> %i.t, i64 0  ; 2 uses
  %i.x = extractelement <2 x double> %i.t, i64 1  ; 2 uses
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = select i1 %i.y, double %i.w, double %i.x ; 2 uses
  store double %i.z, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.z, ptr %i.aa, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  store <2 x double> %i.t, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_register_gtk() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @register_gtk, i32 noundef 4) #15
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @register_gtk() #0 {
bb.a:
  tail call void @qemu_display_register(ptr noundef nonnull @qemu_display_gtk) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_window_set_geometry_hints(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pixman_image_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @pixman_image_get_height(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @qemu_console_ui_info_supported(ptr noundef) local_unnamed_addr #2

declare ptr @qemu_console_get_ui_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @qemu_console_set_ui_info(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @qemu_display_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @early_gtk_display_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  tail call void @gtk_disable_setlocale() #15
  %i.a = tail call i32 @gtk_init_check(ptr noundef null, ptr noundef null) #15 ; 2 uses
  store i32 %i.a, ptr @gtkinit, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2850, ptr noundef nonnull @__PRETTY_FUNCTION__.early_gtk_display_init) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @gdk_display_get_default() #15 ; 3 uses
  %i.j = tail call i64 @gdk_wayland_display_get_type() #15 ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.critedge20, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.i, i64 noundef %i.j) #17
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge, label %.critedge20

.critedge20:                                      ; preds = %bb.h, %bb.i
  store i8 1, ptr @gtk_use_gl_area, align 1
  tail call void @gtk_gl_area_init() #15
  br label %bb.l

.critedge:                                        ; preds = %bb.f, %bb.i
  %i.p = load i8, ptr %i.d, align 2, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.r = load i32, ptr %i.g, align 4
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j
  %i.s = phi i32 [ %i.r, %bb.j ], [ 1, %.critedge ]
  tail call void @gtk_egl_init(i32 noundef %i.s) #15
  br label %bb.l

bb.l:                                             ; preds = %.critedge20, %bb.k, %bb.e, %bb.d
  %i.t = tail call ptr @gdk_display_get_default() #15 ; 6 uses
  store i64 0, ptr @keycode_maplen, align 8
  store i8 0, ptr @keycode_xorgevdev, align 1
  %i.u = tail call i64 @gdk_x11_display_get_type() #15 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.critedge42.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not31.i = icmp eq ptr %i.v, null
  br i1 %.not31.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, %i.u
  br i1 %i.x, label %.critedge36.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.t, i64 noundef %i.u) #17
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %.critedge36.i

.critedge36.i:                                    ; preds = %bb.o, %bb.n
  %i.aa = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %trace_gd_keymap_windowing.exit.i, label %bb.p, !prof !9

bb.p:                                             ; preds = %.critedge36.i
  %i.ab = load i16, ptr @_TRACE_GD_KEYMAP_WINDOWING_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not1.i.i, label %trace_gd_keymap_windowing.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 32768
  %.not2.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not2.i.i, label %trace_gd_keymap_windowing.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #15
  br label %trace_gd_keymap_windowing.exit.i

trace_gd_keymap_windowing.exit.i:                 ; preds = %bb.r, %bb.q, %bb.p, %.critedge36.i
  %i.ae = tail call ptr @gdk_x11_display_get_xdisplay(ptr noundef nonnull %i.t) #15
  %i.af = tail call ptr @qemu_xkeymap_mapping_table(ptr noundef %i.ae, ptr noundef nonnull @keycode_maplen, ptr noundef nonnull @keycode_xorgevdev) #15
  br label %gd_get_keymap.exit

bb.s:                                             ; preds = %bb.o
  %i.ag = tail call i64 @gdk_wayland_display_get_type() #15 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not33.i = icmp eq ptr %i.ah, null
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %.critedge41.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ak = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.t, i64 noundef %i.ag) #17
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.critedge39.i, label %.critedge41.i

.critedge41.i:                                    ; preds = %bb.u, %bb.t
  %i.am = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i43.i = icmp eq i32 %i.am, 0
  br i1 %.not.i43.i, label %trace_gd_keymap_windowing.exit46.i, label %bb.v, !prof !9

bb.v:                                             ; preds = %.critedge41.i
  %i.an = load i16, ptr @_TRACE_GD_KEYMAP_WINDOWING_DSTATE, align 2
  %.not1.i44.i = icmp eq i16 %i.an, 0
  br i1 %.not1.i44.i, label %trace_gd_keymap_windowing.exit46.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 32768
  %.not2.i45.i = icmp eq i32 %i.ap, 0
  br i1 %.not2.i45.i, label %trace_gd_keymap_windowing.exit46.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) #15
  br label %trace_gd_keymap_windowing.exit46.i

trace_gd_keymap_windowing.exit46.i:               ; preds = %bb.x, %bb.w, %bb.v, %.critedge41.i
  store i8 1, ptr @keycode_xorgevdev, align 1
end_hunk_0
