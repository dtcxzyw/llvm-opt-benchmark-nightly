Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_overlay?download=true
inline.NumInlined: 43
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gui_changed:bb.a
  tail call void @dt_dev_add_history_item(ptr noundef %i.p, ptr noundef nonnull %0, i32 noundef 1) #19
  ret void
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %union.pthread_mutexattr_t, align 4 ; 5 uses
  %i.a = tail call noalias dereferenceable_or_null(1248) ptr @calloc(i64 noundef 1, i64 noundef 1248) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = call i32 @pthread_mutexattr_init(ptr noundef nonnull %1) #19 ; 0 uses
  %i.c = call i32 @pthread_mutexattr_settype(ptr noundef nonnull %1, i32 noundef 1) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.e = call i32 @pthread_mutex_init(ptr noundef nonnull %i.d, ptr noundef nonnull %1) #19 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1240
  store i32 -1, ptr %i.f, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.g, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 52 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.g) #19
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.q) #19
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.s) #19
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.u) #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.w) #19
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.y) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.aa) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ac) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ae) #19
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ag) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ai) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ak) #19
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.am) #19
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ao) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.aq) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.as) #19
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.au) #19
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.aw) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ay) #19
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ba) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bc) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.be) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bg) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bi) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bk) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bm) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bo) #19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bq) #19
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bs) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bu) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.bw) #19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.by) #19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ca) #19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cc) #19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ce) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cg) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ci) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.ck) #19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cm) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.co) #19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cq) #19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cs) #19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cu) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.cw) #19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.cy = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.cx) #19 ; 0 uses
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = tail call ptr @dt_alloc_aligned(i64 noundef 160) #19 ; 20 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.d, i8 0, i64 160, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.d, ptr %i.e, align 16, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.h = tail call ptr @gtk_grid_new() #19        ; 4 uses
  tail call void @gtk_grid_set_row_spacing(ptr noundef %i.h, i32 noundef 0) #19
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1432
  %i.k = load double, ptr %i.j, align 8, !tbaa !138
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, 1.000000e+01
  %i.m = fptoui double %i.l to i32
  tail call void @gtk_grid_set_column_spacing(ptr noundef %i.h, i32 noundef %i.m) #19
  %i.n = tail call ptr @dtgtk_drawing_area_new_with_height(i32 noundef 0) #19 ; 2 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !116
  %i.o = tail call i64 @g_signal_connect_data(ptr noundef %i.n, ptr noundef nonnull @.str.6, ptr noundef nonnull @_draw_thumb, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !116
  tail call void @gtk_widget_set_size_request(ptr noundef %i.p, i32 noundef 150, i32 noundef 150) #19
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !116
  tail call void @gtk_grid_attach(ptr noundef %i.h, ptr noundef %i.q, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 2) #19
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !116
  tail call void @gtk_widget_grab_focus(ptr noundef %i.r) #19
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !116
  tail call void @gtk_drag_dest_set(ptr noundef %i.s, i32 noundef 7, ptr noundef nonnull @target_list_all, i32 noundef 2, i32 noundef 4) #19
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.u = tail call i64 @g_signal_connect_data(ptr noundef %i.t, ptr noundef nonnull @.str.7, ptr noundef nonnull @_drag_and_drop_received, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.w = tail call i64 @g_signal_connect_data(ptr noundef %i.v, ptr noundef nonnull @.str.8, ptr noundef nonnull @_on_drag_motion, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.y = tail call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.9, ptr noundef nonnull @_on_drag_leave, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.z = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #19
  store ptr %i.h, ptr %i.a, align 8, !tbaa !175
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aa, align 8, !tbaa !175
  %i.ab = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.10, i32 noundef 1110, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.z, ptr noundef nonnull %i.a) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !176
  %i.ad = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.11) #19 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !177
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ad, ptr noundef nonnull @.str.12) #19
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !176
  %i.ag = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.13, i64 noundef 8) #19
  %i.ah = call ptr @gtk_label_new(ptr noundef %i.ag) #19 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ah, i32 noundef 0) #19
  call void @gtk_label_set_xalign(ptr noundef %i.ah, float noundef 5.000000e-01) #19
  call void @gtk_label_set_ellipsize(ptr noundef %i.ah, i32 noundef 3) #19
  call void @dt_gui_add_class(ptr noundef %i.ah, ptr noundef nonnull @.str.85) #19
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !175
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ai, align 8, !tbaa !175
  %i.aj = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.10, i32 noundef 1116, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.af, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.ak = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !178
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ak, ptr noundef nonnull @.str.15) #19
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !178
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.am, float noundef -1.000000e+00) #19
  %i.an = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.16) #19 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !179
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.an, float noundef 1.000000e+02) #19
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !179
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ap, ptr noundef nonnull @.str.12) #19
  %i.aq = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.17) #19 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !127
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aq, ptr noundef %i.as) #19
  %i.at = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.19) #19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.at, ptr %i.au, align 8, !tbaa !125
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.at, ptr noundef %i.av) #19
  %i.aw = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.21) #19 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !126
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aw, ptr noundef %i.ay) #19
  %i.az = call ptr @gtk_grid_new() #19            ; 5 uses
  %i.ba = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bc = call ptr @dtgtk_reset_label_new(ptr noundef %i.ba, ptr noundef %0, ptr noundef nonnull %i.bb, i32 noundef 4) #19 ; 2 uses
  call void @gtk_grid_attach(ptr noundef %i.az, ptr noundef %i.bc, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 3) #19
  call void @gtk_widget_set_hexpand(ptr noundef %i.bc, i32 noundef 1) #19
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1432
  %i.bf = load double, ptr %i.be, align 8, !tbaa !138
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, 3.000000e+00
  %i.bh = fptoui double %i.bg to i32
  call void @gtk_grid_set_row_spacing(ptr noundef %i.az, i32 noundef %i.bh) #19
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1432
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !138
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bk, 3.000000e+00
  %i.bm = fptoui double %i.bl to i32
  call void @gtk_grid_set_column_spacing(ptr noundef %i.az, i32 noundef %i.bm) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %20

