inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_events_button_pressed:bb.a

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i32 1, ptr %i.cc, align 8, !tbaa !185
  br label %.thread

bb.r:                                             ; preds = %dt_masks_get_image_size.exit
  switch i32 %4, label %bb.x [
    i32 3, label %bb.s
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i32 0, ptr %i.cd, align 8, !tbaa !216
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 192
  store ptr null, ptr %i.ce, align 8, !tbaa !217
  tail call void @dt_masks_set_edit_mode(ptr noundef %0, i32 noundef 1) #13
  tail call void @dt_masks_iop_update(ptr noundef %0) #13
  tail call void @dt_control_queue_redraw_center() #13
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.cf = tail call i32 @gtk_accelerator_get_default_mod_mask() #13
  %i.cg = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.ch = or i32 %i.cg, %6
  %i.ci = and i32 %i.ch, %i.cf
  %.not201 = icmp eq i32 %i.ci, 5
  br i1 %.not201, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = tail call i32 @gtk_accelerator_get_default_mod_mask() #13
  %i.ck = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.cl = or i32 %i.ck, %6
  %i.cm = and i32 %i.cl, %i.cj
  %.not202 = icmp eq i32 %i.cm, 1
  br i1 %.not202, label %bb.v, label %._crit_edge211

._crit_edge211:                                   ; preds = %bb.u
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38
  br label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !21
  %i.cp = and i32 %i.co, 8
  %.not179 = icmp eq i32 %i.cp, 0
  br i1 %.not179, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @dt_masks_set_source_pos_initial_state(ptr noundef nonnull %9, i32 noundef %6, float noundef %1, float noundef %2) #13
  br label %.thread

bb.x:                                             ; preds = %._crit_edge211, %bb.r
  %i.cq = phi ptr [ %.pre, %._crit_edge211 ], [ %i.b, %bb.r ]
  %i.cr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cs = fmul reassoc nsz arcp contract afn float %.0196, %1 ; 2 uses
  store float %i.cs, ptr %i.a, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = fmul reassoc nsz arcp contract afn float %.sink.i, %2 ; 2 uses
  store float %i.cu, ptr %i.ct, align 4, !tbaa !22
  %i.cv = call i32 @dt_dev_distort_backtransform(ptr noundef %i.cq, ptr noundef nonnull %i.a, i64 noundef 1) #13 ; 0 uses
  %i.cw = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  %i.cx = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.ai
  store <2 x float> %i.cx, ptr %i.cr, align 4, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !21 ; 2 uses
  %i.da = and i32 %i.cz, 8
  %.not161 = icmp eq i32 %i.da, 0
  br i1 %.not161, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @dt_masks_set_source_pos_initial_value(ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %7, float noundef %1, float noundef %2) #13
  %.pre212 = load i32, ptr %i.cy, align 8, !tbaa !21
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> zeroinitializer, ptr %i.db, align 8, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dc = phi i32 [ %i.cz, %bb.z ], [ %.pre212, %bb.y ]
  %i.dd = and i32 %i.dc, 136
  %.not162 = icmp eq i32 %i.dd, 0
  %i.de = select i1 %.not162, ptr @.str.1, ptr @.str
  %i.df = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.de) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.df, ptr %i.dg, align 4, !tbaa !18
  %i.dh = load i32, ptr %i.cy, align 8, !tbaa !21
  %i.di = and i32 %i.dh, 136
  %.not163 = icmp eq i32 %i.di, 0
  %i.dj = select i1 %.not163, ptr @.str.3, ptr @.str.2
  %i.dk = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.dj) #13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float %i.dk, ptr %i.dl, align 4, !tbaa !23
  %i.dm = load ptr, ptr %7, align 8, !tbaa !11
  %i.dn = call ptr @g_list_append(ptr noundef %i.dm, ptr noundef nonnull %i.cr) #13
  store ptr %i.dn, ptr %7, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !218 ; 12 uses
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38
  call void @dt_masks_gui_form_save_creation(ptr noundef %i.dq, ptr noundef %i.dp, ptr noundef nonnull %7, ptr noundef nonnull %9) #13
  %.not164 = icmp eq ptr %i.dp, null              ; 2 uses
  br i1 %.not164, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38
  call void @dt_dev_add_history_item(ptr noundef %i.dr, ptr noundef nonnull %i.dp, i32 noundef 1) #13
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !216
  %.not165 = icmp eq i32 %i.dt, 0
  br i1 %.not165, label %.thread199, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr i8, ptr %i.dp, i64 952    ; 2 uses
  %.val186 = load ptr, ptr %i.du, align 8, !tbaa !219
  %i.dv = getelementptr inbounds nuw i8, ptr %.val186, i64 496
  %i.dw = call i32 @g_strcmp0(ptr noundef nonnull %i.dv, ptr noundef nonnull @.str.20) #13
  %.not.i187.not = icmp eq i32 %i.dw, 0
  br i1 %.not.i187.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val185 = load ptr, ptr %i.du, align 8, !tbaa !219
  %i.dx = getelementptr inbounds nuw i8, ptr %.val185, i64 496
  %i.dy = call i32 @g_strcmp0(ptr noundef nonnull %i.dx, ptr noundef nonnull @.str.21) #13
  %.not.i188.not = icmp eq i32 %i.dy, 0
  br i1 %.not.i188.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !220
  call void @dt_masks_set_edit_mode_single_form(ptr noundef nonnull %i.dp, i32 noundef %i.ea, i32 noundef 1) #13
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %.pr = load i32, ptr %i.ds, align 8, !tbaa !216
  %.not168 = icmp eq i32 %.pr, 0
  br i1 %.not168, label %.thread199, label %bb.ag

