Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gradientslider?download=true
inline.NumInlined: 69
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_gradient_slider_button_press:bb.a
  switch i32 %i.j, label %.thread.thread [
    i32 1, label %bb.f
    i32 3, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread65..threadthread-pre-split_crit_edge
  ]

DTGTK_IS_GRADIENT_SLIDER.exit.thread65..threadthread-pre-split_crit_edge: ; preds = %DTGTK_IS_GRADIENT_SLIDER.exit.thread65
  %.pr.pre = load i32, ptr %1, align 8, !tbaa !199
  br label %.thread

bb.f:                                             ; preds = %DTGTK_IS_GRADIENT_SLIDER.exit.thread65
  %i.k = load i32, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.l = icmp eq i32 %i.k, 5
  br i1 %i.l, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load i32, ptr %i.m, align 8, !tbaa !89
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.o, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 1, ptr %i.p, align 4, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = zext nneg i32 %i.s to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.x, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #11
  tail call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #11
  tail call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #11
  br label %.thread.thread

.thread:                                          ; preds = %DTGTK_IS_GRADIENT_SLIDER.exit.thread65..threadthread-pre-split_crit_edge, %bb.f
  %i.y = phi i32 [ %i.k, %bb.f ], [ %.pr.pre, %DTGTK_IS_GRADIENT_SLIDER.exit.thread65..threadthread-pre-split_crit_edge ]
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !200
  %i.ae = tail call fastcc i32 @_get_active_marker_from_screen(ptr noundef nonnull %0, double noundef %i.ab, double noundef %i.ad) ; 3 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !119
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.ai, align 4, !tbaa !120
  %i.aj = load double, ptr %i.aa, align 8, !tbaa !121
  %i.ak = fptosi double %i.aj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @gtk_widget_get_allocation(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %i.al = sitofp reassoc nsz arcp contract afn i32 %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !112
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ao to double
  %i.aq = load <2 x i32>, ptr %i.am, align 8, !tbaa !38
  %i.ar = sitofp <2 x i32> %i.aq to <2 x double>  ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = fsub reassoc nsz arcp contract afn double %i.al, %i.as
  %i.au = call reassoc nnan nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ar)
  %i.av = fsub reassoc nnan nsz arcp contract afn double %i.ap, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !91 ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn double %i.av, %i.ax
  %i.az = fdiv reassoc nsz arcp contract afn double %i.at, %i.ay
  %i.ba = fptrunc reassoc nsz arcp contract afn double %i.az to float
  %i.bb = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ba)
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  %i.bd = fmul reassoc nsz arcp contract afn double %i.ax, %i.bc ; 3 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt double %i.bd, 1.000000e+00
  %i.bf = fcmp reassoc nsz arcp contract afn olt double %i.bd, 0.000000e+00
  %i.bg = select reassoc nsz arcp contract afn i1 %i.bf, double 0.000000e+00, double %i.bd
  %i.bh = select reassoc nsz arcp contract afn i1 %i.be, double 1.000000e+00, double %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load i32, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !37
  %i.bn = fcmp reassoc nsz arcp contract afn ole double %i.bm, %i.bh
  %i.bo = zext i1 %i.bn to i32
  %i.bp = call reassoc nsz arcp contract afn fastcc double @_slider_move(ptr noundef nonnull %0, i32 noundef %i.bj, double noundef %i.bh, i32 noundef %i.bo) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 1, ptr %i.bq, align 4, !tbaa !122
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 1, ptr %i.br, align 8, !tbaa !90
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !33
  %.not62 = icmp eq i32 %i.bt, 0
  br i1 %.not62, label %bb.k, label %.thread.thread

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2760
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !150
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 640
  %i.by = load i32, ptr %i.bx, align 16, !tbaa !160
  %i.bz = mul i32 %i.by, 3                        ; 2 uses
  %i.ca = icmp ugt i32 %i.bz, 101
  %i.cb = call i32 @llvm.umax.i32(i32 %i.bz, i32 20)
  %spec.select = lshr i32 %i.cb, 1
  %i.cc = select i1 %i.ca, i32 50, i32 %spec.select
  %i.cd = call i32 @g_timeout_add(i32 noundef %i.cc, ptr noundef nonnull @_gradient_slider_postponed_value_change, ptr noundef nonnull %0) #11
  store i32 %i.cd, ptr %i.bs, align 8, !tbaa !33
  br label %.thread.thread

