Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/masks?download=true
inline.NumInlined: 96
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_tree_button_pressed:bb.a
  br i1 %i.bp, label %bb.ad, label %.thread391

bb.ac:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %.1207, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !101
  %i.bs = and i32 %i.br, 4
  %.not238 = icmp eq i32 %i.bs, 0
  br i1 %.not238, label %.thread270.thread, label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac
  %i.bt = phi i1 [ true, %.thread ], [ %i.bo, %bb.ac ] ; 5 uses
  %.2208340 = phi ptr [ null, %.thread ], [ %.1207, %bb.ac ] ; 3 uses
  %.0209338 = phi i32 [ 0, %.thread ], [ %i.ak, %bb.ac ] ; 5 uses
  %.5215334 = phi i32 [ 0, %.thread ], [ %.4214, %bb.ac ] ; 5 uses
  %.1217330 = phi i32 [ 1, %.thread ], [ %.0216, %bb.ac ] ; 5 uses
  %.2220326 = phi i32 [ 1, %.thread ], [ %.1219, %bb.ac ] ; 5 uses
  %i.bu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #11
  %i.bv = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.bu) #11 ; 2 uses
  %i.bw = call i64 @g_signal_connect_data(ptr noundef %i.bv, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_add_shape, ptr noundef nonnull inttoptr (i64 64 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.bv) #11
  %i.bx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #11
  %i.by = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.bx) #11 ; 2 uses
  %i.bz = call i64 @g_signal_connect_data(ptr noundef %i.by, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_add_shape, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.by) #11
  %i.ca = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #11
  %i.cb = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.ca) #11 ; 2 uses
  %i.cc = call i64 @g_signal_connect_data(ptr noundef %i.cb, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_add_shape, ptr noundef nonnull inttoptr (i64 32 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.cb) #11
  %i.cd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #11
  %i.ce = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.cd) #11 ; 2 uses
  %i.cf = call i64 @g_signal_connect_data(ptr noundef %i.ce, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_add_shape, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.ce) #11
  %i.cg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #11
  %i.ch = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.cg) #11 ; 2 uses
  %i.ci = call i64 @g_signal_connect_data(ptr noundef %i.ch, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_add_shape, ptr noundef nonnull inttoptr (i64 16 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.ch) #11
  %.not239 = icmp eq ptr %.2208340, null
  br i1 %.not239, label %.thread270.thread, label %.thread270

.thread270:                                       ; preds = %bb.ad
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.2208340, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !101
  %.pre309 = and i32 %.pre, 4
  %i.cj = icmp eq i32 %.pre309, 0
  br i1 %i.cj, label %.thread270.thread, label %bb.ae

bb.ae:                                            ; preds = %.thread270
  %i.ck = call ptr @gtk_menu_new() #11            ; 2 uses
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2152
  %.0199301 = load ptr, ptr %i.cm, align 8, !tbaa !98 ; 2 uses
  %.not241302 = icmp eq ptr %.0199301, null
  br i1 %.not241302, label %.thread270.thread, label %.lr.ph306

._crit_edge307:                                   ; preds = %bb.aq
  %i.cn = icmp eq i32 %.2202, 0
  br i1 %i.cn, label %.thread270.thread, label %bb.ar

.lr.ph306:                                        ; preds = %bb.ae, %bb.aq
  %.0199304 = phi ptr [ %.0199, %bb.aq ], [ %.0199301, %bb.ae ] ; 2 uses
  %.0200303 = phi i32 [ %.2202, %bb.aq ], [ 0, %bb.ae ] ; 3 uses
  %i.co = load ptr, ptr %.0199304, align 8, !tbaa !51 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !101
  %i.cr = and i32 %i.cq, 136
  %.not248 = icmp eq i32 %i.cr, 0
  br i1 %.not248, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %.lr.ph306
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 160 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !104
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !19
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10000) %i.f, i8 0, i64 10000, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cx = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cw, i64 noundef 10000) #11 ; 0 uses
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2088
  %.0197295 = load ptr, ptr %i.cz, align 8, !tbaa !98 ; 2 uses
  %.not249296 = icmp eq ptr %.0197295, null
  br i1 %.not249296, label %.thread359, label %.lr.ph299

._crit_edge:                                      ; preds = %.loopexit
  %.not250 = icmp eq i32 %.5, -1
  br i1 %.not250, label %bb.ap, label %bb.an

