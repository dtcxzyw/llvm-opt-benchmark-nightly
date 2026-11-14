Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/metadata?download=true
inline.NumInlined: 80
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_menuitem_preferences:bb.a
  br i1 %.not178, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1084, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef nonnull @.str.79) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.gc = call ptr @dt_database_get(ptr noundef %i.gb) #16
  %i.gd = call i32 @sqlite3_prepare_v2(ptr noundef %i.gc, ptr noundef nonnull @.str.79, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #16
  %.not179 = icmp eq i32 %i.gd, 0
  br i1 %.not179, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.gg = call ptr @dt_database_get(ptr noundef %i.gf) #16
  %i.gh = call ptr @sqlite3_errmsg(ptr noundef %i.gg) #16
  %i.gi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 1084, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef nonnull @.str.79, ptr noundef %i.gh) #17 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.gk = load i32, ptr %i.e, align 4, !tbaa !105
  %i.gl = call i32 @sqlite3_bind_int(ptr noundef %i.gj, i32 noundef 1, i32 noundef %i.gk) #16
  %.not180 = icmp eq i32 %i.gl, 0
  br i1 %.not180, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.go = call ptr @dt_database_get(ptr noundef %i.gn) #16
  %i.gp = call ptr @sqlite3_errmsg(ptr noundef %i.go) #16
  %i.gq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gm, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.4, i32 noundef 1085, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef %i.gp) #17 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.gt = call i32 @sqlite3_bind_text(ptr noundef %i.gr, i32 noundef 2, ptr noundef %i.gs, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #16
  %.not181 = icmp eq i32 %i.gt, 0
  br i1 %.not181, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.gw = call ptr @dt_database_get(ptr noundef %i.gv) #16
  %i.gx = call ptr @sqlite3_errmsg(ptr noundef %i.gw) #16
  %i.gy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.4, i32 noundef 1086, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef %i.gx) #17 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gz = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.ha = load i32, ptr %i.h, align 4, !tbaa !105
  %i.hb = call i32 @sqlite3_bind_int(ptr noundef %i.gz, i32 noundef 3, i32 noundef %i.ha) #16
  %.not182 = icmp eq i32 %i.hb, 0
  br i1 %.not182, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.he = call ptr @dt_database_get(ptr noundef %i.hd) #16
  %i.hf = call ptr @sqlite3_errmsg(ptr noundef %i.he) #16
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.4, i32 noundef 1087, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef %i.hf) #17 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.hi = load i32, ptr %i.i, align 4, !tbaa !105
  %i.hj = call i32 @sqlite3_bind_int(ptr noundef %i.hh, i32 noundef 4, i32 noundef %i.hi) #16
  %.not183 = icmp eq i32 %i.hj, 0
  br i1 %.not183, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.hm = call ptr @dt_database_get(ptr noundef %i.hl) #16
  %i.hn = call ptr @sqlite3_errmsg(ptr noundef %i.hm) #16
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.4, i32 noundef 1088, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef %i.hn) #17 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hp = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.hq = call i32 @sqlite3_bind_int(ptr noundef %i.hp, i32 noundef 5, i32 noundef %.0217) #16
  %.not184 = icmp eq i32 %i.hq, 0
  br i1 %.not184, label %g_strdup_inline.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !73
  %i.ht = call ptr @dt_database_get(ptr noundef %i.hs) #16
  %i.hu = call ptr @sqlite3_errmsg(ptr noundef %i.ht) #16
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.4, i32 noundef 1089, ptr noundef nonnull @__FUNCTION__._menuitem_preferences, ptr noundef %i.hu) #17 ; 0 uses
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.al, %bb.ak
  %i.hw = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.hx = call i32 @sqlite3_step(ptr noundef %i.hw) #16 ; 0 uses
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.hz = call i32 @sqlite3_finalize(ptr noundef %i.hy) #16 ; 0 uses
  %i.ia = load i32, ptr %i.e, align 4, !tbaa !105
  %i.ib = call ptr @dt_metadata_get_metadata_by_keyid(i32 noundef %i.ia) #16 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !104
  call void @g_free(ptr noundef %i.id) #16
  %i.ie = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.if = call noalias ptr @g_strdup(ptr noundef %i.ie) #16
  store ptr %i.if, ptr %i.ic, align 8, !tbaa !104
  %i.ig = load i32, ptr %i.h, align 4, !tbaa !105
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !88
  %i.ii = load i32, ptr %i.i, align 4, !tbaa !105
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  store i32 %i.ii, ptr %i.ij, align 8, !tbaa !114
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 36
  store i32 %.0217, ptr %i.ik, align 4, !tbaa !115
  br label %bb.am

