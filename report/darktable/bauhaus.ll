Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/bauhaus?download=true
inline.NumInlined: 300
inline.NumDeleted: 29
begin_hunk_0_@_slider_add_step:bb.a

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !125
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !179 ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cs, %i.cu
  br i1 %i.cv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !126
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cx, %bb.w ], [ %i.cu, %bb.v ]
  store float %i.cy, ptr %i.cr, align 8, !tbaa !125
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.t
  %i.cz = fadd reassoc nsz arcp contract afn float %.1, %.1.i
  br label %.sink.split

sub_0:                                            ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !124 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 1
  %.not74 = icmp eq i8 %i.dc, -62
  br i1 %.not74, label %sub_1, label %.tail._crit_edge

sub_1:                                            ; preds = %sub_0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.de = load i8, ptr %i.dd, align 1
  %.not75 = icmp eq i8 %i.de, -80
  br i1 %.not75, label %.tail, label %.tail._crit_edge

.tail:                                            ; preds = %sub_1
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.z, label %.tail._crit_edge

.tail._crit_edge:                                 ; preds = %sub_1, %sub_0, %.tail
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !125
  br label %bb.ab

bb.z:                                             ; preds = %.tail
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dj = load float, ptr %i.di, align 8, !tbaa !125 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !126
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dj, %i.dl ; 2 uses
  %i.dn = load float, ptr %i.bn, align 8, !tbaa !127
  %i.do = fmul reassoc nsz arcp contract afn float %i.dm, %i.dn
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, -3.600000e+02
  %i.dq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dp)
  %i.dr = fpext reassoc nsz arcp contract afn float %i.dq to double
  %i.ds = fcmp reassoc nsz arcp contract afn olt double %i.dr, 1.000000e-04
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dt = fadd reassoc nsz arcp contract afn float %.1, %.1.i ; 2 uses
  %i.du = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dt)
  %i.dv = fdiv reassoc nsz arcp contract afn float %i.du, %i.dm
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.dv, 2.000000e+00
  br i1 %i.dw, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %.tail._crit_edge, %bb.aa, %bb.z
  %i.dx = phi float [ %.pre, %.tail._crit_edge ], [ %i.dj, %bb.aa ], [ %i.dj, %bb.z ] ; 2 uses
  %i.dy = fadd reassoc nsz arcp contract afn float %.1, %.1.i ; 3 uses
  %i.dz = fcmp reassoc nsz arcp contract afn ogt float %i.dy, %i.dx
  br i1 %i.dz, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !126 ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.dy, %i.eb
  %. = select reassoc nsz arcp contract afn i1 %i.ec, float %i.eb, float %i.dy
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.ac, %bb.aa, %bb.y
  %.sink = phi float [ %i.cz, %bb.y ], [ %i.dt, %bb.aa ], [ %i.dx, %bb.ab ], [ %., %bb.ac ]
  tail call void @dt_bauhaus_slider_set(ptr noundef nonnull %0, float noundef %.sink)
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_combobox_next_sensitive(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 1543512064) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %0, i32 noundef %2) #26
  %i.d = sitofp reassoc nsz arcp contract afn i32 %1 to float
  %i.e = fmul reassoc nsz arcp contract afn float %i.c, %i.d
  %i.f = fptosi float %i.e to i32                 ; 4 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !144  ; 4 uses
  %.inv = icmp slt i32 %i.f, 1
  %i.h = select i1 %.inv, i32 -1, i32 1           ; 3 uses
  %i.i = icmp eq i32 %i.g, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread50, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169
  store ptr %i.m, ptr %i.a, align 8, !tbaa !257
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !174
  %i.p = call i32 %i.k(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef %i.f, ptr noundef nonnull %i.a) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %.thread50, label %bb.e

.thread50:                                        ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.s = load i32, ptr %i.r, align 4, !tbaa !234  ; 2 uses
  %.not44 = icmp eq i32 %i.s, -1
  br i1 %.not44, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %.thread50
  %i.t = add nsw i32 %i.h, %i.g
  br label %bb.e

