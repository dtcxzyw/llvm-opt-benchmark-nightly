Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/workspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dt_workspace_create:bb.a
  store ptr %i.cs, ptr %i.h, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ct, align 8, !tbaa !76
  %i.cu = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 661, ptr noundef nonnull @__FUNCTION__.dt_workspace_create, ptr noundef %i.ck, ptr noundef nonnull %i.h) #9 ; 0 uses
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.cw = call ptr @gtk_dialog_get_content_area(ptr noundef %i.cv) #9
  store ptr %i.ck, ptr %i.i, align 8, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cx, align 8, !tbaa !76
  %i.cy = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 662, ptr noundef nonnull @__FUNCTION__.dt_workspace_create, ptr noundef %i.cw, ptr noundef nonnull %i.i) #9 ; 0 uses
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.da = call ptr @gtk_dialog_get_content_area(ptr noundef %i.cz) #9
  call void @gtk_widget_set_name(ptr noundef %i.da, ptr noundef nonnull @.str.21) #9
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !20
  call void @gtk_widget_show_all(ptr noundef %i.db) #9
  %i.dc = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.dd = call i32 @gtk_toggle_button_get_active(ptr noundef %i.dc) #9
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  %.05.i = load ptr, ptr %i.de, align 8, !tbaa !27 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %_workspace_template_radios_set_visible.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.07.i = phi ptr [ %.0.i99, %.lr.ph.i ], [ %.05.i, %bb.g ] ; 2 uses
  %i.df = load ptr, ptr %.07.i, align 8, !tbaa !29
  call void @gtk_widget_set_visible(ptr noundef %i.df, i32 noundef %i.dd) #9
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.0.i99 = load ptr, ptr %i.dg, align 8, !tbaa !27 ; 2 uses
  %.not.i100 = icmp eq ptr %.0.i99, null
  br i1 %.not.i100, label %_workspace_template_radios_set_visible.exit.preheader, label %.lr.ph.i

_workspace_template_radios_set_visible.exit.preheader: ; preds = %.lr.ph.i, %bb.g
  br label %_workspace_template_radios_set_visible.exit

_workspace_template_radios_set_visible.exit:      ; preds = %_workspace_template_radios_set_visible.exit.preheader, %_workspace_template_radios_set_visible.exit
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.di = call i32 @gtk_dialog_run(ptr noundef %i.dh) #9
  %i.dj = icmp eq i32 %i.di, -3
  br i1 %i.dj, label %_workspace_template_radios_set_visible.exit, label %bb.h

bb.h:                                             ; preds = %_workspace_template_radios_set_visible.exit
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !20  ; 2 uses
  %.not.i101 = icmp eq ptr %i.dk, null
  br i1 %.not.i101, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @gtk_widget_destroy(ptr noundef nonnull %i.dk) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.n, align 8, !tbaa !20
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !30 ; 2 uses
  %.not12.i = icmp eq ptr %i.dl, null
  br i1 %.not12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @g_slist_free(ptr noundef nonnull %i.dl) #9
  store ptr null, ptr %i.de, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr null, ptr %i.dm, align 8, !tbaa !31
  %i.dn = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %.not13.i = icmp eq ptr %i.dn, null
  br i1 %.not13.i, label %_workspace_screen_destroy.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @g_free(ptr noundef nonnull %i.dn) #9
  store ptr null, ptr %i.q, align 8, !tbaa !18
  br label %_workspace_screen_destroy.exit

_workspace_screen_destroy.exit:                   ; preds = %bb.l, %bb.m
  call void @g_free(ptr noundef nonnull %i.n) #9
  br label %bb.n

