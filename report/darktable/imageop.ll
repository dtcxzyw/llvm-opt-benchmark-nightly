Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageop?download=true
inline.NumInlined: 160
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dt_util_localize_segmented_name
declare ptr @dt_util_localize_segmented_name(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_entry_set_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

declare void @gtk_widget_hide(ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_rename_module_key_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !327
  %i.b = icmp eq i32 %i.a, 12
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !330
  switch i32 %i.d, label %bb.f [
    i32 65293, label %bb.c
    i32 65421, label %bb.c
    i32 65307, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  %i.e = tail call zeroext i16 @gtk_entry_get_text_length(ptr noundef %0) #24
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %dt_iop_update_multi_name.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @gtk_entry_get_text(ptr noundef %0) #24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 964 ; 2 uses
  %i.h = tail call ptr @dt_util_localize_segmented_name(ptr noundef nonnull %i.g, i32 noundef 0) #24 ; 3 uses
  %i.i = tail call i32 @g_strcmp0(ptr noundef %i.h, ptr noundef %i.f) #24
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.e, label %dt_iop_update_multi_name.exit

dt_iop_update_multi_name.exit:                    ; preds = %bb.d
  %i.j = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.165) #24 ; 0 uses
  %i.k = tail call noalias ptr @g_strdup(ptr noundef %i.f) #24
  %i.l = tail call ptr @g_strchug(ptr noundef %i.k) #24
  %i.m = tail call ptr @g_strchomp(ptr noundef %i.l) #24 ; 2 uses
  %i.n = tail call i64 @g_strlcpy(ptr noundef nonnull %i.g, ptr noundef %i.m, i64 noundef 128) #24 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1092
  store i32 1, ptr %i.o, align 4, !tbaa !188
  tail call void @dt_iop_gui_update_header(ptr noundef nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void @dt_dev_add_history_item(ptr noundef %i.q, ptr noundef nonnull %2, i32 noundef 1) #24
  tail call void @g_free(ptr noundef %i.m) #24
  br label %bb.e

dt_iop_update_multi_name.exit26:                  ; preds = %bb.c
  %i.r = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.165) #24 ; 0 uses
  %i.s = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #28 ; 2 uses
  store i8 0, ptr %i.s, align 1
  %i.t = tail call ptr @g_strchug(ptr noundef nonnull %i.s) #24
  %i.u = tail call ptr @g_strchomp(ptr noundef %i.t) #24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 964
  %i.w = tail call i64 @g_strlcpy(ptr noundef nonnull %i.v, ptr noundef %i.u, i64 noundef 128) #24 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1092
  store i32 0, ptr %i.x, align 4, !tbaa !188
  tail call void @dt_iop_gui_update_header(ptr noundef %2)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  tail call void @dt_dev_add_history_item(ptr noundef %i.z, ptr noundef %2, i32 noundef 0) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %dt_iop_update_multi_name.exit, %dt_iop_update_multi_name.exit26
  %.sink = phi ptr [ %i.u, %dt_iop_update_multi_name.exit26 ], [ %i.h, %dt_iop_update_multi_name.exit ], [ %i.h, %bb.d ]
  tail call void @g_free(ptr noundef %.sink) #24
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !249
  tail call void @dt_dev_write_history(ptr noundef %i.aa) #24
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !249
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1552
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !331
  tail call void @dt_image_synch_xmp(i32 noundef %i.ad) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 856
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !254
  tail call void @gtk_widget_show(ptr noundef %i.af) #24
  %i.ag = tail call i32 @g_signal_handlers_disconnect_matched(ptr noundef %0, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_rename_module_key_press, ptr noundef %2) #24 ; 0 uses
  tail call void @gtk_widget_destroy(ptr noundef %0) #24
  %i.ah = tail call i32 @dt_iop_show_hide_header_buttons(ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 0) ; 0 uses
  tail call void @dt_iop_gui_update_header(ptr noundef %2)
  tail call void @dt_masks_group_update_name(ptr noundef %2) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge
  %.021 = phi i32 [ 1, %.critedge ], [ 0, %bb.b ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal void @_rename_module_resize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct._GtkBorder, align 2         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = tail call ptr @gtk_entry_get_layout(ptr noundef %0) #24
  call void @pango_layout_get_pixel_size(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef null) #24
  %i.c = call ptr @gtk_widget_get_style_context(ptr noundef %0) #24
  %i.d = call i32 @gtk_widget_get_state_flags(ptr noundef %0) #24
  call void @gtk_style_context_get_padding(ptr noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %2) #24
  %i.e = load i32, ptr %i.a, align 4, !tbaa !104
  %i.f = load i16, ptr %2, align 2, !tbaa !332
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !333
  %i.j = sext i16 %i.i to i32
  %i.k = add i32 %i.e, 1
  %i.l = add i32 %i.k, %i.g
  %i.m = add i32 %i.l, %i.j
  call void @gtk_widget_set_size_request(ptr noundef %0, i32 noundef %i.m, i32 noundef -1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_header_enter_notify_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #15 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !334
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 580
  store i32 %i.b, ptr %i.d, align 4, !tbaa !335
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @dt_iop_show_hide_header_buttons(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 5 uses
  %i.c = tail call ptr @gtk_container_get_focus_child(ptr noundef %i.b) #24 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @gtk_entry_get_type() #26  ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  %.not85 = icmp eq ptr %i.e, null
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !325
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %.critedge107, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.c, i64 noundef %i.d) #27
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.critedge107

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not87 = icmp eq ptr %1, null
  br i1 %.not87, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !249
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2892
  %i.l = load i32, ptr %i.k, align 4, !tbaa !343
  %.not88 = icmp eq i32 %i.l, 0
  br i1 %.not88, label %bb.g, label %.critedge107

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !344
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %.critedge107, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !346
  %.not89 = icmp eq i32 %i.q, 0
  br i1 %.not89, label %bb.i, label %.critedge107

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.r = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.123) #24 ; 3 uses
  %i.s = tail call i32 @g_strcmp0(ptr noundef %i.r, ptr noundef nonnull @.str.124) #24
  %.not90 = icmp eq i32 %i.s, 0
  br i1 %.not90, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call i32 @g_strcmp0(ptr noundef %i.r, ptr noundef nonnull @.str.125) #24
  %.not91 = icmp eq i32 %i.t, 0
  br i1 %.not91, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not92 = icmp eq i32 %2, 0
  %spec.select = select i1 %.not92, double 3.000000e-01, double 1.000000e+00
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = tail call i32 @g_strcmp0(ptr noundef %i.r, ptr noundef nonnull @.str.126) #24
  %.not93 = icmp eq i32 %i.u, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.k
  %.not102 = phi i1 [ true, %bb.i ], [ %.not93, %bb.l ], [ true, %bb.k ] ; 3 uses
  %.1 = phi nsz double [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.l ], [ %spec.select, %bb.k ]
  %.072 = phi i32 [ 1, %bb.i ], [ %2, %bb.l ], [ 1, %bb.k ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.w = load i32, ptr %i.v, align 4, !tbaa !97
  %.not94 = icmp eq i32 %i.w, 0
  br i1 %.not94, label %bb.n, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.y = load i32, ptr %i.x, align 8, !tbaa !261
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.m
  %i.ab = phi i32 [ 1, %bb.m ], [ %i.aa, %bb.n ]
  %i.ac = tail call ptr @gtk_container_get_children(ptr noundef %i.b) #24 ; 2 uses
  %i.ad = tail call ptr @g_list_last(ptr noundef %i.ac) #24 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = tail call i64 @gtk_button_get_type() #26 ; 2 uses
  %i.af = icmp eq i32 %.072, 0
  %i.ag = icmp ne i32 %3, 0
  %or.cond = or i1 %i.ag, %i.af
  %spec.select112 = select i1 %or.cond, i32 0, i32 %i.ab
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %.not96131 = icmp eq ptr %i.ah, null
  br i1 %.not96131, label %.critedge114, label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph, %.critedge111
  %i.ai = phi ptr [ %i.as, %.critedge111 ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.075120132 = phi ptr [ %i.ar, %.critedge111 ], [ %i.ad, %.lr.ph ] ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !322 ; 2 uses
  %.not97 = icmp eq ptr %i.aj, null
  br i1 %.not97, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph133
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !325
  %i.al = icmp eq i64 %i.ak, %i.ae
  br i1 %i.al, label %.critedge111, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph133
  %i.am = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.ai, i64 noundef %i.ae) #27
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.critedge, label %.critedge111

.critedge111:                                     ; preds = %bb.o, %bb.p
  tail call void @gtk_widget_set_no_show_all(ptr noundef nonnull %i.ai, i32 noundef 1) #24
  %i.ao = load ptr, ptr %.075120132, align 8, !tbaa !42
  tail call void @gtk_widget_set_visible(ptr noundef %i.ao, i32 noundef %spec.select112) #24
  %i.ap = load ptr, ptr %.075120132, align 8, !tbaa !42
  tail call void @gtk_widget_set_opacity(ptr noundef %i.ap, double noundef %.1) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %.075120132, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !227, !nonnull !347, !noundef !347 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %.not96 = icmp eq ptr %i.as, null
  br i1 %.not96, label %.critedge114, label %.lr.ph133

.critedge:                                        ; preds = %bb.p
  %.pr = load ptr, ptr %.075120132, align 8, !tbaa !42 ; 5 uses
  %i.at = tail call i64 @gtk_drawing_area_get_type() #26 ; 2 uses
  %.not99 = icmp eq ptr %.pr, null
  br i1 %.not99, label %.critedge114, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !322 ; 2 uses
  %.not100 = icmp eq ptr %i.au, null
  br i1 %.not100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load i64, ptr %i.au, align 8, !tbaa !325
  %i.aw = icmp eq i64 %i.av, %i.at
  br i1 %i.aw, label %.critedge116, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ax = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %.pr, i64 noundef %i.at) #27
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.critedge114, label %.critedge116

.critedge116:                                     ; preds = %bb.r, %bb.s
  br i1 %.not102, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge116
  %i.az = or i32 %.072, %3
  %narrow = icmp eq i32 %i.az, 0
  %i.ba = zext i1 %narrow to i32
  tail call void @gtk_widget_set_visible(ptr noundef nonnull %.pr, i32 noundef %i.ba) #24
  br label %bb.w

bb.u:                                             ; preds = %.critedge116
  tail call void @gtk_widget_destroy(ptr noundef nonnull %.pr) #24
  br label %bb.w

.critedge114:                                     ; preds = %.critedge111, %.lr.ph, %.critedge, %bb.s
  br i1 %.not102, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge114
  %i.bb = tail call ptr @gtk_drawing_area_new() #24 ; 3 uses
  tail call void @gtk_box_pack_end(ptr noundef %i.b, ptr noundef %i.bb, i32 noundef 1, i32 noundef 1, i32 noundef 0) #24
  tail call void @gtk_widget_show(ptr noundef %i.bb) #24
  %i.bc = tail call i64 @g_signal_connect_data(ptr noundef %i.bb, ptr noundef nonnull @.str.127, ptr noundef nonnull @_header_size_callback, ptr noundef %i.b, ptr noundef null, i32 noundef 0) #24 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.critedge114, %bb.v, %bb.t, %bb.u
  tail call void @g_list_free(ptr noundef %i.ac) #24
  %i.bd = or i32 %.072, %3
  %i.be = icmp ne i32 %i.bd, 0
  %or.cond5 = or i1 %.not102, %i.be
  br i1 %or.cond5, label %.critedge107, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_header_size_callback(ptr poison, ptr noundef nonnull @__const.dt_iop_show_hide_header_buttons.fake_allocation, ptr noundef %i.b)
  br label %.critedge107

.critedge107:                                     ; preds = %bb.c, %bb.w, %bb.x, %bb.f, %bb.g, %bb.h, %bb.d
  ret i32 1
}

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @_get_multi_show(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2088 ; 3 uses
  %.050 = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %.not51 = icmp eq ptr %.050, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.d = load i32, ptr %i.c, align 4, !tbaa !316
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.e = icmp samesign ugt i32 %spec.select, 1
  %i.f = zext i1 %i.e to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2088
  %.01221.i = load ptr, ptr %i.i, align 8, !tbaa !40 ; 2 uses
  %.not22.i = icmp eq ptr %.01221.i, null
  br i1 %.not22.i, label %dt_iop_gui_get_previous_visible_module.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.d
  %.01224.i = phi ptr [ %.012.i, %bb.d ], [ %.01221.i, %._crit_edge ] ; 2 uses
  %.01323.i = phi ptr [ %.2.ph.i, %bb.d ], [ null, %._crit_edge ] ; 3 uses
  %i.j = load ptr, ptr %.01224.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i = icmp eq ptr %i.j, %0
  br i1 %.not18.i, label %dt_iop_gui_get_previous_visible_module.exit.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 872
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !225  ; 2 uses
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @gtk_widget_is_visible(ptr noundef nonnull %i.l) #24
  %.not17.i = icmp eq i32 %i.m, 0
  %spec.select.i = select i1 %.not17.i, ptr %.01323.i, ptr %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2.ph.i = phi ptr [ %spec.select.i, %bb.c ], [ %.01323.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01224.i, i64 8
  %.012.i = load ptr, ptr %i.n, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %.012.i, null
  br i1 %.not.i, label %dt_iop_gui_get_previous_visible_module.exit.loopexit, label %.lr.ph.i

dt_iop_gui_get_previous_visible_module.exit.loopexit: ; preds = %bb.d, %.lr.ph.i
  %.013.lcssa.i.ph = phi ptr [ %.01323.i, %.lr.ph.i ], [ %.2.ph.i, %bb.d ]
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2088
  %.pre55 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !226
  br label %dt_iop_gui_get_previous_visible_module.exit

dt_iop_gui_get_previous_visible_module.exit:      ; preds = %dt_iop_gui_get_previous_visible_module.exit.loopexit, %._crit_edge
  %i.o = phi ptr [ null, %._crit_edge ], [ %.pre55, %dt_iop_gui_get_previous_visible_module.exit.loopexit ]
  %.013.lcssa.i = phi ptr [ null, %._crit_edge ], [ %.013.lcssa.i.ph, %dt_iop_gui_get_previous_visible_module.exit.loopexit ] ; 3 uses
  %i.p = tail call ptr @g_list_last(ptr noundef %i.o) #24 ; 2 uses
  %.not21.i = icmp eq ptr %i.p, null
  br i1 %.not21.i, label %dt_iop_gui_get_next_visible_module.exit.thread, label %.lr.ph.i39

end_hunk_0
begin_hunk_1_@dt_iop_advertise_rastermask:bb.a
  %or.cond17 = or i1 %.not11, %.not12.not
  br i1 %or.cond17, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.str.94.sink = phi ptr [ @.str.94, %bb.d ], [ @.str.96, %bb.f ]
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %.str.94.sink, ptr noundef null, ptr noundef nonnull %0, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95) #24
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

declare ptr @dt_history_item_get_name(ptr noundef) local_unnamed_addr #2

declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @dt_iop_get_instance_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i32, ptr %i.a, align 16, !tbaa !45
  %narrow = tail call i32 @llvm.smin.i32(i32 %i.b, i32 7)
  %spec.select = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @__const.dt_iop_get_instance_id.ids, i64 %spec.select
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_iop_validate_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 12 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %i.d, label %bb.w [
    i32 17, label %.preheader
    i32 18, label %bb.c
    i32 15, label %bb.e
    i32 2, label %bb.m
    i32 10, label %._crit_edge238
    i32 11, label %._crit_edge235
    i32 9, label %._crit_edge232
    i32 6, label %._crit_edge229
    i32 5, label %._crit_edge
    i32 4, label %bb.q
    i32 16, label %bb.u
    i32 14, label %bb.v
    i32 1, label %.thread185
  ]

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  %.not218 = icmp eq i64 %i.f, 0
  br i1 %.not218, label %.thread185, label %.lr.ph216

.lr.ph216:                                        ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph216, %bb.b
  %indvars.iv225 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next226, %bb.b ] ; 2 uses
  %.0141214 = phi i32 [ 1, %.lr.ph216 ], [ %i.l, %bb.b ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv225
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !370
  %i.k = tail call i32 @_iop_validate_params(ptr noundef %i.j, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %i.l = and i32 %i.k, %.0141214                  ; 2 uses
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !tbaa !102
  %i.n = icmp ugt i64 %i.m, %indvars.iv.next226
  br i1 %i.n, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = icmp ne i32 %2, 0
  %i.s = and i64 %i.p, 4294967295
  %indvars.iv.next223282 = add nsw i64 %i.s, -1   ; 2 uses
  %indvars283 = trunc i64 %indvars.iv.next223282 to i32 ; 2 uses
  %i.t = icmp sgt i32 %indvars283, -1
  br i1 %i.t, label %.lr.ph287, label %.thread176

bb.d:                                             ; preds = %.lr.ph287
  %indvars.iv.next223 = add nsw i64 %indvars.iv.next223284, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next223 to i32 ; 2 uses
  %i.u = icmp sgt i32 %indvars, -1
  br i1 %i.u, label %.lr.ph287, label %.thread176

.lr.ph287:                                        ; preds = %bb.c, %bb.d
  %indvars285 = phi i32 [ %indvars, %bb.d ], [ %indvars283, %bb.c ]
  %indvars.iv.next223284 = phi i64 [ %indvars.iv.next223, %bb.d ], [ %indvars.iv.next223282, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.w = and i64 %indvars.iv.next223284, 2147483647
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.z = icmp eq i32 %indvars285, 0
  %i.aa = and i1 %i.r, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = tail call i32 @_iop_validate_params(ptr noundef %i.y, ptr noundef %1, i32 noundef %i.ab, ptr noundef %3)
  %.not166 = icmp eq i32 %i.ac, 0
  br i1 %.not166, label %bb.d, label %.thread185

bb.e:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !102
  %i.af = icmp eq i32 %i.ae, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102 ; 2 uses
  br i1 %i.af, label %bb.f, label %.preheader203

.preheader203:                                    ; preds = %bb.e
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %.thread185, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader203
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre243.a = load ptr, ptr %i.ai, align 8, !tbaa !102
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @memchr(ptr noundef %i.c, i32 noundef 0, i64 noundef %i.ah) #27
  %.not164 = icmp eq ptr %i.aj, null
  br i1 %.not164, label %bb.g, label %.thread185

bb.g:                                             ; preds = %bb.f
  %.not165 = icmp eq i32 %2, 0
  br i1 %.not165, label %.thread176.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.103, ptr noundef %3, ptr noundef %i.al) #24
  br label %.thread176.thread.sink.split

bb.i:                                             ; preds = %.lr.ph213, %bb.l
  %i.am = phi ptr [ %.pre243.a, %.lr.ph213 ], [ %i.at, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0135212 = phi i64 [ 0, %.lr.ph213 ], [ %i.aw, %bb.l ]
  %sext = shl i64 %.0135212, 32
  %i.an = ashr exact i64 %sext, 32                ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = tail call i32 @_iop_validate_params(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef %2, ptr noundef %3)
  %.not162 = icmp eq i32 %i.ap, 0
  br i1 %.not162, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not163 = icmp eq i32 %2, 0
  br i1 %.not163, label %.thread176.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !102
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.104, ptr noundef %3, ptr noundef %i.as, i32 noundef %i.aq) #24
  br label %.thread176.thread.sink.split

bb.l:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !102 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !102
  %i.aw = add i64 %i.av, %i.an
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !102
  %i.ay = icmp ugt i64 %i.ax, %indvars.iv.next
  br i1 %i.ay, label %bb.i, label %.thread185

bb.m:                                             ; preds = %bb.a
  %i.az = load float, ptr %i.c, align 4, !tbaa !103 ; 6 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.az) #30
  %or.cond = fcmp ueq float %i.ba, +inf
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre242 = load float, ptr %.phi.trans.insert241, align 8, !tbaa !102 ; 3 uses
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = fcmp reassoc nsz arcp contract afn ult float %i.az, %.pre242
  br i1 %i.bb, label %.thread174, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !102
  %i.be = fcmp reassoc nsz arcp contract afn ugt float %i.az, %i.bd
  br i1 %i.be, label %.thread174, label %.thread

.thread174:                                       ; preds = %bb.n, %bb.o
  %i.bf = fmul reassoc nsz arcp contract afn float %.pre242, f0x3F7FFF58
  %i.bg = fcmp reassoc nsz arcp contract afn ult float %i.az, %i.bf
  br i1 %i.bg, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread174
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !102
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 1.000010e+00
  %4 = fcmp reassoc nsz arcp contract afn ugt float %i.az, %i.bj
  br i1 %4, label %.thread, label %5

5:                                                ; preds = %bb.p
  br label %.thread

.thread:                                          ; preds = %bb.m, %.thread174, %bb.p, %5, %bb.o
  %.6 = phi i32 [ 1, %bb.o ], [ 1, %5 ], [ 0, %bb.p ], [ 0, %.thread174 ], [ 1, %bb.m ]
  %.1 = phi ptr [ @.str.70, %bb.o ], [ @.str.106, %5 ], [ @.str.70, %bb.p ], [ @.str.70, %.thread174 ], [ @.str.70, %bb.m ]
  %i.bk = fpext reassoc nsz arcp contract afn float %i.az to double
  %i.bl = fpext reassoc nsz arcp contract afn float %.pre242 to double
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !102
  %i.bo = fpext <2 x float> %i.bn to <2 x double> ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  %i.br = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.105, double noundef %i.bk, double noundef %i.bl, double noundef %i.bp, double noundef %i.bq, ptr noundef nonnull %.1) #24
  br label %.loopexit

._crit_edge238:                                   ; preds = %bb.a
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !104 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !102 ; 2 uses
  %.not158 = icmp sge i32 %i.bs, %i.bu
  %.phi.trans.insert239 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre240 = load i32, ptr %.phi.trans.insert239, align 4, !tbaa !102 ; 2 uses
  %i.bv = icmp sle i32 %i.bs, %.pre240
  %narrow275.a = and i1 %.not158, %i.bv
  %i.bw = zext i1 %narrow275.a to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !102
  %i.bz = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.107, i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef %.pre240, i32 noundef %i.by) #24
  br label %.loopexit

._crit_edge235:                                   ; preds = %bb.a
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !104 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !102 ; 2 uses
  %.not157 = icmp uge i32 %i.ca, %i.cc
  %.phi.trans.insert236 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre237 = load i32, ptr %.phi.trans.insert236, align 4, !tbaa !102 ; 2 uses
  %i.cd = icmp ule i32 %i.ca, %.pre237
  %narrow274.a = and i1 %.not157, %i.cd
  %i.ce = zext i1 %narrow274.a to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !102
  %i.ch = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.108, i32 noundef %i.ca, i32 noundef %i.cc, i32 noundef %.pre237, i32 noundef %i.cg) #24
  br label %.loopexit

