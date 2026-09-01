Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tagging?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
begin_hunk_0_@_reset_sel_on_path:bb.a
  %4 = alloca %struct._GtkTreeIter, align 8       ; 10 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !47
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.e
  %i.b = call i32 @gtk_tree_model_iter_children(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %.not.us = icmp eq i32 %i.b, 0
  br i1 %.not.us, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !48
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef -1) #16
  %i.c = load i32, ptr %i.a, align 4, !tbaa !48
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 5, i32 noundef 0, i32 noundef -1) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call fastcc void @_reset_sel_on_path(ptr noundef %0, ptr noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  %i.e = call i32 @gtk_tree_model_iter_next(ptr noundef %0, ptr noundef nonnull %4) #16
  %.not7.us = icmp eq i32 %i.e, 0
  br i1 %.not7.us, label %.critedge, label %.split.us

.split:                                           ; preds = %bb.a
  %i.f = call i32 @gtk_tree_model_iter_children(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !48
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef -1) #16
  %i.g = load i32, ptr %i.a, align 4, !tbaa !48
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 5, i32 noundef 0, i32 noundef -1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call fastcc void @_reset_sel_on_path(ptr noundef %0, ptr noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.split, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_calculate_sel_on_path(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct._GtkTreeIter, align 8       ; 7 uses
  %4 = alloca %struct._GtkTreeIter, align 8       ; 6 uses
  %5 = alloca %struct._GtkTreeIter, align 8       ; 4 uses
  %6 = alloca %struct._GtkTreeIter, align 8       ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !47
  %.not6 = icmp eq i32 %2, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !48
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 5, ptr noundef nonnull %i.b, i32 noundef -1) #16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !48
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !47
  %i.e = call i32 @gtk_tree_model_iter_parent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %_propagate_sel_to_parents.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef -1) #16
  %i.f = load i32, ptr %i.a, align 4, !tbaa !48
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 5, i32 noundef 1, i32 noundef -1) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !47
  %i.h = call i32 @gtk_tree_model_iter_parent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_propagate_sel_to_parents.exit, label %.lr.ph.i

