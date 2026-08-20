inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_events_button_pressed:bb.a
  %i.cy = getelementptr i8, ptr %i.cf, i64 952    ; 2 uses
  %.val460 = load ptr, ptr %i.cy, align 8, !tbaa !213
  %i.cz = getelementptr inbounds nuw i8, ptr %.val460, i64 496
  %i.da = tail call i32 @g_strcmp0(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.47) #25
  %.not.i466.not = icmp eq i32 %i.da, 0
  br i1 %.not.i466.not, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val = load ptr, ptr %i.cy, align 8, !tbaa !213
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 496
  %i.dc = tail call i32 @g_strcmp0(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.48) #25
  %.not.i467.not = icmp eq i32 %i.dc, 0
  br i1 %.not.i467.not, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 784
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !215 ; 11 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 552
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !28
  %i.dh = load i32, ptr %i.an, align 8, !tbaa !187 ; 2 uses
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 512
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !216
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.dk, i32 noundef 1) #25
  %.pre = load i32, ptr %i.an, align 8, !tbaa !187
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dl = phi i32 [ %i.dh, %bb.ah ], [ %.pre, %bb.ai ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 556
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !28
  %i.do = icmp eq i32 %i.dn, %i.dl
  br i1 %i.do, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 520
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !216
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.dq, i32 noundef 1) #25
  %.pre559 = load i32, ptr %i.an, align 8, !tbaa !187
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dr = phi i32 [ %.pre559, %bb.ak ], [ %i.dl, %bb.aj ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 560
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !28
  %i.du = icmp eq i32 %i.dt, %i.dr
  br i1 %i.du, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 528
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !216
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.dw, i32 noundef 1) #25
  %.pre560 = load i32, ptr %i.an, align 8, !tbaa !187
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = phi i32 [ %.pre560, %bb.am ], [ %i.dr, %bb.al ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 564
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28
  %i.ea = icmp eq i32 %i.dz, %i.dx
  br i1 %i.ea, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 536
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !216
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ec, i32 noundef 1) #25
  %.pre561 = load i32, ptr %i.an, align 8, !tbaa !187
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ed = phi i32 [ %.pre561, %bb.ao ], [ %i.dx, %bb.an ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.de, i64 568
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !28
  %i.eg = icmp eq i32 %i.ef, %i.ed
  br i1 %i.eg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 544
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !216
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ei, i32 noundef 1) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 576
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !217
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ek, i32 noundef 0) #25
  %i.el = load i32, ptr %i.an, align 8, !tbaa !187
  %i.em = tail call ptr @dt_masks_create(i32 noundef %i.el) #25
  tail call void @dt_masks_change_form_gui(ptr noundef %i.em) #25
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2168
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !222 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 172
  store i32 1, ptr %i.eq, align 4, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 184
  store ptr %i.cf, ptr %i.er, align 8, !tbaa !210
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 176
  store i32 1, ptr %i.es, align 8, !tbaa !211
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 192
  store ptr %i.cf, ptr %i.et, align 8, !tbaa !212
  br label %.critedge453

bb.as:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.eu = load i32, ptr %i.an, align 8, !tbaa !187
  %i.ev = tail call ptr @dt_masks_create(i32 noundef %i.eu) #25
  tail call void @dt_masks_change_form_gui(ptr noundef %i.ev) #25
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !212
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2168
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !222
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 184
  store ptr %i.ex, ptr %i.fb, align 8, !tbaa !210
  br label %.critedge453

bb.at:                                            ; preds = %bb.ad
  %i.fc = load i32, ptr %i.an, align 8, !tbaa !187
  %i.fd = and i32 %i.fc, 136
  %.not442 = icmp eq i32 %i.fd, 0
  br i1 %.not442, label %.critedge453, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2160
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !223 ; 3 uses
  %.not443 = icmp eq ptr %i.fg, null
  br i1 %.not443, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !187
  %i.fj = and i32 %i.fi, 4
  %.not444 = icmp eq i32 %i.fj, 0
  br i1 %.not444, label %.critedge, label %.preheader539

