inline.NumInlined: 300
inline.NumDeleted: 29
begin_hunk_0_@g_utf8_get_char
; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @g_unichar_isprint(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define internal float @_action_process_slider(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = fcmp reassoc nsz arcp contract afn une float %3, f0xFF7FFFFF
  br i1 %i.b, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.x [
    i32 0, label %bb.c
    i32 2, label %bb.c
    i32 1, label %.thread73
    i32 3, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  switch i32 %2, label %bb.m [
    i32 0, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_popup_show(ptr noundef %0)
  br label %dt_bauhaus_widget_reset.exit

bb.e:                                             ; preds = %bb.c
  %i.c = fneg reassoc nsz arcp contract afn float %3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.061 = phi nsz float [ %i.c, %bb.e ], [ %3, %bb.c ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = xor i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 8
  %i.g = icmp eq i32 %1, 2
  %i.h = zext i1 %i.g to i32
  tail call fastcc void @_slider_add_step(ptr noundef %0, float noundef %.061, i32 noundef 1543512063, i32 noundef %i.h)
  %i.i = load i8, ptr %i.d, align 8
  %i.j = xor i8 %i.i, 1
  store i8 %i.j, ptr %i.d, align 8
  br label %dt_bauhaus_widget_reset.exit

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !154
  store <2 x float> %i.s, ptr %i.r, align 4, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load float, ptr %i.t, align 8, !tbaa !255
  tail call void @dt_bauhaus_slider_set(ptr noundef nonnull %0, float noundef %i.u), !inline_history !310
  br label %dt_bauhaus_widget_reset.exit

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.w = load i32, ptr %i.v, align 4, !tbaa !148
  %i.x = tail call i32 @dt_bauhaus_combobox_set_from_value(ptr noundef nonnull %0, i32 noundef %i.w), !inline_history !310 ; 0 uses
  br label %dt_bauhaus_widget_reset.exit

bb.j:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %1, 2
  %.in66.v = select i1 %i.y, i64 200, i64 184
  %.in66 = getelementptr inbounds nuw i8, ptr %0, i64 %.in66.v
  %i.z = load float, ptr %.in66, align 8, !tbaa !154
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.z)
  br label %dt_bauhaus_widget_reset.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %1, 2
  %.in.v = select i1 %i.aa, i64 196, i64 180
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.ab = load float, ptr %.in, align 4, !tbaa !154
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.ab)
  br label %dt_bauhaus_widget_reset.exit

bb.l:                                             ; preds = %bb.c
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %3)
  br label %dt_bauhaus_widget_reset.exit

bb.m:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.87, i32 noundef %2) #26
  br label %dt_bauhaus_widget_reset.exit

dt_bauhaus_widget_reset.exit:                     ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %bb.k, %bb.j, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !106
  %.not.i = icmp eq i32 %i.ad, 1
  br i1 %.not.i, label %bb.n, label %dt_bauhaus_slider_get.exit

bb.n:                                             ; preds = %dt_bauhaus_widget_reset.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !129
  %i.ai = fcmp reassoc nsz arcp contract afn oeq float %i.af, %i.ah
  br i1 %i.ai, label %dt_bauhaus_slider_get.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !163
  %i.al = load float, ptr %i.a, align 8, !tbaa !155
  %i.am = tail call reassoc nsz arcp contract afn float %i.ak(float noundef %i.al, i32 noundef 2) #26, !inline_history !164
  %i.an = load float, ptr %i.ag, align 4, !tbaa !129 ; 2 uses
  %i.ao = load float, ptr %i.ae, align 8, !tbaa !128
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ao, %i.an
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.am
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.an
  br label %dt_bauhaus_slider_get.exit

dt_bauhaus_slider_get.exit:                       ; preds = %dt_bauhaus_widget_reset.exit, %bb.n, %bb.o
  %.1.i = phi nsz float [ -1.000000e+00, %dt_bauhaus_widget_reset.exit ], [ %i.ar, %bb.o ], [ %i.af, %bb.n ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load float, ptr %i.as, align 8, !tbaa !160
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load float, ptr %i.au, align 8, !tbaa !130 ; 3 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !161 ; 3 uses
  %i.az = fadd reassoc nsz arcp contract afn float %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !162
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.av
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ay
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.az
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %i.be, 0.000000e+00
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !132
  %i.bi = fmul reassoc nsz arcp contract afn float %i.av, %.1.i
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.ay
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !125
  %.str.56..str.57.i = select i1 %i.bf, ptr @.str.56, ptr @.str.57
  %i.bn = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull %.str.56..str.57.i, i32 noundef %i.bh, double noundef %i.bk, ptr noundef %i.bm) #26 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !182
  tail call void (ptr, ptr, ptr, ...) @dt_action_widget_toast(ptr noundef %i.bp, ptr noundef nonnull %0, ptr noundef nonnull @.str.88, ptr noundef %i.bn) #26
  tail call void @g_free(ptr noundef %i.bn) #26
  br label %bb.y

.thread73:                                        ; preds = %bb.b
  tail call fastcc void @_action_process_button(ptr noundef %0, i32 noundef %2)
  br label %bb.z

bb.p:                                             ; preds = %bb.b
  switch i32 %2, label %bb.v [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_popup_show(ptr noundef %0)
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1 = phi nsz float [ 0.000000e+00, %bb.r ], [ %3, %bb.p ]
  %i.bq = fneg reassoc nsz arcp contract afn float %.1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.2 = phi nsz float [ %i.bq, %bb.s ], [ %3, %bb.p ]
  tail call fastcc void @_slider_zoom_range(ptr noundef %0, float noundef %.2)
  br label %bb.w

bb.u:                                             ; preds = %bb.p, %bb.p
  %i.br = icmp eq i32 %2, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !130
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, 0.000000e+00
  %i.bv = xor i1 %i.br, %i.bu
  br i1 %i.bv, label %4, label %8

4:                                                ; preds = %bb.u
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %6 = load float, ptr %5, align 8, !tbaa !160
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %6, ptr %7, align 8, !tbaa !128
  br label %12

8:                                                ; preds = %bb.u
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %10 = load float, ptr %9, align 4, !tbaa !162
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 180
  store float %10, ptr %11, align 4, !tbaa !129
  br label %12

12:                                               ; preds = %8, %4
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #26
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.87, i32 noundef %2) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %12, %bb.t, %bb.q
  tail call fastcc void @_slider_zoom_toast(ptr noundef %0)
  br label %.thread

bb.x:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.89, i32 noundef %1) #26
  br label %.thread

