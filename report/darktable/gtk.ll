inline.NumInlined: 219
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_input_event:bb.a
bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.207) #16
  br label %.thread32

bb.n:                                             ; preds = %bb.k
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #16
  br label %.thread32

bb.o:                                             ; preds = %bb.h
  br i1 %.not26, label %.thread32, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.208) #16
  br label %.thread32

.thread32:                                        ; preds = %bb.m, %bb.l, %bb.g, %bb.p, %bb.o, %bb.a, %bb.n
  %.1 = phi i32 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.p ], [ 0, %bb.g ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_mouse_moved(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !69
  %i.b = tail call ptr @gdk_event_get_source_device(ptr noundef %1) #16 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.b) #16
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @gdk_event_get_axis(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.f = load double, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn une double %i.f, 1.000000e+00
  %i.h = zext i1 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1456
  store i32 %i.h, ptr %i.i, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi double [ %i.f, %bb.c ], [ 1.000000e+00, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !158
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !161
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !162
  %i.q = and i32 %i.p, 15
  call void @dt_control_mouse_moved(double noundef %i.l, double noundef %i.n, double noundef %i.j, i32 noundef %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_center_leave(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call void @dt_control_mouse_leave() #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_center_enter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call void @dt_control_mouse_enter() #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_button_pressed(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !69
  %i.b = tail call ptr @gdk_event_get_source_device(ptr noundef %1) #16 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.b) #16
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @gdk_event_get_axis(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %i.a) #16 ; 0 uses
  %.pre = load double, ptr %i.a, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = phi double [ %.pre, %bb.c ], [ 1.000000e+00, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !165
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !166
  %i.m = load i32, ptr %1, align 8, !tbaa !167
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !168
  %i.p = and i32 %i.o, 15
  call void @dt_control_button_pressed(double noundef %i.h, double noundef %i.j, double noundef %i.f, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.p) #16
  call void @gtk_widget_grab_focus(ptr noundef %0) #16
  call void @gtk_widget_queue_draw(ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_button_released(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !168
  %i.i = and i32 %i.h, 15
  tail call void @dt_control_button_released(double noundef %i.b, double noundef %i.d, i32 noundef %i.f, i32 noundef %i.i) #16
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_scrolled(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @gdk_event_get_source_device(ptr noundef %1) #16 ; 13 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1380
  %i.d = load i32, ptr %i.c, align 4, !tbaa !115  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.h = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !72
  %i.i = or i32 %i.h, %i.f
  %i.j = and i32 %i.i, %i.g
  %i.k = icmp eq i32 %i.j, 4                      ; 3 uses
  %i.l = zext i1 %i.k to i32
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.n = and i32 %i.m, 16384
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68   ; 2 uses
  %i.q = icmp eq i32 %i.p, 4
  %i.r = select i1 %i.q, ptr @.str.210, ptr @.str.211
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, 1
  %.not71 = icmp eq i8 %i.u, 0
  %i.v = select i1 %.not71, ptr @.str.211, ptr @.str.210
  %i.w = select i1 %i.k, ptr @.str.210, ptr @.str.211
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !169
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !170
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !71
  %i.af = load i32, ptr %i.e, align 8, !tbaa !11
  %.not73 = icmp eq ptr %i.a, null
  br i1 %.not73, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.ah = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.ag, %bb.c ], [ @.str.212, %bb.b ]
  %i.aj = phi i32 [ %i.ah, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.209, i32 noundef %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, double noundef %i.y, double noundef %i.aa, double noundef %i.ac, double noundef %i.ae, i32 noundef %i.af, ptr noundef %i.ai, i32 noundef %i.aj) #16
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.a
  %.not74 = icmp eq ptr %i.a, null                ; 5 uses
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  %i.al = icmp eq i32 %i.ak, 6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = phi i1 [ false, %bb.d ], [ %i.al, %bb.e ] ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = load ptr, ptr @_touchpad, align 8, !tbaa !146
  %i.ap = icmp eq ptr %i.a, %i.ao                 ; 2 uses
  %i.aq = zext i1 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !68
  %i.at = icmp eq i32 %i.as, 4
  br i1 %i.at, label %3, label %bb.g

3:                                                ; preds = %bb.f
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %.not75 = icmp eq i8 %6, 0
  br label %bb.g

bb.g:                                             ; preds = %3, %bb.f
  %7 = phi i1 [ false, %bb.f ], [ %.not75, %3 ]   ; 2 uses
  %i.au = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.au, i1 true, i1 %i.k
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = select i1 %i.am, i1 true, i1 %i.ap
  %or.cond85 = select i1 %or.cond.not, i1 %or.cond3, i1 false
  %i.av = select i1 %or.cond85, i1 %7, i1 false   ; 2 uses
  %8 = zext i1 %i.av to i32
  br i1 %i.av, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %dt_gui_get_scroll_deltas.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !68
  switch i32 %i.ax, label %dt_gui_get_scroll_deltas.exit [
    i32 2, label %.sink.split.i
    i32 3, label %.thread109
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 4, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread109

bb.k:                                             ; preds = %bb.i
  br label %.thread109

bb.l:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load double, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn une double %i.az, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %i.bb = fcmp reassoc nsz arcp contract afn une double %.pre, 0.000000e+00
  %or.cond115 = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond115, label %..thread47.i_crit_edge, label %dt_gui_get_scroll_deltas.exit

.sink.split.i:                                    ; preds = %bb.i
  br label %.thread109

dt_gui_get_scroll_deltas.exit:                    ; preds = %bb.l, %bb.i, %bb.h
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.bd = and i32 %i.bc, 16384
  %.not78 = icmp eq i32 %i.bd, 0
  br i1 %.not78, label %.critedge, label %bb.m

bb.m:                                             ; preds = %dt_gui_get_scroll_deltas.exit
  br i1 %.not74, label %.thread100, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.bf = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread100

.thread100:                                       ; preds = %bb.m, %bb.n
  %i.bg = phi ptr [ %i.be, %bb.n ], [ @.str.212, %bb.m ]
  %i.bh = phi i32 [ %i.bf, %bb.n ], [ -1, %bb.m ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.213, ptr noundef %i.bg, i32 noundef %i.bh) #16
  br label %.critedge

..thread47.i_crit_edge:                           ; preds = %bb.l
  %i.bi = fmul reassoc nsz arcp contract afn double %i.az, 5.000000e+01 ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn double %.pre, 5.000000e+01 ; 2 uses
  %i.bk = fcmp reassoc nsz arcp contract afn une double %i.bi, 0.000000e+00
  %i.bl = fcmp reassoc nsz arcp contract afn une double %i.bj, 0.000000e+00
  %or.cond5 = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond5, label %.thread109, label %bb.z

.thread109:                                       ; preds = %bb.j, %bb.k, %bb.i, %.sink.split.i, %..thread47.i_crit_edge
  %.092.ph114 = phi double [ %i.bj, %..thread47.i_crit_edge ], [ 0.000000e+00, %bb.i ], [ -5.000000e+01, %bb.j ], [ 5.000000e+01, %bb.k ], [ 0.000000e+00, %.sink.split.i ] ; 3 uses
  %.2.ph113 = phi double [ %i.bi, %..thread47.i_crit_edge ], [ 5.000000e+01, %bb.i ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ -5.000000e+01, %.sink.split.i ] ; 3 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !153
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !169
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !170
  %i.br = load i32, ptr %i.e, align 8, !tbaa !11
  %i.bs = and i32 %i.br, 15
  %i.bt = tail call i32 @dt_view_manager_gesture_pan(ptr noundef %i.bm, double noundef %i.bo, double noundef %i.bq, double noundef %.2.ph113, double noundef %.092.ph114, i32 noundef %i.bs) #16
  %.not79 = icmp eq i32 %i.bt, 0
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.bv = and i32 %i.bu, 16384
  %.not80 = icmp eq i32 %i.bv, 0                  ; 2 uses
  br i1 %.not79, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.thread109
  br i1 %.not80, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load double, ptr %i.bn, align 8, !tbaa !169
  %i.bx = load double, ptr %i.bp, align 8, !tbaa !170
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bz = phi ptr [ %i.by, %bb.q ], [ @.str.212, %bb.p ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.214, double noundef %i.bw, double noundef %i.bx, double noundef %.2.ph113, double noundef %.092.ph114, ptr noundef %i.bz) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #16
  br label %.critedge

bb.t:                                             ; preds = %.thread109
  br i1 %.not80, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.215, double noundef %.2.ph113, double noundef %.092.ph114) #16
  br label %bb.z

bb.v:                                             ; preds = %bb.g
  br i1 %7, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.cb = and i32 %i.ca, 16384
  %.not76 = icmp eq i32 %i.cb, 0
  br i1 %.not76, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not74, label %.thread102, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.cd = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread102

.thread102:                                       ; preds = %bb.x, %bb.y
  %i.ce = phi ptr [ %i.cc, %bb.y ], [ @.str.212, %bb.x ]
  %i.cf = phi i32 [ %i.cd, %bb.y ], [ -1, %bb.x ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.216, i32 noundef %i.d, i32 noundef %i.l, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %8, ptr noundef %i.ce, i32 noundef %i.cf) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.t, %..thread47.i_crit_edge, %bb.v, %.thread102, %bb.w
  %i.cg = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i32, ptr %i.ar, align 4, !tbaa !68
  switch i32 %i.ch, label %.critedge [
    i32 2, label %bb.ai
    i32 3, label %bb.ab
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 4, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  br label %bb.ai

bb.ad:                                            ; preds = %bb.aa
  br label %bb.ai

bb.ae:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = and i8 %i.cj, 1
  %.not48.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not48.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !70
  %i.cn = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.co = fadd reassoc nsz arcp contract afn double %i.cn, %i.cm ; 3 uses
  store double %i.co, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !71
  %i.cr = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.cs = fadd reassoc nsz arcp contract afn double %i.cr, %i.cq ; 3 uses
  store double %i.cs, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.ct = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.co) ; 3 uses
  %i.cu = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.cs) ; 3 uses
  %i.cv = fcmp reassoc nsz arcp contract afn une double %i.ct, 0.000000e+00
  %i.cw = fcmp reassoc nsz arcp contract afn une double %i.cu, 0.000000e+00
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i.i, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.cx = fsub reassoc nsz arcp contract afn double %i.co, %i.ct
  store double %i.cx, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.cy = fsub reassoc nsz arcp contract afn double %i.cs, %i.cu
  store double %i.cy, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.cz = fptosi double %i.ct to i32
  %i.da = fptosi double %i.cu to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.04.ph.i = phi i32 [ %i.cz, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 1, %bb.ab ], [ -1, %bb.aa ]
  %.03.ph.i = phi i32 [ %i.da, %bb.ah ], [ 1, %bb.ad ], [ -1, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ]
  %i.db = add nsw i32 %.03.ph.i, %.04.ph.i        ; 2 uses
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !117
  %i.dd = and i32 %i.dc, 16384
  %.not83 = icmp eq i32 %i.dd, 0
  br i1 %.not83, label %._crit_edge, label %bb.aj

._crit_edge:                                      ; preds = %bb.ai
  %.pre107 = lshr i32 %i.db, 31
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load double, ptr %i.de, align 8, !tbaa !169
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !170
  %.lobit = lshr i32 %i.db, 31                    ; 2 uses
  %i.di = load i32, ptr %i.e, align 8, !tbaa !11
  br i1 %.not74, label %.thread106, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.dk = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread106

.thread106:                                       ; preds = %bb.aj, %bb.ak
  %i.dl = phi ptr [ %i.dj, %bb.ak ], [ @.str.212, %bb.aj ]
  %i.dm = phi i32 [ %i.dk, %bb.ak ], [ -1, %bb.aj ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.217, double noundef %i.df, double noundef %i.dh, i32 noundef %.lobit, i32 noundef %i.di, ptr noundef %i.dl, i32 noundef %i.dm) #16
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %.thread106
  %.lobit84.pre-phi = phi i32 [ %.pre107, %._crit_edge ], [ %.lobit, %.thread106 ]
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !153
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load double, ptr %i.do, align 8, !tbaa !169
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !170
  %i.ds = load i32, ptr %i.e, align 8, !tbaa !11
  %i.dt = and i32 %i.ds, 15
  tail call void @dt_view_manager_scrolled(ptr noundef %i.dn, double noundef %i.dp, double noundef %i.dr, i32 noundef %.lobit84.pre-phi, i32 noundef %i.dt) #16
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %bb.aa, %bb.z, %bb.s, %dt_gui_get_scroll_deltas.exit, %.thread100, %bb.al
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @dt_ui_snapshot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @_scrollbar_changed(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.g = tail call ptr @gtk_range_get_adjustment(ptr noundef %i.f) #16
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.k = tail call ptr @gtk_range_get_adjustment(ptr noundef %i.j) #16
  %i.l = tail call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.g) #16
  %i.m = tail call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.k) #16
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !153
  tail call void @dt_view_manager_scrollbar_changed(ptr noundef %i.n, double noundef %i.l, double noundef %i.m) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_action_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_toggle_panel_accel_callback(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.3) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = tail call fastcc i32 @_panel_is_visible(i32 noundef 3)
  %.not33.i = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not33.i to i32
  tail call void @dt_ui_panel_show(ptr noundef readonly %i.e, i32 noundef 3, i32 noundef %i.g, i32 noundef 1)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.4) #16
  %.not3 = icmp eq i32 %i.i, 0
  br i1 %.not3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call fastcc i32 @_panel_is_visible(i32 noundef 4)
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = zext i1 %.not.i to i32
  tail call void @dt_ui_panel_show(ptr noundef readonly %i.k, i32 noundef 4, i32 noundef %i.m, i32 noundef 1)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.47) #16
  %.not4 = icmp eq i32 %i.o, 0
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !17
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 2 uses
  br i1 %.not4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_panel_toggle(i32 noundef 0, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_panel_toggle(i32 noundef 1, ptr noundef %i.q)
  br label %bb.h
end_hunk_0