.lr.ph299:                                        ; preds = %bb.ag, %.loopexit
  %.0197298 = phi ptr [ %.0197, %.loopexit ], [ %.0197295, %bb.ag ] ; 2 uses
  %.0198297 = phi i32 [ %.5, %.loopexit ], [ 0, %bb.ag ] ; 4 uses
  %i.da = load ptr, ptr %.0197298, align 8, !tbaa !51 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 664
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !219
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 768
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !107
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !109
  %i.dh = call ptr @dt_masks_get_from_id(ptr noundef %i.dc, i32 noundef %i.dg) #11 ; 3 uses
  %.not251 = icmp eq ptr %i.dh, null
  br i1 %.not251, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph299
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !101
  %i.dk = and i32 %i.dj, 4
  %.not252 = icmp eq i32 %i.dk, 0
  br i1 %.not252, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %.0196287 = load ptr, ptr %i.dh, align 8, !tbaa !98 ; 2 uses
  %.not253288 = icmp eq ptr %.0196287, null
  br i1 %.not253288, label %.loopexit, label %.lr.ph291

.lr.ph291:                                        ; preds = %.preheader, %bb.am
  %.0196290 = phi ptr [ %.0196, %bb.am ], [ %.0196287, %.preheader ] ; 2 uses
  %.1289 = phi i32 [ %.3.ph, %bb.am ], [ %.0198297, %.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %.0196290, align 8, !tbaa !51
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !111
  %i.dn = load i32, ptr %i.cs, align 8, !tbaa !104
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %.lr.ph291
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.dq = icmp eq ptr %i.da, %i.dp
  br i1 %i.dq, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = icmp eq i32 %.1289, 0
  br i1 %i.dr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ds = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.45, i64 noundef 10000) #11 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dt = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.43, i64 noundef 10000) #11 ; 0 uses
  %i.du = call ptr @dt_history_item_get_name(ptr noundef %i.da) #11 ; 2 uses
  %i.dv = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef %i.du, i64 noundef 10000) #11 ; 0 uses
  call void @g_free(ptr noundef %i.du) #11
  %i.dw = add nsw i32 %.1289, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph291
  %.3.ph = phi i32 [ %.1289, %.lr.ph291 ], [ %i.dw, %bb.al ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0196290, i64 8
  %.0196 = load ptr, ptr %i.dx, align 8, !tbaa !98 ; 2 uses
  %.not253 = icmp eq ptr %.0196, null
  br i1 %.not253, label %.loopexit, label %.lr.ph291

.loopexit:                                        ; preds = %bb.am, %bb.ai, %.preheader, %bb.ah, %.lr.ph299
  %.5 = phi i32 [ %.0198297, %.lr.ph299 ], [ %.0198297, %bb.ah ], [ %.0198297, %.preheader ], [ %.3.ph, %bb.am ], [ -1, %bb.ai ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0197298, i64 8
  %.0197 = load ptr, ptr %i.dy, align 8, !tbaa !98 ; 2 uses
  %.not249 = icmp eq ptr %.0197, null
  br i1 %.not249, label %._crit_edge, label %.lr.ph299

bb.an:                                            ; preds = %._crit_edge
  %i.dz = icmp sgt i32 %.5, 0
  br i1 %i.dz, label %bb.ao, label %.thread359

bb.ao:                                            ; preds = %bb.an
  %i.ea = call i64 @g_strlcat(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.46, i64 noundef 10000) #11 ; 0 uses
  br label %.thread359

.thread359:                                       ; preds = %bb.ag, %bb.ao, %bb.an
  %i.eb = call ptr @gtk_menu_item_new_with_label(ptr noundef nonnull %i.f) #11 ; 4 uses
  %i.ec = load i32, ptr %i.cs, align 8, !tbaa !104
  %i.ed = sext i32 %i.ec to i64
  %i.ee = inttoptr i64 %i.ed to ptr
  call void @g_object_set_data(ptr noundef %i.eb, ptr noundef nonnull @.str.47, ptr noundef %i.ee) #11
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !22
  call void @g_object_set_data(ptr noundef %i.eb, ptr noundef nonnull @.str.48, ptr noundef %i.ef) #11
  %i.eg = call i64 @g_signal_connect_data(ptr noundef %i.eb, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_add_exist, ptr noundef nonnull %.2208340, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.ck, ptr noundef %i.eb) #11
  br label %bb.ap

bb.ap:                                            ; preds = %.thread359, %._crit_edge
  %.1201 = phi i32 [ 1, %.thread359 ], [ %.0200303, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph306, %bb.af, %bb.ap
  %.2202 = phi i32 [ %.1201, %bb.ap ], [ %.0200303, %bb.af ], [ %.0200303, %.lr.ph306 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0199304, i64 8
  %.0199 = load ptr, ptr %i.eh, align 8, !tbaa !98 ; 2 uses
  %.not241 = icmp eq ptr %.0199, null
  br i1 %.not241, label %._crit_edge307, label %.lr.ph306

bb.ar:                                            ; preds = %._crit_edge307
  %i.ei = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #11
  %i.ej = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.ei) #11 ; 2 uses
  call void @gtk_menu_item_set_submenu(ptr noundef %i.ej, ptr noundef %i.ck) #11
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.ej) #11
  br label %.thread270.thread

.thread270.thread:                                ; preds = %bb.ae, %bb.ac, %bb.ab, %._crit_edge307, %bb.ar, %.thread270, %bb.ad
  %i.ek = phi i1 [ %i.bo, %bb.ab ], [ %i.bt, %._crit_edge307 ], [ %i.bt, %bb.ar ], [ %i.bt, %.thread270 ], [ %i.bt, %bb.ad ], [ %i.bo, %bb.ac ], [ %i.bt, %bb.ae ] ; 3 uses
  %.0209336 = phi i32 [ %i.ak, %bb.ab ], [ %.0209338, %._crit_edge307 ], [ %.0209338, %bb.ar ], [ %.0209338, %.thread270 ], [ %.0209338, %bb.ad ], [ %i.ak, %bb.ac ], [ %.0209338, %bb.ae ] ; 2 uses
  %.5215332 = phi i32 [ %.4214, %bb.ab ], [ %.5215334, %._crit_edge307 ], [ %.5215334, %bb.ar ], [ %.5215334, %.thread270 ], [ %.5215334, %bb.ad ], [ %.4214, %bb.ac ], [ %.5215334, %bb.ae ] ; 6 uses
  %.1217328 = phi i32 [ %.0216, %bb.ab ], [ %.1217330, %._crit_edge307 ], [ %.1217330, %bb.ar ], [ %.1217330, %.thread270 ], [ %.1217330, %bb.ad ], [ %.0216, %bb.ac ], [ %.1217330, %bb.ae ] ; 6 uses
  %.2220324 = phi i32 [ %.1219, %bb.ab ], [ %.2220326, %._crit_edge307 ], [ %.2220326, %bb.ar ], [ %.2220326, %.thread270 ], [ %.2220326, %bb.ad ], [ %.1219, %bb.ac ], [ %.2220326, %bb.ae ]
  %or.cond = and i1 %i.ah, %i.ek
  br i1 %or.cond, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %.thread270.thread
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  %i.em = load i32, ptr %i.c, align 4, !tbaa !19
  %i.en = call ptr @dt_masks_get_from_id(ptr noundef %i.el, i32 noundef %i.em) #11 ; 2 uses
  %.not243 = icmp eq ptr %i.en, null
  br i1 %.not243, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !101
  %i.eq = and i32 %i.ep, 4
  %.not244 = icmp eq i32 %i.eq, 0
  br i1 %.not244, label %bb.au, label %.sink.split

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.er = icmp eq i32 %i.ag, 1
  br i1 %i.er, label %bb.av, label %.sink.split

bb.av:                                            ; preds = %bb.au
  %i.es = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #11
  %i.et = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.es) #11 ; 2 uses
  %i.eu = call i64 @g_signal_connect_data(ptr noundef %i.et, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_duplicate_shape, ptr noundef %2, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.et) #11
  br label %.sink.split

bb.aw:                                            ; preds = %.thread270.thread
  %i.ev = icmp slt i32 %.0209336, 3
  %or.cond3 = and i1 %i.ah, %i.ev
  br i1 %or.cond3, label %.sink.split, label %bb.ax

.sink.split:                                      ; preds = %bb.aw, %bb.at, %bb.au, %bb.av
  %.str.51.sink = phi ptr [ @.str.52, %bb.at ], [ @.str.51, %bb.au ], [ @.str.51, %bb.av ], [ @.str.53, %bb.aw ]
  %.ph = phi i1 [ true, %bb.at ], [ true, %bb.au ], [ true, %bb.av ], [ %i.ek, %bb.aw ]
  %i.ew = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.51.sink, i32 noundef 5) #11
  %i.ex = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.ew) #11 ; 2 uses
  %i.ey = call i64 @g_signal_connect_data(ptr noundef %i.ex, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_delete_shape, ptr noundef %2, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.ex) #11
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.aw
  %5 = phi i1 [ %i.ek, %bb.aw ], [ %.ph, %.sink.split ]
  %i.ez = icmp sgt i32 %i.ag, 1
  %or.cond5.not = and i1 %i.ez, %5
  br i1 %or.cond5.not, label %.thread276, label %bb.ay