.thread199:                                       ; preds = %bb.ab, %bb.af
  call void @dt_masks_set_edit_mode(ptr noundef nonnull %i.dp, i32 noundef 1) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread199, %bb.ae
  call void @dt_masks_iop_update(ptr noundef nonnull %i.dp) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.aa
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !220
  call void @dt_dev_masks_selection_change(ptr noundef %i.eb, ptr noundef %i.dp, i32 noundef %i.ed) #13
  store ptr null, ptr %i.do, align 8, !tbaa !218
  %i.ee = load i32, ptr %i.cy, align 8, !tbaa !21 ; 2 uses
  %i.ef = and i32 %i.ee, 136
  %.not169 = icmp eq i32 %i.ef, 0
  br i1 %.not169, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2160
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !221 ; 3 uses
  %.not170 = icmp eq ptr %i.ei, null
  br i1 %.not170, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !21
  %i.el = and i32 %i.ek, 4
  %.not171 = icmp eq i32 %i.el, 0
  br i1 %.not171, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %.0146203 = load ptr, ptr %i.ei, align 8, !tbaa !25 ; 2 uses
  %.not172204 = icmp eq ptr %.0146203, null
  br i1 %.not172204, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.em = load i32, ptr %i.ec, align 8, !tbaa !220
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.al
  %.0146206 = phi ptr [ %.0146203, %.lr.ph ], [ %.0146, %bb.al ] ; 2 uses
  %.0141205 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.al ] ; 3 uses
  %i.en = load ptr, ptr %.0146206, align 8, !tbaa !16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !222
  %.not173 = icmp eq i32 %i.eo, %i.em
  br i1 %.not173, label %._crit_edge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = add nuw nsw i32 %.0141205, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.0146206, i64 8
  %.0146 = load ptr, ptr %i.eq, align 8, !tbaa !25 ; 2 uses
  %.not172 = icmp eq ptr %.0146, null
  br i1 %.not172, label %.critedge, label %bb.ak

._crit_edge:                                      ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 2168
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !224 ; 11 uses
  %.not174.not = icmp eq ptr %i.es, null
  br i1 %.not174.not, label %.critedge, label %11

11:                                               ; preds = %._crit_edge
  %12 = and i32 %i.ee, 8
  %.not175 = icmp eq i32 %12, 0
  br i1 %.not175, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %i.es, i64 116
  store i32 1, ptr %14, align 4, !tbaa !186
  br label %bb.am

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %i.es, i64 112
  store i32 1, ptr %16, align 8, !tbaa !185
  br label %bb.am

