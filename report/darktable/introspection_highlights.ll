Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@gui_focus:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 2 uses
  %.not29.i = icmp eq ptr %i.j, null
  br i1 %.not29.i, label %_set_quads.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef nonnull %i.j, i32 noundef 0) #33
  br label %_set_quads.exit

_set_quads.exit:                                  ; preds = %bb.h, %bb.i
  br i1 %.not5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_set_quads.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  tail call void @dt_dev_reprocess_center(ptr noundef %i.l) #33
  br label %bb.k

bb.k:                                             ; preds = %_set_quads.exit, %bb.j, %bb.a
  ret void
}

declare void @dt_dev_reprocess_center(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 88) #33 ; 15 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !91
  %i.d = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #33
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !14
  %i.e = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.32, i32 noundef 1278, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.d, ptr noundef nonnull %i.a) #33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !164
  %i.g = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.31) #33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !152
  %i.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.g, ptr noundef %i.i) #33
  %i.j = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.34) #33 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !161
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.j, i32 noundef 3) #33
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.l = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.k, ptr noundef %i.l) #33
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !161  ; 4 uses
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #33 ; 2 uses
  call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.m, ptr noundef nonnull @dtgtk_cairo_paint_showmask, i32 noundef 0, ptr noundef null) #33
  call void @dt_bauhaus_widget_set_quad_toggle(ptr noundef %i.m, i32 noundef 1) #33
  %i.o = call i64 @g_signal_connect_data(ptr noundef %i.m, ptr noundef nonnull @.str.127, ptr noundef nonnull @_quad_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #33 ; 0 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %dt_bauhaus_widget_set_quad.exit, label %bb.c

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  call void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef %i.m, ptr noundef nonnull %i.n) #33
  br label %dt_bauhaus_widget_set_quad.exit

dt_bauhaus_widget_set_quad.exit:                  ; preds = %_iop_gui_alloc.exit, %bb.c
  %i.p = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #33 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !158
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.p, i32 noundef 0) #33
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.s = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.r, ptr noundef %i.s) #33
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !158  ; 4 uses
  %i.u = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #33 ; 2 uses
  call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.t, ptr noundef nonnull @dtgtk_cairo_paint_showmask, i32 noundef 0, ptr noundef null) #33
  call void @dt_bauhaus_widget_set_quad_toggle(ptr noundef %i.t, i32 noundef 1) #33
  %i.v = call i64 @g_signal_connect_data(ptr noundef %i.t, ptr noundef nonnull @.str.127, ptr noundef nonnull @_quad_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #33 ; 0 uses
  %.not.i54 = icmp eq ptr %i.u, null
  br i1 %.not.i54, label %dt_bauhaus_widget_set_quad.exit55, label %bb.d

bb.d:                                             ; preds = %dt_bauhaus_widget_set_quad.exit
  call void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef %i.t, ptr noundef nonnull %i.u) #33
  br label %dt_bauhaus_widget_set_quad.exit55

dt_bauhaus_widget_set_quad.exit55:                ; preds = %dt_bauhaus_widget_set_quad.exit, %bb.d
  %i.w = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #33 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !157
  %i.y = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.w, ptr noundef %i.y) #33
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !157
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.z, ptr noundef nonnull @.str.42) #33
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !157
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.aa, i32 noundef 0) #33
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !157 ; 4 uses
  %i.ac = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #33 ; 2 uses
  call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.ab, ptr noundef nonnull @dtgtk_cairo_paint_showmask, i32 noundef 0, ptr noundef null) #33
  call void @dt_bauhaus_widget_set_quad_toggle(ptr noundef %i.ab, i32 noundef 1) #33
  %i.ad = call i64 @g_signal_connect_data(ptr noundef %i.ab, ptr noundef nonnull @.str.127, ptr noundef nonnull @_quad_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #33 ; 0 uses
  %.not.i56 = icmp eq ptr %i.ac, null
  br i1 %.not.i56, label %dt_bauhaus_widget_set_quad.exit57, label %bb.e

bb.e:                                             ; preds = %dt_bauhaus_widget_set_quad.exit55
  call void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef %i.ab, ptr noundef nonnull %i.ac) #33
  br label %dt_bauhaus_widget_set_quad.exit57

