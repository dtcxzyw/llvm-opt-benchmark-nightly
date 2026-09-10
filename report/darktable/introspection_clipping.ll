Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@gui_init:bb.a
  %i.ah = tail call i64 @g_signal_connect_data(ptr noundef %i.ag, ptr noundef nonnull @.str.29, ptr noundef nonnull @hvflip_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !197
  %i.aj = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #25
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ai, ptr noundef %i.aj) #25
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !302
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !197
  store ptr %i.al, ptr %i.a, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.am, align 8, !tbaa !16
  %i.an = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.18, i32 noundef 2104, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ak, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.ao = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.31) #25 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !213
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.ao, float noundef -1.000000e+00) #25
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !213
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.aq, ptr noundef nonnull @.str.32) #25
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !213
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ar, ptr noundef %i.as) #25
  %i.at = call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 8 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !179
  %i.av = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.at, ptr noundef null, ptr noundef nonnull @.str.34) #25 ; 0 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.ax = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #25
  call void @dt_bauhaus_combobox_add(ptr noundef %i.aw, ptr noundef %i.ax) #25
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.az = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #25
  call void @dt_bauhaus_combobox_add(ptr noundef %i.ay, ptr noundef %i.az) #25
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.bb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #25
  call void @dt_bauhaus_combobox_add(ptr noundef %i.ba, ptr noundef %i.bb) #25
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #25
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bc, ptr noundef %i.bd) #25
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.bf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.be, ptr noundef %i.bf) #25
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !179
  %i.bh = call i64 @g_signal_connect_data(ptr noundef %i.bg, ptr noundef nonnull @.str.29, ptr noundef nonnull @keystone_type_changed, ptr noundef %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !302
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !179
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bk, align 8, !tbaa !16
  %i.bl = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.18, i32 noundef 2119, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bi, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.bm = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.37) #25 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !195
  %i.bo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bm, ptr noundef %i.bo) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #25
  store ptr %i.bp, ptr %1, align 16, !tbaa !208
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.bq, align 8, !tbaa !205
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !206
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #25
  store ptr %i.bt, ptr %i.bs, align 16, !tbaa !208
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bu, align 8, !tbaa !205
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.bv, align 4, !tbaa !206
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #25
  store ptr %i.bx, ptr %i.bw, align 16, !tbaa !208
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.by, align 8, !tbaa !205
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.bz, align 4, !tbaa !206
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #25
  store ptr %i.cb, ptr %i.ca, align 16, !tbaa !208
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 2445, ptr %i.cc, align 8, !tbaa !205
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 2032, ptr %i.cd, align 4, !tbaa !206
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #25
  store ptr %i.cf, ptr %i.ce, align 16, !tbaa !208
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 5, ptr %i.cg, align 8, !tbaa !205
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 4, ptr %i.ch, align 4, !tbaa !206
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #25
  store ptr %i.cj, ptr %i.ci, align 16, !tbaa !208
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 14, ptr %i.ck, align 8, !tbaa !205
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 11, ptr %i.cl, align 4, !tbaa !206
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #25
  store ptr %i.cn, ptr %i.cm, align 16, !tbaa !208
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 110, ptr %i.co, align 8, !tbaa !205
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 85, ptr %i.cp, align 4, !tbaa !206
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #25
  store ptr %i.cr, ptr %i.cq, align 16, !tbaa !208
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 4, ptr %i.cs, align 8, !tbaa !205
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 3, ptr %i.ct, align 4, !tbaa !206
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #25
  store ptr %i.cv, ptr %i.cu, align 16, !tbaa !208
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 7, ptr %i.cw, align 8, !tbaa !205
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 5, ptr %i.cx, align 4, !tbaa !206
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #25
  store ptr %i.cz, ptr %i.cy, align 16, !tbaa !208
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 14142136, ptr %i.da, align 8, !tbaa !205
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 10000000, ptr %i.db, align 4, !tbaa !206
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #25
  store ptr %i.dd, ptr %i.dc, align 16, !tbaa !208
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 3, ptr %i.de, align 8, !tbaa !205
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 172
  store i32 2, ptr %i.df, align 4, !tbaa !206
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #25
  store ptr %i.dh, ptr %i.dg, align 16, !tbaa !208
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i32 16, ptr %i.di, align 8, !tbaa !205
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 188
  store i32 10, ptr %i.dj, align 4, !tbaa !206
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #25
  store ptr %i.dl, ptr %i.dk, align 16, !tbaa !208
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i32 16180340, ptr %i.dm, align 8, !tbaa !205
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 204
  store i32 10000000, ptr %i.dn, align 4, !tbaa !206
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #25
  store ptr %i.dp, ptr %i.do, align 16, !tbaa !208
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i32 16, ptr %i.dq, align 8, !tbaa !205
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 220
  store i32 9, ptr %i.dr, align 4, !tbaa !206
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #25
  store ptr %i.dt, ptr %i.ds, align 16, !tbaa !208
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i32 185, ptr %i.du, align 8, !tbaa !205
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 236
  store i32 100, ptr %i.dv, align 4, !tbaa !206
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.dx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #25
  store ptr %i.dx, ptr %i.dw, align 16, !tbaa !208
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i32 2, ptr %i.dy, align 8, !tbaa !205
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 252
  store i32 1, ptr %i.dz, align 4, !tbaa !206
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.eb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #25
  store ptr %i.eb, ptr %i.ea, align 16, !tbaa !208
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i32 235, ptr %i.ec, align 8, !tbaa !205
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 268
  store i32 100, ptr %i.ed, align 4, !tbaa !206
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ef = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #25
  store ptr %i.ef, ptr %i.ee, align 16, !tbaa !208
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 237, ptr %i.eg, align 8, !tbaa !205
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i32 100, ptr %i.eh, align 4, !tbaa !206
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ej = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #25
  store ptr %i.ej, ptr %i.ei, align 16, !tbaa !208
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i32 239, ptr %i.ek, align 8, !tbaa !205
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 300
  store i32 100, ptr %i.el, align 4, !tbaa !206
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.en = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #25
  store ptr %i.en, ptr %i.em, align 16, !tbaa !208
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i32 300, ptr %i.eo, align 8, !tbaa !205
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 316
  store i32 100, ptr %i.ep, align 4, !tbaa !206
  br label %bb.d

