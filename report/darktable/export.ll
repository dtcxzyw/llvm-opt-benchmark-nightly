Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/export?download=true
inline.NumInlined: 87
inline.NumDeleted: 24
begin_hunk_0_@gui_init:bb.a
  %i.gi = load ptr, ptr %i.fc, align 8, !tbaa !22
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !116
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gj, align 8, !tbaa !116
  %i.gk = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.27, i32 noundef 1696, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.fd, ptr noundef nonnull %i.a) #16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !118
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.gn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #16
  %i.go = load ptr, ptr %i.gl, align 8, !tbaa !118
  call void @dt_gui_new_collapsible_section(ptr noundef nonnull %i.gm, ptr noundef nonnull @.str.85, ptr noundef %i.gn, ptr noundef %i.go, ptr noundef %0) #16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !119
  %i.gr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #16
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gq, ptr noundef %i.gr) #16
  %i.gs = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 2, i64 noundef 20, i64 noundef 64) #16 ; 2 uses
  %i.gt = call ptr @gtk_tree_view_new_with_model(ptr noundef %i.gs) #16 ; 6 uses
  call void @g_object_unref(ptr noundef %i.gs) #16
  call void @gtk_tree_view_set_headers_visible(ptr noundef %i.gt, i32 noundef 0) #16
  %i.gu = call ptr @gtk_tree_view_get_selection(ptr noundef %i.gt) #16
  call void @gtk_tree_selection_set_mode(ptr noundef %i.gu, i32 noundef 0) #16
  %i.gv = call ptr @gtk_tree_view_column_new() #16 ; 3 uses
  %i.gw = call i32 @gtk_tree_view_append_column(ptr noundef %i.gt, ptr noundef %i.gv) #16 ; 0 uses
  %i.gx = call ptr @gtk_cell_renderer_toggle_new() #16 ; 3 uses
  %i.gy = call i64 @g_signal_connect_data(ptr noundef %i.gx, ptr noundef nonnull @.str.88, ptr noundef nonnull @_batch_export_toggled_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  call void @gtk_tree_view_column_pack_start(ptr noundef %i.gv, ptr noundef %i.gx, i32 noundef 0) #16
  call void @gtk_tree_view_column_add_attribute(ptr noundef %i.gv, ptr noundef %i.gx, ptr noundef nonnull @.str.89, i32 noundef 0) #16
  %i.gz = call ptr @gtk_tree_view_column_new() #16 ; 3 uses
  %i.ha = call i32 @gtk_tree_view_append_column(ptr noundef %i.gt, ptr noundef %i.gz) #16 ; 0 uses
  %i.hb = call ptr @gtk_cell_renderer_text_new() #16 ; 2 uses
  call void @gtk_tree_view_column_pack_start(ptr noundef %i.gz, ptr noundef %i.hb, i32 noundef 1) #16
  call void @gtk_tree_view_column_add_attribute(ptr noundef %i.gz, ptr noundef %i.hb, ptr noundef nonnull @.str.90, i32 noundef 1) #16
  %i.hc = call ptr @dt_action_button_new(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef nonnull @_batch_export_button_clicked, ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0) #16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 736 ; 2 uses
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !120
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  store ptr %i.gt, ptr %i.he, align 8, !tbaa !121
  call fastcc void @_fill_batch_export_list(ptr noundef %0)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !122
  store ptr %i.gt, ptr %i.b, align 8, !tbaa !116
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !120
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !116
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.hj, align 8, !tbaa !116
  %i.hk = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.27, i32 noundef 1737, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.hg, ptr noundef nonnull %i.b) #16 ; 0 uses
  %i.hl = load ptr, ptr %i.bf, align 8, !tbaa !72
  call void @gtk_widget_add_events(ptr noundef %i.hl, i32 noundef 256) #16
  %i.hm = load ptr, ptr %i.bi, align 8, !tbaa !73
  call void @gtk_widget_add_events(ptr noundef %i.hm, i32 noundef 256) #16
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !79
  call void @gtk_widget_add_events(ptr noundef %i.hn, i32 noundef 256) #16
  %i.ho = load ptr, ptr %i.ay, align 8, !tbaa !80
  call void @gtk_widget_add_events(ptr noundef %i.ho, i32 noundef 256) #16
  %i.hp = load ptr, ptr %i.cw, align 8, !tbaa !75
  call void @gtk_widget_add_events(ptr noundef %i.hp, i32 noundef 256) #16
  %i.hq = load ptr, ptr %i.bf, align 8, !tbaa !72
  %i.hr = call i64 @g_signal_connect_data(ptr noundef %i.hq, ptr noundef nonnull @.str.92, ptr noundef nonnull @_widht_mdlclick, ptr noundef %i.c, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.hs = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.ht = call i64 @g_signal_connect_data(ptr noundef %i.hs, ptr noundef nonnull @.str.92, ptr noundef nonnull @_height_mdlclick, ptr noundef %i.c, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.hu = load ptr, ptr %i.av, align 8, !tbaa !79
  %i.hv = call i64 @g_signal_connect_data(ptr noundef %i.hu, ptr noundef nonnull @.str.92, ptr noundef nonnull @_widht_mdlclick, ptr noundef %i.c, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.hw = load ptr, ptr %i.ay, align 8, !tbaa !80
  %i.hx = call i64 @g_signal_connect_data(ptr noundef %i.hw, ptr noundef nonnull @.str.92, ptr noundef nonnull @_height_mdlclick, ptr noundef %i.c, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.hy = load ptr, ptr %i.cw, align 8, !tbaa !75
  %i.hz = call i64 @g_signal_connect_data(ptr noundef %i.hy, ptr noundef nonnull @.str.92, ptr noundef nonnull @_scale_mdlclick, ptr noundef %i.c, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.ia = load ptr, ptr %i.gl, align 8, !tbaa !118
  call void @gtk_widget_show_all(ptr noundef %i.ia) #16
  %i.ib = load ptr, ptr %i.gl, align 8, !tbaa !118
  call void @gtk_widget_set_no_show_all(ptr noundef %i.ib, i32 noundef 1) #16
  %i.ic = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.6) #16
  %i.id = load ptr, ptr %i.bf, align 8, !tbaa !72
  call void @gtk_entry_set_text(ptr noundef %i.id, ptr noundef %i.ic) #16
  %i.ie = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.7) #16
  %i.if = load ptr, ptr %i.bi, align 8, !tbaa !73
  call void @gtk_entry_set_text(ptr noundef %i.if, ptr noundef %i.ie) #16
  call void @_size_update_display(ptr noundef %i.c)
  %i.ig = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.4) #16
  %i.ih = call ptr @dt_imageio_get_storage_by_name(ptr noundef %i.ig) #16
  %i.ii = call i32 @dt_imageio_get_index_of_storage(ptr noundef %i.ih) #16
  %i.ij = load ptr, ptr %i.j, align 8, !tbaa !87
  call void @dt_bauhaus_combobox_set(ptr noundef %i.ij, i32 noundef %i.ii) #16
  %i.ik = load ptr, ptr %i.eh, align 8, !tbaa !92
  %i.il = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.16) #16
  %i.im = add nsw i32 %i.il, 1
  call void @dt_bauhaus_combobox_set(ptr noundef %i.ik, i32 noundef %i.im) #16
  %i.in = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.17) #16
  %.fr.a = freeze i32 %i.in                       ; 3 uses
  %i.io = call ptr @dt_conf_get_string(ptr noundef nonnull @.str.18) #16 ; 2 uses
  %i.ip = load ptr, ptr %i.dr, align 8, !tbaa !93
  call void @dt_bauhaus_combobox_set(ptr noundef %i.ip, i32 noundef 0) #16
  %.not294 = icmp eq i32 %.fr.a, -1
  br i1 %.not294, label %.loopexit, label %bb.k