dt_bauhaus_widget_set_quad.exit57:                ; preds = %dt_bauhaus_widget_set_quad.exit55, %bb.e
  %i.ae = call ptr @dt_bauhaus_combobox_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #33 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !159
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.ag) #33
  %i.ah = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !160
  %i.aj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ah, ptr noundef %i.aj) #33
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ak, ptr noundef nonnull @.str.42) #33
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !160
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.al, i32 noundef 0) #33
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !160 ; 4 uses
  %i.an = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #33 ; 2 uses
  call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.am, ptr noundef nonnull @dtgtk_cairo_paint_showmask, i32 noundef 0, ptr noundef null) #33
  call void @dt_bauhaus_widget_set_quad_toggle(ptr noundef %i.am, i32 noundef 1) #33
  %i.ao = call i64 @g_signal_connect_data(ptr noundef %i.am, ptr noundef nonnull @.str.127, ptr noundef nonnull @_quad_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #33 ; 0 uses
  %.not.i58 = icmp eq ptr %i.an, null
  br i1 %.not.i58, label %dt_bauhaus_widget_set_quad.exit59, label %bb.f

bb.f:                                             ; preds = %dt_bauhaus_widget_set_quad.exit57
  call void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef %i.am, ptr noundef nonnull %i.an) #33
  br label %dt_bauhaus_widget_set_quad.exit59

dt_bauhaus_widget_set_quad.exit59:                ; preds = %dt_bauhaus_widget_set_quad.exit57, %bb.f
  %i.ap = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #33 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !153
  %i.ar = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ap, ptr noundef %i.ar) #33
  %i.as = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.51) #33 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !154
  %i.au = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.as, ptr noundef %i.au) #33
  %i.av = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #33 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !156
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.av, ptr noundef nonnull @.str.42) #33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !156
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ax, ptr noundef %i.ay) #33
  %i.az = call ptr @dt_bauhaus_combobox_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #33 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !155
  %i.bb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.az, ptr noundef %i.bb) #33
  %i.bc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #33
  %i.bd = call ptr @gtk_label_new(ptr noundef %i.bc) #33 ; 3 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.bd, ptr noundef nonnull @.str.128, i32 noundef 1, ptr noundef nonnull @.str.129, double noundef 0.000000e+00, ptr noundef nonnull @.str.130, i32 noundef 3, ptr noundef null) #33
  %i.be = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #33
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.be) #33
  %i.bf = call ptr @gtk_stack_new() #33           ; 2 uses
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !164
  call void @gtk_stack_set_homogeneous(ptr noundef %i.bf, i32 noundef 0) #33
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !164
  call void @gtk_stack_add_named(ptr noundef %i.bg, ptr noundef %i.bd, ptr noundef nonnull @.str.30) #33
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !164
  call void @gtk_stack_add_named(ptr noundef %i.bh, ptr noundef %i.e, ptr noundef nonnull @.str.29) #33
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_showmask(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_quad_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !592
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !91  ; 8 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !161
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @dt_bauhaus_widget_get_quad_active(ptr noundef nonnull %0) #33
  %.not25.i = icmp eq i32 %i.f, 0
  %.pre30.i = load ptr, ptr %i.e, align 8, !tbaa !161 ; 5 uses
  br i1 %.not25.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %0, %.pre30.i
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158
  %i.j = icmp eq ptr %0, %i.i
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.m = icmp eq ptr %0, %i.l
  %i.n = select i1 %i.m, i32 3, i32 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %2 = phi ptr [ %.pre30.i, %bb.e ], [ %.pre30.i, %bb.d ], [ %.pre30.i, %bb.f ], [ %.pre30.i, %bb.c ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %3 = phi i32 [ 1, %bb.e ], [ 4, %bb.d ], [ %i.n, %bb.f ], [ 0, %bb.c ], [ 0, %._crit_edge.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 %3, ptr %i.o, align 8, !tbaa !94
  %.not26.i = icmp eq ptr %0, %2
  br i1 %.not26.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %2, i32 noundef 0) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !157  ; 2 uses
  %.not27.i = icmp eq ptr %0, %i.q
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.q, i32 noundef 0) #33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158  ; 2 uses
  %.not28.i = icmp eq ptr %0, %i.s
  br i1 %.not28.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.s, i32 noundef 0) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160  ; 2 uses
  %.not29.i = icmp eq ptr %0, %i.u
  br i1 %.not29.i, label %_set_quads.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.u, i32 noundef 0) #33
  br label %_set_quads.exit

_set_quads.exit:                                  ; preds = %bb.m, %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99
  tail call void @dt_dev_reprocess_center(ptr noundef %i.w) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_set_quads.exit
  ret void
}

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_stack_new() local_unnamed_addr #3

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !595
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !97
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !97
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !97
  store ptr @introspection_init.f7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 688), align 16, !tbaa !97
  store ptr @introspection_init.f10, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 952), align 8, !tbaa !97
  store ptr @introspection_init.f12, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1128), align 8, !tbaa !97
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #21 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.31) #36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.109) #36
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.110) #36
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.46) #36
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.34) #36
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.49) #36
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.51) #36
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.55) #36
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.40) #36
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.37) #36
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.44) #36
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.53) #36
  %.not36 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %spec.select = select i1 %.not36, ptr %i.w, ptr null
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.v ], [ %i.u, %bb.u ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
end_hunk_0