bb.n:                                             ; preds = %dt_check_gimpmode.exit, %dt_check_gimpmode.exit98, %dt_check_gimpmode.exit98.thread, %_workspace_screen_destroy.exit
  %.088 = phi i32 [ 1, %_workspace_screen_destroy.exit ], [ 0, %dt_check_gimpmode.exit98.thread ], [ 0, %dt_check_gimpmode.exit98 ], [ 0, %dt_check_gimpmode.exit ]
  ret i32 %.088
}

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare ptr @gtk_grid_new() local_unnamed_addr #1

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_grid_set_row_spacing(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_widget_set_valign(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gtk_dialog_new_with_buttons(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_window_set_position(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_read_file_pattern(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @_workspace_library_db_compare(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @g_strcmp0(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #1

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gtk_dialog_get_content_area(ptr noundef) local_unnamed_addr #1

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_insert_button(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %_workspace_radio_shell_sync_active.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not41 = icmp eq ptr %i.b, null
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @gtk_radio_button_new_from_widget(ptr noundef nonnull %i.b) #9
  br label %g_strdup_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @gtk_radio_button_new(ptr noundef null) #9 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !31
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ %i.d, %bb.d ]  ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = tail call ptr @g_slist_prepend(ptr noundef %i.f, ptr noundef %.0) #9
  store ptr %i.g, ptr %i.e, align 8, !tbaa !30
  %i.h = tail call noalias ptr @g_strdup(ptr noundef %1) #9
  tail call void @g_object_set_data_full(ptr noundef %.0, ptr noundef nonnull @.str.22, ptr noundef %i.h, ptr noundef nonnull @g_free) #9
  tail call void @gtk_widget_set_valign(ptr noundef %.0, i32 noundef 3) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @g_object_set_data(ptr noundef %.0, ptr noundef nonnull @.str.23, ptr noundef %i.j) #9
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @gtk_grid_attach(ptr noundef %i.k, ptr noundef %.0, i32 noundef 0, i32 noundef %4, i32 noundef 1, i32 noundef 1) #9
  tail call void @dt_gui_add_class(ptr noundef %.0, ptr noundef nonnull @.str.24) #9
  %i.l = tail call i64 @g_signal_connect_data(ptr noundef %.0, ptr noundef nonnull @.str.20, ptr noundef nonnull @_workspace_template_radio_toggled, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %.0, ptr noundef nonnull @.str.25, ptr noundef nonnull @_workspace_radio_shell_sync_active, ptr noundef null, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  %i.n = tail call ptr @g_object_get_data(ptr noundef %.0, ptr noundef nonnull @.str.23) #9 ; 3 uses
  %.not.i44 = icmp eq ptr %i.n, null
  br i1 %.not.i44, label %_workspace_radio_shell_sync_active.exit, label %bb.e

bb.e:                                             ; preds = %g_strdup_inline.exit
  %i.o = tail call i32 @gtk_toggle_button_get_active(ptr noundef %.0) #9
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @dt_gui_add_class(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.28) #9
  br label %_workspace_radio_shell_sync_active.exit

bb.g:                                             ; preds = %bb.e
  tail call void @dt_gui_remove_class(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.28) #9
  br label %_workspace_radio_shell_sync_active.exit

_workspace_radio_shell_sync_active.exit:          ; preds = %bb.g, %bb.f, %g_strdup_inline.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %g_strdup_inline.exit ], [ %.0, %bb.f ], [ %.0, %bb.g ] ; 2 uses
  %i.p = tail call ptr @gtk_button_new_with_label(ptr noundef %1) #9 ; 5 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.p, i32 noundef 1) #9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %.not42 = icmp eq i32 %2, 0
  %5 = sub nuw nsw i32 2, %2
  tail call void @gtk_grid_attach(ptr noundef %i.r, ptr noundef %i.p, i32 noundef 1, i32 noundef %4, i32 noundef %5, i32 noundef 1) #9
  %i.s = tail call i64 @g_signal_connect_data(ptr noundef %i.p, ptr noundef nonnull @.str.17, ptr noundef nonnull @_workspace_select_db, ptr noundef %0, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  %.not43 = icmp eq ptr %.1, null
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_workspace_radio_shell_sync_active.exit
  tail call void @g_object_set_data(ptr noundef %i.p, ptr noundef nonnull @.str.26, ptr noundef nonnull %.1) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_workspace_radio_shell_sync_active.exit
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_remove, i32 noundef 0, ptr noundef null) #9 ; 3 uses
  %i.u = tail call i64 @g_signal_connect_data(ptr noundef %i.t, ptr noundef nonnull @.str.17, ptr noundef nonnull @_workspace_delete_db, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  tail call void @g_object_set_data(ptr noundef %i.t, ptr noundef nonnull @.str.27, ptr noundef %i.p) #9
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !19
  tail call void @gtk_grid_attach(ptr noundef %i.v, ptr noundef %i.t, i32 noundef 2, i32 noundef %4, i32 noundef 1, i32 noundef 1) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare ptr @g_list_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gtk_check_button_new_with_label(ptr noundef) local_unnamed_addr #1

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) #1

declare void @dt_conf_set_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gtk_entry_new() local_unnamed_addr #1

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_workspace_entry_changed(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @gtk_entry_get_text(ptr noundef %0) #9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %char0 = load i8, ptr %i.a, align 1
  %i.d = icmp ne i8 %char0, 0
  %i.e = zext i1 %i.d to i32
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.c, i32 noundef %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %char08 = load i8, ptr %i.a, align 1
  %i.h = icmp ne i8 %char08, 0
  %i.i = zext i1 %i.h to i32
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.g, i32 noundef %i.i) #9
  %char09 = load i8, ptr %i.a, align 1
  %i.j = icmp eq i8 %char09, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.05.i = load ptr, ptr %i.k, align 8, !tbaa !27 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %_workspace_template_radios_set_visible.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.07.i, align 8, !tbaa !29
  tail call void @gtk_widget_set_visible(ptr noundef %i.l, i32 noundef 0) #9
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.0.i = load ptr, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_workspace_template_radios_set_visible.exit, label %.lr.ph.i

_workspace_template_radios_set_visible.exit:      ; preds = %.lr.ph.i, %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.n, i32 noundef 0) #9
  br label %bb.c

bb.c:                                             ; preds = %_workspace_template_radios_set_visible.exit, %bb.a
  ret void
}

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gtk_button_new_with_label(ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_workspace_new_db(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
g_strdup_inline.exit:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [4096 x i8], align 16             ; 7 uses
  %i.e = alloca [4096 x i8], align 16             ; 5 uses
  %i.f = alloca [4096 x i8], align 16             ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = tail call ptr @gtk_entry_get_text(ptr noundef %i.h) #9
  %i.j = tail call noalias ptr @g_strdup(ptr noundef %i.i) #9 ; 18 uses
  %i.k = tail call ptr @g_strchug(ptr noundef %i.j) #9
  %i.l = tail call ptr @g_strchomp(ptr noundef %i.k) #9 ; 0 uses
  %i.m = load i8, ptr %i.j, align 1, !tbaa !23
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %g_strdup_inline.exit
  tail call void @g_free(ptr noundef nonnull %i.j) #9
  br label %_workspace_screen_destroy.exit

bb.b:                                             ; preds = %g_strdup_inline.exit
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.10) #9
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_workspace_label_is_reserved.exit.thread, label %_workspace_label_is_default.exit.i

_workspace_label_is_default.exit.i:               ; preds = %bb.b
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #9
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %i.p) #8
  %.not.i37 = icmp eq i32 %i.q, 0
  br i1 %.not.i37, label %_workspace_label_is_reserved.exit.thread, label %bb.c

bb.c:                                             ; preds = %_workspace_label_is_default.exit.i
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.11) #9
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_workspace_label_is_reserved.exit.thread, label %_workspace_label_is_reserved.exit

_workspace_label_is_reserved.exit:                ; preds = %bb.c
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #9
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %i.t) #8
  %.not45 = icmp eq i32 %i.u, 0
  br i1 %.not45, label %_workspace_label_is_reserved.exit.thread, label %bb.d

_workspace_label_is_reserved.exit.thread:         ; preds = %bb.b, %bb.c, %_workspace_label_is_default.exit.i, %_workspace_label_is_reserved.exit
  %i.v = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #9
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #9
  %.val36 = load ptr, ptr %1, align 8, !tbaa !20
  %i.x = tail call ptr (ptr, i32, i32, i32, ptr, ...) @gtk_message_dialog_new(ptr noundef %.val36, i32 noundef 2, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %i.w) #9 ; 4 uses
  tail call void @gtk_window_set_title(ptr noundef %i.x, ptr noundef %i.v) #9
  %i.y = tail call ptr @gtk_dialog_get_content_area(ptr noundef %i.x) #9
  tail call void @gtk_widget_set_name(ptr noundef %i.y, ptr noundef nonnull @.str.33) #9
  %i.z = tail call i32 @gtk_dialog_run(ptr noundef %i.x) #9 ; 0 uses
  tail call void @gtk_widget_destroy(ptr noundef %i.x) #9
  tail call void @g_free(ptr noundef nonnull %i.j) #9
  br label %_workspace_screen_destroy.exit

bb.d:                                             ; preds = %_workspace_label_is_reserved.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 4096, ptr noundef nonnull @.str.35, ptr noundef %i.ab, ptr noundef nonnull %i.j) #9 ; 0 uses
  %i.ad = call i32 @g_file_test(ptr noundef nonnull %i.f, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %.not31 = icmp eq i32 %i.ad, 0
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #9
  %i.af = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ae, ptr noundef nonnull %i.j) #9 ; 2 uses
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #9
  %.val = load ptr, ptr %1, align 8, !tbaa !20
  %i.ah = call ptr (ptr, i32, i32, i32, ptr, ...) @gtk_message_dialog_new(ptr noundef %.val, i32 noundef 2, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %i.af) #9 ; 4 uses
  call void @gtk_window_set_title(ptr noundef %i.ah, ptr noundef %i.ag) #9
  %i.ai = call ptr @gtk_dialog_get_content_area(ptr noundef %i.ah) #9
  call void @gtk_widget_set_name(ptr noundef %i.ai, ptr noundef nonnull @.str.33) #9
  %i.aj = call i32 @gtk_dialog_run(ptr noundef %i.ah) #9 ; 0 uses
  call void @gtk_widget_destroy(ptr noundef %i.ah) #9
  call void @g_free(ptr noundef %i.af) #9
  call void @g_free(ptr noundef nonnull %i.j) #9
  br label %_workspace_screen_destroy.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.j) #9 ; 2 uses
  call void @dt_conf_set_string(ptr noundef nonnull @.str.9, ptr noundef %i.ak) #9
  call void @dt_conf_set_string(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.j) #9
  call void @g_free(ptr noundef %i.ak) #9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = call i32 @gtk_toggle_button_get_active(ptr noundef %i.am) #9
  %.not32 = icmp eq i32 %i.an, 0
  br i1 %.not32, label %bb.ak, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ap, null
  br i1 %.not.i38, label %_workspace_selected_template_sync_from_radios.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.critedge.i
  %.01116.i = phi ptr [ %i.ax, %.critedge.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.aq = load ptr, ptr %.01116.i, align 8, !tbaa !29 ; 2 uses
  %i.ar = call i32 @gtk_toggle_button_get_active(ptr noundef %i.aq) #9
end_hunk_0