.thread276:                                       ; preds = %bb.ax
  %i.fa = call ptr @gtk_separator_menu_item_new() #11
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fa) #11
  %i.fb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #11
  %i.fc = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.fb) #11 ; 2 uses
  %i.fd = call i64 @g_signal_connect_data(ptr noundef %i.fc, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_group, ptr noundef %2, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  br label %.thread391.sink.split

bb.ay:                                            ; preds = %bb.ax
  %or.cond7 = icmp eq i32 %.0209336, 2
  br i1 %or.cond7, label %bb.az, label %.thread391

bb.az:                                            ; preds = %bb.ay
  %i.fe = call ptr @gtk_separator_menu_item_new() #11
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fe) #11
  %i.ff = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #11
  %i.fg = call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.ff) #11 ; 4 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.fg, i32 noundef 1) #11
  %i.fh = and i32 %.5215332, 4
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %_add_tree_operation.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @gtk_check_menu_item_set_active(ptr noundef %i.fg, i32 noundef 1) #11
  br label %_add_tree_operation.exit

_add_tree_operation.exit:                         ; preds = %bb.az, %bb.ba
  %i.fi = call i64 @g_signal_connect_data(ptr noundef %i.fg, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_operation, ptr noundef nonnull inttoptr (i64 4 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fg) #11
  %i.fj = call ptr @gtk_separator_menu_item_new() #11
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fj) #11
  %i.fk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #11
  %i.fl = call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.fk) #11 ; 4 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.fl, i32 noundef range(i32 0, 2) %.1217328) #11
  %i.fm = and i32 %.5215332, 8
  %.not.i260 = icmp eq i32 %i.fm, 0
  br i1 %.not.i260, label %_add_tree_operation.exit261, label %bb.bb

