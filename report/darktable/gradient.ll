inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_events_mouse_moved:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 156
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !167 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fh = uitofp nneg i32 %i.ff to float
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 160
  %i.fj = load i32, ptr %i.fi, align 16, !tbaa !168
  %i.fk = sitofp reassoc nsz arcp contract afn i32 %i.fj to float
  br label %dt_masks_get_image_size.exit116

bb.u:                                             ; preds = %bb.s
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 2760
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !169 ; 3 uses
  %.not.i114 = icmp eq ptr %i.fm, null
  br i1 %.not.i114, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 156
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !167 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fq = uitofp nneg i32 %i.fo to float
  %i.fr = fdiv reassoc nsz arcp contract afn float %i.fq, %i.fd
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 160
  %i.ft = load i32, ptr %i.fs, align 16, !tbaa !168
  %i.fu = sitofp reassoc nsz arcp contract afn i32 %i.ft to float
  %i.fv = fdiv reassoc nsz arcp contract afn float %i.fu, %i.fd
  br label %dt_masks_get_image_size.exit116

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ez, i64 376
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !171
  %i.fy = sitofp reassoc nsz arcp contract afn i32 %i.fx to float
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 380
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !172
  %i.gb = sitofp reassoc nsz arcp contract afn i32 %i.ga to float
  br label %dt_masks_get_image_size.exit116

dt_masks_get_image_size.exit116:                  ; preds = %bb.t, %bb.w, %bb.x
  %.0126 = phi nsz float [ %i.fh, %bb.t ], [ %i.fy, %bb.x ], [ %i.fr, %bb.w ]
  %.sink.i115 = phi float [ %i.fk, %bb.t ], [ %i.gb, %bb.x ], [ %i.fv, %bb.w ]
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !175
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1432
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !176
  %i.gf = fmul reassoc nsz arcp contract afn double %i.ge, 7.000000e+00
  %i.gg = fpext reassoc nsz arcp contract afn float %5 to double
  %i.gh = fdiv reassoc nsz arcp contract afn double %i.gf, %i.gg
  %i.gi = fptrunc reassoc nsz arcp contract afn double %i.gh to float ; 3 uses
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.gi ; 2 uses
  %i.gk = fmul reassoc nsz arcp contract afn float %.0126, %1 ; 3 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %.sink.i115, %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @_gradient_get_distance(float noundef %i.gk, float noundef %i.gl, float noundef %i.gi, ptr noundef nonnull %8, i32 noundef %9, i32 poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g)
  %i.gm = load ptr, ptr %8, align 8, !tbaa !34
  %i.gn = tail call ptr @g_list_nth_data(ptr noundef %i.gm, i32 noundef %9) #12 ; 2 uses
  %.not104 = icmp eq ptr %i.gn, null
  br i1 %.not104, label %.thread, label %bb.y

bb.y:                                             ; preds = %dt_masks_get_image_size.exit116
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !35 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !29
  %i.gr = fsub reassoc nsz arcp contract afn float %i.gk, %i.gq ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !29
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gl, %i.gu ; 2 uses
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.gv
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %i.gs
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !29
  %i.ha = fsub reassoc nsz arcp contract afn float %i.gk, %i.gz ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !29
  %i.he = fsub reassoc nsz arcp contract afn float %i.gl, %i.hd ; 2 uses
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.he
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %i.hb
  br label %.thread

.thread:                                          ; preds = %dt_masks_get_image_size.exit116, %bb.y
  %i.hh = phi float [ %i.gx, %bb.y ], [ f0x7F7FFFFF, %dt_masks_get_image_size.exit116 ]
  %i.hi = phi reassoc nsz arcp contract afn float [ %i.hg, %bb.y ], [ f0x7F7FFFFF, %dt_masks_get_image_size.exit116 ]
  %i.hj = fcmp reassoc nsz arcp contract afn olt float %i.hh, %i.gj
  %i.hk = fcmp reassoc nsz arcp contract afn olt float %i.hi, %i.gj
  %or.cond = select i1 %i.hj, i1 true, i1 %i.hk
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 1, ptr %i.hl, align 8, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 1, ptr %i.hm, align 4, !tbaa !19
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.hn, align 8, !tbaa !182
  br label %bb.af

