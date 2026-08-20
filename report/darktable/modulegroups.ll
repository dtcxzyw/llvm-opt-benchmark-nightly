inline.NumInlined: 106
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gui_init:bb.a
  %i.dd = and i32 %i.dc, 1048576
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, i32 noundef 3061, ptr noundef nonnull @__FUNCTION__.gui_init) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !178
  tail call void @dt_control_signal_connect(ptr noundef %i.de, i32 noundef 29, ptr noundef nonnull @_dt_dev_image_changed_callback, ptr noundef nonnull %0) #15
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !177
  %i.dg = and i32 %i.df, 2
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3392), align 8
  %i.dj = icmp ne i32 %i.di, 0
  %or.cond3 = select i1 %i.dh, i1 %i.dj, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !29
  %i.dl = and i32 %i.dk, 1048576
  %.not85 = icmp eq i32 %i.dl, 0
  br i1 %.not85, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166, i32 noundef 3062, ptr noundef nonnull @__FUNCTION__.gui_init) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !178
  tail call void @dt_control_signal_connect(ptr noundef %i.dm, i32 noundef 19, ptr noundef nonnull @_dt_dev_image_changed_callback, ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #6

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_event_box_new() local_unnamed_addr #4

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_scroll_group_buttons(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef %1, ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_buttons_get_from_pos.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 8, !tbaa !98   ; 3 uses
  %i.f = icmp eq i32 %i.e, 9999
  %i.g = load i32, ptr %i.a, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %_buttons_get_from_pos.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.e, 1
  %i.k = icmp sgt i32 %i.g, 0
  %or.cond3 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %_buttons_get_from_pos.exit

bb.f:                                             ; preds = %bb.d
  %i.m = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !79  ; 3 uses
  switch i32 %i.m, label %bb.i [
    i32 0, label %bb.g
    i32 9999, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br label %_buttons_get_from_pos.exit

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  br label %_buttons_get_from_pos.exit

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.r = add nsw i32 %i.m, -1
  %i.s = call ptr @g_list_nth_data(ptr noundef %i.q, i32 noundef %i.r) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_buttons_get_from_pos.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_buttons_get_from_pos.exit

_buttons_get_from_pos.exit:                       ; preds = %bb.j, %bb.h, %bb.g, %bb.e, %bb.c
  %.in = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.t, %bb.j ]
  %i.u = load ptr, ptr %.in, align 8, !tbaa !179  ; 2 uses
  %.not13 = icmp eq ptr %i.u, null
  br i1 %.not13, label %_buttons_get_from_pos.exit.thread, label %bb.k

bb.k:                                             ; preds = %_buttons_get_from_pos.exit
  call void @gtk_button_clicked(ptr noundef nonnull %i.u) #15
  br label %_buttons_get_from_pos.exit.thread

_buttons_get_from_pos.exit.thread:                ; preds = %bb.i, %_buttons_get_from_pos.exit, %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 1
}

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dtgtk_togglebutton_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dtgtk_cairo_paint_modulegroup_basics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_manage_direct_basic_popup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !180
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !185
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_manage_basics_add_popup(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @_lib_modulegroups_toggle(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = cmpxchg ptr %i.b, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = tail call i32 @gtk_widget_is_visible(ptr noundef %i.h) #15
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.l = tail call ptr @gtk_entry_get_text(ptr noundef %i.k) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = tail call i32 @g_list_length(ptr noundef %i.o) #15 ; 2 uses
  %.not3443 = icmp slt i32 %i.p, 0
  br i1 %.not3443, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_buttons_get_from_pos.exit, %bb.d
  %.031.lcssa = phi i32 [ 0, %bb.d ], [ %spec.select38, %_buttons_get_from_pos.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91   ; 2 uses
  %i.s = icmp eq ptr %0, %i.r
  %spec.select = select i1 %i.s, i32 9999, i32 %.031.lcssa ; 5 uses
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.r, i32 noundef 0) #15
  %i.t = load i32, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.u = icmp eq i32 %i.t, 9999
  br i1 %i.u, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %bb.d, %_buttons_get_from_pos.exit
  %.045 = phi i32 [ %i.af, %_buttons_get_from_pos.exit ], [ 0, %bb.d ] ; 4 uses
  %.03144 = phi i32 [ %spec.select38, %_buttons_get_from_pos.exit ], [ 0, %bb.d ]
  %.val39 = load ptr, ptr %i.e, align 8, !tbaa !79 ; 3 uses
  switch i32 %.045, label %bb.g [
    i32 0, label %bb.e
    i32 9999, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.val39, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  br label %_buttons_get_from_pos.exit

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.val39, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91
  br label %_buttons_get_from_pos.exit

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.val39, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = tail call ptr @g_list_nth_data(ptr noundef %i.aa, i32 noundef -1) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_buttons_get_from_pos.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  br label %_buttons_get_from_pos.exit

_buttons_get_from_pos.exit:                       ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.1.i = phi ptr [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.ad, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.ae = icmp eq ptr %.1.i, %0
  %spec.select38 = select i1 %i.ae, i32 %.045, i32 %.03144 ; 2 uses
  tail call void @gtk_toggle_button_set_active(ptr noundef %.1.i, i32 noundef 0) #15
  %i.af = add nuw i32 %.045, 1
  %exitcond.not = icmp eq i32 %.045, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  tail call void @dt_iop_request_focus(ptr noundef null) #15
  %.pre = load i32, ptr %i.f, align 8, !tbaa !98
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ag = phi i32 [ %.pre, %bb.i ], [ %i.t, %._crit_edge ]
  %i.ah = icmp eq i32 %i.ag, %spec.select
  %i.ai = icmp ne i32 %spec.select, 9999
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not35 = icmp eq ptr %i.m, null
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %i.m, align 1, !tbaa !77
  %.not36 = icmp eq i8 %i.aj, 0
  br i1 %.not36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 -1, ptr %i.f, align 8, !tbaa !98
  br label %bb.s

bb.n:                                             ; preds = %bb.l, %bb.j
  store i32 %spec.select, ptr %i.f, align 8, !tbaa !98
  %.val = load ptr, ptr %i.e, align 8, !tbaa !79  ; 3 uses
  switch i32 %spec.select, label %bb.q [
    i32 0, label %bb.o
    i32 9999, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !100
  br label %_buttons_get_from_pos.exit42

bb.p:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91
  br label %_buttons_get_from_pos.exit42

bb.q:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = add nsw i32 %spec.select, -1
  %i.ar = tail call ptr @g_list_nth_data(ptr noundef %i.ap, i32 noundef %i.aq) #15 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i41, label %_buttons_get_from_pos.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !99
  br label %_buttons_get_from_pos.exit42

_buttons_get_from_pos.exit42:                     ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.1.i40 = phi ptr [ %i.al, %bb.o ], [ %i.an, %bb.p ], [ %i.at, %bb.r ], [ null, %bb.q ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %.1.i40, i32 noundef 1) #15
  br label %bb.s

bb.s:                                             ; preds = %_buttons_get_from_pos.exit42, %bb.m
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.av = tail call i32 @gtk_widget_is_visible(ptr noundef %i.au) #15
  %.not37 = icmp eq i32 %i.av, 0
  br i1 %.not37, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !118
  tail call void @gtk_entry_set_text(ptr noundef %i.ax, ptr noundef nonnull @.str.226) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = atomicrmw sub ptr %i.az, i32 1 seq_cst, align 4 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  store ptr null, ptr %i.bb, align 8, !tbaa !88
  tail call fastcc void @_lib_modulegroups_update_iop_visibility(ptr noundef nonnull %1)
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret void
}

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dtgtk_cairo_paint_modulegroup_active(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_manage_direct_active_popup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !180
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !185
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.h = tail call ptr @gtk_menu_new() #15        ; 3 uses
  tail call void @gtk_widget_set_name(ptr noundef %i.h, ptr noundef nonnull @.str.202) #15
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.227, i32 noundef 5) #15
  %i.j = tail call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.i) #15 ; 5 uses
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.228, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.j, ptr noundef %i.k) #15
  tail call void @gtk_widget_set_name(ptr noundef %i.j, ptr noundef nonnull @.str.212) #15
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !186
  tail call void @gtk_check_menu_item_set_active(ptr noundef %i.j, i32 noundef %i.m) #15
  %i.n = tail call i64 @g_signal_connect_data(ptr noundef %i.j, ptr noundef nonnull @.str.147, ptr noundef nonnull @_manage_direct_full_active_toggled, ptr noundef %2, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  tail call void @gtk_menu_shell_append(ptr noundef %i.h, ptr noundef %i.j) #15
  tail call void @dt_gui_menu_popup(ptr noundef %i.h, ptr noundef %0, i32 noundef 8, i32 noundef 2) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dtgtk_cairo_paint_presets(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_presets_pressed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !187
  %i.c = tail call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.d = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !80
  %i.e = or i32 %i.d, %i.b
  %i.f = and i32 %i.e, %i.c
  %.not = icmp eq i32 %i.f, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @manage_presets(ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @gtk_search_entry_new() local_unnamed_addr #4

declare void @gtk_entry_set_placeholder_text(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_text_entry_changed_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_lib_modulegroups_update_iop_visibility(ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @dt_gui_search_stop(ptr noundef, ptr noundef) #4

declare ptr @dt_ui_center(ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_show(ptr noundef) #4

declare void @gtk_entry_set_width_chars(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_entry_set_max_width_chars(ptr noundef, i32 noundef) local_unnamed_addr #4
end_hunk_0
