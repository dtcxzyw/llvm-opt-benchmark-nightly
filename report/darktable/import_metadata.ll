Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/import_metadata?download=true
inline.NumInlined: 31
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_update_layout:bb.a
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !102
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.u = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.b ]  ; 3 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.w = add i32 %.02937, 1                       ; 5 uses
  %i.x = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.v, i32 noundef 0, i32 noundef %i.w) #9
  %i.y = tail call ptr @g_object_get_data(ptr noundef %i.x, ptr noundef nonnull @.str.34) #9 ; 2 uses
  %.not33 = icmp eq ptr %i.y, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  tail call void @gtk_label_set_text(ptr noundef nonnull %i.y, ptr noundef %i.aa) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ac = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.ab, i32 noundef 0, i32 noundef %i.w) #9
  tail call void @gtk_widget_set_visible(ptr noundef %i.ac, i32 noundef %i.u) #9
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ae = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.ad, i32 noundef 1, i32 noundef %i.w) #9
  tail call void @gtk_widget_set_visible(ptr noundef %i.ae, i32 noundef %i.u) #9
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ag = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.af, i32 noundef 2, i32 noundef %i.w) #9
  %i.ah = and i32 %i.u, %i.e
  tail call void @gtk_widget_set_visible(ptr noundef %i.ag, i32 noundef %i.ah) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %.02838, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !82 ; 2 uses
  %.not31 = icmp eq ptr %i.aj, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @dt_import_metadata_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !65
  %i.b = tail call i32 @dt_control_signal_disconnect_all(ptr noundef %i.a, ptr noundef %0) #9 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !63
  %i.d = and i32 %i.c, 4
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !64
  %i.f = and i32 %i.e, 1048576
  %.not3 = icmp eq i32 %i.f, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, i32 noundef %i.b, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.16, i32 noundef 554, ptr noundef nonnull @__FUNCTION__.dt_import_metadata_cleanup) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare i32 @dt_control_signal_disconnect_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_import_metadata_update(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #9 ; 0 uses
  %i.b = tail call ptr (...) @dt_metadata_get_list() #9 ; 2 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #9 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62
  %i.i = add nsw i32 %i.h, 2
  %i.j = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.f, i32 noundef 1, i32 noundef %i.i) #9 ; 3 uses
  %i.k = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.9) #9
  %i.l = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.j, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_tags_changed, ptr noundef %0) #9 ; 0 uses
  tail call void @gtk_entry_set_text(ptr noundef %i.j, ptr noundef %i.k) #9
  %i.m = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.j, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_tags_changed, ptr noundef %0) #9 ; 0 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.o = load i32, ptr %i.g, align 8, !tbaa !62
  %i.p = add nsw i32 %i.o, 2
  %i.q = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.n, i32 noundef 2, i32 noundef %i.p) #9 ; 3 uses
  %i.r = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.11) #9
  %i.s = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.q, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_toggled, ptr noundef %0) #9 ; 0 uses
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.q, i32 noundef %i.r) #9
  %i.t = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.q, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_toggled, ptr noundef %0) #9 ; 0 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.v = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.u, i32 noundef 1, i32 noundef 0) #9
  tail call void @gtk_combo_box_set_active(ptr noundef %i.v, i32 noundef -1) #9
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.x = load i32, ptr %i.g, align 8, !tbaa !62
  %i.y = add nsw i32 %i.x, 1
  %i.z = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.w, i32 noundef 1, i32 noundef %i.y) #9
  tail call void @gtk_combo_box_set_active(ptr noundef %i.z, i32 noundef -1) #9
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.04749 = phi ptr [ %i.b, %.lr.ph ], [ %i.at, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.04749, align 8, !tbaa !78
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ac = add i32 %.050, 1                        ; 3 uses
  %i.ad = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.ab, i32 noundef 1, i32 noundef %i.ac) #9 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80
  %i.ag = tail call ptr @dt_metadata_get_tag_subkey(ptr noundef %i.af) #9 ; 2 uses
  %i.ah = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, ptr noundef %i.ag) #9 ; 2 uses
  %i.ai = tail call ptr @dt_conf_get_string_const(ptr noundef %i.ah) #9
  %i.aj = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.ad, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_changed, ptr noundef %0) #9 ; 0 uses
  tail call void @gtk_entry_set_text(ptr noundef %i.ad, ptr noundef %i.ai) #9
  %i.ak = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.ad, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_changed, ptr noundef %0) #9 ; 0 uses
  tail call void @g_free(ptr noundef %i.ah) #9
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.am = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.al, i32 noundef 2, i32 noundef %i.ac) #9 ; 3 uses
  %i.an = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.24, ptr noundef %i.ag) #9 ; 2 uses
  %i.ao = tail call i32 @dt_conf_get_int(ptr noundef %i.an) #9
  %i.ap = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.am, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_toggled, ptr noundef %0) #9 ; 0 uses
  %i.aq = and i32 %i.ao, 4
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.am, i32 noundef %i.aq) #9
  %i.ar = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.am, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_toggled, ptr noundef %0) #9 ; 0 uses
  tail call void @g_free(ptr noundef %i.an) #9
  %i.as = getelementptr inbounds nuw i8, ptr %.04749, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare ptr @dt_metadata_get_list(...) local_unnamed_addr #2