bb.am:                                            ; preds = %15, %13
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 164
  store i32 %.0141205, ptr %i.et, align 4, !tbaa !225
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  store i32 %.0141205, ptr %i.eu, align 8, !tbaa !226
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  store float %i.cs, ptr %i.ev, align 4, !tbaa !212
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store float %i.cu, ptr %i.ew, align 8, !tbaa !214
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  store <2 x float> zeroinitializer, ptr %i.ex, align 4, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 44
  store float %1, ptr %i.ey, align 4, !tbaa !208
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store float %2, ptr %i.ez, align 8, !tbaa !209
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 60
  store i32 1, ptr %i.fa, align 4, !tbaa !201
  %i.fb = load i32, ptr %i.ec, align 8, !tbaa !220
  %i.fc = call ptr @dt_masks_get_from_id(ptr noundef nonnull %i.eg, i32 noundef %i.fb) #13
  call void @dt_masks_select_form(ptr noundef %0, ptr noundef %i.fc) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !216
  %.not176 = icmp eq i32 %i.fe, 0
  br i1 %.not176, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not164, label %.critedge183, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr i8, ptr %i.dp, i64 952    ; 2 uses
  %.val184 = load ptr, ptr %i.ff, align 8, !tbaa !219
  %i.fg = getelementptr inbounds nuw i8, ptr %.val184, i64 496
  %i.fh = call i32 @g_strcmp0(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.20) #13
  %.not.i189.not = icmp eq i32 %i.fh, 0
  br i1 %.not.i189.not, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val = load ptr, ptr %i.ff, align 8, !tbaa !219
  %i.fi = getelementptr inbounds nuw i8, ptr %.val, i64 496
  %i.fj = call i32 @g_strcmp0(ptr noundef nonnull %i.fi, ptr noundef nonnull @.str.21) #13
  %.not.i190.not = icmp eq i32 %i.fj, 0
  br i1 %.not.i190.not, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 784
  %i.fl = load ptr, ptr %i.fk, align 16, !tbaa !227 ; 11 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 552
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !24
  %i.fo = load i32, ptr %i.cy, align 8, !tbaa !21 ; 2 uses
  %i.fp = icmp eq i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 512
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !228
  call void @gtk_toggle_button_set_active(ptr noundef %i.fr, i32 noundef 1) #13
  %.pre213 = load i32, ptr %i.cy, align 8, !tbaa !21
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.fs = phi i32 [ %i.fo, %bb.ar ], [ %.pre213, %bb.as ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 556
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !24
  %i.fv = icmp eq i32 %i.fu, %i.fs
  br i1 %i.fv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 520
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !228
  call void @gtk_toggle_button_set_active(ptr noundef %i.fx, i32 noundef 1) #13
  %.pre214 = load i32, ptr %i.cy, align 8, !tbaa !21
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fy = phi i32 [ %.pre214, %bb.au ], [ %i.fs, %bb.at ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 560
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !24
  %i.gb = icmp eq i32 %i.ga, %i.fy
  br i1 %i.gb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fl, i64 528
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !228
  call void @gtk_toggle_button_set_active(ptr noundef %i.gd, i32 noundef 1) #13
  %.pre215 = load i32, ptr %i.cy, align 8, !tbaa !21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ge = phi i32 [ %.pre215, %bb.aw ], [ %i.fy, %bb.av ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 564
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !24
  %i.gh = icmp eq i32 %i.gg, %i.ge
  br i1 %i.gh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 536
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !228
  call void @gtk_toggle_button_set_active(ptr noundef %i.gj, i32 noundef 1) #13
  %.pre216 = load i32, ptr %i.cy, align 8, !tbaa !21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gk = phi i32 [ %.pre216, %bb.ay ], [ %i.ge, %bb.ax ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 568
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !24
  %i.gn = icmp eq i32 %i.gm, %i.gk
  br i1 %i.gn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.go = getelementptr inbounds nuw i8, ptr %i.fl, i64 544
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !228
  call void @gtk_toggle_button_set_active(ptr noundef %i.gp, i32 noundef 1) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fl, i64 576
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !229
  call void @gtk_toggle_button_set_active(ptr noundef %i.gr, i32 noundef 0) #13
  %i.gs = load i32, ptr %i.cy, align 8, !tbaa !21
  %i.gt = call ptr @dt_masks_create(i32 noundef %i.gs) #13
  call void @dt_masks_change_form_gui(ptr noundef %i.gt) #13
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 2168
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !224 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 184
  store ptr %i.dp, ptr %i.gx, align 8, !tbaa !218
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 176
  store i32 1, ptr %i.gy, align 8, !tbaa !216
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 192
  store ptr %i.dp, ptr %i.gz, align 8, !tbaa !217
  br label %.critedge

.critedge183:                                     ; preds = %bb.ao
  %i.ha = load i32, ptr %i.cy, align 8, !tbaa !21
  %i.hb = call ptr @dt_masks_create(i32 noundef %i.ha) #13
  call void @dt_masks_change_form_gui(ptr noundef %i.hb) #13
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !217
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2168
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !224
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 184
  store ptr %i.hd, ptr %i.hh, align 8, !tbaa !218
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %.preheader, %._crit_edge, %bb.ai, %bb.aj, %bb.an, %bb.ap, %bb.aq, %.critedge183, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.q, %bb.o, %bb.m, %bb.k, %bb.s, %.critedge, %bb.w, %bb.v, %bb.i, %bb.p, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 1, %bb.s ], [ 1, %bb.w ], [ 1, %.critedge ], [ 1, %bb.v ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.h ], [ 1, %bb.q ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.k ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_events_button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !38 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !82  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load float, ptr %i.f, align 8, !tbaa !187 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.g, 0.000000e+00
  %i.i = select reassoc nsz arcp contract afn i1 %i.h, float %i.g, float 1.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !188  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = uitofp nneg i32 %i.k to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.o = load i32, ptr %i.n, align 16, !tbaa !189
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to float
  %i.q = insertelement <2 x float> poison, float %i.m, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  br label %dt_masks_get_image_size.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2760
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !190  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !188  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.y = load i32, ptr %i.x, align 16, !tbaa !189
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.aa = uitofp nneg i32 %i.v to float
  %i.ab = insertelement <2 x float> poison, float %i.i, i64 0
end_hunk_0