bb.c:                                             ; preds = %format_aspect.exit
  %i.eq = call ptr @dt_conf_all_string_entries(ptr noundef nonnull @.str.59) #25 ; 3 uses
  %.not229 = icmp eq ptr %i.eq, null
  br i1 %.not229, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_iop_gui_alloc.exit, %format_aspect.exit
  %indvars.iv = phi i64 [ 0, %_iop_gui_alloc.exit ], [ %indvars.iv.next, %format_aspect.exit ] ; 2 uses
  %i.er = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #24 ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.et = load ptr, ptr %i.es, align 16, !tbaa !208 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !206 ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ey = call noalias ptr @g_strdup(ptr noundef %i.et) #25
  br label %format_aspect.exit

bb.f:                                             ; preds = %bb.d
  %2 = load i32, ptr %i.eu, align 8, !tbaa !205
  %i.ez = sitofp reassoc nsz arcp contract afn i32 %2 to float
  %i.fa = sitofp reassoc nsz arcp contract afn i32 %i.ew to float
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.ez, %i.fa
  %i.fc = fpext reassoc nsz arcp contract afn float %i.fb to double
  %i.fd = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.117, ptr noundef %i.et, double noundef %i.fc) #25
  br label %format_aspect.exit

format_aspect.exit:                               ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.fd, %bb.f ], [ %i.ey, %bb.e ]
  store ptr %.0.i, ptr %i.er, align 8, !tbaa !208
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %3 = load <2 x i32>, ptr %i.eu, align 8, !tbaa !14
  store <2 x i32> %3, ptr %i.fe, align 8, !tbaa !14
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.fg = call ptr @g_list_append(ptr noundef %i.ff, ptr noundef nonnull %i.er) #25
  store ptr %i.fg, ptr %i.f, align 8, !tbaa !209
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.m, %bb.c
  call void @g_slist_free_full(ptr noundef %i.eq, ptr noundef nonnull @dt_conf_string_entry_free) #25
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.fi = call ptr @g_list_sort(ptr noundef %i.fh, ptr noundef nonnull @_aspect_ratio_cmp) #25 ; 3 uses
  store ptr %i.fi, ptr %i.f, align 8, !tbaa !209
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !203 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !205
  %i.fm = add nsw i32 %i.fl, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !206
  %i.fp = add nsw i32 %i.fo, 1
  br label %bb.n

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %.0196230 = phi ptr [ %i.gz, %bb.m ], [ %i.eq, %bb.c ] ; 2 uses
  %i.fq = load ptr, ptr %.0196230, align 8, !tbaa !304 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !306 ; 4 uses
  %i.ft = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fs) #26
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph
  %.0194 = phi ptr [ %i.fs, %.lr.ph ], [ %i.fx, %bb.i ] ; 5 uses
  %i.fv = load i8, ptr %.0194, align 1, !tbaa !207
  switch i8 %i.fv, label %bb.h [
    i8 58, label %.critedge
    i8 47, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.fw = icmp ult ptr %.0194, %i.fu
  br i1 %i.fw, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.fx = getelementptr inbounds nuw i8, ptr %.0194, i64 1
  br label %bb.g

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.h
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 -1
  %i.fz = icmp ult ptr %.0194, %i.fy
  br i1 %i.fz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.ga = getelementptr inbounds nuw i8, ptr %.0194, i64 1
  %i.gb = call i64 @strtol(ptr noundef nonnull captures(none) %i.fs, ptr noundef null, i32 noundef 10) #25, !inline_history !0
  %i.gc = trunc i64 %i.gb to i32                  ; 3 uses
  %i.gd = call i64 @strtol(ptr noundef nonnull captures(none) %i.ga, ptr noundef null, i32 noundef 10) #25, !inline_history !0
  %i.ge = trunc i64 %i.gd to i32                  ; 3 uses
  %i.gf = icmp eq i32 %i.ge, 0
  %i.gg = icmp eq i32 %i.gc, 0
  %or.cond = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond, label %bb.k, label %format_aspect.exit218

bb.k:                                             ; preds = %bb.j
  %i.gh = load ptr, ptr %i.fq, align 8, !tbaa !307
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.60, ptr noundef %i.gh) #25
  %i.gi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #25
  %i.gj = load ptr, ptr %i.fq, align 8, !tbaa !307
  call void (ptr, ...) @dt_control_log(ptr noundef %i.gi, ptr noundef %i.gj) #25
  br label %bb.m