._crit_edge232:                                   ; preds = %bb.a
  %i.ci = load i16, ptr %i.c, align 2, !tbaa !105 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load i16, ptr %i.cj, align 8, !tbaa !102 ; 2 uses
  %.not156 = icmp uge i16 %i.ci, %i.ck
  %.phi.trans.insert233 = getelementptr inbounds nuw i8, ptr %0, i64 66
  %.pre234 = load i16, ptr %.phi.trans.insert233, align 2, !tbaa !102 ; 2 uses
  %i.cl = icmp ule i16 %i.ci, %.pre234
  %narrow273.a = and i1 %.not156, %i.cl
  %i.cm = zext i1 %narrow273.a to i32
  %i.cn = zext i16 %i.ci to i32
  %i.co = zext i16 %i.ck to i32
  %i.cp = zext i16 %.pre234 to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !102
  %i.cs = zext i16 %i.cr to i32
  %i.ct = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.108, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cs) #24
  br label %.loopexit

._crit_edge229:                                   ; preds = %bb.a
  %i.cu = load i8, ptr %i.c, align 1, !tbaa !102
  %i.cv = zext i8 %i.cu to i32                    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !102
  %i.cy = sext i8 %i.cx to i32                    ; 2 uses
  %.not155 = icmp sge i32 %i.cv, %i.cy
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.pre231 = load i8, ptr %.phi.trans.insert230, align 1, !tbaa !102
  %.pre244 = sext i8 %.pre231 to i32              ; 2 uses
  %i.cz = icmp sle i32 %i.cv, %.pre244
  %narrow272 = and i1 %.not155, %i.cz
  %i.da = zext i1 %narrow272 to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !102
  %i.dd = sext i8 %i.dc to i32
  %i.de = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.108, i32 noundef %i.cv, i32 noundef %i.cy, i32 noundef %.pre244, i32 noundef %i.dd) #24
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.a
  %i.df = load i8, ptr %i.c, align 1, !tbaa !102  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !102 ; 2 uses
  %.not154 = icmp sge i8 %i.df, %i.dh
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !102 ; 2 uses
  %i.di = icmp sle i8 %i.df, %.pre
  %narrow = and i1 %.not154, %i.di
  %i.dj = zext i1 %narrow to i32
  %i.dk = sext i8 %i.df to i32
  %i.dl = sext i8 %i.dh to i32
  %i.dm = sext i8 %.pre to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !102
  %i.dp = sext i8 %i.do to i32
  %i.dq = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.109, i32 noundef %i.dk, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dp) #24
  br label %.loopexit