bb.bb:                                            ; preds = %_add_tree_operation.exit
  call void @gtk_check_menu_item_set_active(ptr noundef %i.fl, i32 noundef 1) #11
  br label %_add_tree_operation.exit261

_add_tree_operation.exit261:                      ; preds = %_add_tree_operation.exit, %bb.bb
  %i.fn = call i64 @g_signal_connect_data(ptr noundef %i.fl, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_operation, ptr noundef nonnull inttoptr (i64 8 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fl) #11
  %i.fo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #11
  %i.fp = call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.fo) #11 ; 4 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.fp, i32 noundef range(i32 0, 2) %.1217328) #11
  %i.fq = and i32 %.5215332, 16
  %.not.i262 = icmp eq i32 %i.fq, 0
  br i1 %.not.i262, label %_add_tree_operation.exit263, label %bb.bc

bb.bc:                                            ; preds = %_add_tree_operation.exit261
  call void @gtk_check_menu_item_set_active(ptr noundef %i.fp, i32 noundef 1) #11
  br label %_add_tree_operation.exit263

_add_tree_operation.exit263:                      ; preds = %_add_tree_operation.exit261, %bb.bc
  %i.fr = call i64 @g_signal_connect_data(ptr noundef %i.fp, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_operation, ptr noundef nonnull inttoptr (i64 16 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fp) #11
  %i.fs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #11
  %i.ft = call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.fs) #11 ; 4 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.ft, i32 noundef range(i32 0, 2) %.1217328) #11
  %i.fu = and i32 %.5215332, 32
  %.not.i264 = icmp eq i32 %i.fu, 0
  br i1 %.not.i264, label %_add_tree_operation.exit265, label %bb.bd

bb.bd:                                            ; preds = %_add_tree_operation.exit263
  call void @gtk_check_menu_item_set_active(ptr noundef %i.ft, i32 noundef 1) #11
  br label %_add_tree_operation.exit265

_add_tree_operation.exit265:                      ; preds = %_add_tree_operation.exit263, %bb.bd
  %i.fv = call i64 @g_signal_connect_data(ptr noundef %i.ft, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_operation, ptr noundef nonnull inttoptr (i64 32 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.ft) #11
  %i.fw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #11
  %i.fx = call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.fw) #11 ; 4 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.fx, i32 noundef range(i32 0, 2) %.1217328) #11
  %i.fy = and i32 %.5215332, 128
  %.not.i266 = icmp eq i32 %i.fy, 0
  br i1 %.not.i266, label %_add_tree_operation.exit267, label %bb.be

