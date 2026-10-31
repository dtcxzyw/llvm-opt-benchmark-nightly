Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/live_view?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
begin_hunk_0_@overlay_changed:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @gtk_widget_set_visible(ptr noundef %i.d, i32 noundef 1) #11
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !31
  tail call void @gtk_widget_set_visible(ptr noundef %i.g, i32 noundef 1) #11
  %i.h = icmp eq i32 %i.a, 2
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink8 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void @gtk_widget_set_visible(ptr noundef %i.j, i32 noundef %.sink8) #11
  ret void
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_spin_button_new_with_range(double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @gtk_spin_button_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_overlay_id_changed(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #1 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn double @gtk_spin_button_get_value(ptr noundef %0) #11
  %i.b = fptosi double %i.a to i32                ; 2 uses
  store i32 %i.b, ptr %1, align 8, !tbaa !91
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.20, i32 noundef %i.b) #11
  ret void
}

declare void @gtk_spin_button_set_value(ptr noundef, double noundef) local_unnamed_addr #5

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #5

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_overlay_mode_changed(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #11
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.42, i32 noundef %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_overlay_splitline_changed(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #11
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.47, i32 noundef %i.a) #11
  ret void
}

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_no_show_all(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @gui_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #11
  store ptr null, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @view_enter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 152), align 8, !tbaa !74 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.016 = phi ptr [ %i.h, %bb.b ], [ %i.e, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 32852
  %i.j = load i32, ptr %i.i, align 4, !tbaa !110
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi i32 [ 0, %bb.b ], [ %i.l, %.thread ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.o, i32 noundef %i.m) #11
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.q, i32 noundef %i.m) #11
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.s, i32 noundef %i.m) #11
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.u, i32 noundef %i.m) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.w, i32 noundef %i.m) #11
  ret void
}

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @view_leave(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.d) #11
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 152), align 8, !tbaa !74
  tail call void @dt_camctl_camera_stop_live_view(ptr noundef %i.g) #11
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.h, i32 noundef 0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #5