bb.am:                                            ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit198
  %i.il = load ptr, ptr %i.f, align 8, !tbaa !106
  call void @g_free(ptr noundef %i.il) #16
  %i.im = load ptr, ptr %i.g, align 8, !tbaa !106
  call void @g_free(ptr noundef %i.im) #16
  %i.in = add i32 %.0217, 1
  %i.io = call i32 @gtk_tree_model_iter_next(ptr noundef %i.w, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.not175 = icmp eq i32 %i.io, 0
  br i1 %.not175, label %._crit_edge220, label %.lr.ph219

._crit_edge220:                                   ; preds = %bb.am, %bb.x
  call void (...) @dt_metadata_sort() #16
  %i.ip = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #16 ; 0 uses
  %i.iq = load i32, ptr %i.by, align 4, !tbaa !102
  %.not176 = icmp eq i32 %i.iq, 0
  br i1 %.not176, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge220
  call fastcc void @_fill_grid(ptr noundef %1)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge220
  %.val = load ptr, ptr %i.j, align 8, !tbaa !18
  call fastcc void @_update_layout(ptr %.val)
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !82
  %i.is = trunc i32 %i.ir to i1
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3360), align 8
  %i.iu = icmp ne i32 %i.it, 0
  %or.cond = select i1 %i.is, i1 %i.iu, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !72
  %i.iw = and i32 %i.iv, 1048576
  %.not177 = icmp eq i32 %i.iw, 0
  br i1 %.not177, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, i32 noundef 1114, ptr noundef nonnull @__FUNCTION__._menuitem_preferences) #16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !84
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ix, i32 noundef 11, i32 noundef 1) #16
  br label %.critedge188

.critedge188:                                     ; preds = %bb.m, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.as

bb.as:                                            ; preds = %.critedge188, %._crit_edge
  call void @gtk_widget_destroy(ptr noundef %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @gtk_menu_shell_append(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %i.b = alloca [3 x ptr], align 8                ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #20 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  %i.e = tail call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !28
  %i.f = tail call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr null, ptr %i.h, align 8, !tbaa !90
  %i.i = tail call ptr @gtk_grid_new() #16        ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !80
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %3 = load double, ptr %2, align 8, !tbaa !100
  %4 = fmul reassoc nsz arcp contract afn double %3, 0.000000e+00
  %5 = fptoui double %4 to i32
  tail call void @gtk_grid_set_row_spacing(ptr noundef %i.i, i32 noundef %5) #16
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1432
  %i.m = load double, ptr %i.l, align 8, !tbaa !100
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, 1.000000e+01
  %i.o = fptoui double %i.n to i32
  tail call void @gtk_grid_set_column_spacing(ptr noundef %i.i, i32 noundef %i.o) #16
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #16
  %i.q = tail call ptr @dt_action_button_new(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @_apply_button_clicked, ptr noundef %0, ptr noundef %i.p, i32 noundef 0, i32 noundef 0) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !107
  %i.s = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #16
  %i.t = tail call ptr @dt_action_button_new(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @_cancel_button_clicked, ptr noundef %0, ptr noundef %i.s, i32 noundef 0, i32 noundef 0) #16
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.t, ptr %i.u, align 8, !tbaa !108
  %i.v = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #16
  %i.w = load <2 x ptr>, ptr %i.r, align 8, !tbaa !116
  store <2 x ptr> %i.w, ptr %i.a, align 16, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.x, align 16, !tbaa !101
  %i.y = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.4, i32 noundef 1146, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.v, ptr noundef nonnull %i.a) #16
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !85
  %i.aa = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #16
  store ptr %i.i, ptr %i.b, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !85
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ad, align 8, !tbaa !101
  %i.ae = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.4, i32 noundef 1147, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.aa, ptr noundef nonnull %i.b) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !117
  call fastcc void @_fill_grid(ptr noundef %0)
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !82
  %i.ah = and i32 %i.ag, 2
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3316), align 4
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !72
  %i.am = and i32 %i.al, 1048576
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef 1151, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !84
  call void @dt_control_signal_connect(ptr noundef %i.an, i32 noundef 0, ptr noundef nonnull @_image_selection_changed_callback, ptr noundef nonnull %0) #16
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !82
  %i.ap = and i32 %i.ao, 2
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3348), align 4
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond3 = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !72
  %i.au = and i32 %i.at, 1048576
  %.not33 = icmp eq i32 %i.au, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, i32 noundef 1154, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !84
  call void @dt_control_signal_connect(ptr noundef %i.av, i32 noundef 8, ptr noundef nonnull @_image_selection_changed_callback, ptr noundef nonnull %0) #16
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !82
  %i.ax = and i32 %i.aw, 2
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3344), align 8
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond5 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !72
  %i.bc = and i32 %i.bb, 1048576
  %.not34 = icmp eq i32 %i.bc, 0
  br i1 %.not34, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, i32 noundef 1155, ptr noundef nonnull @__FUNCTION__.gui_init) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !84
  call void @dt_control_signal_connect(ptr noundef %i.bd, i32 noundef 7, ptr noundef nonnull @_collection_updated_callback, ptr noundef nonnull %0) #16
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !80
  call void @gtk_widget_show_all(ptr noundef %i.be) #16
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !80
  call void @gtk_widget_set_no_show_all(ptr noundef %i.bf, i32 noundef 1) #16
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  call fastcc void @_update_layout(ptr %.val)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_grid_new() local_unnamed_addr #4