1:                                                ; preds = %20
  %2 = load ptr, ptr %i.ac, align 8, !tbaa !176
  store ptr %i.az, ptr %i.c, align 8, !tbaa !175
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %3, align 8, !tbaa !175
  %4 = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.10, i32 noundef 1166, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %2, ptr noundef nonnull %i.c) #19 ; 0 uses
  %5 = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #19 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %5, ptr %6, align 8, !tbaa !180
  call void @dt_bauhaus_slider_set_digits(ptr noundef %5, i32 noundef 3) #19
  %7 = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #19 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %7, ptr %8, align 8, !tbaa !181
  call void @dt_bauhaus_slider_set_digits(ptr noundef %7, i32 noundef 3) #19
  %9 = load ptr, ptr %i.ae, align 8, !tbaa !177
  %10 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %9, ptr noundef %10) #19
  %11 = load ptr, ptr %i.ao, align 8, !tbaa !179
  %12 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %11, ptr noundef %12) #19
  %13 = load ptr, ptr %i.al, align 8, !tbaa !178
  %14 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #19
  call void @gtk_widget_set_tooltip_text(ptr noundef %13, ptr noundef %14) #19
  %15 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !182
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3424), align 8
  %19 = icmp ne i32 %18, 0
  %or.cond = select i1 %17, i1 %19, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

20:                                               ; preds = %_iop_gui_alloc.exit, %20
  %indvars.iv = phi i64 [ 0, %_iop_gui_alloc.exit ], [ %indvars.iv.next, %20 ] ; 4 uses
  %21 = trunc nuw nsw i64 %indvars.iv to i32
  %22 = shl nuw nsw i32 16384, %21
  %23 = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_alignment, i32 noundef %22, ptr noundef null) #19 ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  store ptr %23, ptr %24, align 8, !tbaa !123
  %.lhs.trunc = trunc i64 %indvars.iv to i8       ; 2 uses
  %25 = urem i8 %.lhs.trunc, 3
  %narrow = add nuw nsw i8 %25, 1
  %26 = zext nneg i8 %narrow to i32
  %27 = udiv i8 %.lhs.trunc, 3
  %.zext83 = zext nneg i8 %27 to i32
  call void @gtk_grid_attach(ptr noundef %i.az, ptr noundef %23, i32 noundef %26, i32 noundef %.zext83, i32 noundef 1, i32 noundef 1) #19
  %28 = load ptr, ptr %24, align 8, !tbaa !123
  %29 = call i64 @g_signal_connect_data(ptr noundef %28, ptr noundef nonnull @.str.24, ptr noundef nonnull @_alignment_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %1, label %20

bb.c:                                             ; preds = %1
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.bp = and i32 %i.bo, 1048576
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10, i32 noundef 1179, ptr noundef nonnull @__FUNCTION__.gui_init) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !183
  call void @dt_control_signal_connect(ptr noundef %i.bq, i32 noundef 27, ptr noundef nonnull @_module_remove_callback, ptr noundef nonnull %0) #19
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !182
  %i.bs = and i32 %i.br, 2
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3432), align 8
  %i.bv = icmp ne i32 %i.bu, 0
  %or.cond3 = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.bx = and i32 %i.bw, 1048576
  %.not80 = icmp eq i32 %i.bx, 0
  br i1 %.not80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.10, i32 noundef 1180, ptr noundef nonnull @__FUNCTION__.gui_init) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !183
  call void @dt_control_signal_connect(ptr noundef %i.by, i32 noundef 29, ptr noundef nonnull @_signal_image_changed, ptr noundef nonnull %0) #19
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !182
  %i.ca = and i32 %i.bz, 2
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3428), align 4
  %i.cd = icmp ne i32 %i.cc, 0
  %or.cond5 = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.cf = and i32 %i.ce, 1048576
  %.not81 = icmp eq i32 %i.cf, 0
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.10, i32 noundef 1181, ptr noundef nonnull @__FUNCTION__.gui_init) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !183
  call void @dt_control_signal_connect(ptr noundef %i.cg, i32 noundef 28, ptr noundef nonnull @_signal_module_moved, ptr noundef nonnull %0) #19
  ret void
}

