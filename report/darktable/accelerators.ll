Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/accelerators?download=true
inline.NumInlined: 195
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dt_shortcut_tooltip_callback:bb.a
  call void @g_free(ptr noundef nonnull %i.gu) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bc, %._crit_edge240
  %.not162 = icmp eq ptr %i.dp, null
  br i1 %.not162, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !145 ; 2 uses
  %.not163 = icmp eq ptr %i.gv, null
  br i1 %.not163, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !95
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gx = call fastcc ptr @_shortcut_lua_command(ptr noundef %.1114187206217, ptr noundef nonnull %6) ; 3 uses
  %.not164 = icmp eq ptr %i.gx, null
  br i1 %.not164, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gy = icmp eq i32 %.1105189204218, 1
  %.str.91..str.92 = select i1 %i.gy, ptr @.str.91, ptr @.str.92
  %i.gz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.91..str.92, i32 noundef 5) #23
  %i.ha = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.93, i32 noundef 5) #23
  %i.hb = call ptr (ptr, ...) @g_markup_printf_escaped(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.gx, ptr noundef %i.gz, ptr noundef %i.ha) #23 ; 2 uses
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.94, ptr noundef %i.hb) #23
  call void @g_free(ptr noundef %i.hb) #23
  call void @g_free(ptr noundef nonnull %i.gx) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bf
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %i.hd = icmp ne ptr %i.hc, null
  %i.he = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hf = icmp ne ptr %i.he, null                 ; 2 uses
  %or.cond9 = select i1 %i.hd, i1 true, i1 %i.hf
  %i.hg = load ptr, ptr %i.c, align 8
  %i.hh = icmp ne ptr %i.hg, null                 ; 2 uses
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %i.hh
  br i1 %or.cond11, label %bb.bl, label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.hf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hi = select i1 %i.hh, ptr @.str.95, ptr @.str.94
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.he) #23
  %.pre247 = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hj = phi ptr [ %.pre247, %bb.bm ], [ %i.hc, %bb.bl ] ; 2 uses
  %.not165 = icmp eq ptr %i.hj, null
  br i1 %.not165, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hk = load ptr, ptr %i.c, align 8, !tbaa !21
  %.not166 = icmp eq ptr %i.hk, null
  %i.hl = select i1 %.not166, ptr @.str.94, ptr @.str.95
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hj) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.hm = call ptr @gtk_label_new(ptr noundef null) #23 ; 6 uses
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !21
  call void @gtk_label_set_markup(ptr noundef %i.hm, ptr noundef %i.hn) #23
  call void @gtk_label_set_line_wrap(ptr noundef %i.hm, i32 noundef 1) #23
  %i.ho = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %.not167 = icmp eq ptr %i.ho, null
  br i1 %.not167, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hp = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ho, i32 noundef 10) #25
  %.not168 = icmp eq ptr %i.hp, null
  br i1 %.not168, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ho, i32 noundef 60) #25
  %.not169 = icmp eq ptr %i.hq, null
  br i1 %.not169, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @gtk_label_set_max_width_chars(ptr noundef %i.hm, i32 noundef 70) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bp
  call void @gtk_widget_set_halign(ptr noundef %i.hm, i32 noundef 1) #23
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !21
  call void @g_free(ptr noundef %i.hr) #23
  %i.hs = load ptr, ptr %i.f, align 8, !tbaa !21
  call void @g_free(ptr noundef %i.hs) #23
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !21
  call void @g_free(ptr noundef %i.ht) #23
  %.not170 = icmp eq ptr %5, null
  br i1 %.not170, label %bb.bu, label %.thread226