.preheader539:                                    ; preds = %bb.av
  %.0375542 = load ptr, ptr %i.fg, align 8, !tbaa !27 ; 2 uses
  %.not445543 = icmp eq ptr %.0375542, null
  br i1 %.not445543, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader539
  %i.fk = load i32, ptr %i.cu, align 8, !tbaa !214
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.ax
  %.0375545 = phi ptr [ %.0375542, %.lr.ph ], [ %.0375, %bb.ax ] ; 2 uses
  %.0379544 = phi i32 [ 0, %.lr.ph ], [ %i.fn, %bb.ax ] ; 2 uses
  %i.fl = load ptr, ptr %.0375545, align 8, !tbaa !31
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !224
  %.not446 = icmp eq i32 %i.fm, %i.fk
  br i1 %.not446, label %._crit_edge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = add nuw nsw i32 %.0379544, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.0375545, i64 8
  %.0375 = load ptr, ptr %i.fo, align 8, !tbaa !27 ; 2 uses
  %.not445 = icmp eq ptr %.0375, null
  br i1 %.not445, label %.critedge, label %bb.aw

._crit_edge:                                      ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 2168
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !222 ; 2 uses
  %.not447.not = icmp eq ptr %i.fq, null
  br i1 %.not447.not, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 164
  store i32 %.0379544, ptr %i.fr, align 4, !tbaa !202
  %i.fs = load i32, ptr %i.cu, align 8, !tbaa !214
  %i.ft = tail call ptr @dt_masks_get_from_id(ptr noundef nonnull %i.fe, i32 noundef %i.fs) #25
  tail call void @dt_masks_select_form(ptr noundef %i.cf, ptr noundef %i.ft) #25
  br label %.critedge453

.critedge453:                                     ; preds = %bb.ay, %bb.at, %bb.ar, %bb.as
  tail call void @dt_control_queue_redraw_center() #25
  br label %.critedge

bb.az:                                            ; preds = %bb.q
  br i1 %i.bb, label %.thread517, label %bb.cn

.thread599:                                       ; preds = %.thread505
  br i1 %i.bb, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %.thread599
  %i.fu = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 6 uses
  %i.fv = load ptr, ptr %7, align 8, !tbaa !20
  %i.fw = tail call i32 @g_list_length(ptr noundef %i.fv) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.fx = fmul reassoc nsz arcp contract afn float %.0501, %1
  store float %i.fx, ptr %i.a, align 8, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fz = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  store float %i.fz, ptr %i.fy, align 4, !tbaa !11
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.gb = call i32 @dt_dev_distort_backtransform(ptr noundef %i.ga, ptr noundef nonnull %i.a, i64 noundef 1) #25 ; 0 uses
  %i.gc = load <2 x float>, ptr %i.a, align 8, !tbaa !11
  %i.gd = fdiv reassoc nsz arcp contract afn <2 x float> %i.gc, %i.am ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <2 x float> splat (float -1.000000e+00), ptr %11, align 4, !tbaa !11
  %12 = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %12, <4 x float> <float poison, float poison, float -1.000000e+00, float -1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %13, ptr %i.fu, align 4, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store i32 1, ptr %i.ge, align 4, !tbaa !194
  %i.gf = fcmp reassoc nsz arcp contract afn olt float %i.ax, 5.000000e-04
  %i.gg = select reassoc nsz arcp contract afn i1 %i.gf, float 5.000000e-04, float %i.ax ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 28
  store float %i.gg, ptr %i.gi, align 4, !tbaa !11
  store float %i.gg, ptr %i.gh, align 4, !tbaa !11
  %i.gj = icmp eq i32 %i.fw, 0
  %.pre563 = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %i.gj, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.gk = call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 6 uses
  store <2 x float> %i.gd, ptr %i.gk, align 4, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store <4 x float> splat (float -1.000000e+00), ptr %i.gl, align 4, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  store float %i.gg, ptr %i.gn, align 4, !tbaa !11
  store float %i.gg, ptr %i.gm, align 4, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store i32 1, ptr %i.go, align 4, !tbaa !194
  %i.gp = call ptr @g_list_append(ptr noundef %.pre563, ptr noundef nonnull %i.gk) #25 ; 2 uses
  store ptr %i.gp, ptr %7, align 8, !tbaa !20
  %i.gq = load i32, ptr %i.an, align 8, !tbaa !187
  %i.gr = and i32 %i.gq, 8
  %.not433 = icmp eq i32 %i.gr, 0
  br i1 %.not433, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @dt_masks_set_source_pos_initial_value(ptr noundef nonnull %9, i32 noundef 2, ptr noundef nonnull %7, float noundef %1, float noundef %2) #25
  %.pre562 = load ptr, ptr %7, align 8, !tbaa !20
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> zeroinitializer, ptr %i.gs, align 8, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.ba
  %i.gt = phi ptr [ %.pre563, %bb.ba ], [ %i.gp, %bb.bd ], [ %.pre562, %bb.bc ]
  %.0374 = phi i32 [ %i.fw, %bb.ba ], [ 1, %bb.bd ], [ 1, %bb.bc ] ; 2 uses
  %i.gu = call ptr @g_list_append(ptr noundef %i.gt, ptr noundef nonnull %i.fu) #25
  store ptr %i.gu, ptr %7, align 8, !tbaa !20
  %i.gv = call i32 @gtk_accelerator_get_default_mod_mask() #25
  %i.gw = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !28
  %i.gx = or i32 %i.gw, %6
  %i.gy = and i32 %i.gx, %i.gv
  %.not530 = icmp eq i32 %i.gy, 4
  br i1 %.not530, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gz = load ptr, ptr %7, align 8, !tbaa !20
  %i.ha = add nsw i32 %.0374, -1
  %i.hb = call ptr @g_list_nth_data(ptr noundef %i.gz, i32 noundef %i.ha) #25 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load <2 x float>, ptr %i.hb, align 4, !tbaa !11
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.he, ptr %i.hc, align 4, !tbaa !11
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store i32 2, ptr %i.hf, align 4, !tbaa !194
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i32 %.0374, ptr %i.hg, align 4, !tbaa !185
  call fastcc void @_path_init_ctrl_points(ptr noundef nonnull %7)
  call void @dt_masks_gui_form_create(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %10, ptr noundef %0) #25
  call void @dt_control_queue_redraw_center() #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