.lr.ph324:                                        ; preds = %._crit_edge319, %bb.j
  %.0280322 = phi ptr [ %.0280, %bb.j ], [ %.0280320, %._crit_edge319 ] ; 2 uses
  %i.iq = load ptr, ptr %.0280322, align 8, !tbaa !96 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1044
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !98
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph324
  %i.iu = load ptr, ptr %i.dr, align 8, !tbaa !93
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 516
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.iu, ptr noundef nonnull %i.iv) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph324
  %i.iw = getelementptr inbounds nuw i8, ptr %.0280322, i64 8
  %.0280 = load ptr, ptr %i.iw, align 8, !tbaa !95 ; 2 uses
  %.not291 = icmp eq ptr %.0280, null
  br i1 %.not291, label %._crit_edge325, label %.lr.ph324

bb.k:                                             ; preds = %._crit_edge325
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !94
  %.0279326 = load ptr, ptr %i.ix, align 8, !tbaa !95 ; 3 uses
  %.not295327 = icmp eq ptr %.0279326, null
  br i1 %.not295327, label %.loopexit, label %.lr.ph330

.lr.ph330:                                        ; preds = %bb.k
  %.not296 = icmp eq i32 %.fr.a, 0
  br i1 %.not296, label %.lr.ph330.split.us, label %.lr.ph330.split