declare void @dt_camctl_camera_stop_live_view(ptr noundef) local_unnamed_addr #5

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 10 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 152), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 18 uses
  %.not185 = icmp eq ptr %i.e, null
  br i1 %.not185, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32980
  %i.g = load i32, ptr %i.f, align 4, !tbaa !86
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 33004
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.ao, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33032 ; 4 uses
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.l) #11 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32984
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %.not186 = icmp eq ptr %i.o, null
  br i1 %.not186, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.l) #11 ; 0 uses
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.q = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %3, i64 1
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32992
  %i.u = fadd reassoc nsz arcp contract afn <2 x float> %i.s, <float -4.000000e+01, float -5.800000e+01> ; 2 uses
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 3 uses
  %i.w = load <2 x i32>, ptr %i.t, align 8, !tbaa !89 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.ac) #11
  %i.ae = icmp eq i32 %i.ad, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.ag) #11
  switch i32 %i.ah, label %.thread [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !92
  %i.aj = tail call i32 @dt_view_tethering_get_selected_imgid(ptr noundef %i.ai) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !91
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0180 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 4 uses
  %i.al = icmp sgt i32 %.0180, 0
  br i1 %i.al, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  tail call void @cairo_save(ptr noundef %1) #11
  %i.am = tail call ptr @dt_image_cache_testget(i32 noundef %.0180, i8 noundef signext 114) #11 ; 2 uses
  %.not187 = icmp eq ptr %i.am, null
  br i1 %.not187, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = tail call ptr @dt_image_cache_get(i32 noundef %.0180, i8 noundef signext 114) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0179 = phi ptr [ %i.am, %bb.k ], [ %i.an, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ao = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.v, splat (double f0x3FEF0A3D80000000) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = fptosi double %i.ap to i32
  %i.ar = extractelement <2 x double> %i.ao, i64 1
  %i.as = fptosi double %i.ar to i32
  %i.at = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.aq, i32 noundef %i.as) #11
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %6, i32 noundef %.0180, i32 noundef %i.at, i32 noundef 0, i8 noundef signext 114, ptr noundef nonnull @.str.48, i32 noundef 543) #11
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !115
  %.not188 = icmp eq ptr %i.av, null
  br i1 %.not188, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !116
  %i.ay = call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.ax) #11
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !115
  %i.ba = load i32, ptr %i.aw, align 8, !tbaa !116
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !117
  %i.bd = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.az, i32 noundef 1, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.ay) #11
  %i.be = sitofp <2 x i32> %i.w to <2 x float>
  %i.bf = load <2 x i32>, ptr %i.aw, align 8, !tbaa !89
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.u, <2 x float> %i.be)
  %i.bi = fdiv reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bg ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  %i.bl = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bj, float %i.bk)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0178 = phi nsz float [ %i.bl, %bb.n ], [ 1.000000e+00, %bb.m ] ; 2 uses
  %.0177 = phi ptr [ %i.bd, %bb.n ], [ null, %bb.m ] ; 2 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %2 to double ; 4 uses
  %i.bn = fmul reassoc nnan nsz arcp contract afn double %i.bm, 5.000000e-01
  %i.bo = add nsw i32 %3, 18
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %i.bp, 5.000000e-01
  %i.br = fpext reassoc nsz arcp contract afn float %i.bq to double
  call void @cairo_translate(ptr noundef %1, double noundef %i.bn, double noundef %i.br) #11
  %i.bs = fpext reassoc nsz arcp contract afn float %.0178 to double ; 2 uses
  call void @cairo_scale(ptr noundef %1, double noundef %i.bs, double noundef %i.bs) #11
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !115
  %.not189 = icmp eq ptr %i.bt, null
  br i1 %.not189, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.bw = load <2 x i32>, ptr %i.bu, align 8, !tbaa !89
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bx, splat (float -5.000000e-01)
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  %i.cb = extractelement <2 x double> %i.bz, i64 1
  call void @cairo_translate(ptr noundef %1, double noundef %i.ca, double noundef %i.cb) #11
  br i1 %i.ae, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !93
  switch i32 %i.cd, label %.critedge [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !94
  %i.cg = load <2 x i32>, ptr %i.bu, align 8, !tbaa !89
  %i.ch = sitofp <2 x i32> %i.cg to <2 x double>  ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = fmul reassoc nsz arcp contract afn double %i.cf, %i.ci
  %i.ck = extractelement <2 x double> %i.ch, i64 1
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cl = load <2 x i32>, ptr %i.bu, align 8, !tbaa !89
  %i.cm = sitofp <2 x i32> %i.cl to <2 x double>  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !95
  %i.cp = extractelement <2 x double> %i.cm, i64 1
  %i.cq = fmul reassoc nsz arcp contract afn double %i.co, %i.cp
  %i.cr = extractelement <2 x double> %i.cm, i64 0
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.cs = load i32, ptr %i.bu, align 8, !tbaa !116
  %i.ct = sitofp reassoc nsz arcp contract afn i32 %i.cs to double ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !94
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cv, %i.ct
  %i.cx = load i32, ptr %i.bv, align 4, !tbaa !117
  %i.cy = sitofp reassoc nsz arcp contract afn i32 %i.cx to double
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.cz = load i32, ptr %i.bv, align 4, !tbaa !117
  %i.da = sitofp reassoc nsz arcp contract afn i32 %i.cz to double ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.dc = load double, ptr %i.db, align 8, !tbaa !95
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, %i.da
  %i.de = load i32, ptr %i.bu, align 8, !tbaa !116
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.de to double
  br label %bb.v

.critedge:                                        ; preds = %bb.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.49) #11
  %i.dg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.l) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ao

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0176 = phi nsz double [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.cw, %bb.t ], [ 0.000000e+00, %bb.u ]
  %.0175 = phi nsz double [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ], [ %i.dd, %bb.u ]
  %.0174 = phi nsz double [ %i.cj, %bb.r ], [ %i.cr, %bb.s ], [ %i.ct, %bb.t ], [ %i.df, %bb.u ]
  %.0173 = phi nsz double [ %i.ck, %bb.r ], [ %i.cq, %bb.s ], [ %i.cy, %bb.t ], [ %i.da, %bb.u ]
  call void @cairo_rectangle(ptr noundef %1, double noundef %.0176, double noundef %.0175, double noundef %.0174, double noundef %.0173) #11
  call void @cairo_clip(ptr noundef %1) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.p
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %.0177, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %i.dh = load i32, ptr %i.bu, align 8, !tbaa !116 ; 2 uses
  %i.di = icmp slt i32 %i.dh, 31
  %i.dj = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 31
  %or.cond = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = fadd reassoc nsz arcp contract afn float %.0178, -1.000000e+00
  %i.dm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dl)
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %i.dm, f0x3C23D70A
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.do = call ptr @cairo_get_source(ptr noundef %1) #11
  call void @cairo_pattern_set_filter(ptr noundef %i.do, i32 noundef 3) #11
  %.pre = load i32, ptr %i.bu, align 8, !tbaa !116
  %.pre209 = load i32, ptr %i.bv, align 4, !tbaa !117
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dp = phi i32 [ %.pre209, %bb.y ], [ %i.dj, %bb.x ]
  %i.dq = phi i32 [ %.pre, %bb.y ], [ %i.dh, %bb.x ]
  %i.dr = sitofp reassoc nsz arcp contract afn i32 %i.dq to double
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dp to double
  call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.dr, double noundef %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.dv = call i32 @dt_bauhaus_combobox_get(ptr noundef %i.du) #11 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_overlay_modes, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !89
  call void @cairo_set_operator(ptr noundef %1, i32 noundef %i.dz) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @cairo_fill(ptr noundef %1) #11
  call void @cairo_set_operator(ptr noundef %1, i32 noundef 2) #11
  call void @cairo_surface_destroy(ptr noundef %.0177) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o
  call void @cairo_restore(ptr noundef %1) #11
  %i.ea = load ptr, ptr %i.au, align 8, !tbaa !115
  %.not190 = icmp eq ptr %i.ea, null
  br i1 %.not190, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %6, ptr noundef nonnull @.str.48, i32 noundef 621) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not191 = icmp eq ptr %.0179, null
  br i1 %.not191, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @dt_image_cache_read_release(ptr noundef nonnull %.0179) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.ae, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.eb = sitofp <2 x i32> %i.w to <2 x double>   ; 3 uses
  %i.ec = fdiv reassoc nsz arcp contract afn <2 x double> %i.v, %i.eb
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float> ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = extractelement <2 x float> %i.ed, i64 1
  %i.eg = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ee, float %i.ef)
  %i.eh = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.eg, float 1.000000e+00) ; 2 uses
  %i.ei = sitofp <2 x i32> %i.w to <2 x float>
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ek, %i.ei ; 3 uses
  %i.em = fadd reassoc nnan arcp contract afn <2 x float> %i.s, <float -0.000000e+00, float 1.800000e+01>
  %i.en = fsub reassoc nsz arcp contract afn <2 x float> %i.em, %i.el
  %i.eo = fpext <2 x float> %i.en to <2 x double>
  %i.ep = fmul reassoc nsz arcp contract afn <2 x double> %i.eo, splat (double 5.000000e-01) ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0 ; 3 uses
  store double %i.eq, ptr %i.aa, align 8, !tbaa !96
  %i.er = extractelement <2 x double> %i.ep, i64 1 ; 3 uses
  store double %i.er, ptr %i.y, align 8, !tbaa !97
  %i.es = extractelement <2 x float> %i.el, i64 0
  %i.et = fpext reassoc nsz arcp contract afn float %i.es to double
  %i.eu = fadd reassoc nsz arcp contract afn double %i.eq, %i.et
  store double %i.eu, ptr %i.z, align 8, !tbaa !98
  %i.ev = extractelement <2 x float> %i.el, i64 1
  %i.ew = fpext reassoc nsz arcp contract afn float %i.ev to double
  %i.ex = fadd reassoc nsz arcp contract afn double %i.er, %i.ew
  store double %i.ex, ptr %i.x, align 8, !tbaa !99
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !94
  %i.fa = fpext reassoc nsz arcp contract afn float %i.eh to double ; 2 uses
  %i.fb = extractelement <2 x double> %i.eb, i64 0
  %i.fc = fmul reassoc nsz arcp contract afn double %i.fb, %i.fa
  %i.fd = fmul reassoc nsz arcp contract afn double %i.fc, %i.ez
  %i.fe = fadd reassoc nsz arcp contract afn double %i.fd, %i.eq ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !95
  %i.fh = extractelement <2 x double> %i.eb, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fh, %i.fa
  %i.fj = fmul reassoc nsz arcp contract afn double %i.fi, %i.fg
  %i.fk = fadd reassoc nsz arcp contract afn double %i.fj, %i.er ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !93
  %i.fn = and i32 %i.fm, 1
  %.not192 = icmp eq i32 %i.fn, 0
  br i1 %.not192, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fo = fptosi double %i.fe to i32
  %i.fp = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.fq = fsub reassoc nsz arcp contract afn double %i.fe, %i.fp
  %i.fr = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fq)
  %i.fs = sitofp reassoc nsz arcp contract afn i32 %i.fo to double ; 2 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ft = fptosi double %i.fk to i32              ; 2 uses
  %i.fu = sitofp reassoc nsz arcp contract afn i32 %i.ft to double
  %i.fv = sitofp reassoc nsz arcp contract afn i32 %5 to double
  %i.fw = fsub reassoc nsz arcp contract afn double %i.fk, %i.fv
  %i.fx = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fw)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pre-phi = phi double [ %i.bm, %bb.aj ], [ %i.fs, %bb.ai ]
  %.0168207 = phi i32 [ %i.ft, %bb.aj ], [ %3, %bb.ai ]
  %.0170203 = phi double [ %i.fu, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %.0171201 = phi double [ 0.000000e+00, %bb.aj ], [ %i.fs, %bb.ai ]
  %.in.in = phi double [ %i.fx, %bb.aj ], [ %i.fr, %bb.ai ]
  %.in = fcmp olt double %.in.in, 5.000000e+00    ; 2 uses
  call void @cairo_save(ptr noundef %1) #11
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666) #11
  %i.fy = select reassoc nsz arcp contract afn i1 %.in, double 2.000000e+00, double 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.fy) #11
  call void @cairo_move_to(ptr noundef %1, double noundef %.0171201, double noundef %.0170203) #11
  %i.fz = sitofp reassoc nsz arcp contract afn i32 %.0168207 to double
  call void @cairo_line_to(ptr noundef %1, double noundef %.pre-phi, double noundef %i.fz) #11
  call void @cairo_stroke(ptr noundef %1) #11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !100
  %i.gc = icmp eq i32 %i.gb, 0
  %or.cond5 = select i1 %i.gc, i1 %.in, i1 false
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @cairo_set_line_width(ptr noundef %1, double noundef 5.000000e-01) #11
  %i.gd = fmul reassoc nnan nsz arcp contract afn double %i.bm, 2.000000e-02
  %i.ge = fmul reassoc nnan nsz arcp contract afn double %i.bm, 1.000000e-02 ; 2 uses
  %i.gf = fsub reassoc nsz arcp contract afn double %i.fe, %i.ge
  %i.gg = fptosi double %i.gf to i32
  %i.gh = fsub reassoc nsz arcp contract afn double %i.fk, %i.ge
  %i.gi = fptosi double %i.gh to i32
  %i.gj = fptosi double %i.gd to i32              ; 2 uses
  call void @dtgtk_cairo_paint_refresh(ptr noundef %1, i32 noundef %i.gg, i32 noundef %i.gi, i32 noundef %i.gj, i32 noundef %i.gj, i32 noundef 1, ptr noundef null) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @cairo_restore(ptr noundef %1) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.an, %bb.j
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 33000
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !88
  %i.gm = and i32 %i.gl, 1
  %i.gn = icmp eq i32 %i.gm, 0                    ; 2 uses
  %i.go = sitofp <2 x i32> %i.w to <2 x double>
  %i.gp = fdiv reassoc nsz arcp contract afn <2 x double> %i.v, %i.go
  %i.gq = fptrunc <2 x double> %i.gp to <2 x float> ; 2 uses
  %i.gr = extractelement <2 x float> %i.gq, i64 0
  %i.gs = extractelement <2 x float> %i.gq, i64 1
  %i.gt = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gr, float %i.gs)
  %i.gu = extractelement <2 x i32> %i.w, i64 0    ; 2 uses
  %i.gv = extractelement <2 x i32> %i.w, i64 1    ; 2 uses
  %. = select i1 %i.gn, i32 %i.gv, i32 %i.gu
  %.213 = select i1 %i.gn, i32 %i.gu, i32 %i.gv
  %i.gw = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gt, float 1.000000e+01) ; 2 uses
  %i.gx = sitofp reassoc nsz arcp contract afn i32 %.213 to float
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gw, %i.gx ; 2 uses
  %i.gz = fpext reassoc nsz arcp contract afn float %i.gy to double
  %i.ha = sitofp reassoc nsz arcp contract afn i32 %. to float
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gw, %i.ha ; 2 uses
  %i.hc = fpext reassoc nsz arcp contract afn float %i.hb to double
  %i.hd = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.he = fsub reassoc nsz arcp contract afn double %i.hd, %i.gz
  %i.hf = fmul reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  %i.hg = add nsw i32 %3, 18
  %i.hh = sitofp reassoc nsz arcp contract afn i32 %i.hg to double
  %i.hi = fsub reassoc nsz arcp contract afn double %i.hh, %i.hc
  %i.hj = fmul reassoc nsz arcp contract afn double %i.hi, 5.000000e-01
  %i.hk = fptrunc reassoc nsz arcp contract afn double %i.hf to float
  %i.hl = fptrunc reassoc nsz arcp contract afn double %i.hj to float
  call void @dt_guides_draw(ptr noundef %1, float noundef %i.hk, float noundef %i.hl, float noundef %i.gy, float noundef %i.hb, float noundef 1.000000e+00) #11
  %i.hm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.l) #11 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.f, %bb.b, %bb.d, %bb.c, %.critedge, %.thread, %bb.a
  ret void
}

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #5