.thread517:                                       ; preds = %bb.az, %.thread
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !200
  %.not425 = icmp eq i32 %i.hi, 0
  br i1 %.not425, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %.thread517
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !205
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 116
  store i32 1, ptr %i.hm, align 4, !tbaa !198
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i32 -1, ptr %i.hn, align 8, !tbaa !203
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !33 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !11
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !226
  %i.hu = fsub reassoc nsz arcp contract afn float %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.hu, ptr %i.hv, align 4, !tbaa !227
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !11
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !228
  %i.ia = fsub reassoc nsz arcp contract afn float %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.ia, ptr %i.ib, align 8, !tbaa !229
  br label %.critedge

bb.bj:                                            ; preds = %bb.bh, %.thread517
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !26
  %.not426 = icmp eq i32 %i.id, 0
  br i1 %.not426, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !205
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i32 1, ptr %i.ih, align 8, !tbaa !197
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i32 -1, ptr %i.ii, align 8, !tbaa !203
  %i.ij = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load float, ptr %i.ik, align 4, !tbaa !11
  %i.im = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.in = load float, ptr %i.im, align 4, !tbaa !226
  %i.io = fsub reassoc nsz arcp contract afn float %i.il, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.io, ptr %i.ip, align 4, !tbaa !227
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !11
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.it = load float, ptr %i.is, align 8, !tbaa !228
  %i.iu = fsub reassoc nsz arcp contract afn float %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.iu, ptr %i.iv, align 8, !tbaa !229
  br label %.critedge

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 84 ; 4 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !23 ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %bb.bn, label %bb.ca

bb.bn:                                            ; preds = %bb.bm
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 4 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !203 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, %i.ix
  br i1 %i.jb, label %bb.bo, label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.jc = tail call i32 @gtk_accelerator_get_default_mod_mask() #25
  %i.jd = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !28
  %i.je = or i32 %i.jd, %6
  %i.jf = and i32 %i.je, %i.jc
  %.not536 = icmp eq i32 %i.jf, 4
  br i1 %.not536, label %bb.bp, label %thread-pre-split519

bb.bp:                                            ; preds = %bb.bo
  %i.jg = load ptr, ptr %7, align 8, !tbaa !20
  %i.jh = load i32, ptr %i.iz, align 8, !tbaa !203
  %i.ji = tail call ptr @g_list_nth_data(ptr noundef %i.jg, i32 noundef %i.jh) #25 ; 4 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 -1, ptr %i.iw, align 4, !tbaa !23
  br label %.critedge

bb.br:                                            ; preds = %bb.bp
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !194
  %.not432 = icmp eq i32 %i.jl, 1
  br i1 %.not432, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 1, ptr %i.jk, align 4, !tbaa !194
  tail call fastcc void @_path_init_ctrl_points(ptr noundef nonnull %7)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jn = load <2 x float>, ptr %i.ji, align 4, !tbaa !11
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.jo, ptr %i.jm, align 4, !tbaa !11
  store i32 2, ptr %i.jk, align 4, !tbaa !194
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.jp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.jp, ptr noundef %0, i32 noundef 1) #25
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %10, ptr noundef %0) #25
  %i.jq = tail call fastcc i32 @_path_is_clockwise(ptr noundef nonnull %7)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !230
  br label %.critedge
end_hunk_0