bb.e:                                             ; preds = %.thread50, %bb.d, %bb.c
  %.1 = phi i32 [ %i.p, %bb.c ], [ %i.t, %bb.d ], [ %i.s, %.thread50 ] ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.x = load i32, ptr %i.w, align 8, !tbaa !88
  %i.y = sext i32 %i.x to i64
  %i.z = call noalias ptr @g_utf8_casefold(ptr noundef nonnull %i.v, i64 noundef %i.y) #26 ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 200
  %i.ab = icmp ne i32 %i.f, 0
  %i.ac = icmp sgt i32 %.1, -1
  %or.cond51 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond51, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.254 = phi i32 [ %i.aq, %bb.h ], [ %.1, %bb.e ] ; 4 uses
  %.03953 = phi i32 [ %.140, %bb.h ], [ %i.g, %bb.e ] ; 3 uses
  %.04152 = phi i32 [ %.142, %bb.h ], [ %i.f, %bb.e ] ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !136 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !139
  %i.ag = icmp ult i32 %.254, %i.af
  br i1 %i.ag, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !140
  %i.ah = zext nneg i32 %.254 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !162
  %i.al = call noalias ptr @g_utf8_casefold(ptr noundef %i.ak, i64 noundef -1) #26 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !143
  %.not45 = icmp eq i32 %i.an, 0
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.z) #29
  %.not46 = icmp eq ptr %i.ao, null               ; 2 uses
  %i.ap = select i1 %.not46, i32 0, i32 %i.h
  %spec.select = sub nsw i32 %.04152, %i.ap
  %spec.select47 = select i1 %.not46, i32 %.03953, i32 %.254
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.142 = phi i32 [ %.04152, %bb.f ], [ %spec.select, %bb.g ] ; 2 uses
  %.140 = phi i32 [ %.03953, %bb.f ], [ %spec.select47, %bb.g ] ; 2 uses
  call void @g_free(ptr noundef %i.al) #26
  %i.aq = add nsw i32 %.254, %i.h                 ; 2 uses
  %i.ar = icmp ne i32 %.142, 0
  %i.as = icmp sgt i32 %i.aq, -1
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.e
  %.039.lcssa = phi i32 [ %i.g, %bb.e ], [ %.140, %bb.h ], [ %.03953, %.lr.ph ]
  call void @g_free(ptr noundef %i.z) #26
  call fastcc void @_combobox_set(ptr noundef nonnull %0, i32 noundef %.039.lcssa, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_popup_show(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !89
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_popup_hide()
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i32 0, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 0, ptr %i.i, align 4, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 344 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !114  ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_stop_cursor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @g_source_remove(i32 noundef %i.l) #26 ; 0 uses
  store i32 0, ptr %i.k, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 348
  store i32 0, ptr %i.n, align 4, !tbaa !115
  br label %_stop_cursor.exit

_stop_cursor.exit:                                ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169  ; 5 uses
  %.not.i149 = icmp eq ptr %i.p, null
  br i1 %.not.i149, label %_request_focus.exit, label %bb.e

bb.e:                                             ; preds = %_stop_cursor.exit
  %i.q = load i32, ptr %i.p, align 8, !tbaa !185
  switch i32 %i.q, label %.lr.ph.i [
    i32 7, label %bb.f
    i32 3, label %.lr.ph.i8.i.preheader
  ]

.lr.ph.i8.i.preheader:                            ; preds = %.lr.ph.ithread-pre-split.i, %bb.e
  br label %.lr.ph.i8.i

bb.f:                                             ; preds = %bb.e
  tail call void @dt_iop_request_focus(ptr noundef nonnull %i.p) #26
  br label %_request_focus.exit

.lr.ph.ithread-pre-split.i:                       ; preds = %.lr.ph.i
  %.pr.i = load i32, ptr %i.s, align 8, !tbaa !185
  %.not4.i.i = icmp eq i32 %.pr.i, 3
  br i1 %.not4.i.i, label %.lr.ph.i8.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.ithread-pre-split.i
  %.06.i17.i = phi ptr [ %i.s, %.lr.ph.ithread-pre-split.i ], [ %i.p, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i17.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !245  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_request_focus.exit, label %.lr.ph.ithread-pre-split.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.preheader, %bb.g
  %.06.i9.i = phi ptr [ %i.v, %bb.g ], [ %i.p, %.lr.ph.i8.i.preheader ] ; 3 uses
  %i.t = load i32, ptr %.06.i9.i, align 8, !tbaa !185
  %.not4.i10.i = icmp eq i32 %i.t, 3
  br i1 %.not4.i10.i, label %dt_action_lib.exit13.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i8.i
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i9.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245  ; 2 uses
  %.not.i11.i = icmp eq ptr %i.v, null
  br i1 %.not.i11.i, label %dt_action_lib.exit13.i, label %.lr.ph.i8.i

dt_action_lib.exit13.i:                           ; preds = %bb.g, %.lr.ph.i8.i
  %.0.lcssa.i12.i = phi ptr [ %.06.i9.i, %.lr.ph.i8.i ], [ null, %bb.g ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.0.lcssa.i12.i, ptr %i.x, align 8, !tbaa !255
  br label %_request_focus.exit

_request_focus.exit:                              ; preds = %.lr.ph.i, %_stop_cursor.exit, %bb.f, %dt_action_lib.exit13.i
  tail call void @gtk_widget_set_state_flags(ptr noundef %0, i32 noundef 32, i32 noundef 0) #26
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.aa = tail call ptr @gtk_widget_get_style_context(ptr noundef %i.z) #26 ; 4 uses
  tail call void @gtk_style_context_add_class(ptr noundef %i.aa, ptr noundef nonnull @.str.67) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !130
  %.not143 = icmp eq i32 %i.ac, 0
  br i1 %.not143, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_request_focus.exit
  tail call void @gtk_style_context_remove_class(ptr noundef %i.aa, ptr noundef nonnull @.str.68) #26
  br label %bb.j

bb.i:                                             ; preds = %_request_focus.exit
  tail call void @gtk_style_context_add_class(ptr noundef %i.aa, ptr noundef nonnull @.str.68) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.ae = tail call i32 @gtk_widget_get_state_flags(ptr noundef %i.ad) #26
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @gtk_style_context_get_padding(ptr noundef %i.aa, i32 noundef %i.ae, ptr noundef nonnull %i.af) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 10 uses
  tail call void @gtk_widget_get_allocation(ptr noundef nonnull %0, ptr noundef nonnull %i.ag) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !60
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = tail call ptr @dt_ui_main_window(ptr noundef %i.ak) #26
  %i.am = tail call ptr @gtk_widget_get_window(ptr noundef %i.al) #26 ; 2 uses
  %i.an = tail call ptr @gtk_widget_get_window(ptr noundef nonnull %0) #26 ; 3 uses
  %.not144 = icmp eq ptr %i.an, null
  br i1 %.not144, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre160 = load i32, ptr %i.ag, align 8, !tbaa !305
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call ptr @gdk_window_get_toplevel(ptr noundef nonnull %i.an) #26 ; 2 uses
  %i.ap = call i32 @gdk_window_get_origin(ptr noundef %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 3 uses
  %i.ar = call i32 @gdk_window_get_origin(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aq) #26 ; 0 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !80
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !305
  %i.au = sub nsw i32 %i.at, %i.as                ; 2 uses
  store i32 %i.au, ptr %i.ag, align 8, !tbaa !305
  %i.av = load i32, ptr %i.b, align 4, !tbaa !80
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !96
  %i.ax = sub nsw i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.aq, align 4, !tbaa !96
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.ay = phi i32 [ %i.au, %bb.k ], [ %.pre160, %._crit_edge ]
  %.0133 = phi ptr [ %i.ao, %bb.k ], [ %i.am, %._crit_edge ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !100 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !205
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !206
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = icmp eq i32 %i.ba, 1
  br i1 %i.bj, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !60
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.bm = call i32 @dt_ui_panel_ancestor(ptr noundef %i.bl, i32 noundef 4, ptr noundef nonnull %0) #26
  %.not145 = icmp eq i32 %i.bm, 0
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !60
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !66 ; 2 uses
  br i1 %.not145, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = call i32 @dt_ui_panel_get_size(ptr noundef %i.bo, i32 noundef 4) #26
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bq = call i32 @dt_ui_panel_ancestor(ptr noundef %i.bo, i32 noundef 3, ptr noundef nonnull %0) #26
  %.not146 = icmp eq i32 %i.bq, 0
  br i1 %.not146, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !60
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66
  %i.bt = call i32 @dt_ui_panel_get_size(ptr noundef %i.bs, i32 noundef 3) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bu = phi i32 [ %i.bt, %bb.p ], [ %i.bp, %bb.n ], [ 300, %bb.o ]
  %i.bv = load double, ptr @INNER_PADDING, align 8, !tbaa !87
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bv, 2.000000e+00
  %i.bx = sitofp reassoc nsz arcp contract afn i32 %i.bu to double
  %i.by = fsub reassoc nsz arcp contract afn double %i.bx, %i.bw
  %i.bz = fptosi double %i.by to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.ca = load i16, ptr %i.bb, align 8, !tbaa !203
  %i.cb = sext i16 %i.ca to i32
  %i.cc = load i16, ptr %i.bf, align 8, !tbaa !204
  %i.cd = sext i16 %i.cc to i32
  %i.ce = add nsw i32 %i.be, %i.bi
  %i.cf = add nsw i32 %i.ce, %i.cb
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = sub i32 %i.ba, %i.cg
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %storemerge = phi i32 [ %spec.select, %bb.r ], [ %i.bz, %bb.q ]
  store i32 %storemerge, ptr %i.az, align 8, !tbaa !100
  %i.ci = call fastcc i32 @_natural_width(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.cj = load i32, ptr %i.az, align 8, !tbaa !100
  %i.ck = icmp slt i32 %i.cj, %i.ci
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.ci, ptr %i.az, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cl = call ptr @gdk_display_get_default() #26
  %i.cm = call ptr @gdk_display_get_default_seat(ptr noundef %i.cl) #26
  %i.cn = call ptr @gdk_seat_get_pointer(ptr noundef %i.cm) #26
  %i.co = call ptr @gdk_window_get_device_position(ptr noundef %.0133, ptr noundef %i.cn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #26 ; 0 uses
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !80  ; 3 uses
  %i.cq = load i32, ptr %i.ag, align 8, !tbaa !305 ; 2 uses
  %i.cr = load i32, ptr %i.az, align 8, !tbaa !100 ; 4 uses
  %i.cs = add nsw i32 %i.cr, %i.cq
  %i.ct = icmp sgt i32 %i.cp, %i.cs
  %i.cu = icmp slt i32 %i.cp, %i.cq
  %or.cond = or i1 %i.cu, %i.ct
  br i1 %or.cond, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cv = sitofp reassoc nsz arcp contract afn i32 %i.cp to float
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.cr to float
  %.val = load i32, ptr %i.ab, align 4, !tbaa !130
  %.not.i150 = icmp eq i32 %.val, 0
  br i1 %.not.i150, label %_widget_get_quad_width.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 332
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !83
  %i.da = fpext reassoc nsz arcp contract afn float %i.cz to double
  %i.db = load double, ptr @INNER_PADDING, align 8, !tbaa !87
  %i.dc = fmul reassoc nsz arcp contract afn double %i.db, 4.000000e+00
  %i.dd = fadd reassoc nsz arcp contract afn double %i.dc, %i.da
  %i.de = fptrunc reassoc nsz arcp contract afn double %i.dd to float
  br label %_widget_get_quad_width.exit

_widget_get_quad_width.exit:                      ; preds = %bb.v, %bb.w
  %.0.i = phi nsz float [ %i.de, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.df = fsub reassoc nsz arcp contract afn float %i.cw, %.0.i
  %1 = fmul reassoc nsz arcp contract afn float %i.df, 5.000000e-01
  %2 = fsub reassoc nsz arcp contract afn float %i.cv, %1
  %3 = fptosi float %2 to i32
  store i32 %3, ptr %i.ag, align 8, !tbaa !305
  %4 = load i32, ptr %i.b, align 4, !tbaa !80
  %5 = sitofp reassoc nsz arcp contract afn i32 %4 to float
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %7 = load float, ptr %6, align 8, !tbaa !81
  %8 = fmul reassoc nsz arcp contract afn float %7, 5.000000e-01
  %9 = fsub reassoc nsz arcp contract afn float %5, %8
  %10 = fptosi float %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %10, ptr %11, align 4, !tbaa !96
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %.neg157 = add i32 %i.ba, %i.ay
  %i.dg = add nsw i32 %i.be, %i.bi
  %i.dh = add i32 %i.dg, %i.cr
  %i.di = sub i32 %.neg157, %i.dh
  store i32 %i.di, ptr %i.ag, align 8, !tbaa !305
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !80  ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !96 ; 2 uses
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load i32, ptr %i.ah, align 4, !tbaa !120
  %i.do = add nsw i32 %i.dn, %i.dl
  %i.dp = icmp sgt i32 %i.dj, %i.do
  br i1 %i.dp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dq = sitofp reassoc nsz arcp contract afn i32 %i.dj to float
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !81
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, 5.000000e-01
  %i.du = fsub reassoc nsz arcp contract afn float %i.dq, %i.dt
  %i.dv = fptosi float %i.du to i32
  store i32 %i.dv, ptr %i.dk, align 4, !tbaa !96
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %_widget_get_quad_width.exit
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !112
  switch i32 %i.dy, label %bb.ah [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !151
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store float %i.ea, ptr %i.eb, align 8, !tbaa !128
  store i32 %i.cr, ptr %i.ah, align 4, !tbaa !120
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !67 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 352
  store i32 6, ptr %i.ed, align 8, !tbaa !258
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 348
  store i32 0, ptr %i.ee, align 4, !tbaa !115
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 344 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !114
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ac, label %_start_cursor.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ei = call i32 @g_timeout_add(i32 noundef 500, ptr noundef nonnull @_cursor_timeout_callback, ptr noundef null) #26
  store i32 %i.ei, ptr %i.ef, align 8, !tbaa !114
  br label %_start_cursor.exit

_start_cursor.exit:                               ; preds = %bb.ab, %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 0, ptr %i.ej, align 8, !tbaa !259
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.el = load float, ptr %i.ek, align 8, !tbaa !81
  %i.em = sdiv i32 %i.ai, 2
  %i.en = sitofp reassoc nsz arcp contract afn i32 %i.em to float
  %i.eo = fadd reassoc nsz arcp contract afn float %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store float %i.eo, ptr %i.ep, align 4, !tbaa !118
  br label %bb.ah

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.eq = load ptr, ptr %i.o, align 8, !tbaa !169
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !257
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !306 ; 2 uses
  %.not147 = icmp eq ptr %i.et, null
  br i1 %.not147, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void %i.et(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !136
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !139 ; 2 uses
  %.not148.not = icmp eq i32 %i.ex, 0
  br i1 %.not148.not, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !81 ; 2 uses
  %i.fa = uitofp reassoc nsz arcp contract afn i32 %i.ex to float
  %i.fb = fmul reassoc nsz arcp contract afn float %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fd = load <2 x i16>, ptr %i.fc, align 4, !tbaa !219
  %i.fe = sitofp <2 x i16> %i.fd to <2 x float>   ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fadd reassoc nsz arcp contract afn float %i.fb, %i.ff
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !133
  %i.fl = sitofp reassoc nsz arcp contract afn i32 %i.fk to float
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fi, %i.fl
  %i.fn = load i32, ptr %i.er, align 8, !tbaa !144
  %i.fo = sitofp reassoc nsz arcp contract afn i32 %i.fn to float
  %i.fp = fmul reassoc nsz arcp contract afn float %i.ez, %i.fo ; 2 uses
  %i.fq = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fp, i64 1
  %i.fs = fptosi <2 x float> %i.fr to <2 x i32>
  store <2 x i32> %i.fs, ptr %i.ah, align 4, !tbaa !80
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float 0.000000e+00, ptr %i.ft, align 8, !tbaa !117
  %i.fu = sdiv i32 %i.ai, 2
  %i.fv = sitofp reassoc nsz arcp contract afn i32 %i.fu to float
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fp, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store float %i.fw, ptr %i.fx, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.aa, %_start_cursor.exit
  %i.fy = load i16, ptr %i.bb, align 8, !tbaa !203
  %i.fz = sext i16 %i.fy to i32
  %i.ga = load i16, ptr %i.bf, align 8, !tbaa !204
  %i.gb = sext i16 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !207
  %i.gf = sext i16 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.gh = load i16, ptr %i.gg, align 4, !tbaa !208
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add nsw i32 %i.gi, %i.gf
  %i.gk = load <4 x i16>, ptr %i.af, align 8, !tbaa !219
  %i.gl = sext <4 x i16> %i.gk to <4 x i32>       ; 2 uses
  %i.gm = load <2 x i32>, ptr %i.ag, align 8, !tbaa !80
  %i.gn = insertelement <4 x i32> poison, i32 %i.gc, i64 0
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gj, i64 1
  %i.gp = shufflevector <4 x i32> %i.go, <4 x i32> %i.gl, <4 x i32> <i32 0, i32 1, i32 5, i32 7>
  %i.gq = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.gr = shufflevector <2 x i32> %i.gm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x i32> %i.gr, <4 x i32> %i.gq, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gt = add nsw <4 x i32> %i.gp, %i.gs          ; 2 uses
  %i.gu = load <2 x i32>, ptr %i.az, align 8, !tbaa !80
  %i.gv = shufflevector <2 x i32> %i.gu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x i32> %i.gs, <4 x i32> %i.gv, <4 x i32> <i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.gx = sub nsw <4 x i32> %i.gt, %i.gw
  %i.gy = add nsw <4 x i32> %i.gt, %i.gw
  %i.gz = shufflevector <4 x i32> %i.gx, <4 x i32> %i.gy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.gz, ptr %i.ag, align 8, !tbaa !80
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 0, ptr %i.ha, align 4, !tbaa !101
  %i.hb = call ptr @gdk_display_get_default() #26
  call void @gtk_tooltip_trigger_tooltip_query(ptr noundef %i.hb) #26
  %i.hc = icmp eq ptr %.0133, %i.am
  br i1 %i.hc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hd = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.he = call i64 @g_signal_connect_data(ptr noundef %i.hd, ptr noundef nonnull @.str.69, ptr noundef nonnull @dt_shortcut_dispatcher, ptr noundef null, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !93
  call void @gtk_window_set_attached_to(ptr noundef %i.hf, ptr noundef nonnull %0) #26
  %i.hg = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.hh = call ptr @gtk_widget_get_window(ptr noundef %i.hg) #26
  call void @gdk_window_set_transient_for(ptr noundef %i.hh, ptr noundef %.0133) #26
  call fastcc void @_window_position(i32 noundef 0)
  %i.hi = load ptr, ptr %i.e, align 8, !tbaa !93
  call void @gtk_widget_show_all(ptr noundef %i.hi) #26
  %i.hj = load ptr, ptr %i.y, align 8, !tbaa !94
  call void @gtk_widget_grab_focus(ptr noundef %i.hj) #26
  br label %bb.ak

.critedge:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_state_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @dt_accel_get_speed_multiplier(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #2

end_hunk_0