bb.l:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !32
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.m, label %.thread.thread

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.ch, align 8, !tbaa !90
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.ci, align 4, !tbaa !120
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !34
  %.not61 = icmp eq i32 %i.ck, %i.ae
  %. = select i1 %.not61, i32 -1, i32 %i.ae
  store i32 %., ptr %i.cj, align 8, !tbaa !34
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #11
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.g, %DTGTK_IS_GRADIENT_SLIDER.exit.thread65, %._crit_edge, %.thread, %bb.j, %bb.k, %bb.l, %bb.m, %DTGTK_IS_GRADIENT_SLIDER.exit.thread
  %.054 = phi i32 [ 0, %DTGTK_IS_GRADIENT_SLIDER.exit.thread ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %DTGTK_IS_GRADIENT_SLIDER.exit.thread65 ], [ 1, %.thread ], [ 1, %._crit_edge ], [ 1, %bb.g ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_slider_button_release(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = load atomic i64, ptr @_gradient_slider_get_type.static_g_define_type_id seq_cst, align 8
  %.not.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i, label %bb.b, label %dtgtk_gradient_slider_get_type.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_once_init_enter(ptr noundef nonnull @_gradient_slider_get_type.static_g_define_type_id) #11, !inline_history !0
  %.not4.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i.i.i, label %dtgtk_gradient_slider_get_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i64 @_gradient_slider_get_type_once(), !inline_history !0
  tail call void @g_once_init_leave(ptr noundef nonnull @_gradient_slider_get_type.static_g_define_type_id, i64 noundef %i.c) #11, !inline_history !0
  br label %dtgtk_gradient_slider_get_type.exit.i

dtgtk_gradient_slider_get_type.exit.i:            ; preds = %bb.c, %bb.b, %bb.a
  %i.d = load i64, ptr @_gradient_slider_get_type.static_g_define_type_id, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread, label %bb.d

bb.d:                                             ; preds = %dtgtk_gradient_slider_get_type.exit.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %DTGTK_IS_GRADIENT_SLIDER.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread32, label %DTGTK_IS_GRADIENT_SLIDER.exit

DTGTK_IS_GRADIENT_SLIDER.exit:                    ; preds = %bb.d, %bb.e
  %i.h = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull readonly %0, i64 noundef %i.d) #14, !inline_history !1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread32, !prof !106

DTGTK_IS_GRADIENT_SLIDER.exit.thread:             ; preds = %dtgtk_gradient_slider_get_type.exit.i, %DTGTK_IS_GRADIENT_SLIDER.exit
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__._gradient_slider_button_release, ptr noundef nonnull @.str.9) #11
  br label %bb.k

DTGTK_IS_GRADIENT_SLIDER.exit.thread32:           ; preds = %bb.e, %DTGTK_IS_GRADIENT_SLIDER.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %_get_active_marker.exit, label %bb.f

bb.f:                                             ; preds = %DTGTK_IS_GRADIENT_SLIDER.exit.thread32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35   ; 2 uses
  %3 = icmp ne i32 %i.m, -1
  br label %_get_active_marker.exit

_get_active_marker.exit:                          ; preds = %DTGTK_IS_GRADIENT_SLIDER.exit.thread32, %bb.f
  %4 = phi i1 [ %3, %bb.f ], [ true, %DTGTK_IS_GRADIENT_SLIDER.exit.thread32 ]
  %i.n = phi i32 [ %i.m, %bb.f ], [ %i.j, %DTGTK_IS_GRADIENT_SLIDER.exit.thread32 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119
  %i.q = icmp eq i32 %i.p, 1
  %or.cond = select i1 %i.q, i1 %4, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_get_active_marker.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.s = load i32, ptr %i.r, align 4, !tbaa !120
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 1, ptr %i.u, align 4, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !121
  %i.x = fptosi double %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @gtk_widget_get_allocation(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !112
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to double
  %i.ad = load <2 x i32>, ptr %i.z, align 8, !tbaa !38
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>  ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = fsub reassoc nsz arcp contract afn double %i.y, %i.af
  %i.ah = call reassoc nnan nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ae)
  %i.ai = fsub reassoc nnan nsz arcp contract afn double %i.ac, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !91 ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn double %i.ai, %i.ak
  %i.am = fdiv reassoc nsz arcp contract afn double %i.ag, %i.al
  %i.an = fptrunc reassoc nsz arcp contract afn double %i.am to float
  %i.ao = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.an)
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ak, %i.ap ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt double %i.aq, 1.000000e+00
  %i.as = fcmp reassoc nsz arcp contract afn olt double %i.aq, 0.000000e+00
  %i.at = select reassoc nsz arcp contract afn i1 %i.as, double 0.000000e+00, double %i.aq
  %i.au = select reassoc nsz arcp contract afn i1 %i.ar, double 1.000000e+00, double %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = sext i32 %i.n to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !37
  %i.az = fcmp reassoc nsz arcp contract afn ole double %i.ay, %i.au
  %i.ba = zext i1 %i.az to i32
  %i.bb = call reassoc nsz arcp contract afn fastcc double @_slider_move(ptr noundef nonnull %0, i32 noundef %i.n, double noundef %i.au, i32 noundef %i.ba) ; 0 uses
  call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.bc, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %.not29 = icmp eq i32 %i.be, 0
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = call i32 @g_source_remove(i32 noundef %i.be) #11 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.bd, align 8, !tbaa !33
  call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #11
  br label %bb.k