bb.y:                                             ; preds = %dt_bauhaus_slider_get.exit, %bb.a
  %i.bw = icmp eq i32 %1, 1
  br i1 %i.bw, label %bb.z, label %.thread

bb.z:                                             ; preds = %.thread73, %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !210
  %i.bz = lshr i32 %i.by, 4
  %.lobit.i = and i32 %i.bz, 1
  %i.ca = uitofp nneg i32 %.lobit.i to float
  br label %dt_bauhaus_slider_get.exit69

.thread:                                          ; preds = %bb.x, %bb.w, %bb.y
  switch i32 %2, label %bb.ag [
    i32 6, label %bb.aa
    i32 3, label %bb.ad
  ]

bb.aa:                                            ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !106
  %.not.i67 = icmp eq i32 %i.cc, 1
  br i1 %.not.i67, label %bb.ab, label %dt_bauhaus_slider_get.exit69

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !128 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !129
  %i.ch = fcmp reassoc nsz arcp contract afn oeq float %i.ce, %i.cg
  br i1 %i.ch, label %dt_bauhaus_slider_get.exit69, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !163
  %i.ck = load float, ptr %i.a, align 8, !tbaa !155
  %i.cl = tail call reassoc nsz arcp contract afn float %i.cj(float noundef %i.ck, i32 noundef 2) #26, !inline_history !164
  %i.cm = load float, ptr %i.cf, align 4, !tbaa !129 ; 2 uses
  %i.cn = load float, ptr %i.cd, align 8, !tbaa !128
  %i.co = fsub reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cl
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.cm
  br label %dt_bauhaus_slider_get.exit69

bb.ad:                                            ; preds = %.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !106
  %.not.i70 = icmp eq i32 %i.cs, 1
  br i1 %.not.i70, label %bb.ae, label %dt_bauhaus_slider_get.exit72

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !128 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !129
  %i.cx = fcmp reassoc nsz arcp contract afn oeq float %i.cu, %i.cw
  br i1 %i.cx, label %dt_bauhaus_slider_get.exit72, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !163
  %i.da = load float, ptr %i.a, align 8, !tbaa !155
  %i.db = tail call reassoc nsz arcp contract afn float %i.cz(float noundef %i.da, i32 noundef 2) #26, !inline_history !164
  %i.dc = load float, ptr %i.cv, align 4, !tbaa !129 ; 2 uses
  %i.dd = load float, ptr %i.ct, align 8, !tbaa !128
  %i.de = fsub reassoc nsz arcp contract afn float %i.dd, %i.dc
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.dc
  br label %dt_bauhaus_slider_get.exit72