declare void @gtk_grid_set_row_spacing(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_action_button_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_apply_button_clicked(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  tail call fastcc void @_write_metadata(ptr noundef %1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = tail call ptr @dt_ui_main_window(ptr noundef %i.b) #16
  tail call void @gtk_window_set_focus(ptr noundef %i.c, ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_cancel_button_clicked(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  tail call void @g_list_free(ptr noundef %i.d) #16
  store ptr null, ptr %i.c, align 8, !tbaa !24
  tail call void @dt_lib_gui_queue_update(ptr noundef %1) #16
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = tail call ptr @dt_ui_main_window(ptr noundef %i.f) #16
  tail call void @gtk_window_set_focus(ptr noundef %i.g, ptr noundef null) #16
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_fill_grid(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @g_hash_table_foreach(ptr noundef %i.g, ptr noundef nonnull @_free_list_entry, ptr noundef null) #16
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @g_hash_table_destroy(ptr noundef %i.h) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void @g_hash_table_destroy(ptr noundef %i.j) #16
  %i.k = tail call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #16
  store ptr %i.k, ptr %i.b, align 8, !tbaa !28
  %i.l = tail call ptr @g_hash_table_new(ptr noundef null, ptr noundef null) #16
  store ptr %i.l, ptr %i.i, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr null, ptr %i.m, align 8, !tbaa !90
  store i32 0, ptr %i.c, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80
  tail call void @gtk_widget_set_no_show_all(ptr noundef %i.o, i32 noundef 0) #16
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #16 ; 0 uses
  %i.q = tail call ptr (...) @dt_metadata_get_list() #16 ; 2 uses
  %.not32 = icmp eq ptr %i.q, null
  br i1 %.not32, label %._crit_edge37, label %.lr.ph36

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029.in31 = phi i32 [ %i.d, %.lr.ph ], [ %.029, %bb.b ] ; 2 uses
  %.029 = add nsw i32 %.029.in31, -1              ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !80
  tail call void @gtk_grid_remove_row(ptr noundef %i.r, i32 noundef %.029) #16
  %i.s = icmp samesign ugt i32 %.029.in31, 1
  br i1 %i.s, label %bb.b, label %._crit_edge

._crit_edge37:                                    ; preds = %bb.d, %._crit_edge
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #16 ; 0 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !80
  tail call void @gtk_widget_show_all(ptr noundef %i.u) #16
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !80
end_hunk_0