bb.q:                                             ; preds = %bb.a
  %i.dr = load float, ptr %i.c, align 4           ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load float, ptr %i.ds, align 8
  %i.du = fcmp reassoc nsz arcp contract afn ult float %i.dr, %i.dt
  br i1 %i.du, label %.thread176, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = load float, ptr %i.dv, align 8
  %i.dx = fcmp reassoc nsz arcp contract afn ugt float %i.dr, %i.dw
  br i1 %i.dx, label %.thread176, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dz = load float, ptr %i.dy, align 4          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = fcmp reassoc nsz arcp contract afn ult float %i.dz, %i.eb
  br i1 %i.ec, label %.thread176, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ee = load float, ptr %i.ed, align 4
  %i.ef = fcmp reassoc nsz arcp contract afn ole float %i.dz, %i.ee
  %i.eg = zext i1 %i.ef to i32
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !102 ; 3 uses
  %.not205 = icmp eq ptr %i.ei, null
  br i1 %.not205, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !371
  %.not153278 = icmp eq ptr %i.ej, null
  br i1 %.not153278, label %.critedge, label %.lr.ph280.preheader

.lr.ph280.preheader:                              ; preds = %.lr.ph.preheader
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !104
  br label %.lr.ph280

.lr.ph:                                           ; preds = %.lr.ph280
  %i.el = getelementptr inbounds nuw i8, ptr %.0206279, i64 24 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !371
  %.not153 = icmp eq ptr %i.em, null
  br i1 %.not153, label %.critedge, label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %.lr.ph
  %.0206279 = phi ptr [ %i.el, %.lr.ph ], [ %i.ei, %.lr.ph280.preheader ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0206279, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !373
  %i.ep = icmp eq i32 %i.eo, %i.ek
  br i1 %i.ep, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph280, %.lr.ph, %.lr.ph.preheader, %bb.u
  %.7 = phi i32 [ 0, %bb.u ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ], [ 1, %.lr.ph280 ]
  %i.eq = load i32, ptr %i.c, align 4, !tbaa !104
  %i.er = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.110, i32 noundef %i.eq) #24
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  %i.es = load i32, ptr %i.c, align 4, !tbaa !104
  %i.et = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.110, i32 noundef %i.es) #24
  br label %.thread185