dt_bauhaus_slider_get.exit72:                     ; preds = %bb.ad, %bb.ae, %bb.af
  %.1.i71 = phi nsz float [ -1.000000e+00, %bb.ad ], [ %i.dg, %bb.af ], [ %i.cu, %bb.ae ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.di = load float, ptr %i.dh, align 8, !tbaa !255
  %i.dj = fsub reassoc nsz arcp contract afn float %.1.i71, %i.di
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dj)
  %i.dl = fpext reassoc nsz arcp contract afn float %i.dk to double
  %i.dm = fcmp reassoc nsz arcp contract afn ogt double %i.dl, 1.000000e-05
  %i.dn = uitofp i1 %i.dm to float
  br label %dt_bauhaus_slider_get.exit69

bb.ag:                                            ; preds = %.thread
  %i.do = load float, ptr %i.a, align 8, !tbaa !155
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !129 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !128 ; 3 uses
  %i.dt = fneg reassoc nsz arcp contract afn float %i.ds
  %i.du = fcmp reassoc nsz arcp contract afn oeq float %i.dq, %i.dt
  br i1 %i.du, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = fcmp reassoc nsz arcp contract afn oeq float %i.dq, 0.000000e+00
  br i1 %i.dv, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dw = fcmp reassoc nsz arcp contract afn oeq float %i.ds, 1.000000e+00
  br i1 %i.dw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = fcmp reassoc nsz arcp contract afn oeq float %i.ds, 1.000000e+02
  %i.dy = select reassoc nsz arcp contract afn i1 %i.dx, float 4.000000e+00, float 0.000000e+00
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai, %bb.ag
  %i.dz = phi reassoc nsz arcp contract afn float [ 2.000000e+00, %bb.ag ], [ 0.000000e+00, %bb.ah ], [ 4.000000e+00, %bb.ai ], [ %i.dy, %bb.aj ]
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.do
  br label %dt_bauhaus_slider_get.exit69

dt_bauhaus_slider_get.exit69:                     ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.ak, %dt_bauhaus_slider_get.exit72, %bb.z
  %.0 = phi nsz float [ %i.ca, %bb.z ], [ %i.ea, %bb.ak ], [ %i.dn, %dt_bauhaus_slider_get.exit72 ], [ -1.000000e+00, %bb.aa ], [ %i.cq, %bb.ac ], [ %i.ce, %bb.ab ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_action_process_button(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210  ; 3 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i32 2, i32 1
  %.not10 = icmp eq i32 %1, %i.d
  br i1 %.not10, label %dt_bauhaus_widget_release_quad.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !256
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = or i32 %i.b, 16
  %i.h = xor i32 %i.b, 16
  %.sink.i = select i1 %.not.i, i32 %i.g, i32 %i.h
  store i32 %.sink.i, ptr %i.a, align 8, !tbaa !210
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #26
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 284
  %i.k = load i32, ptr %i.j, align 4, !tbaa !78
  tail call void (ptr, i32, i32, ...) @g_signal_emit(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef 0) #26
  %i.l = load i32, ptr %i.e, align 8, !tbaa !256
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %bb.c, label %dt_bauhaus_widget_release_quad.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %i.n = and i32 %i.m, 16
  %.not5.i = icmp eq i32 %i.n, 0
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.m, -17
  store i32 %i.o, ptr %i.a, align 8, !tbaa !210
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #26
  br label %dt_bauhaus_widget_release_quad.exit

dt_bauhaus_widget_release_quad.exit:              ; preds = %bb.e, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load i32, ptr %i.p, align 8, !tbaa !256
  %.not11 = icmp eq i32 %i.q, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %dt_bauhaus_widget_release_quad.exit
  %i.r = load i32, ptr %i.a, align 8, !tbaa !210
  %i.s = and i32 %i.r, 16
  %.not12 = icmp eq i32 %i.s, 0
  %.str.91..str.90 = select i1 %.not12, ptr @.str.91, ptr @.str.90
  br label %bb.g

bb.g:                                             ; preds = %dt_bauhaus_widget_release_quad.exit, %bb.f
  %.str.90.sink = phi ptr [ %.str.91..str.90, %bb.f ], [ @.str.92, %dt_bauhaus_widget_release_quad.exit ]
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.90.sink, i32 noundef 5) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !182
  tail call void (ptr, ptr, ptr, ...) @dt_action_widget_toast(ptr noundef %i.v, ptr noundef nonnull %0, ptr noundef %i.t) #26
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @_action_process_combo(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) #0 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn une float %3, f0xFF7FFFFF
  %i.b = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148
end_hunk_0