.thread226:                                       ; preds = %bb.bt
  store ptr %i.hm, ptr %i.j, align 8, !tbaa !73
  %i.hu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.hu, align 8, !tbaa !73
  %i.hv = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.96, i32 noundef 1218, ptr noundef nonnull @__FUNCTION__.dt_shortcut_tooltip_callback, ptr noundef nonnull %5, ptr noundef nonnull %i.j) #23 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bk
  %.1112 = phi ptr [ %5, %bb.bk ], [ %i.hm, %bb.bt ] ; 2 uses
  %.not171 = icmp eq ptr %.1112, null
  br i1 %.not171, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.thread226, %bb.bu
  %.1112229 = phi ptr [ %5, %.thread226 ], [ %.1112, %bb.bu ] ; 3 uses
  call void @gtk_widget_show_all(ptr noundef nonnull %.1112229) #23
  call void @gtk_tooltip_set_custom(ptr noundef %4, ptr noundef nonnull %.1112229) #23
  %i.hw = call i64 @g_signal_connect_data(ptr noundef nonnull %.1112229, ptr noundef nonnull @.str.97, ptr noundef nonnull @_tooltip_reposition, ptr noundef %.1114187206217, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  br label %bb.bw

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.critedge, %bb.h
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.bu ], [ 0, %bb.h ], [ 1, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bx

bb.bx:                                            ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.bw
  %.3 = phi i32 [ 0, %bb.b ], [ %.2, %bb.bw ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.3
}

declare ptr @gtk_widget_get_toplevel(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_window_is_active(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_window_get_window_type(ptr noundef) local_unnamed_addr #1

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #1

declare ptr @dt_bauhaus_widget_get_tooltip_markup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gtk_widget_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @gtk_widget_is_sensitive(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_tree_view_get_tooltip_context(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_tree_view_set_tooltip_row(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_tree_path_free(ptr noundef) local_unnamed_addr #1

declare void @gtk_tree_model_get(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @g_markup_printf_escaped(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @_action_find_definition(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !99     ; 2 uses
  %.not15 = icmp eq i32 %i.a, 11
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.g = add i32 %i.f, -15                        ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !104
  br label %switch.lookup

bb.g:                                             ; preds = %bb.e, %bb.d
  %switch.tableidx = add i32 %i.f, -3             ; 2 uses
  %i.p = icmp ult i32 %switch.tableidx, 10
  br i1 %i.p, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g, %bb.f
  %switch.tableidx.sink = phi i32 [ %i.g, %bb.f ], [ %switch.tableidx, %bb.g ]
  %switch.table._action_find_definition.sink = phi ptr [ %i.o, %bb.f ], [ @switch.table._action_find_definition, %bb.g ]
  %i.q = zext nneg i32 %switch.tableidx.sink to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr %switch.table._action_find_definition.sink, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.g, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ %switch.load, %switch.lookup ]
  ret ptr %.1
}

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_util_str_cat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #1

declare i32 @dt_dev_modulegroups_basics_module_toggle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @g_markup_escape_text(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dt_view_get_current() local_unnamed_addr #1

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #1

declare void @gtk_label_set_markup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_label_set_line_wrap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @gtk_label_set_max_width_chars(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #1

declare void @gtk_tooltip_set_custom(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_tooltip_reposition(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.c = tail call ptr @gtk_widget_get_toplevel(ptr noundef %0) #23
  %i.d = tail call ptr @gtk_widget_get_window(ptr noundef %i.c) #23 ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.e = tail call i32 @gdk_window_get_width(ptr noundef nonnull %i.d) #23
  %i.f = call i32 @gdk_window_get_origin(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = call ptr @gdk_window_get_display(ptr noundef nonnull %i.d) #23
  %i.h = call ptr @gdk_display_get_monitor_at_window(ptr noundef %i.g, ptr noundef nonnull %i.d) #23
  call void @gdk_monitor_get_workarea(ptr noundef %i.h, ptr noundef nonnull %3) #23
  %i.i = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.j = load i32, ptr %3, align 4, !tbaa !230    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !231
  %i.m = sub i32 %i.j, %i.e
  %i.n = add i32 %i.m, %i.l                       ; 2 uses
  %i.o = icmp sgt i32 %i.i, %i.n
  %i.p = call i32 @llvm.smax.i32(i32 %i.i, i32 %i.j)
  %i.q = select i1 %i.o, i32 %i.n, i32 %i.p       ; 2 uses
  %.not13 = icmp eq i32 %i.q, %i.i
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.b, align 4, !tbaa !12
  call void @gdk_window_move(ptr noundef nonnull %i.d, i32 noundef %i.q, i32 noundef %i.r) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @dt_shortcuts_prefs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 7 uses
  %1 = alloca %struct._GtkTreeIter, align 8       ; 6 uses
  %i.c = alloca [9 x ptr], align 8                ; 10 uses
  %i.d = alloca [1 x ptr], align 8                ; 2 uses
  %i.e = alloca [2 x ptr], align 8                ; 3 uses
  %i.f = alloca [3 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #23
  %i.g = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, i64 noundef 4096) #23 ; 0 uses
  %i.h = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.101, i64 noundef 4096) #23 ; 0 uses
  call fastcc void @_shortcuts_save(ptr noundef nonnull %i.a, i8 noundef zeroext -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i182 = icmp eq ptr %0, null               ; 2 uses
  br i1 %.not.i182, label %dt_action_widget.exit.thread, label %dt_action_widget.exit

dt_action_widget.exit.thread:                     ; preds = %bb.b, %bb.a
  store ptr null, ptr @_selected_action, align 8, !tbaa !145
  br label %.loopexit

dt_action_widget.exit:                            ; preds = %bb.a, %bb.b
  %.0183 = phi ptr [ %i.k, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.i = load i32, ptr @_action_quark, align 4, !tbaa !12
  %i.j = call ptr @g_object_get_qdata(ptr noundef nonnull %.0183, i32 noundef %i.i) #23 ; 2 uses
  store ptr %i.j, ptr @_selected_action, align 8, !tbaa !145
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %dt_action_widget.exit
  %i.k = call ptr @gtk_widget_get_parent(ptr noundef nonnull %.0183) #23 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %dt_action_widget.exit.thread, label %dt_action_widget.exit

.loopexit:                                        ; preds = %dt_action_widget.exit, %dt_action_widget.exit.thread
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 580
  store i32 -1, ptr %i.m, align 4, !tbaa !133
  %i.n = call ptr @gtk_paned_new(i32 noundef 1) #23 ; 6 uses
  %i.o = call ptr (i32, ...) @gtk_tree_store_new(i32 noundef 1, i64 noundef 68) #23 ; 4 uses
  %i.p = load ptr, ptr @_shortcuts_store, align 8, !tbaa !73 ; 3 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %g_set_weak_pointer.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %.not.i176 = icmp eq ptr %i.p, null
  br i1 %.not.i176, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @g_object_remove_weak_pointer(ptr noundef nonnull %i.p, ptr noundef nonnull @_shortcuts_store) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.o, ptr @_shortcuts_store, align 8, !tbaa !73
  %.not13.i = icmp eq ptr %i.o, null
  br i1 %.not13.i, label %g_set_weak_pointer.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @g_object_add_weak_pointer(ptr noundef nonnull %i.o, ptr noundef nonnull @_shortcuts_store) #23
  br label %g_set_weak_pointer.exit

g_set_weak_pointer.exit:                          ; preds = %.loopexit, %bb.e, %bb.f
  call fastcc void @_add_shortcuts_to_tree()
  %i.r = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  call void @gtk_tree_sortable_set_default_sort_func(ptr noundef %i.r, ptr noundef nonnull @_sort_speed_shortcuts, ptr noundef null, ptr noundef null) #23
  %i.s = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  call void @gtk_tree_sortable_set_sort_column_id(ptr noundef %i.s, i32 noundef -1, i32 noundef 0) #23
  %i.t = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  %i.u = call ptr @gtk_tree_model_filter_new(ptr noundef %i.t, ptr noundef null) #23 ; 10 uses
  %i.v = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  call void @g_object_unref(ptr noundef %i.v) #23
  call void @gtk_tree_model_filter_set_visible_func(ptr noundef %i.u, ptr noundef nonnull @_visible_shortcuts, ptr noundef null, ptr noundef null) #23
  %i.w = call ptr @gtk_tree_view_new_with_model(ptr noundef %i.u) #23 ; 23 uses
  call void @g_object_unref(ptr noundef %i.u) #23
  call void @gtk_tree_view_set_search_column(ptr noundef %i.w, i32 noundef 0) #23
  call void @gtk_tree_view_set_search_equal_func(ptr noundef %i.w, ptr noundef nonnull @_search_func, ptr noundef %i.w, ptr noundef null) #23
  %i.x = call ptr @gtk_search_entry_new() #23     ; 7 uses
  %i.y = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #23
  call void @gtk_entry_set_placeholder_text(ptr noundef %i.x, ptr noundef %i.y) #23
  %i.z = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.x, ptr noundef %i.z) #23
  %i.aa = call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.44, ptr noundef nonnull @dt_gui_search_stop, ptr noundef %i.w, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ab = call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.104, ptr noundef nonnull @dt_gui_search_stop, ptr noundef %i.w, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  call void @gtk_tree_view_set_search_entry(ptr noundef %i.w, ptr noundef %i.x) #23
  %i.ac = call ptr @gtk_tree_view_get_selection(ptr noundef %i.w) #23
  call void @gtk_tree_selection_set_select_function(ptr noundef %i.ac, ptr noundef nonnull @_shortcut_selection_function, ptr noundef null, ptr noundef null) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.w, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef null) #23
  call void @gtk_widget_set_name(ptr noundef %i.w, ptr noundef nonnull @.str.66) #23
  %i.ad = call i64 @g_signal_connect_data(ptr noundef %i.w, ptr noundef nonnull @.str.106, ptr noundef nonnull @_shortcut_row_activated, ptr noundef %i.u, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ae = call i64 @g_signal_connect_data(ptr noundef %i.w, ptr noundef nonnull @.str.107, ptr noundef nonnull @_view_key_pressed, ptr noundef %i.x, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.af = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  %i.ag = call i64 @g_signal_connect_data(ptr noundef %i.af, ptr noundef nonnull @.str.108, ptr noundef nonnull @_shortcut_row_inserted, ptr noundef %i.w, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ah = call ptr @gtk_cell_renderer_text_new() #23 ; 2 uses
  %i.ai = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef 5) #23
  %i.aj = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.ai, ptr noundef %i.ah, ptr noundef null) #23 ; 3 uses
  call void @gtk_tree_view_column_set_cell_data_func(ptr noundef %i.aj, ptr noundef %i.ah, ptr noundef nonnull @_fill_shortcut_fields, ptr noundef null, ptr noundef null) #23
  call void @gtk_tree_view_column_set_resizable(ptr noundef %i.aj, i32 noundef 1) #23
  %i.ak = call i32 @gtk_tree_view_append_column(ptr noundef %i.w, ptr noundef %i.aj) #23 ; 0 uses
  %i.al = call ptr @gtk_cell_renderer_text_new() #23 ; 2 uses
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.110, i32 noundef 5) #23
  %i.an = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.am, ptr noundef %i.al, ptr noundef null) #23 ; 3 uses
  call void @gtk_tree_view_column_set_cell_data_func(ptr noundef %i.an, ptr noundef %i.al, ptr noundef nonnull @_fill_shortcut_fields, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef null) #23
  call void @gtk_tree_view_column_set_resizable(ptr noundef %i.an, i32 noundef 1) #23
  %i.ao = call i32 @gtk_tree_view_append_column(ptr noundef %i.w, ptr noundef %i.an) #23 ; 0 uses
  %i.ap = call ptr @gtk_cell_renderer_combo_new() #23 ; 5 uses
  %i.aq = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 1, i64 noundef 64) #23
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ap, ptr noundef nonnull @.str.111, ptr noundef %i.aq, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef null) #23
  %i.ar = call i64 @g_signal_connect_data(ptr noundef %i.ap, ptr noundef nonnull @.str.114, ptr noundef nonnull @_element_editing_started, ptr noundef %i.u, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.as = call i64 @g_signal_connect_data(ptr noundef %i.ap, ptr noundef nonnull @.str.115, ptr noundef nonnull @_element_changed, ptr noundef %i.u, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.at = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.116, i32 noundef 5) #23
  %i.au = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.at, ptr noundef %i.ap, ptr noundef null) #23 ; 3 uses
  call void @gtk_tree_view_column_set_cell_data_func(ptr noundef %i.au, ptr noundef %i.ap, ptr noundef nonnull @_fill_shortcut_fields, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef null) #23
  call void @gtk_tree_view_column_set_resizable(ptr noundef %i.au, i32 noundef 1) #23
  %i.av = call i32 @gtk_tree_view_append_column(ptr noundef %i.w, ptr noundef %i.au) #23 ; 0 uses
end_hunk_0
begin_hunk_1_@_view_key_pressed:bb.a
.critedge:                                        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.p

.critedge29:                                      ; preds = %_shortcut_copy_lua.exit31, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge29, %_shortcut_copy_lua.exit, %bb.c, %bb.a
  %i.av = call i32 @dt_gui_search_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.o
  %.3 = phi i32 [ %i.av, %bb.o ], [ 1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal void @_shortcut_row_inserted(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @gtk_tree_view_get_model(ptr noundef %3) #23
  %i.b = tail call ptr @gtk_tree_model_filter_convert_child_path_to_path(ptr noundef %i.a, ptr noundef %1) #23 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @gtk_tree_view_expand_to_path(ptr noundef %3, ptr noundef nonnull %i.b) #23
  tail call void @gtk_tree_view_scroll_to_cell(ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 1, float noundef 5.000000e-01, float noundef 0.000000e+00) #23
  tail call void @gtk_tree_view_set_cursor(ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0) #23
  tail call void @gtk_tree_path_free(ptr noundef nonnull %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @gtk_cell_renderer_text_new() local_unnamed_addr #1

declare ptr @gtk_cell_renderer_combo_new() local_unnamed_addr #1

declare ptr @gtk_list_store_new(i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_element_editing_started(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct._GtkTreeIter, align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @gtk_tree_path_new_from_string(ptr noundef %2) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = call i32 @gtk_tree_model_get_iter(ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.b) #23 ; 0 uses
  call void @gtk_tree_path_free(ptr noundef %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !73
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef -1) #23
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.e = call ptr @g_sequence_get(ptr noundef %i.d) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.f = call ptr @gtk_combo_box_get_model(ptr noundef %1) #23 ; 2 uses
  call void @gtk_list_store_clear(ptr noundef %i.f) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.j = icmp ne i32 %i.i, 11                     ; 2 uses
  %i.k = zext i1 %i.j to i32
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc i64 %i.n to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i32 [ %i.o, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.q = add i32 %i.p, -15                        ; 3 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 584
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !103
  %i.x = icmp ult i32 %i.q, %i.w
  br i1 %i.x, label %_action_find_definition.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %i.p, label %.critedge [
    i32 4, label %_action_find_elements.exit
    i32 3, label %bb.f
    i32 12, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %_action_find_elements.exit

bb.g:                                             ; preds = %bb.e
  br label %_action_find_elements.exit

_action_find_definition.exit.i:                   ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.z = zext nneg i32 %i.q to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.critedge, label %_action_find_elements.exit

_action_find_elements.exit:                       ; preds = %bb.e, %bb.f, %bb.g, %_action_find_definition.exit.i
  %.1.i7.i = phi ptr [ %i.ab, %_action_find_definition.exit.i ], [ @dt_action_def_iop, %bb.e ], [ @dt_action_def_value, %bb.g ], [ @dt_action_def_lib, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i7.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108 ; 3 uses
  %.not18 = icmp eq ptr %i.ad, null
  br i1 %.not18, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_action_find_elements.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113 ; 2 uses
  %.not1626 = icmp eq ptr %i.ae, null
  br i1 %.not1626, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.e, %_action_find_definition.exit.i, %_action_find_elements.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !109
  call void @gtk_combo_box_set_active(ptr noundef %1, i32 noundef %i.ag) #23
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ah = phi ptr [ %i.al, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ]
  %.0141928 = phi i32 [ %i.ai, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.02027 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ad, %.lr.ph.preheader ]
  %i.ai = add nuw nsw i32 %.0141928, 1
  %.not17 = icmp eq i32 %.0141928, 0
  %.str.228. = select i1 %.not17, ptr @.str.228, ptr %i.ah
  %i.aj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.228., i32 noundef 5) #23
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.f, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef %i.aj, i32 noundef -1) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %.02027, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113 ; 2 uses
  %.not16 = icmp eq ptr %i.al, null
  br i1 %.not16, label %.critedge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @_element_changed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %4 = alloca %struct._GtkTreeIter, align 8       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = tail call ptr @gtk_tree_path_new_from_string(ptr noundef %1) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = call i32 @gtk_tree_model_get_iter(ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.d) #23 ; 0 uses
  call void @gtk_tree_path_free(ptr noundef %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !73
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef -1) #23
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.g = call ptr @g_sequence_get(ptr noundef %i.f) #23 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !158
  call void (ptr, ptr, ...) @g_object_get(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.c, ptr noundef null) #23
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !158
  %i.i = call ptr @gtk_tree_model_get_path(ptr noundef %i.h, ptr noundef %2) #23 ; 2 uses
  %i.j = call ptr @gtk_tree_path_get_indices(ptr noundef %i.i) #23
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  call void @gtk_tree_path_free(ptr noundef %i.i) #23
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95, !nonnull !238, !noundef !238 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %.not15.i.i = icmp eq i32 %i.n, 11
  br i1 %.not15.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = trunc i64 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi i32 [ %i.r, %bb.b ], [ %i.n, %bb.a ] ; 2 uses
  %i.t = add i32 %i.s, -15                        ; 3 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 584
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !103
  %i.aa = icmp ult i32 %i.t, %i.z
  br i1 %i.aa, label %_action_find_definition.exit.i, label %switch.lookup

switch.lookup:                                    ; preds = %bb.d, %bb.c
  %switch.tableidx = add nsw i32 %i.s, -3
  br label %_action_find_definition.exit.thread.i

_action_find_definition.exit.i:                   ; preds = %bb.d
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !104
  br label %_action_find_definition.exit.thread.i

_action_find_definition.exit.thread.i:            ; preds = %switch.lookup, %_action_find_definition.exit.i
  %switch.tableidx.sink = phi i32 [ %switch.tableidx, %switch.lookup ], [ %i.t, %_action_find_definition.exit.i ]
  %.1.i7.i.in = phi ptr [ @switch.table._element_changed, %switch.lookup ], [ %i.ab, %_action_find_definition.exit.i ]
  %5 = zext nneg i32 %switch.tableidx.sink to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr %.1.i7.i.in, i64 %5
  %.1.i7.i = load ptr, ptr %switch.gep, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i7.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !109
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115
  %i.ak = sext i32 %i.k to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !115
  %.not = icmp eq ptr %i.aj, %i.an
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_action_find_definition.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !92
  %.not.i.i14 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !93
  %.not3.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i.i, label %_shortcut_default_effect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.at = load i16, ptr %i.as, align 4
  %i.au = and i16 %i.at, 1536
  %.not4.i.i = icmp eq i16 %i.au, 0
  %.neg.i = sext i1 %.not4.i.i to i32
  br label %_shortcut_default_effect.exit

_shortcut_default_effect.exit:                    ; preds = %bb.f, %bb.g
  %.neg1.i = phi i32 [ 0, %bb.f ], [ %.neg.i, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 %.neg1.i, ptr %i.av, align 4, !tbaa !114
  br label %bb.h

bb.h:                                             ; preds = %_shortcut_default_effect.exit, %_action_find_definition.exit.thread.i
  store i32 %i.k, ptr %i.ae, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #23
  %i.aw = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, i64 noundef 4096) #23 ; 0 uses
  call fastcc void @_shortcuts_save(ptr noundef nonnull %i.a, i8 noundef zeroext -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_effect_editing_started(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct._GtkTreeIter, align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @gtk_tree_path_new_from_string(ptr noundef %2) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = call i32 @gtk_tree_model_get_iter(ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.b) #23 ; 0 uses
  call void @gtk_tree_path_free(ptr noundef %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !73
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef -1) #23
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.e = call ptr @g_sequence_get(ptr noundef %i.d) #23 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.f = call ptr @gtk_combo_box_get_model(ptr noundef %1) #23 ; 6 uses
  call void @gtk_list_store_clear(ptr noundef %i.f) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %.pre = load i32, ptr %i.h, align 8, !tbaa !99  ; 3 uses
  %.not15.i.i = icmp eq i32 %.pre, 11
  br i1 %.not15.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %i.l, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %i.n = add i32 %i.m, -15                        ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 584
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !103
  %i.u = icmp ult i32 %i.n, %i.t
  br i1 %i.u, label %_action_find_definition.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %i.m, label %_action_find_elements.exit [
    i32 4, label %_action_find_definition.exit.thread.i
    i32 3, label %bb.f
    i32 12, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %_action_find_definition.exit.thread.i

bb.g:                                             ; preds = %bb.e
  br label %_action_find_definition.exit.thread.i

_action_find_definition.exit.i:                   ; preds = %bb.d
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.w = zext nneg i32 %i.n to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_action_find_elements.exit, label %_action_find_definition.exit.thread.i

_action_find_definition.exit.thread.i:            ; preds = %_action_find_definition.exit.i, %bb.g, %bb.f, %bb.e
  %.1.i7.i = phi ptr [ %i.y, %_action_find_definition.exit.i ], [ @dt_action_def_iop, %bb.e ], [ @dt_action_def_value, %bb.g ], [ @dt_action_def_lib, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i7.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !108
  br label %_action_find_elements.exit

_action_find_elements.exit:                       ; preds = %bb.e, %_action_find_definition.exit.i, %_action_find_definition.exit.thread.i
  %.0.i = phi ptr [ %i.aa, %_action_find_definition.exit.thread.i ], [ null, %_action_find_definition.exit.i ], [ null, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !92
  %.not.i67 = icmp eq i8 %i.ac, 0
  br i1 %.not.i67, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_action_find_elements.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !93
  %.not3.i = icmp eq i32 %i.ae, 0
  br i1 %.not3.i, label %_shortcut_is_move.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %_action_find_elements.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = and i16 %i.ag, 1536
  %.not4.i.not = icmp eq i16 %i.ah, 0
  %i.ai = select i1 %.not4.i.not, i32 0, i32 3
  br label %_shortcut_is_move.exit

_shortcut_is_move.exit:                           ; preds = %bb.h, %bb.i
  %.not = phi i32 [ 3, %bb.h ], [ %i.ai, %bb.i ]
  %.not58 = icmp eq ptr %.0.i, null
  br i1 %.not58, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_shortcut_is_move.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !109
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %.0.i, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !115 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not5969 = icmp eq ptr %i.ap, null
  br i1 %.not5969, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.aq = icmp ne i32 %.pre, 11
  %i.ar = zext i1 %i.aq to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %i.as = phi ptr [ %i.bc, %bb.m ], [ %i.ap, %.lr.ph.preheader ]
  %.04772 = phi ptr [ %i.ba, %bb.m ], [ %i.ao, %.lr.ph.preheader ]
  %.04871 = phi i32 [ %i.bb, %bb.m ], [ %.not, %.lr.ph.preheader ] ; 2 uses
  %.04970 = phi i32 [ %i.at, %bb.m ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
  %i.at = add nuw nsw i32 %.04970, 1
  %.not66 = icmp eq i32 %.04970, 0
  br i1 %.not66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.au = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull %i.as, i64 noundef 0) #23
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.228, i32 noundef 5) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = phi ptr [ %i.au, %bb.k ], [ %i.av, %bb.l ]
  %i.ax = add nsw i32 %.04871, -1
  %i.ay = icmp ult i32 %i.ax, 2
  %i.az = select i1 %i.ay, i32 700, i32 400
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.f, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef %i.aw, i32 noundef 2, i32 noundef %i.az, i32 noundef -1) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %.04772, i64 8 ; 2 uses
  %i.bb = add nuw nsw i32 %.04871, 1
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.not59 = icmp eq ptr %i.bc, null
  br i1 %.not59, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.j
  %i.bd = call ptr @gtk_cell_layout_get_cells(ptr noundef %1) #23 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !175
end_hunk_1