bb.aa:                                            ; preds = %.thread
  %i.ho = load i32, ptr %i.c, align 4, !tbaa !32
  %.not105 = icmp eq i32 %i.ho, 0
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.hp, align 8, !tbaa !20
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 1, ptr %i.hq, align 4, !tbaa !19
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.hr, align 8, !tbaa !182
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.hs = load i32, ptr %i.d, align 4, !tbaa !32
  %.not106 = icmp eq i32 %i.hs, 0
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.ht, align 8, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  br i1 %.not106, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.hu, align 4, !tbaa !19
  store i32 1, ptr %i.hv, align 8, !tbaa !182
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  store i32 0, ptr %i.hu, align 4, !tbaa !19
  store i32 0, ptr %i.hv, align 8, !tbaa !182
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae, %bb.ad, %bb.z
  tail call void @dt_control_queue_redraw_center() #12
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !19
  %.not107 = icmp eq i32 %i.hx, 0
  br i1 %.not107, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !182
  %.not108 = icmp eq i32 %i.hz, 0
  br i1 %.not108, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !183
  %.not109 = icmp eq i32 %i.ib, 1
  %. = zext i1 %.not109 to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1 = phi i32 [ %., %bb.ah ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ak

bb.aj:                                            ; preds = %.thread139
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.r, %dt_masks_get_image_size.exit113, %bb.aj, %bb.ai, %dt_masks_get_image_size.exit, %bb.c
  %.2 = phi i32 [ 1, %bb.c ], [ 1, %dt_masks_get_image_size.exit ], [ %.1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.r ], [ 0, %dt_masks_get_image_size.exit113 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_events_mouse_scrolled(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.d = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.e = or i32 %i.d, %4
  %i.f = and i32 %i.e, %i.c
  %.not75 = icmp eq i32 %i.f, 1
  br i1 %.not75, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28
  %i.i = and i32 %i.h, 136
  %.not71 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not71, ptr @.str.12, ptr @.str.11
  %i.k = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.j) #12
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, 1.000000e+00
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !28
  %i.n = and i32 %i.m, 136
  %.not72 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not72, ptr @.str.12, ptr @.str.11
  %i.p = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.o) #12
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.p, float 1.000000e-03)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.057.a = phi float [ %i.q, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %.not73 = icmp eq i32 %3, 0
  %9 = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %.057.a, float 8.000000e-01)
  %10 = fmul reassoc nnan nsz arcp contract afn float %9, 1.250000e+00
  %11 = fmul reassoc nnan nsz arcp contract afn float %.057.a, 8.000000e-01
  %.057 = select nsz i1 %.not73, float %11, float %10 ; 2 uses
  %i.r = load i32, ptr %i.g, align 8, !tbaa !28
  %i.s = and i32 %i.r, 136
  %.not74 = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not74, ptr @.str.12, ptr @.str.11
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.t, float noundef %.057) #12
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #12
  %i.v = fmul reassoc nnan nsz arcp contract afn float %.057, 1.000000e+02
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.w = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.x = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.y = or i32 %i.x, %4
  %i.z = and i32 %i.y, %i.w
  %.not76 = icmp eq i32 %i.z, 0
  br i1 %.not76, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i32 %i.ab, 136
  %.not68 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not68, ptr @.str.1, ptr @.str
  %i.ae = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ad) #12 ; 2 uses
  %.not69 = icmp eq i32 %3, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3C23D70A
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.af, float 2.000000e+00)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ae, f0xBC23D70A
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ah, float -2.000000e+00)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.058 = phi nsz float [ %i.ag, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !28
  %i.ak = and i32 %i.aj, 136
  %.not70 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not70, ptr @.str.1, ptr @.str
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.al, float noundef %.058) #12
  %i.am = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #12
  %i.an = fmul reassoc nnan nsz arcp contract afn float %.058, 5.000000e+01
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.j
  %.sink80 = phi float [ %i.an, %bb.j ], [ %i.v, %bb.e ]
  %.sink = phi ptr [ %i.am, %bb.j ], [ %i.u, %bb.e ]
  %i.ao = fpext reassoc nsz arcp contract afn float %.sink80 to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %.sink, double noundef %i.ao) #12
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.f
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148
  tail call void @dt_dev_masks_list_change(ptr noundef %i.ap) #12
  br label %bb.y