.lr.ph330.split.us:                               ; preds = %.lr.ph330, %bb.n
  %.0279328.us = phi ptr [ %.0279.us, %bb.n ], [ %.0279326, %.lr.ph330 ] ; 2 uses
  %i.iy = load ptr, ptr %.0279328.us, align 8, !tbaa !96 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1044
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !98 ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, -1
  br i1 %i.jb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph330.split.us
  %i.jc = load i32, ptr %i.iy, align 8, !tbaa !100
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.io, ptr noundef nonnull dereferenceable(1) %i.je) #17
  %.not297.us = icmp eq i32 %i.jf, 0
  br i1 %.not297.us, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph330.split.us
  %i.jg = getelementptr inbounds nuw i8, ptr %.0279328.us, i64 8
  %.0279.us = load ptr, ptr %i.jg, align 8, !tbaa !95 ; 2 uses
  %.not295.us = icmp eq ptr %.0279.us, null
  br i1 %.not295.us, label %.loopexit, label %.lr.ph330.split.us

.lr.ph330.split:                                  ; preds = %.lr.ph330, %bb.p
  %.0279328 = phi ptr [ %.0279, %bb.p ], [ %.0279326, %.lr.ph330 ] ; 2 uses
  %i.jh = load ptr, ptr %.0279328, align 8, !tbaa !96 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1044
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !98 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph330.split
  %i.jl = load i32, ptr %i.jh, align 8, !tbaa !100
  %i.jm = icmp eq i32 %.fr.a, %i.jl
  br i1 %i.jm, label %.critedge, label %bb.p

.critedge:                                        ; preds = %bb.o, %bb.m
  %.us-phi = phi i32 [ %i.ja, %bb.m ], [ %i.jj, %bb.o ]
  %i.jn = load ptr, ptr %i.dr, align 8, !tbaa !93
  %i.jo = add nuw nsw i32 %.us-phi, 1
  call void @dt_bauhaus_combobox_set(ptr noundef %i.jn, i32 noundef %i.jo) #16
  br label %.loopexit

bb.p:                                             ; preds = %bb.o, %.lr.ph330.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.0279328, i64 8
  %.0279 = load ptr, ptr %i.jp, align 8, !tbaa !95 ; 2 uses
  %.not295 = icmp eq ptr %.0279, null
  br i1 %.not295, label %.loopexit, label %.lr.ph330.split

.loopexit:                                        ; preds = %bb.p, %bb.n, %bb.k, %.critedge, %._crit_edge325
  call void @g_free(ptr noundef %i.io) #16
  %i.jq = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.80) #16 ; 5 uses
  %.not.i306 = icmp eq ptr %i.jq, null
  br i1 %.not.i306, label %_is_style_set.exit.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !103
  %.not4.i = icmp eq i8 %i.jr, 0
  br i1 %.not4.i, label %_is_style_set.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.js = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.124, i32 noundef 5) #16
  %i.jt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jq, ptr noundef nonnull dereferenceable(1) %i.js) #17
  %.not5.i = icmp eq i32 %i.jt, 0
  br i1 %.not5.i, label %_is_style_set.exit.thread, label %_is_style_set.exit

_is_style_set.exit.thread:                        ; preds = %bb.r, %bb.q, %.loopexit
  %i.ju = load ptr, ptr %i.ew, align 8, !tbaa !102
  call void @g_free(ptr noundef %i.ju) #16
  br label %g_strdup_inline.exit

_is_style_set.exit:                               ; preds = %bb.r
  %i.jv = call i32 @dt_styles_exists(ptr noundef nonnull %i.jq) #16
  %.fr309 = freeze i32 %i.jv                      ; 2 uses
  %i.jw = icmp ne i32 %.fr309, 0
  %i.jx = zext i1 %i.jw to i32
  %i.jy = load ptr, ptr %i.ew, align 8, !tbaa !102
  call void @g_free(ptr noundef %i.jy) #16
  %.not298 = icmp eq i32 %.fr309, 0
  %spec.select = select i1 %.not298, ptr @.str.19, ptr %i.jq
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %_is_style_set.exit, %_is_style_set.exit.thread
  %i.jz = phi i32 [ %i.jx, %_is_style_set.exit ], [ 0, %_is_style_set.exit.thread ]
  %i.ka = phi ptr [ %spec.select, %_is_style_set.exit ], [ @.str.19, %_is_style_set.exit.thread ]
  %i.kb = call noalias ptr @g_strdup(ptr noundef nonnull %i.ka) #16
  store ptr %i.kb, ptr %i.ew, align 8, !tbaa !102
  %i.kc = load ptr, ptr %i.em, align 8, !tbaa !101
  call void @gtk_widget_set_no_show_all(ptr noundef %i.kc, i32 noundef 1) #16
  %i.kd = load ptr, ptr %i.em, align 8, !tbaa !101
  call void @gtk_widget_set_visible(ptr noundef %i.kd, i32 noundef %i.jz) #16
  %i.ke = call ptr @dt_lib_export_metadata_get_conf() #16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 776
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !104
  %i.kg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !109
  %i.kh = and i32 %i.kg, 2
  %i.ki = icmp ne i32 %i.kh, 0
  %i.kj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3348), align 4
  %i.kk = icmp ne i32 %i.kj, 0
  %or.cond3 = select i1 %i.ki, i1 %i.kk, i1 false
  br i1 %or.cond3, label %bb.s, label %bb.u