_propagate_sel_to_parents.exit:                   ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %_propagate_sel_to_parents.exit, %bb.b
  %i.i = call i32 @gtk_tree_model_iter_children(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_calculate_sel_on_path(ptr noundef %0, ptr noundef %5, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %.not6, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.j = call i32 @gtk_tree_model_iter_next(ptr noundef %0, ptr noundef nonnull %6) #16
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

declare void @dt_control_signal_block_by_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @dt_control_signal_unblock_by_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_entry_get_text(ptr noundef) local_unnamed_addr #3

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @g_utf8_collate_key_for_filename(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gtk_tree_view_get_path_at_pos(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gtk_tree_model_get_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @gtk_tooltip_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_tree_tagname_show(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readonly captures(none) %.288.val, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %1, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.d, i32 noundef 6, ptr noundef nonnull %i.e, i32 noundef 2, ptr noundef nonnull %i.c, i32 noundef -1) #16
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.288.val, i64 1192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.288.val, i64 1204
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.not22 = phi i1 [ false, %bb.b ], [ %i.j, %.sink.split ]
  %i.k = load i32, ptr %i.e, align 4, !tbaa !48
  %i.l = and i32 %i.k, 1
  %.not20 = icmp eq i32 %i.l, 0
  %i.m = load i32, ptr %i.a, align 4
  %i.n = icmp ne i32 %i.m, 0
  %i.o = select i1 %.not20, i1 %i.n, i1 false     ; 2 uses
  %i.p = load i32, ptr %i.d, align 4              ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ult i32 %i.p, 2
  %or.cond23 = select i1 %.not, i1 %i.r, i1 %i.q
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = select i1 %.not22, ptr %i.t, ptr %i.s    ; 2 uses
  br i1 %or.cond23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = select i1 %i.o, ptr @.str.70, ptr @.str.77
  %i.w = call ptr (ptr, ...) @g_markup_printf_escaped(ptr noundef nonnull %i.v, ptr noundef %i.u) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = select i1 %i.o, ptr @.str.78, ptr @.str.79
  %i.y = call ptr (ptr, ...) @g_markup_printf_escaped(ptr noundef nonnull %i.x, ptr noundef %i.u, i32 noundef %i.p) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.w, %bb.d ], [ %i.y, %bb.e ]  ; 2 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef %.0, ptr noundef null) #16
  call void @g_free(ptr noundef %.0) #16
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !49
  call void @g_free(ptr noundef %i.z) #16
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !49
  call void @g_free(ptr noundef %i.aa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @g_markup_printf_escaped(ptr noundef, ...) local_unnamed_addr #3

declare void @gtk_tree_selection_select_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_detach_selected_tag(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._GtkTreeIter, align 8       ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.e = tail call ptr @gtk_tree_view_get_selection(ptr noundef %0) #16
  %i.f = call i32 @gtk_tree_selection_get_selected(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.g, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef -1) #16
  %i.h = load i32, ptr %i.b, align 4, !tbaa !48
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 1, i32 noundef 0) #16 ; 3 uses
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.b, align 4, !tbaa !48
  %i.l = call ptr @dt_tag_get_images_from_list(ptr noundef nonnull %i.j, i32 noundef %i.k) #16 ; 4 uses
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (...) @dt_gui_cursor_set_busy() #16
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.n = call ptr @gtk_tree_model_get_path(ptr noundef %i.m, ptr noundef nonnull %2) #16 ; 2 uses
  %i.o = call ptr @gtk_tree_path_get_indices(ptr noundef %i.n) #16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48
  call void @gtk_tree_path_free(ptr noundef %i.n) #16
  %i.q = load i32, ptr %i.b, align 4, !tbaa !48
  %i.r = call i32 @dt_tag_detach_images(i32 noundef %i.q, ptr noundef nonnull %i.l, i32 noundef 1) #16
  call fastcc void @_init_treeview(ptr noundef nonnull %1, i32 noundef 0)
  %i.s = call fastcc i32 @_select_next_user_attached_tag(i32 noundef %i.p, ptr noundef %0)
  %.not33 = icmp eq i32 %i.s, 0
  br i1 %.not33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1024
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106
  call void @gtk_widget_grab_focus(ptr noundef %i.u) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 1192 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %.not34 = icmp eq i32 %i.w, 0
  br i1 %.not34, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1196
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load i32, ptr %i.b, align 4, !tbaa !48
  %i.aa = call i32 @dt_tag_images_count(i32 noundef %i.z) #16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 1048
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = call ptr @gtk_tree_view_get_model(ptr noundef %i.ac) #16 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !31
  %i.ae = call ptr @gtk_tree_model_filter_get_model(ptr noundef %i.ad) #16 ; 5 uses
  %i.af = call i32 @gtk_tree_model_get_iter_first(ptr noundef %i.ae, ptr noundef nonnull %2) #16
  %.not36 = icmp eq i32 %i.af, 0
  br i1 %.not36, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !48
  %i.ah = call fastcc i32 @_find_tag_iter_tagid(ptr noundef %i.ae, ptr noundef %2, i32 noundef %i.ag)
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !36
  %.not38 = icmp eq i32 %i.ai, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %i.ae, ptr noundef nonnull %2, i32 noundef 4, i32 noundef %i.aa, i32 noundef 5, i32 noundef 0, i32 noundef -1) #16
  call fastcc void @_calculate_sel_on_tree(ptr noundef %i.ae, ptr noundef %2)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @gtk_list_store_set(ptr noundef %i.ae, ptr noundef nonnull %2, i32 noundef 4, i32 noundef %i.aa, i32 noundef 5, i32 noundef 0, i32 noundef -1) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  call fastcc void @_init_treeview(ptr noundef nonnull %1, i32 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.l, %bb.m, %bb.j, %bb.n
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @_raise_signal_tag_changed(ptr noundef nonnull %1)
  call void @dt_image_synch_xmps(ptr noundef nonnull %i.l) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @g_list_free(ptr noundef nonnull %i.l) #16
  call void (...) @dt_gui_cursor_clear_busy() #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  call void @g_list_free(ptr noundef nonnull %i.j) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

declare void @gtk_tree_selection_unselect_all(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_menu_new() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_pop_menu_attached_attach_to_all(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GtkTreeIter, align 8       ; 7 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %3 = alloca %struct._GtkTreeIter, align 8       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1040 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.f) #16
  store ptr %i.g, ptr %i.a, align 8, !tbaa !31
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.i = tail call ptr @gtk_tree_view_get_selection(ptr noundef %i.h) #16
  %i.j = call i32 @gtk_tree_selection_get_selected(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !31
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.k, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef -1) #16
  %i.l = load i32, ptr %i.b, align 4, !tbaa !48   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
