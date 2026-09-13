Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gtk?download=true
inline.NumInlined: 219
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dt_ui_notebook_new:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @gtk_drag_dest_unset(ptr noundef %i.a) #16
  %i.d = load ptr, ptr @_current_notebook, align 8, !tbaa !200
  ret ptr %i.d
}

declare ptr @gtk_notebook_new() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal float @_action_process_tabs(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %1) #16 ; 3 uses
  %i.b = fcmp reassoc nsz arcp contract afn une float %3, f0xFF7FFFFF
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %.thread27
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @gtk_notebook_set_current_page(ptr noundef %0, i32 noundef %1) #16
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @gtk_notebook_next_page(ptr noundef %0) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @gtk_notebook_prev_page(ptr noundef %0) #16
  br label %bb.j

.thread27:                                        ; preds = %bb.b
  tail call fastcc void @_reset_all_bauhaus(ptr noundef %0, ptr noundef %i.a)
  %i.c = tail call ptr @gtk_notebook_get_tab_label_text(ptr noundef %0, ptr noundef %i.a) #16
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.167, i32 noundef 5) #16
  tail call void (ptr, ptr, ptr, ...) @dt_action_widget_toast(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.316, ptr noundef %i.c, ptr noundef %i.d) #16
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.317, i32 noundef %2) #16
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 3
  br i1 %i.e, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread27, %bb.g
  %i.f = tail call ptr @gtk_notebook_get_tab_label(ptr noundef %0, ptr noundef %i.a) #16
  %i.g = tail call ptr @gtk_widget_get_style_context(ptr noundef %i.f) #16
  %i.h = tail call i32 @gtk_style_context_has_class(ptr noundef %i.g, ptr noundef nonnull @.str.318) #16
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = tail call i32 @gtk_notebook_get_current_page(ptr noundef %0) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.k = tail call i32 @gtk_notebook_get_current_page(ptr noundef %0) #16 ; 2 uses
  %i.l = tail call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %i.k) #16
  %i.m = tail call ptr @gtk_notebook_get_tab_label_text(ptr noundef %0, ptr noundef %i.l) #16
  tail call void (ptr, ptr, ptr, ...) @dt_action_widget_toast(ptr noundef null, ptr noundef %0, ptr noundef %i.m) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.n = phi i32 [ %i.k, %bb.j ], [ %i.j, %bb.i ] ; 2 uses
  %i.o = xor i32 %i.n, -1
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to float
  %i.q = icmp eq i32 %i.n, %1
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float -5.000000e-01, float 0.000000e+00
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.p
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.0 = phi nsz float [ %i.i, %bb.h ], [ %i.s, %bb.k ]
  ret float %.0
}