bb.l:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  %.not59 = icmp eq i32 %i.ar, 0
  br i1 %.not59, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !184
  %i.au = fcmp reassoc nsz arcp contract afn oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.aw = load float, ptr %i.av, align 8, !tbaa !185
  %i.ax = fcmp reassoc nsz arcp contract afn oeq float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %1, ptr %i.as, align 4, !tbaa !184
  store float %2, ptr %i.av, align 8, !tbaa !185
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ay = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.az = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.ba = or i32 %i.az, %4
  %i.bb = and i32 %i.ba, %i.ay
  %.not77 = icmp eq i32 %i.bb, 4
  br i1 %.not77, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not65 = icmp eq i32 %3, 0
  %i.bc = select reassoc nsz arcp contract afn i1 %.not65, float -5.000000e-02, float 5.000000e-02
  %i.bd = tail call reassoc nsz arcp contract afn float @dt_masks_form_change_opacity(ptr noundef %5, i32 noundef %6, float noundef %i.bc) #12 ; 0 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.be = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.bf = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.bg = or i32 %i.bf, %4
  %i.bh = and i32 %i.bg, %i.be
  %.not78 = icmp eq i32 %i.bh, 1
  br i1 %.not78, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %12 = load ptr, ptr %5, align 8, !tbaa !21
  %13 = load ptr, ptr %12, align 8, !tbaa !24     ; 2 uses
  %.not63 = icmp eq i32 %3, 0
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %15 = load float, ptr %14, align 4, !tbaa !30
  %16 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %15, float 1.000000e-03) ; 2 uses
  %17 = fmul reassoc nnan nsz arcp contract afn float %16, 8.000000e-01
  %18 = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %16, float 8.000000e-01)
  %19 = fmul reassoc nnan nsz arcp contract afn float %18, 1.250000e+00
  %.sink81 = select i1 %.not63, float %17, float %19
  store float %.sink81, ptr %14, align 4, !tbaa !30
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.bi, ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !28
  %i.bl = and i32 %i.bk, 136
  %.not64 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not64, ptr @.str.12, ptr @.str.11
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !30
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.bm, float noundef %i.bo) #12
  %i.bp = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #12
  %i.bq = load float, ptr %i.bn, align 4, !tbaa !30
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, 1.000000e+02
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.bp, double noundef %i.bs) #12
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !183
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %5, align 8, !tbaa !21
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 2 uses
  %.not62 = icmp eq i32 %3, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !26 ; 2 uses
  br i1 %.not62, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, f0x3C23D70A
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ca, float 2.000000e+00)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bz, f0xBC23D70A
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cc, float -2.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink82 = phi float [ %i.cd, %bb.w ], [ %i.cb, %bb.v ]
  store float %.sink82, ptr %i.by, align 4, !tbaa !26
  %i.ce = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !26
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, 5.000000e+01
  %i.ci = fpext reassoc nsz arcp contract afn float %i.ch to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.ce, double noundef %i.ci) #12
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.cj, ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.l, %bb.q, %bb.t, %bb.x, %bb.s, %bb.k
  %.0 = phi i32 [ 1, %bb.k ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.x ], [ 1, %bb.t ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_events_button_pressed(ptr noundef %0, float %1, float %2, double %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 %8, ptr noundef %9, i32 noundef %10) #0 {
bb.a:
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %4, 1
  %i.b = icmp eq i32 %5, 5
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %7, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !26
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.f, ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %10, ptr noundef %0) #12
  br label %.thread52

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.j = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.k = or i32 %i.j, %6
  %i.l = and i32 %i.k, %i.i
  %.not54 = icmp eq i32 %i.l, 1
  br i1 %.not54, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %9, align 8, !tbaa !34
  %i.n = tail call ptr @g_list_nth_data(ptr noundef %i.m, i32 noundef %10) #12
  %.not47 = icmp eq ptr %i.n, null
  br i1 %.not47, label %.thread52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 1, ptr %i.o, align 8, !tbaa !186
  br label %.thread52

bb.h:                                             ; preds = %bb.e
  %.pr = load i32, ptr %i.g, align 4, !tbaa !11
  %.not48 = icmp eq i32 %.pr, 0
  br i1 %.not48, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !183
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %9, align 8, !tbaa !34
  %i.t = tail call ptr @g_list_nth_data(ptr noundef %i.s, i32 noundef %10) #12 ; 2 uses
  %.not49 = icmp eq ptr %i.t, null
  br i1 %.not49, label %.thread52, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20
  %.not50 = icmp eq i32 %i.v, 0
  %. = select i1 %.not50, i64 112, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 %.
  store i32 1, ptr %i.w, align 8, !tbaa !32
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.aa = load float, ptr %i.z, align 4, !tbaa !187
  %i.ab = fsub reassoc nsz arcp contract afn float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.ab, ptr %i.ac, align 4, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ag = load float, ptr %i.af, align 8, !tbaa !188
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.ah, ptr %i.ai, align 8, !tbaa !174
  br label %.thread52

.thread:                                          ; preds = %bb.d, %bb.h
  %i.aj = icmp eq i32 %4, 3
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  tail call void @dt_masks_set_edit_mode(ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_iop_update(ptr noundef %0) #12
  tail call void @dt_control_queue_redraw_center() #12
  br label %.thread52

bb.m:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.am = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  store <2 x float> %i.am, ptr %i.al, align 4, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i32 1, ptr %i.an, align 8, !tbaa !147
  br label %.thread52

.thread52:                                        ; preds = %bb.i, %bb.m, %bb.k, %bb.j, %bb.g, %bb.f, %bb.a, %bb.l, %bb.c
  %.2 = phi i32 [ 1, %bb.c ], [ 1, %bb.l ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.a ], [ 1, %bb.g ], [ 1, %bb.k ], [ 0, %bb.m ], [ 0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_events_button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [8 x float], align 16             ; 12 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !149 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load float, ptr %i.f, align 8, !tbaa !166 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.g, 0.000000e+00
  %i.i = select reassoc nsz arcp contract afn i1 %i.h, float %i.g, float 1.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !167  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = uitofp nneg i32 %i.k to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.o = load i32, ptr %i.n, align 16, !tbaa !168
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to float
  %i.q = insertelement <2 x float> poison, float %i.m, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  br label %dt_masks_get_image_size.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2760
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !169  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !167  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f
end_hunk_0