declare ptr @gtk_grid_get_child_at(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dt_metadata_get_tag_subkey(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @g_signal_handlers_block_matched(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_import_metadata_changed(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.33) #9
  %i.b = tail call ptr @dt_metadata_get_tag_subkey(ptr noundef %i.a) #9
  %i.c = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, ptr noundef %i.b) #9 ; 2 uses
  %i.d = tail call ptr @gtk_entry_get_text(ptr noundef %0) #9
  tail call void @dt_conf_set_string(ptr noundef %i.c, ptr noundef %i.d) #9
  tail call void @g_free(ptr noundef %i.c) #9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.f, i32 noundef 1, i32 noundef 0) #9
  tail call void @gtk_combo_box_set_active(ptr noundef %i.g, i32 noundef -1) #9
  ret void
}

declare void @gtk_entry_set_text(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_signal_handlers_unblock_matched(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #2

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_combo_box_set_active(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_import_metadata_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_metadata_reset_all(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_metadata_reset_all(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = add i32 %i.b, 1
  %i.d = icmp ult i32 %i.c, -2
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %2 = trunc nuw i32 %1 to i1
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.053.us = phi i32 [ %i.o, %.critedge.us ], [ 1, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.f, i32 noundef 1, i32 noundef %.053.us) #9 ; 5 uses
  %i.h = tail call i64 @gtk_entry_get_type() #12  ; 2 uses
  %.not44.us = icmp eq ptr %i.g, null
  br i1 %.not44.us, label %.critedge.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not45.us = icmp eq ptr %i.i, null
  br i1 %.not45.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87
  %i.k = icmp eq i64 %i.j, %i.h
  br i1 %i.k, label %.critedge48.us, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.g, i64 noundef %i.h) #11
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge.us, label %.critedge48.us

.critedge48.us:                                   ; preds = %bb.d, %bb.c
  %i.n = tail call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.g) #9 ; 0 uses
  tail call void @gtk_entry_set_text(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.36) #9
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge48.us, %bb.d, %.lr.ph.split.us
  %i.o = add nuw i32 %.053.us, 1                  ; 2 uses
  %i.p = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.q = add nsw i32 %i.p, 3
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %.lr.ph.split.us, label %._crit_edge.a

._crit_edge:                                      ; preds = %bb.a
  %.pre = trunc nuw i32 %1 to i1
  br i1 %.pre, label %._crit_edge.a, label %.loopexit

._crit_edge.a:                                    ; preds = %.critedge.us, %._crit_edge
  %3 = phi i32 [ %i.b, %._crit_edge ], [ %i.p, %.critedge.us ]
  %i.s = add i32 %3, 1
  %i.t = icmp ult i32 %i.s, -2
  br i1 %i.t, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %._crit_edge.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.053 = phi i32 [ %i.ae, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.w = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.v, i32 noundef 1, i32 noundef %.053) #9 ; 5 uses
  %i.x = tail call i64 @gtk_entry_get_type() #12  ; 2 uses
  %.not44 = icmp eq ptr %i.w, null
  br i1 %.not44, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.y, align 8, !tbaa !87
  %i.aa = icmp eq i64 %i.z, %i.x
  br i1 %i.aa, label %.critedge48, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.w, i64 noundef %i.x) #11
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.critedge, label %.critedge48

.critedge48:                                      ; preds = %bb.f, %bb.g
  %i.ad = tail call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.w) #9
  %.not57 = icmp eq i32 %i.ad, 0
  br i1 %.not57, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.critedge48
  tail call void @gtk_entry_set_text(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.36) #9
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.split, %bb.h, %.critedge48, %bb.g
  %i.ae = add nuw i32 %.053, 1                    ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !62
  %i.ag = add nsw i32 %i.af, 3
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.split, label %.loopexit

bb.i:                                             ; preds = %.lr.ph55, %.critedge50
  %.03554 = phi i32 [ 1, %.lr.ph55 ], [ %i.aq, %.critedge50 ] ; 2 uses
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.aj = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.ai, i32 noundef 2, i32 noundef %.03554) #9 ; 4 uses
  %i.ak = tail call i64 @gtk_toggle_button_get_type() #12 ; 2 uses
  %.not41 = icmp eq ptr %i.aj, null
  br i1 %.not41, label %.critedge50, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !85 ; 2 uses
  %.not42 = icmp eq ptr %i.al, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.al, align 8, !tbaa !87
  %i.an = icmp eq i64 %i.am, %i.ak
  br i1 %i.an, label %.critedge52, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.aj, i64 noundef %i.ak) #11
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.critedge50, label %.critedge52