declare ptr @gtk_grid_new() local_unnamed_addr #3

declare void @gtk_grid_set_row_spacing(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dtgtk_drawing_area_new_with_height(i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_draw_thumb(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct._PangoRectangle, align 4    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !119 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !113  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !184
  %i.k = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %i.l = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %i.m = call i32 @dt_view_image_get_surface(i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.a, i32 noundef 1) #19
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.p = call i32 @cairo_image_surface_get_width(ptr noundef %i.o) #19 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.r = call i32 @cairo_image_surface_get_height(ptr noundef %i.q) #19 ; 2 uses
  %i.s = icmp sgt i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = sub nsw i32 %i.l, %i.r
  %i.u = sdiv i32 %i.t, 2
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.u to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = sub nsw i32 %i.k, %i.p
  %i.x = sdiv i32 %i.w, 2
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to double
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.050 = phi double [ 0.000000e+00, %bb.d ], [ %i.y, %bb.e ]
  %.0 = phi double [ %i.v, %bb.d ], [ 0.000000e+00, %bb.e ]
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 10) #19
  call void @cairo_paint(ptr noundef %1) #19
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !184
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.z, double noundef %.050, double noundef %.0) #19
  call void @cairo_paint(ptr noundef %1) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 0) #19
  call void @cairo_set_line_width(ptr noundef %1, double noundef 3.000000e+00) #19
  %i.aa = extractelement <2 x i32> %i.g, i64 0
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double ; 3 uses
  %i.ac = extractelement <2 x i32> %i.g, i64 1
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to double ; 3 uses
  call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ab, double noundef %i.ad) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !139
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @cairo_fill(ptr noundef %1) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @cairo_move_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ab, double noundef %i.ad) #19
  call void @cairo_move_to(ptr noundef %1, double noundef 0.000000e+00, double noundef %i.ad) #19
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ab, double noundef 0.000000e+00) #19
  call void @cairo_stroke(ptr noundef %1) #19
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !185
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !193
  %i.aj = call ptr @pango_font_description_copy_static(ptr noundef %i.ai) #19 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.aj, i32 noundef 700) #19
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1432
  %i.am = load double, ptr %i.al, align 8, !tbaa !138
  %i.an = fmul reassoc nsz arcp contract afn double %i.am, 1.228800e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.aj, double noundef %i.an) #19
  %i.ao = call ptr @pango_cairo_create_layout(ptr noundef %1) #19 ; 5 uses
  call void @pango_layout_set_font_description(ptr noundef %i.ao, ptr noundef %i.aj) #19
  %i.ap = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #19
  call void @pango_layout_set_text(ptr noundef %i.ao, ptr noundef %i.ap, i32 noundef -1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ao, ptr noundef nonnull %4, ptr noundef null) #19
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 5) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !119
  %i.as = sub nsw <2 x i32> %i.g, %i.ar
  %i.at = sitofp <2 x i32> %i.as to <2 x double>  ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = fmul reassoc nnan nsz arcp contract afn double %i.au, 5.000000e-01
  %i.aw = extractelement <2 x double> %i.at, i64 1
  %i.ax = fmul reassoc nnan nsz arcp contract afn double %i.aw, 5.000000e-01
  call void @cairo_move_to(ptr noundef %1, double noundef %i.av, double noundef %i.ax) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.ao) #19
  call void @pango_font_description_free(ptr noundef %i.aj) #19
  call void @g_object_unref(ptr noundef %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 0
}

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_grid_attach(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #3

declare void @gtk_drag_dest_set(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_drag_and_drop_received(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = icmp ne ptr %4, null
  %i.f = icmp eq i32 %5, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
end_hunk_0