declare i32 @dt_view_tethering_get_selected_imgid(ptr noundef) local_unnamed_addr #5

declare void @cairo_save(ptr noundef) local_unnamed_addr #5

declare ptr @dt_image_cache_testget(i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @dt_image_cache_get(i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_clip(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare void @cairo_pattern_set_filter(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_fill(ptr noundef) local_unnamed_addr #5

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #5

declare void @cairo_restore(ptr noundef) local_unnamed_addr #5

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_image_cache_read_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #5

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #5

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @button_released(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.d) #11
  switch i32 %i.e, label %.critedge [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !92
  %i.g = tail call i32 @dt_view_tethering_get_selected_imgid(ptr noundef %i.f) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  %i.i = icmp sgt i32 %.0, 0
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.k) #11
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !96 ; 2 uses
  %i.q = fsub reassoc nsz arcp contract afn double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !97 ; 2 uses
  %i.v = fsub reassoc nsz arcp contract afn double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !94
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, %i.q
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !95
  %i.ac = fmul reassoc nsz arcp contract afn double %i.ab, %i.v
  %i.ad = fadd reassoc nsz arcp contract afn double %i.ac, %i.u ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !93 ; 2 uses
  %i.ag = and i32 %i.af, 1
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = fsub reassoc nsz arcp contract afn double %i.ad, %2
  %i.aj = fsub reassoc nsz arcp contract afn double %i.z, %1
  %.sink = select i1 %i.ah, double %i.aj, double %i.ai
  %i.ak = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.sink)
  %.in = fcmp olt double %i.ak, 5.000000e+00
  %i.al = icmp eq i32 %4, 1
  br i1 %i.al, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = fsub reassoc nsz arcp contract afn double %i.z, %1
  %i.an = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp reassoc nsz arcp contract afn olt double %i.an, 7.000000e+00
  br i1 %i.ao, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = fsub reassoc nsz arcp contract afn double %i.ad, %2
  %i.aq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp reassoc nsz arcp contract afn olt double %i.aq, 7.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = add nsw i32 %i.af, 1
  %i.at = srem i32 %i.as, 4
  store i32 %i.at, ptr %i.ae, align 4, !tbaa !93
  br label %.critedge.sink.split

end_hunk_0