declare void @gtk_drag_dest_unset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @dt_ui_notebook_page(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_current_notebook, align 8, !tbaa !200
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @_current_notebook, align 8, !tbaa !200
  store ptr null, ptr @_current_action_def, align 8, !tbaa !205
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef %1, i32 noundef 5) #16
  %i.c = tail call ptr @gtk_label_new(ptr noundef %i.b) #16 ; 3 uses
  %i.d = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #16 ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.f = icmp ugt i64 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.c, i32 noundef 3) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %1, i32 noundef 5) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.h = phi ptr [ %i.g, %bb.f ], [ %2, %bb.e ]
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.c, ptr noundef %i.h) #16
  tail call void @gtk_widget_set_has_tooltip(ptr noundef %0, i32 noundef 0) #16
  %i.i = tail call i32 @gtk_notebook_append_page(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.c) #16 ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @gtk_container_child_set(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.169, i32 noundef 1, ptr noundef nonnull @.str.170, i32 noundef 1, ptr noundef null) #16
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i64 @g_signal_handler_find(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_notebook_size_callback, ptr noundef null) #16
  %.not33 = icmp eq i64 %i.k, 0
  br i1 %.not33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i64 @g_signal_connect_data(ptr noundef %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @_notebook_size_callback, ptr noundef null, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @_notebook_motion_notify_callback, ptr noundef null, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.n = tail call i64 @g_signal_connect_data(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @_notebook_scroll_callback, ptr noundef null, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.o = tail call i64 @g_signal_connect_data(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @_notebook_button_press_callback, ptr noundef null, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5560
  %i.r = load i32, ptr %i.q, align 8, !tbaa !102
  tail call void @gtk_widget_add_events(ptr noundef %0, i32 noundef %i.r) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.s = load ptr, ptr @_current_action_def, align 8, !tbaa !205 ; 2 uses
  %.not34 = icmp eq ptr %i.s, null
  br i1 %.not34, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.i, 2
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 16) #20 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !261  ; 3 uses
  %.not35 = icmp eq ptr %i.x, null
  %i.y = sext i32 %i.i to i64                     ; 3 uses
  br i1 %.not35, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.z = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.y ; 2 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !264
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @dt_action_effect_tabs, ptr %i.aa, align 8, !tbaa !265
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = shl nsw i64 %i.y, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr nonnull align 8 %i.x, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.y ; 2 uses
  store ptr %1, ptr %i.ac, align 8, !tbaa !264
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @dt_action_effect_tabs, ptr %i.ad, align 8, !tbaa !265
  tail call void @free(ptr noundef nonnull %i.x) #16
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  store ptr %i.v, ptr %i.w, align 8, !tbaa !261
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  ret ptr %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_has_tooltip(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gtk_notebook_append_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_container_child_set(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @g_signal_handler_find(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_notebook_size_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct._GtkRequisition, align 4    ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %5 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = tail call i32 @gtk_notebook_get_n_pages(ptr noundef %0) #16 ; 4 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !90

bb.b:                                             ; preds = %bb.a
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__._notebook_size_callback, ptr noundef nonnull @.str.319) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 4 uses
  %i.d = tail call noalias ptr @g_malloc_n(i64 noundef %i.c, i64 noundef 16) #20 ; 7 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !267
  call void @gtk_widget_get_allocation(ptr noundef %i.e, ptr noundef nonnull %4) #16
  %i.f = getelementptr [16 x i8], ptr %i.d, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267
  call void @gtk_widget_get_allocation(ptr noundef %i.h, ptr noundef nonnull %5) #16
  %i.i = load i32, ptr %5, align 4, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !74
  %i.l = add nsw i32 %i.k, %i.i
  %i.m = load i32, ptr %4, align 4, !tbaa !77
  %i.n = sub i32 %i.l, %i.m                       ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %i.p) #16
  %i.r = call ptr @gtk_notebook_get_tab_label(ptr noundef %0, ptr noundef %i.q) #16 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !267
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @gtk_widget_get_preferred_size(ptr noundef %i.r, ptr noundef null, ptr noundef nonnull %3) #16
  %i.u = load i32, ptr %3, align 4, !tbaa !270
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !271
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %bb.d, label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.w = call i32 @gtk_distribute_natural_allocation(i32 noundef %i.n, i32 noundef %i.a, ptr noundef nonnull %i.d) #16 ; 0 uses
  br label %.lr.ph

.lr.ph49.preheader:                               ; preds = %.lr.ph
  call void @gtk_widget_size_allocate(ptr noundef %0, ptr noundef %1) #16
  %wide.trip.count59 = zext nneg i32 %i.a to i64
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv51 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next52, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv51 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !268
  call void @gtk_widget_set_size_request(ptr noundef %i.y, i32 noundef %i.aa, i32 noundef -1) #16
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %i.c
  br i1 %exitcond55.not, label %.lr.ph49.preheader, label %.lr.ph

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv56 = phi i64 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next57, %.lr.ph49 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !267
  call void @gtk_widget_set_size_request(ptr noundef %i.ac, i32 noundef -1, i32 noundef -1) #16
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.loopexit, label %.lr.ph49

.loopexit:                                        ; preds = %.lr.ph49, %bb.d
  call void @g_free(ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_notebook_motion_notify_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = tail call ptr @gtk_get_event_widget(ptr noundef %1) #16
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #16
  %i.b = call i32 @gtk_notebook_get_n_pages(ptr noundef %0) #16 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.e ] ; 3 uses
  %i.f = call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %.015) #16
  %i.g = call ptr @gtk_notebook_get_tab_label(ptr noundef %0, ptr noundef %i.f) #16
  call void @gtk_widget_get_allocation(ptr noundef %i.g, ptr noundef nonnull %4) #16
  %i.h = load double, ptr %i.d, align 8, !tbaa !136
  %i.i = load i32, ptr %3, align 4, !tbaa !77
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.k = fadd reassoc nsz arcp contract afn double %i.h, %i.j
  %i.l = load i32, ptr %4, align 4, !tbaa !77
  %i.m = load i32, ptr %i.e, align 4, !tbaa !74
  %i.n = add nsw i32 %i.m, %i.l
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to double
  %i.p = fcmp reassoc nsz arcp contract afn olt double %i.k, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 580
  store i32 %.015, ptr %i.r, align 4, !tbaa !272
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = add nuw nsw i32 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_notebook_scroll_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.6) #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.e = and i32 %i.d, %i.c                       ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %dt_gui_ignore_scroll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5564
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %i.j = icmp eq i32 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %dt_gui_ignore_scroll.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_gui_ignore_scroll.exit.thread9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = xor i32 %i.e, -1
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16
  %i.m = and i32 %i.l, %i.k
  store i32 %i.m, ptr %i.b, align 8, !tbaa !16
  br label %dt_gui_ignore_scroll.exit.thread

dt_gui_ignore_scroll.exit:                        ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %dt_gui_ignore_scroll.exit.thread, label %dt_gui_ignore_scroll.exit.thread9

dt_gui_ignore_scroll.exit.thread:                 ; preds = %bb.b, %bb.d, %dt_gui_ignore_scroll.exit
  %i.n = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %dt_gui_ignore_scroll.exit.thread9

bb.e:                                             ; preds = %dt_gui_ignore_scroll.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68
  switch i32 %i.p, label %dt_gui_ignore_scroll.exit.thread9 [
    i32 2, label %dt_gui_get_scroll_unit_delta.exit
    i32 3, label %bb.f
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  br label %dt_gui_get_scroll_unit_delta.exit

bb.g:                                             ; preds = %bb.e
  br label %dt_gui_get_scroll_unit_delta.exit

bb.h:                                             ; preds = %bb.e
  br label %dt_gui_get_scroll_unit_delta.exit

bb.i:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 1
  %.not48.i.i = icmp eq i8 %i.s, 0
  br i1 %.not48.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %dt_gui_ignore_scroll.exit.thread9

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %i.v = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.w = fadd reassoc nsz arcp contract afn double %i.v, %i.u ; 3 uses
  store double %i.w, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load double, ptr %i.x, align 8, !tbaa !71
  %i.z = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.aa = fadd reassoc nsz arcp contract afn double %i.z, %i.y ; 3 uses
  store double %i.aa, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.ab = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.w) ; 3 uses
  %i.ac = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.aa) ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn une double %i.ab, 0.000000e+00
  %i.ae = fcmp reassoc nsz arcp contract afn une double %i.ac, 0.000000e+00
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i.i, label %bb.l, label %dt_gui_ignore_scroll.exit.thread9

bb.l:                                             ; preds = %bb.k
  %i.af = fsub reassoc nsz arcp contract afn double %i.w, %i.ab
  store double %i.af, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.ag = fsub reassoc nsz arcp contract afn double %i.aa, %i.ac
  store double %i.ag, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.ah = fptosi double %i.ab to i32
  %i.ai = fptosi double %i.ac to i32
  br label %dt_gui_get_scroll_unit_delta.exit

dt_gui_get_scroll_unit_delta.exit:                ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.l
  %.04.ph.i = phi i32 [ %i.ah, %bb.l ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.f ], [ -1, %bb.e ]
  %.03.ph.i = phi i32 [ %i.ai, %bb.l ], [ 1, %bb.h ], [ -1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.aj = add nsw i32 %.03.ph.i, %.04.ph.i        ; 3 uses
  %.not15 = icmp eq i32 %i.aj, 0
  br i1 %.not15, label %dt_gui_ignore_scroll.exit.thread9, label %bb.m

bb.m:                                             ; preds = %dt_gui_get_scroll_unit_delta.exit
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = select i1 %i.ak, i32 1, i32 2
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.aj to float
  %i.an = tail call reassoc nsz arcp contract afn float @_action_process_tabs(ptr noundef %0, i32 noundef 0, i32 noundef %i.al, float noundef %i.am) ; 0 uses
  br label %dt_gui_ignore_scroll.exit.thread9

dt_gui_ignore_scroll.exit.thread9:                ; preds = %bb.k, %bb.j, %bb.e, %dt_gui_ignore_scroll.exit.thread, %bb.c, %dt_gui_get_scroll_unit_delta.exit, %bb.m, %dt_gui_ignore_scroll.exit
  %.0 = phi i32 [ 1, %dt_gui_get_scroll_unit_delta.exit ], [ 0, %dt_gui_ignore_scroll.exit ], [ 0, %bb.c ], [ 1, %bb.m ], [ 1, %dt_gui_ignore_scroll.exit.thread ], [ 1, %bb.e ], [ 1, %bb.j ], [ 1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_notebook_button_press_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !143
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @gtk_get_event_widget(ptr noundef nonnull %1) #16
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @gtk_notebook_get_current_page(ptr noundef %0) #16
end_hunk_0