.critedge52:                                      ; preds = %bb.k, %bb.l
  tail call void @gtk_toggle_button_set_active(ptr noundef nonnull %i.aj, i32 noundef 1) #9
  br label %.critedge50

.critedge50:                                      ; preds = %bb.i, %.critedge52, %bb.l
  %i.aq = add nuw i32 %.03554, 1                  ; 2 uses
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !62
  %i.as = add nsw i32 %i.ar, 3
  %i.at = icmp ult i32 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %.critedge, %.critedge50, %._crit_edge.a, %._crit_edge
  ret void
}

declare void @gtk_list_store_clear(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #2

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_list_store_insert_with_values(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

declare ptr @dt_tag_get_name(i32 noundef) local_unnamed_addr #2

declare void @dt_util_str_cat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @gtk_event_box_new() local_unnamed_addr #2

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_combo_box_new_with_model(ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gtk_cell_renderer_text_new() local_unnamed_addr #2

declare void @gtk_cell_layout_pack_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_cell_layout_set_attributes(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @g_object_unref(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_combo_box_get_active_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_combo_box_get_model(ptr noundef) local_unnamed_addr #2

declare void @gtk_tree_model_get(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @g_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_fill_textview(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]   ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !62
  %i.d = icmp ult i32 %.017, %i.c
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.critedge
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.f = add nuw i32 %.017, 1                     ; 2 uses
  %i.g = tail call ptr @gtk_grid_get_child_at(ptr noundef %i.e, i32 noundef 1, i32 noundef %i.f) #9 ; 6 uses
  %i.h = tail call ptr @g_object_get_data(ptr noundef %i.g, ptr noundef nonnull @.str.33) #9
  %i.i = tail call i32 @g_strcmp0(ptr noundef %i.h, ptr noundef %0) #9
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @g_signal_handlers_block_matched(ptr noundef %i.g, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_changed, ptr noundef nonnull %2) #9 ; 0 uses
  tail call void @gtk_entry_set_text(ptr noundef %i.g, ptr noundef %1) #9
  %i.k = tail call i32 @g_signal_handlers_unblock_matched(ptr noundef %i.g, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_import_metadata_changed, ptr noundef nonnull %2) #9 ; 0 uses
  %i.l = tail call ptr @g_object_get_data(ptr noundef %i.g, ptr noundef nonnull @.str.33) #9
  %i.m = tail call ptr @dt_metadata_get_tag_subkey(ptr noundef %i.l) #9
  %i.n = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, ptr noundef %i.m) #9 ; 2 uses
  %i.o = tail call ptr @gtk_entry_get_text(ptr noundef %i.g) #9
  tail call void @dt_conf_set_string(ptr noundef %i.n, ptr noundef %i.o) #9
  tail call void @g_free(ptr noundef %i.n) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.c
  ret void
}

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_conf_set_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_entry_get_text(ptr noundef) local_unnamed_addr #2

declare void @gtk_grid_remove_row(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_grid_insert_row(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_entry_set_width_chars(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_name(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #2

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_conf_set_bool(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_widget_get_type() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @g_type_check_instance_is_a(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dt_image_get_xmp_mode(...) local_unnamed_addr #2

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_entry_get_type() local_unnamed_addr #7

declare i32 @gtk_widget_get_visible(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_toggle_button_get_type() local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!13 = !{!"p1 _ZTS13_GtkListStore", !11, i64 0}
!14 = !{!"dt_import_metadata_t", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!14, !12, i64 16}
end_hunk_0