bb.w:                                             ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !102
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !102
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.111, ptr noundef %3, ptr noundef %i.ev, ptr noundef %i.ex) #24
  br label %.thread176

.loopexit:                                        ; preds = %bb.b, %bb.t, %.critedge, %._crit_edge, %._crit_edge229, %._crit_edge232, %._crit_edge235, %._crit_edge238, %.thread
  %.8 = phi i32 [ %i.cm, %._crit_edge232 ], [ %i.dj, %._crit_edge ], [ %i.da, %._crit_edge229 ], [ %.7, %.critedge ], [ %i.ce, %._crit_edge235 ], [ %i.eg, %bb.t ], [ %.6, %.thread ], [ %i.bw, %._crit_edge238 ], [ %i.l, %bb.b ]
  %.0140 = phi ptr [ %i.ct, %._crit_edge232 ], [ %i.dq, %._crit_edge ], [ %i.de, %._crit_edge229 ], [ %i.er, %.critedge ], [ %i.ch, %._crit_edge235 ], [ null, %bb.t ], [ %i.br, %.thread ], [ %i.bz, %._crit_edge238 ], [ null, %bb.b ] ; 2 uses
  %.not167 = icmp eq i32 %.8, 0
  br i1 %.not167, label %.thread176, label %.thread185

.thread185:                                       ; preds = %bb.l, %.lr.ph287, %.preheader, %.preheader203, %bb.v, %bb.f, %bb.a, %.loopexit
  %.0140190 = phi ptr [ %.0140, %.loopexit ], [ %i.et, %bb.v ], [ null, %bb.a ], [ null, %bb.f ], [ null, %.preheader203 ], [ null, %.lr.ph287 ], [ null, %.preheader ], [ null, %bb.l ] ; 2 uses
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !49
  %i.ez = and i32 %i.ey, 16777216
  %.not171.not = icmp eq i32 %i.ez, 0
  br i1 %.not171.not, label %.thread176.thread, label %.thread176.thread.sink.split

.thread176:                                       ; preds = %bb.d, %bb.c, %bb.q, %bb.r, %bb.s, %bb.w, %.loopexit
  %.0140183.a = phi ptr [ %.0140, %.loopexit ], [ null, %bb.w ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.c ], [ null, %bb.d ] ; 2 uses
  %.not168 = icmp eq i32 %2, 0
  br i1 %.not168, label %.thread176.thread, label %.thread176.thread.sink.split

.thread176.thread.sink.split:                     ; preds = %.thread176, %bb.k, %bb.h, %.thread185
  %.0140183199.sink267 = phi ptr [ %.0140190, %.thread185 ], [ %.0140183.a, %.thread176 ], [ null, %bb.k ], [ null, %bb.h ] ; 3 uses
  %.str.114.sink = phi ptr [ @.str.112, %.thread185 ], [ @.str.114, %.thread176 ], [ @.str.114, %bb.k ], [ @.str.114, %bb.h ]
  %.8180.ph = phi i32 [ 1, %.thread185 ], [ 0, %.thread176 ], [ 0, %bb.k ], [ 0, %bb.h ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !102
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !102 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !102
  %.not169 = icmp eq i8 %i.fe, 0
end_hunk_1