bb.k:                                             ; preds = %_get_active_marker.exit, %bb.g, %bb.j, %DTGTK_IS_GRADIENT_SLIDER.exit.thread
  %.0 = phi i32 [ 0, %DTGTK_IS_GRADIENT_SLIDER.exit.thread ], [ 1, %bb.j ], [ 1, %bb.g ], [ 1, %_get_active_marker.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_slider_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = load atomic i64, ptr @_gradient_slider_get_type.static_g_define_type_id seq_cst, align 8
  %.not.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i, label %bb.b, label %dtgtk_gradient_slider_get_type.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_once_init_enter(ptr noundef nonnull @_gradient_slider_get_type.static_g_define_type_id) #11, !inline_history !0
  %.not4.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i.i.i, label %dtgtk_gradient_slider_get_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i64 @_gradient_slider_get_type_once(), !inline_history !0
  tail call void @g_once_init_leave(ptr noundef nonnull @_gradient_slider_get_type.static_g_define_type_id, i64 noundef %i.c) #11, !inline_history !0
  br label %dtgtk_gradient_slider_get_type.exit.i

dtgtk_gradient_slider_get_type.exit.i:            ; preds = %bb.c, %bb.b, %bb.a
  %i.d = load i64, ptr @_gradient_slider_get_type.static_g_define_type_id, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread, label %bb.d

bb.d:                                             ; preds = %dtgtk_gradient_slider_get_type.exit.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %DTGTK_IS_GRADIENT_SLIDER.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread30, label %DTGTK_IS_GRADIENT_SLIDER.exit

DTGTK_IS_GRADIENT_SLIDER.exit:                    ; preds = %bb.d, %bb.e
  %i.h = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull readonly %0, i64 noundef %i.d) #14, !inline_history !1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread, label %DTGTK_IS_GRADIENT_SLIDER.exit.thread30, !prof !106

DTGTK_IS_GRADIENT_SLIDER.exit.thread:             ; preds = %dtgtk_gradient_slider_get_type.exit.i, %DTGTK_IS_GRADIENT_SLIDER.exit
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__._gradient_slider_motion_notify, ptr noundef nonnull @.str.9) #11
  br label %bb.l

DTGTK_IS_GRADIENT_SLIDER.exit.thread30:           ; preds = %bb.e, %DTGTK_IS_GRADIENT_SLIDER.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load i32, ptr %i.i, align 8, !tbaa !90
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %DTGTK_IS_GRADIENT_SLIDER.exit.thread30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34
  %.not26 = icmp eq i32 %i.m, -1
  br i1 %.not26, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.o = load i32, ptr %i.n, align 4, !tbaa !120
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !202
  %i.s = fptosi double %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @gtk_widget_get_allocation(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.s to double
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !112
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to double
  %i.y = load <2 x i32>, ptr %i.u, align 8, !tbaa !38
  %i.z = sitofp <2 x i32> %i.y to <2 x double>    ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fsub reassoc nsz arcp contract afn double %i.t, %i.aa
  %i.ac = call reassoc nnan nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.z)
  %i.ad = fsub reassoc nnan nsz arcp contract afn double %i.x, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.af = load double, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn double %i.ad, %i.af
  %i.ah = fdiv reassoc nsz arcp contract afn double %i.ab, %i.ag
  %i.ai = fptrunc reassoc nsz arcp contract afn double %i.ah to float
  %i.aj = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ai)
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double
  %i.al = fmul reassoc nsz arcp contract afn double %i.af, %i.ak ; 3 uses
  %i.am = fcmp reassoc nsz arcp contract afn ogt double %i.al, 1.000000e+00
  %i.an = fcmp reassoc nsz arcp contract afn olt double %i.al, 0.000000e+00
  %i.ao = select reassoc nsz arcp contract afn i1 %i.an, double 0.000000e+00, double %i.al
  %i.ap = select reassoc nsz arcp contract afn i1 %i.am, double 1.000000e+00, double %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !37
  %i.av = fcmp reassoc nsz arcp contract afn ole double %i.au, %i.ap
  %i.aw = zext i1 %i.av to i32
  %i.ax = call reassoc nsz arcp contract afn fastcc double @_slider_move(ptr noundef nonnull %0, i32 noundef %i.ar, double noundef %i.ap, i32 noundef %i.aw) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 1, ptr %i.ay, align 4, !tbaa !122
  call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %DTGTK_IS_GRADIENT_SLIDER.exit.thread30
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !202
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !203
  %i.bd = tail call fastcc i32 @_get_active_marker_from_screen(ptr noundef nonnull %0, double noundef %i.ba, double noundef %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !34
  %.not27 = icmp eq i32 %i.bg, -1
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @gtk_widget_grab_focus(ptr noundef nonnull %0) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %DTGTK_IS_GRADIENT_SLIDER.exit.thread
  %.0 = phi i32 [ 0, %DTGTK_IS_GRADIENT_SLIDER.exit.thread ], [ 1, %bb.k ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_slider_scroll_event(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
end_hunk_0
