Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageop?download=true
inline.NumInlined: 160
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_gui_set_single_expanded:bb.a
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.r, i32 noundef 4, ptr noundef %i.s) #24
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !184
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.u, i32 noundef 5, ptr noundef %i.v) #24
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.x, i32 noundef 6, ptr noundef %i.y) #24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !184
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.aa, i32 noundef 7, ptr noundef %i.ab) #24
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.ad, i32 noundef 8, ptr noundef %i.ae) #24
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !184
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.ag, i32 noundef 9, ptr noundef %i.ah) #24
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !184
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.aj, i32 noundef 10, ptr noundef %i.ak) #24
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !184
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.am, i32 noundef 11, ptr noundef %i.an) #24
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !184
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.ap, i32 noundef 12, ptr noundef %i.aq) #24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !184
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.as, i32 noundef 13, ptr noundef %i.at) #24
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !184
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.av, i32 noundef 14, ptr noundef %i.aw) #24
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !184
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @dt_ui_container_focus_widget(ptr noundef %i.ay, i32 noundef 15, ptr noundef %i.az) #24
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !196
  %i.be = icmp eq ptr %i.bd, %0
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @dt_iop_request_focus(ptr noundef null)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  tail call void @dt_control_queue_redraw_center() #24
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.bf) #24 ; 0 uses
  call void @dt_conf_set_bool(ptr noundef nonnull %i.a, i32 noundef %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare void @dtgtk_expander_set_expanded(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_container_get_children(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_button_get_type() local_unnamed_addr #11

declare void @gtk_widget_set_no_show_all(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_widget_set_opacity(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_drawing_area_get_type() local_unnamed_addr #11

declare ptr @gtk_drawing_area_new() local_unnamed_addr #2

declare void @gtk_box_pack_end(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_header_size_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct._GtkRequisition, align 4    ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = tail call ptr @dt_conf_get_string(ptr noundef nonnull @.str.123) #24 ; 7 uses
  %i.b = tail call ptr @gtk_container_get_children(ptr noundef %2) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  tail call void @gtk_widget_show(ptr noundef %i.c) #24
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @gtk_widget_get_preferred_size(ptr noundef %i.d, ptr noundef nonnull %3, ptr noundef null) #24
  %i.e = call ptr @g_list_last(ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not108 = icmp eq ptr %i.e, null
  br i1 %.not108, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = tail call i64 @gtk_button_get_type() #26 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge99
  %.076110 = phi i32 [ 0, %.lr.ph ], [ %i.m, %.critedge99 ] ; 3 uses
  %.077109 = phi ptr [ %i.e, %.lr.ph ], [ %i.o, %.critedge99 ] ; 2 uses
  %i.g = load ptr, ptr %.077109, align 8, !tbaa !42 ; 3 uses
  %.not83 = icmp eq ptr %i.g, null
  br i1 %.not83, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !229  ; 2 uses
  %.not84 = icmp eq ptr %i.h, null
  br i1 %.not84, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.h, align 8, !tbaa !231
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %.critedge99, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.g, i64 noundef %i.f) #27
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %.critedge99

.critedge99:                                      ; preds = %bb.d, %bb.e
  %i.m = add nuw nsw i32 %.076110, 1              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.077109, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.e, %.critedge99, %bb.b, %bb.a
  %.076.lcssa = phi i32 [ 0, %bb.a ], [ %.076110, %bb.b ], [ %i.m, %.critedge99 ], [ %.076110, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !398  ; 3 uses
  %i.r = icmp eq i32 %i.q, 1
  %i.s = zext i1 %i.r to i32                      ; 6 uses
  %i.t = add nsw i32 %i.q, -2
  %i.u = load i32, ptr %3, align 4, !tbaa !400    ; 2 uses
  %i.v = sdiv i32 %i.t, %i.u                      ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.q to double
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.u to double
  %i.z = fdiv reassoc nsz arcp contract afn double %i.x, %i.y
  %i.aa = select reassoc nsz arcp contract afn i1 %i.w, double 1.000000e+00, double %i.z ; 4 uses
  %i.ab = call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.229) #24
  %.not86 = icmp eq i32 %i.ab, 0
  br i1 %.not86, label %bb.n, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ac = icmp slt i32 %i.v, %.076.lcssa
  %spec.store.select = select i1 %i.ac, i32 0, i32 %i.v ; 3 uses
  %i.ad = call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.230) #24
  %.not87 = icmp eq i32 %i.ad, 0
  br i1 %.not87, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.231) #24
  %.not88 = icmp eq i32 %i.ae, 0
  br i1 %.not88, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @gtk_widget_get_allocation(ptr noundef %2, ptr noundef nonnull %4) #24
  %i.af = call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.232) #24
  %.not89 = icmp eq i32 %i.af, 0
  br i1 %.not89, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !398
  %i.ai = icmp slt i32 %i.ah, 250
  %spec.select = select i1 %i.ai, i32 1, i32 %i.s
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aj = call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.233) #24
  %.not90 = icmp eq i32 %i.aj, 0
  br i1 %.not90, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !398
  %i.am = add nsw i32 %i.al, -250
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.am to double
  %i.ao = fmul reassoc nnan nsz arcp contract afn double %i.an, 1.000000e-02 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.234, ptr noundef %i.a) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.k, %bb.l
  %.073 = phi i32 [ %spec.select, %bb.i ], [ %i.s, %bb.l ], [ %i.s, %bb.k ]
  %.068 = phi nsz double [ 1.000000e+00, %bb.i ], [ %i.aa, %bb.l ], [ %i.ao, %bb.k ]
  %.066 = phi nsz double [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.l ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.m, %.critedge
  %.174 = phi i32 [ %.073, %bb.m ], [ %i.s, %bb.f ], [ %i.s, %.critedge ], [ %i.s, %bb.g ]
  %.070 = phi i32 [ %spec.store.select, %bb.m ], [ %spec.store.select, %bb.f ], [ %i.v, %.critedge ], [ %spec.store.select, %bb.g ] ; 2 uses
  %.169 = phi nsz double [ %.068, %bb.m ], [ %i.aa, %bb.f ], [ %i.aa, %.critedge ], [ 1.000000e+00, %bb.g ]
  %.167 = phi nsz double [ %.066, %bb.m ], [ %i.aa, %bb.f ], [ 1.000000e+00, %.critedge ], [ 1.000000e+00, %bb.g ]
  %i.ap = call ptr @g_list_last(ptr noundef nonnull %i.b) #24 ; 3 uses
  %.not91115 = icmp eq ptr %i.ap, null
  br i1 %.not91115, label %.critedge2.thread, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.n
  %i.aq = tail call i64 @gtk_button_get_type() #26 ; 2 uses
  %.not96 = icmp eq i32 %.174, 0
  %i.ar = zext i1 %.not96 to i32
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %.not92141 = icmp eq ptr %i.as, null
  br i1 %.not92141, label %.critedge2, label %.lr.ph145

bb.o:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %.not92 = icmp eq ptr %i.at, null
  br i1 %.not92, label %.critedge2, label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph119, %bb.o
  %i.au = phi ptr [ %i.at, %bb.o ], [ %i.as, %.lr.ph119 ] ; 5 uses
  %.178116144 = phi ptr [ %i.be, %bb.o ], [ %i.ap, %.lr.ph119 ] ; 4 uses
  %.171117143 = phi i32 [ %.272, %bb.o ], [ %.070, %.lr.ph119 ] ; 4 uses
  %.065118142 = phi ptr [ %.178116144, %bb.o ], [ null, %.lr.ph119 ] ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229 ; 2 uses
  %.not93 = icmp eq ptr %i.av, null
  br i1 %.not93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph145
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !231
  %i.ax = icmp eq i64 %i.aw, %i.aq
  br i1 %i.ax, label %.critedge102, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph145
  %i.ay = call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.au, i64 noundef %i.aq) #27
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.critedge2, label %.critedge102

.critedge102:                                     ; preds = %bb.p, %bb.q
  %i.ba = call i32 @gtk_widget_get_visible(ptr noundef nonnull %i.au) #24
  %.not95 = icmp eq i32 %i.ba, 0
  br i1 %.not95, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.critedge102
  %i.bb = icmp eq i32 %.171117143, 0
  br i1 %i.bb, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = add nsw i32 %.171117143, -1
  br label %bb.t

bb.t:                                             ; preds = %.critedge102, %bb.s
  %.272 = phi i32 [ %.171117143, %.critedge102 ], [ %i.bc, %bb.s ] ; 3 uses
  call void @gtk_widget_set_visible(ptr noundef nonnull %i.au, i32 noundef %i.ar) #24
  call void @gtk_widget_set_opacity(ptr noundef nonnull %i.au, double noundef %.167) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %.178116144, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !165 ; 3 uses
  %.not91 = icmp eq ptr %i.be, null
  br i1 %.not91, label %.critedge2, label %bb.o

.critedge2:                                       ; preds = %bb.r, %bb.o, %bb.t, %bb.q, %.lr.ph119
  %.065.lcssa = phi ptr [ null, %.lr.ph119 ], [ %.065118142, %bb.r ], [ %.178116144, %bb.t ], [ %.065118142, %bb.q ], [ %.178116144, %bb.o ] ; 2 uses
  %.4 = phi i32 [ %.070, %.lr.ph119 ], [ 0, %bb.r ], [ %.272, %bb.t ], [ %.171117143, %bb.q ], [ %.272, %bb.o ]
  %i.bf = icmp ne ptr %.065.lcssa, null
  %i.bg = icmp eq i32 %.4, 0
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.u, label %.critedge2.thread

bb.u:                                             ; preds = %.critedge2
  %i.bh = load ptr, ptr %.065.lcssa, align 8, !tbaa !42
  call void @gtk_widget_set_opacity(ptr noundef %i.bh, double noundef %.169) #24
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.n, %bb.u, %.critedge2
  call void @g_list_free(ptr noundef nonnull %i.b) #24
  call void @g_free(ptr noundef %i.a) #24
  call void @dt_gui_widget_reallocate_now(ptr noundef %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

declare void @g_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_iop_add_remove_mask_indicator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._GValue, align 8            ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.128) #24
  %.not74 = icmp eq i32 %i.a, 0                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !257 ; 3 uses
  %.not55 = icmp eq ptr %i.c, null
  br i1 %.not55, label %bb.e, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !257 ; 2 uses
  %.not5570 = icmp eq ptr %i.e, null
  br i1 %.not5570, label %.thread72, label %.thread71

bb.c:                                             ; preds = %bb.b
  br i1 %.not74, label %.thread71, label %bb.d

.thread71:                                        ; preds = %.thread, %bb.c
  %i.f = phi ptr [ %i.b, %bb.c ], [ %i.d, %.thread ]
  %i.g = phi ptr [ %i.c, %bb.c ], [ %i.e, %.thread ]
  tail call void @gtk_widget_destroy(ptr noundef nonnull %i.g) #24
  store ptr null, ptr %i.f, align 16, !tbaa !257
  %i.h = tail call i32 @dt_iop_show_hide_header_buttons(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.thread72

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load i32, ptr %i.i, align 16, !tbaa !137
  tail call void @gtk_widget_set_sensitive(ptr noundef nonnull %i.c, i32 noundef %i.j) #24
  br label %.thread72

bb.e:                                             ; preds = %bb.b
  br i1 %.not74, label %.thread72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.k = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_showmask, i32 noundef 0, ptr noundef null) #24 ; 2 uses
  store ptr %i.k, ptr %i.b, align 16, !tbaa !257
  tail call void @dt_gui_add_class(ptr noundef %i.k, ptr noundef nonnull @.str.129) #24
  %i.l = load ptr, ptr %i.b, align 16, !tbaa !257
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %i.l, ptr noundef nonnull @.str.130, ptr noundef nonnull @_display_mask_indicator_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #24 ; 0 uses
  %i.n = load ptr, ptr %i.b, align 16, !tbaa !257
  %i.o = tail call i64 @g_signal_connect_data(ptr noundef %i.n, ptr noundef nonnull @.str.131, ptr noundef nonnull @_mask_indicator_tooltip, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #24 ; 0 uses
  %i.p = load ptr, ptr %i.b, align 16, !tbaa !257
  tail call void @gtk_widget_set_has_tooltip(ptr noundef %i.p, i32 noundef 1) #24
  %i.q = load ptr, ptr %i.b, align 16, !tbaa !257
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.s = load i32, ptr %i.r, align 16, !tbaa !137
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.q, i32 noundef %i.s) #24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !188
  %i.v = load ptr, ptr %i.b, align 16, !tbaa !257
  tail call void @gtk_box_pack_end(ptr noundef %i.u, ptr noundef %i.v, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !188
  %i.x = tail call ptr @gtk_container_get_children(ptr noundef %i.w) #24 ; 2 uses
  %i.y = tail call ptr @g_list_last(ptr noundef %i.x) #24 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = tail call i64 @gtk_button_get_type() #26 ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !42  ; 2 uses
  %.not5787 = icmp eq ptr %i.aa, null
  br i1 %.not5787, label %.critedge67, label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph, %.critedge65
  %i.ab = phi ptr [ %i.aj, %.critedge65 ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.0497788 = phi ptr [ %i.ai, %.critedge65 ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !229 ; 2 uses
  %.not58 = icmp eq ptr %i.ac, null
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph89
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !231
  %i.ae = icmp eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.critedge65, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph89
  %i.af = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.ab, i64 noundef %i.z) #27
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.critedge, label %.critedge65

.critedge65:                                      ; preds = %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.0497788, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !165, !nonnull !242, !noundef !242 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %.not57 = icmp eq ptr %i.aj, null
  br i1 %.not57, label %.critedge67, label %.lr.ph89

.critedge:                                        ; preds = %bb.g
  %.pr = load ptr, ptr %.0497788, align 8, !tbaa !42 ; 3 uses
  %i.ak = tail call i64 @gtk_drawing_area_get_type() #26 ; 2 uses
  %.not60 = icmp eq ptr %.pr, null
  br i1 %.not60, label %.critedge67, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !229 ; 2 uses
  %.not61 = icmp eq ptr %i.al, null
end_hunk_0