format_aspect.exit218:                            ; preds = %bb.j
  %i.gk = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #24 ; 4 uses
  %i.gl = load ptr, ptr %i.fq, align 8, !tbaa !307
  %i.gm = sitofp reassoc nsz arcp contract afn i32 %i.gc to float
  %i.gn = sitofp reassoc nsz arcp contract afn i32 %i.ge to float
  %i.go = fdiv reassoc nsz arcp contract afn float %i.gm, %i.gn
  %i.gp = fpext reassoc nsz arcp contract afn float %i.go to double
  %i.gq = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.117, ptr noundef %i.gl, double noundef %i.gp) #25
  store ptr %i.gq, ptr %i.gk, align 8, !tbaa !208
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 %i.gc, ptr %i.gr, align 8, !tbaa !205
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 %i.ge, ptr %i.gs, align 4, !tbaa !206
  %i.gt = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.gu = call ptr @g_list_append(ptr noundef %i.gt, ptr noundef nonnull %i.gk) #25
  store ptr %i.gu, ptr %i.f, align 8, !tbaa !209
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.gv = load ptr, ptr %i.fq, align 8, !tbaa !307
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.60, ptr noundef %i.gv) #25
  %i.gw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #25
  %i.gx = load ptr, ptr %i.fq, align 8, !tbaa !307
  call void (ptr, ...) @dt_control_log(ptr noundef %i.gw, ptr noundef %i.gx) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %format_aspect.exit218, %bb.l
  %i.gy = getelementptr inbounds nuw i8, ptr %.0196230, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !308 ; 2 uses
  %.not = icmp eq ptr %i.gz, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

.thread250:                                       ; preds = %bb.o, %bb.p
  %i.ha = call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #25 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 9 uses
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !200
  call void @dt_bauhaus_combobox_set_editable(ptr noundef %i.ha, i32 noundef 1) #25
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !200
  %i.hd = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.hc, ptr noundef null, ptr noundef nonnull @.str.61) #25 ; 0 uses
  %.0234 = load ptr, ptr %i.f, align 8, !tbaa !201 ; 2 uses
  %.not207235 = icmp eq ptr %.0234, null
  br i1 %.not207235, label %._crit_edge239, label %.lr.ph238