bb.s:                                             ; preds = %g_strdup_inline.exit
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !112
  %i.km = and i32 %i.kl, 1048576
  %.not299 = icmp eq i32 %i.km, 0
  br i1 %.not299, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.27, i32 noundef 1813, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %g_strdup_inline.exit
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !113
  call void @dt_control_signal_connect(ptr noundef %i.kn, i32 noundef 8, ptr noundef nonnull @_image_selection_changed_callback, ptr noundef %0) #16
  %i.ko = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !109
  %i.kp = and i32 %i.ko, 2
  %i.kq = icmp ne i32 %i.kp, 0
  %i.kr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3316), align 4
  %i.ks = icmp ne i32 %i.kr, 0
  %or.cond5 = select i1 %i.kq, i1 %i.ks, i1 false
  br i1 %or.cond5, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.kt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !112
  %i.ku = and i32 %i.kt, 1048576
  %.not300 = icmp eq i32 %i.ku, 0
  br i1 %.not300, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.27, i32 noundef 1814, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !113
  call void @dt_control_signal_connect(ptr noundef %i.kv, i32 noundef 0, ptr noundef nonnull @_mouse_over_image_callback, ptr noundef %0) #16
  %i.kw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !109
  %i.kx = and i32 %i.kw, 2
  %i.ky = icmp ne i32 %i.kx, 0
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3344), align 8
  %i.la = icmp ne i32 %i.kz, 0
  %or.cond7 = select i1 %i.ky, i1 %i.la, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !112
  %i.lc = and i32 %i.lb, 1048576
  %.not301 = icmp eq i32 %i.lc, 0
  br i1 %.not301, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.27, i32 noundef 1815, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !113
  call void @dt_control_signal_connect(ptr noundef %i.ld, i32 noundef 7, ptr noundef nonnull @_collection_updated_callback, ptr noundef %0) #16
  %i.le = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !109
  %i.lf = and i32 %i.le, 2
  %i.lg = icmp ne i32 %i.lf, 0
  %i.lh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3500), align 4
  %i.li = icmp ne i32 %i.lh, 0
  %or.cond9 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond9, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !112
  %i.lk = and i32 %i.lj, 1048576
  %.not302 = icmp eq i32 %i.lk, 0
  br i1 %.not302, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.27, i32 noundef 1816, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !113
  call void @dt_control_signal_connect(ptr noundef %i.ll, i32 noundef 46, ptr noundef nonnull @_export_enable_callback, ptr noundef %0) #16
  %i.lm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !109
  %i.ln = and i32 %i.lm, 2
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3388), align 4
  %i.lq = icmp ne i32 %i.lp, 0
  %or.cond11 = select i1 %i.lo, i1 %i.lq, i1 false
  br i1 %or.cond11, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.lr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !112
  %i.ls = and i32 %i.lr, 1048576
  %.not303 = icmp eq i32 %i.ls, 0
  br i1 %.not303, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.27, i32 noundef 1817, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %i.lt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !113
  call void @dt_control_signal_connect(ptr noundef %i.lt, i32 noundef 18, ptr noundef nonnull @_export_presets_changed_callback, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare void @dt_action_insert_sorted(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_new_action(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_stack_new() local_unnamed_addr #3

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_combobox_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_on_storage_list_changed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = tail call ptr (...) @dt_imageio_get_storage() #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  tail call void @dt_bauhaus_combobox_clear(ptr noundef %i.e) #16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 744 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  tail call void @dt_gui_container_remove_children(ptr noundef %i.g) #16
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 184), align 8, !tbaa !108
  %.0.in17 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.018 = load ptr, ptr %.0.in17, align 8, !tbaa !95 ; 2 uses
  %.not19 = icmp eq ptr %.018, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.j = tail call i32 @dt_imageio_get_index_of_storage(ptr noundef %i.c) #16
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.i, i32 noundef %i.j) #16
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.020 = phi ptr [ %.0, %bb.c ], [ %.018, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.020, align 8, !tbaa !96  ; 3 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.o = tail call ptr %i.n(ptr noundef %i.k) #16
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.l, ptr noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
  %.not16 = icmp eq ptr %i.q, null
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !107
  tail call void @gtk_container_add(ptr noundef %i.r, ptr noundef nonnull %i.q) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !95  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @_storage_changed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.e = tail call ptr @dt_bauhaus_combobox_get_text(ptr noundef %i.d) #16 ; 2 uses
end_hunk_0