bb.be:                                            ; preds = %_add_tree_operation.exit265
  call void @gtk_check_menu_item_set_active(ptr noundef %i.fx, i32 noundef 1) #11
  br label %_add_tree_operation.exit267

_add_tree_operation.exit267:                      ; preds = %_add_tree_operation.exit265, %bb.be
  %i.fz = call i64 @g_signal_connect_data(ptr noundef %i.fx, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_operation, ptr noundef nonnull inttoptr (i64 128 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.fx) #11
  %i.ga = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #11
  %i.gb = call ptr @gtk_check_menu_item_new_with_label(ptr noundef %i.ga) #11 ; 4 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.gb, i32 noundef range(i32 0, 2) %.1217328) #11
  %i.gc = and i32 %.5215332, 64
  %.not.i268 = icmp eq i32 %i.gc, 0
  br i1 %.not.i268, label %_add_tree_operation.exit269, label %bb.bf

bb.bf:                                            ; preds = %_add_tree_operation.exit267
  call void @gtk_check_menu_item_set_active(ptr noundef %i.gb, i32 noundef 1) #11
  br label %_add_tree_operation.exit269

_add_tree_operation.exit269:                      ; preds = %_add_tree_operation.exit267, %bb.bf
  %i.gd = call i64 @g_signal_connect_data(ptr noundef %i.gb, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_operation, ptr noundef nonnull inttoptr (i64 64 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.gb) #11
  %i.ge = call ptr @gtk_separator_menu_item_new() #11
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.ge) #11
  %i.gf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #11
  %i.gg = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.gf) #11 ; 3 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.gg, i32 noundef %.2220324) #11
  %i.gh = call i64 @g_signal_connect_data(ptr noundef %i.gg, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_moveup, ptr noundef %2, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.gg) #11
  %i.gi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #11
  %i.gj = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.gi) #11 ; 3 uses
  call void @gtk_widget_set_sensitive(ptr noundef %i.gj, i32 noundef %.1217328) #11
  %i.gk = call i64 @g_signal_connect_data(ptr noundef %i.gj, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_movedown, ptr noundef %2, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  br label %.thread391.sink.split

.thread391.sink.split:                            ; preds = %_add_tree_operation.exit269, %.thread276
  %.sink = phi ptr [ %i.fc, %.thread276 ], [ %i.gj, %_add_tree_operation.exit269 ]
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %.sink) #11
  br label %.thread391

.thread391:                                       ; preds = %.thread391.sink.split, %.thread, %bb.ay
  %i.gl = call ptr @gtk_separator_menu_item_new() #11
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.gl) #11
  %i.gm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #11
  %i.gn = call ptr @gtk_menu_item_new_with_label(ptr noundef %i.gm) #11 ; 2 uses
  %i.go = call i64 @g_signal_connect_data(ptr noundef %i.gn, ptr noundef nonnull @.str.44, ptr noundef nonnull @_tree_cleanup, ptr noundef %2, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  call void @gtk_menu_shell_append(ptr noundef %i.af, ptr noundef %i.gn) #11
  call void @gtk_widget_show_all(ptr noundef %i.af) #11
  call void @gtk_menu_popup_at_pointer(ptr noundef %i.af, ptr noundef nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %.thread391
  %.0 = phi i32 [ 1, %.thread391 ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_no_show_all(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_check_button_new_with_label(ptr noundef) local_unnamed_addr #4

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_property_changed(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca float, align 4                    ; 12 uses
  %i.c = alloca float, align 4                    ; 10 uses
  %i.d = alloca float, align 4                    ; 12 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2160
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !166 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160  ; 8 uses
  %i.n = icmp ne ptr %i.k, null
  %i.o = icmp ne ptr %i.m, null
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @gtk_widget_hide(ptr noundef %0) #11
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.p = zext i32 %1 to i64                       ; 7 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr @_masks_properties, i64 %i.p ; 2 uses
  %.not.not = icmp eq i32 %1, 9                   ; 3 uses
  br i1 %.not.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #11
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.r to float
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi reassoc nsz arcp contract afn float [ %i.s, %bb.d ], [ %i.t, %bb.e ] ; 7 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !91
end_hunk_0