bb.n:                                             ; preds = %._crit_edge, %bb.p
  %.0189233 = phi ptr [ %i.fi, %._crit_edge ], [ %i.ht, %bb.p ] ; 4 uses
  %.0190232 = phi i32 [ %i.fp, %._crit_edge ], [ %.1191225, %bb.p ] ; 2 uses
  %.0192231 = phi i32 [ %i.fm, %._crit_edge ], [ %.1193223, %bb.p ] ; 2 uses
  %i.he = load ptr, ptr %.0189233, align 8, !tbaa !203 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !205 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !206 ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.hi) ; 2 uses
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hg, i32 %i.hi) ; 2 uses
  %i.hk = icmp eq i32 %., %.0192231
  %i.hl = icmp eq i32 %i.hj, %.0190232
  %or.cond212 = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond212, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hm = load ptr, ptr %i.he, align 8, !tbaa !208
  call void @g_free(ptr noundef %i.hm) #25
  %i.hn = getelementptr inbounds nuw i8, ptr %.0189233, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !309 ; 2 uses
  %i.hp = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.hq = call ptr @g_list_delete_link(ptr noundef %i.hp, ptr noundef nonnull %.0189233) #25 ; 2 uses
  store ptr %i.hq, ptr %i.f, align 8, !tbaa !209
  %.not208 = icmp eq ptr %i.ho, null
  %i.hr = select i1 %.not208, ptr %i.hq, ptr %i.ho ; 2 uses
  %.not209 = icmp eq ptr %i.hr, null
  br i1 %.not209, label %.thread250, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1227 = phi ptr [ %i.hr, %bb.o ], [ %.0189233, %bb.n ]
  %.1191225 = phi i32 [ %.0190232, %bb.o ], [ %i.hj, %bb.n ]
  %.1193223 = phi i32 [ %.0192231, %bb.o ], [ %., %bb.n ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.1227, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !310 ; 2 uses
  %.not206 = icmp eq ptr %i.ht, null
  br i1 %.not206, label %.thread250, label %bb.n

._crit_edge239:                                   ; preds = %.lr.ph238, %.thread250
  %i.hu = load ptr, ptr %i.hb, align 8, !tbaa !200
  call void @dt_bauhaus_combobox_set(ptr noundef %i.hu, i32 noundef 0) #25
  %i.hv = load ptr, ptr %i.hb, align 8, !tbaa !200
  %i.hw = call i64 @g_signal_connect_data(ptr noundef %i.hv, ptr noundef nonnull @.str.29, ptr noundef nonnull @aspect_presets_changed, ptr noundef %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.hx = load ptr, ptr %i.hb, align 8, !tbaa !200
  %i.hy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.hx, ptr noundef %i.hy) #25
  %i.hz = load ptr, ptr %i.hb, align 8, !tbaa !200
  call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.hz, ptr noundef nonnull @dtgtk_cairo_paint_aspectflip, i32 noundef 0, ptr noundef null) #25
  %i.ia = load ptr, ptr %i.hb, align 8, !tbaa !200
  %i.ib = call i64 @g_signal_connect_data(ptr noundef %i.ia, ptr noundef nonnull @.str.63, ptr noundef nonnull @aspect_flip, ptr noundef %0, ptr noundef null, i32 noundef 0) #25 ; 0 uses
  %i.ic = load ptr, ptr %i.u, align 8, !tbaa !302
  %i.id = load ptr, ptr %i.hb, align 8, !tbaa !200
  store ptr %i.id, ptr %i.c, align 8, !tbaa !16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ie, align 8, !tbaa !16
  %i.if = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.18, i32 noundef 2239, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ic, ptr noundef nonnull %i.c) #25 ; 0 uses
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !301
  %i.ih = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #25
  %i.ii = call ptr @dt_ui_notebook_page(ptr noundef %i.ig, ptr noundef %i.ih, ptr noundef null) #25
  store ptr %i.ii, ptr %i.u, align 8, !tbaa !302
  %i.ij = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.65) #25 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ij, i32 noundef 4) #25
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.il, ptr noundef nonnull @.str.66) #25
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !187
  %i.in = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.im, ptr noundef %i.in) #25
  %i.io = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.68) #25 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 5 uses
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.io, i32 noundef 4) #25
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.iq, float noundef -1.000000e+02) #25
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_offset(ptr noundef %i.ir, float noundef 1.000000e+02) #25
  %i.is = load ptr, ptr %i.ip, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.is, ptr noundef nonnull @.str.66) #25
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !188
  %i.iu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #25
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.it, ptr noundef %i.iu) #25
  %i.iv = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.70) #25 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !191
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.iv, i32 noundef 4) #25
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !191
end_hunk_0
