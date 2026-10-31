Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorpicker?download=true
inline.NumInlined: 56
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_color_mode_changed:bb.a
  br i1 %.not6.i, label %_update_samples_output.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !93
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call fastcc void @_update_sample_label(ptr %.val.i, ptr noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.0.i = load ptr, ptr %i.u, align 8, !tbaa !91  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_update_samples_output.exit, label %.lr.ph.i

_update_samples_output.exit:                      ; preds = %.lr.ph.i, %bb.a
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_picker_button_toggled(ptr noundef %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !101 ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !102
  tail call void @gtk_widget_queue_draw(ptr noundef %i.e) #15
  %i.f = load ptr, ptr %i.b, align 16, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 0, ptr %i.g, align 8, !tbaa !98
  store ptr null, ptr %i.b, align 16, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !86
  %i.j = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #15
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.i, i32 noundef %i.j) #15
  ret void
}

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gtk_event_box_new() local_unnamed_addr #5

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

declare void @gtk_label_set_justify(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_label_set_selectable(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_has_tooltip(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_sample_tooltip_callback(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, i32 %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %6 = alloca %struct._GtkTextIter, align 8       ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(112) ptr @g_malloc0_n(i64 noundef 14, i64 noundef 8) #16 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.d = load i32, ptr %i.c, align 16, !tbaa !103
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 0)
  %i.e = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 255)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !103
  %i.h = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.g, <2 x i32> zeroinitializer)
  %i.i = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.h, <2 x i32> splat (i32 255)) ; 2 uses
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #15
  %i.k = extractelement <2 x i32> %i.i, i64 0
  %i.l = extractelement <2 x i32> %i.i, i64 1
  %i.m = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %i.e, i32 noundef %i.k, i32 noundef %i.l, ptr noundef %i.j) #15
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !78
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #15
  %i.p = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.53, ptr noundef %i.o) #15
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.u = load float, ptr %i.r, align 16, !tbaa !95 ; 3 uses
  %i.v = fcmp reassoc nsz arcp contract afn ogt float %i.u, 1.000000e+00
  br i1 %i.v, label %bb.f, label %bb.d

bb.b:                                             ; preds = %bb.ad
  %i.w = fmul reassoc nnan nsz arcp contract afn float %i.gt, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.c:                                             ; preds = %bb.ad
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gt)
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, f0x3E22F983
  %i.z = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi nsz float [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %i.aa = load float, ptr %i.t, align 16, !tbaa !95
  store float %i.aa, ptr %i.a, align 16, !tbaa !95
  %i.ab = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.gs, float noundef %i.gq) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %.0.i, ptr %i.ad, align 8, !tbaa !95
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #15
  %i.af = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.53, ptr noundef %i.ae) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !78
  %i.ah = call ptr @Lch_to_color_name(ptr noundef nonnull %i.a) #15
  %i.ai = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.58, ptr noundef %i.ah) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !78
  %i.ak = call noalias ptr @g_strjoinv(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.b) #15 ; 2 uses
  call void @g_strfreev(ptr noundef nonnull %i.b) #15
  %i.al = load ptr, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.ae, label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.u, 0.000000e+00
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = fmul reassoc nsz arcp contract afn float %i.u, 2.550000e+02
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.an)
  %i.ap = fptosi float %i.ao to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.aq = phi i32 [ 255, %bb.a ], [ %i.ap, %bb.e ], [ 0, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.as = load float, ptr %i.ar, align 4, !tbaa !95 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.as, 0.000000e+00
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = fmul reassoc nsz arcp contract afn float %i.as, 2.550000e+02
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.av)
  %i.ax = fptosi float %i.aw to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ay = phi i32 [ 255, %bb.f ], [ %i.ax, %bb.h ], [ 0, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ba = load float, ptr %i.az, align 8, !tbaa !95 ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.ba, 1.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.ba, 0.000000e+00
  br i1 %i.bc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = fmul reassoc nsz arcp contract afn float %i.ba, 2.550000e+02
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.bd)
  %i.bf = fptosi float %i.be to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bg = phi i32 [ 255, %bb.i ], [ %i.bf, %bb.k ], [ 0, %bb.j ]
  %i.bh = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.54, i32 noundef %i.aq, i32 noundef %i.ay, i32 noundef %i.bg, ptr noundef nonnull @.str.52) #15
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !78
  %i.bi = load float, ptr %i.s, align 16, !tbaa !95
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 2.550000e+02
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.bj)
  %i.bl = fptosi float %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 116
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !95
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float 2.550000e+02)
  %i.bp = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fptosi float %i.bq to i32
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load ptr, ptr @dt_lib_colorpicker_statistic_names, align 16, !tbaa !78
  %i.bv = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.bu, i32 noundef 5) #15
  %i.bw = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.55, i32 noundef %i.bl, i32 noundef %i.br, i32 noundef %i.bt, ptr noundef %i.bv) #15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !78
  %i.by = load float, ptr %i.t, align 16, !tbaa !95
  %i.bz = fpext reassoc nsz arcp contract afn float %i.by to double
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 164
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !95
  %i.cc = fpext <2 x float> %i.cb to <2 x double> ; 2 uses
  %i.cd = load ptr, ptr @dt_lib_colorpicker_statistic_names, align 16, !tbaa !78
  %i.ce = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.cd, i32 noundef 5) #15
  %i.cf = extractelement <2 x double> %i.cc, i64 0
  %i.cg = extractelement <2 x double> %i.cc, i64 1
  %i.ch = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.56, double noundef %i.bz, double noundef %i.cf, double noundef %i.cg, ptr noundef %i.ce) #15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !78
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ck = load float, ptr %i.cj, align 16, !tbaa !95 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, 1.000000e+00
  br i1 %i.cl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.ck, 0.000000e+00
  br i1 %i.cm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ck, 2.550000e+02
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cn)
  %i.cp = fptosi float %i.co to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.cq = phi i32 [ 255, %bb.l ], [ %i.cp, %bb.n ], [ 0, %bb.m ]
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !95 ; 3 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ogt float %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = fcmp reassoc nsz arcp contract afn olt float %i.cs, 0.000000e+00
  br i1 %i.cu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cs, 2.550000e+02
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cv)
  %i.cx = fptosi float %i.cw to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cy = phi i32 [ 255, %bb.o ], [ %i.cx, %bb.q ], [ 0, %bb.p ]
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.da = load float, ptr %i.cz, align 8, !tbaa !95 ; 3 uses
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %i.da, 1.000000e+00
  br i1 %i.db, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = fcmp reassoc nsz arcp contract afn olt float %i.da, 0.000000e+00
  br i1 %i.dc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = fmul reassoc nsz arcp contract afn float %i.da, 2.550000e+02
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.dd)
  %i.df = fptosi float %i.de to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dg = phi i32 [ 255, %bb.r ], [ %i.df, %bb.t ], [ 0, %bb.s ]
  %i.dh = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.54, i32 noundef %i.cq, i32 noundef %i.cy, i32 noundef %i.dg, ptr noundef nonnull @.str.52) #15
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !78
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.dk = load float, ptr %i.dj, align 16, !tbaa !95
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, 2.550000e+02
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.dl)
  %i.dn = fptosi float %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.dp = load <2 x float>, ptr %i.do, align 4, !tbaa !95
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.dp, splat (float 2.550000e+02)
  %i.dr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.dq) ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = fptosi float %i.ds to i32
  %i.du = extractelement <2 x float> %i.dr, i64 1
  %i.dv = fptosi float %i.du to i32
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dt_lib_colorpicker_statistic_names, i64 8), align 8, !tbaa !78
  %i.dx = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.dw, i32 noundef 5) #15
  %i.dy = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.55, i32 noundef %i.dn, i32 noundef %i.dt, i32 noundef %i.dv, ptr noundef %i.dx) #15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !78
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.eb = load float, ptr %i.ea, align 16, !tbaa !95
  %i.ec = fpext reassoc nsz arcp contract afn float %i.eb to double
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 180
  %i.ee = load <2 x float>, ptr %i.ed, align 4, !tbaa !95
  %i.ef = fpext <2 x float> %i.ee to <2 x double> ; 2 uses
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dt_lib_colorpicker_statistic_names, i64 8), align 8, !tbaa !78
  %i.eh = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.eg, i32 noundef 5) #15
  %i.ei = extractelement <2 x double> %i.ef, i64 0
  %i.ej = extractelement <2 x double> %i.ef, i64 1
  %i.ek = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.56, double noundef %i.ec, double noundef %i.ei, double noundef %i.ej, ptr noundef %i.eh) #15
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !78
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.en = load float, ptr %i.em, align 16, !tbaa !95 ; 3 uses
  %i.eo = fcmp reassoc nsz arcp contract afn ogt float %i.en, 1.000000e+00
  br i1 %i.eo, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = fcmp reassoc nsz arcp contract afn olt float %i.en, 0.000000e+00
  br i1 %i.ep, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = fmul reassoc nsz arcp contract afn float %i.en, 2.550000e+02
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.eq)
  %i.es = fptosi float %i.er to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.et = phi i32 [ 255, %bb.u ], [ %i.es, %bb.w ], [ 0, %bb.v ]
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !95 ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ogt float %i.ev, 1.000000e+00
  br i1 %i.ew, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %i.ev, 0.000000e+00
  br i1 %i.ex, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ev, 2.550000e+02
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ey)
  %i.fa = fptosi float %i.ez to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.fb = phi i32 [ 255, %bb.x ], [ %i.fa, %bb.z ], [ 0, %bb.y ]
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !95 ; 3 uses
  %i.fe = fcmp reassoc nsz arcp contract afn ogt float %i.fd, 1.000000e+00
  br i1 %i.fe, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = fcmp reassoc nsz arcp contract afn olt float %i.fd, 0.000000e+00
  br i1 %i.ff, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fd, 2.550000e+02
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.fg)
  %i.fi = fptosi float %i.fh to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fj = phi i32 [ 255, %bb.aa ], [ %i.fi, %bb.ac ], [ 0, %bb.ab ]
  %i.fk = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.54, i32 noundef %i.et, i32 noundef %i.fb, i32 noundef %i.fj, ptr noundef nonnull @.str.52) #15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !78
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.fn = load float, ptr %i.fm, align 16, !tbaa !95
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, 2.550000e+02
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.fo)
  %i.fq = fptosi float %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.fs = load <2 x float>, ptr %i.fr, align 4, !tbaa !95
  %i.ft = fmul reassoc nsz arcp contract afn <2 x float> %i.fs, splat (float 2.550000e+02)
  %i.fu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ft) ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0
  %i.fw = fptosi float %i.fv to i32
  %i.fx = extractelement <2 x float> %i.fu, i64 1
  %i.fy = fptosi float %i.fx to i32
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dt_lib_colorpicker_statistic_names, i64 16), align 16, !tbaa !78
  %i.ga = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.fz, i32 noundef 5) #15
  %i.gb = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.55, i32 noundef %i.fq, i32 noundef %i.fw, i32 noundef %i.fy, ptr noundef %i.ga) #15
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !78
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.ge = load float, ptr %i.gd, align 16, !tbaa !95
  %i.gf = fpext reassoc nsz arcp contract afn float %i.ge to double
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 196
  %i.gh = load <2 x float>, ptr %i.gg, align 4, !tbaa !95
  %i.gi = fpext <2 x float> %i.gh to <2 x double> ; 2 uses
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dt_lib_colorpicker_statistic_names, i64 16), align 16, !tbaa !78
  %i.gk = tail call ptr @dcgettext(ptr noundef null, ptr noundef %i.gj, i32 noundef 5) #15
  %i.gl = extractelement <2 x double> %i.gi, i64 0
  %i.gm = extractelement <2 x double> %i.gi, i64 1
  %i.gn = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.56, double noundef %i.gf, double noundef %i.gl, double noundef %i.gm, ptr noundef %i.gk) #15
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !95 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 164
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !95 ; 2 uses
  %i.gt = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.gq, float %i.gs) ; 3 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt float %i.gt, 0.000000e+00
  br i1 %i.gu, label %bb.b, label %bb.c

bb.ae:                                            ; preds = %dt_Lab_2_LCH.exit
  %i.gv = call ptr @gtk_text_view_new() #15       ; 2 uses
  store ptr %i.gv, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128
  call void @dt_gui_add_class(ptr noundef %i.gv, ptr noundef nonnull @.str.60) #15
  %i.gw = load ptr, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128
  call void @dt_gui_add_class(ptr noundef %i.gw, ptr noundef nonnull @.str.33) #15
  %i.gx = load ptr, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128
  %i.gy = call i64 @g_signal_connect_data(ptr noundef %i.gx, ptr noundef nonnull @.str.61, ptr noundef nonnull @gtk_widget_destroyed, ptr noundef nonnull @_sample_tooltip_callback.view, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %.pre = load ptr, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %dt_Lab_2_LCH.exit
  %i.gz = phi ptr [ %.pre, %bb.ae ], [ %i.al, %dt_Lab_2_LCH.exit ]
  %i.ha = call ptr @gtk_text_view_get_buffer(ptr noundef %i.gz) #15 ; 3 uses
  call void @gtk_text_buffer_set_text(ptr noundef %i.ha, ptr noundef nonnull @.str.32, i32 noundef -1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @gtk_text_buffer_get_start_iter(ptr noundef %i.ha, ptr noundef nonnull %6) #15
  call void @gtk_text_buffer_insert_markup(ptr noundef %i.ha, ptr noundef nonnull %6, ptr noundef %i.ak, i32 noundef -1) #15
  %i.hb = load ptr, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128
  call void @gtk_tooltip_set_custom(ptr noundef %4, ptr noundef %i.hb) #15
  %i.hc = load ptr, ptr @_sample_tooltip_callback.view, align 8, !tbaa !128
  call void @gtk_widget_map(ptr noundef %i.hc) #15
  call void @g_free(ptr noundef %i.ak) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @_label_size_allocate_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  tail call void @gtk_label_set_attributes(ptr noundef %0, ptr noundef null) #15
  call void @gtk_widget_get_preferred_width(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) #15
  %i.b = load i32, ptr %i.a, align 4, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i32 [ %i.f, %.lr.ph ], [ 4, %bb.a ]
  %i.f = add nsw i32 %.010, -1                    ; 3 uses
  %i.g = call ptr @pango_attr_list_new() #15      ; 3 uses
  %i.h = call ptr @pango_attr_stretch_new(i32 noundef %i.f) #15
  call void @pango_attr_list_insert(ptr noundef %i.g, ptr noundef %i.h) #15
  call void @gtk_label_set_attributes(ptr noundef %0, ptr noundef %i.g) #15
  call void @pango_attr_list_unref(ptr noundef %i.g) #15
  call void @gtk_widget_get_preferred_width(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) #15
  %i.i = load i32, ptr %i.a, align 4, !tbaa !103
  %i.j = load i32, ptr %i.c, align 4, !tbaa !130
  %i.k = icmp sgt i32 %i.i, %i.j
  %i.l = icmp ne i32 %i.f, 0
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @dtgtk_cairo_paint_square_plus(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_add_sample(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = alloca [4 x ptr], align 8                ; 5 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %i.i = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #18 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !101 ; 2 uses
  %.not43 = icmp eq ptr %i.k, null
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !98
  store ptr null, ptr %i.j, align 16, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.i, ptr noundef nonnull align 16 dereferenceable(288) %i.m, i64 288, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 0, ptr %i.o, align 8, !tbaa !98
  %i.p = tail call ptr @gtk_event_box_new() #15   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 5 uses
  store ptr %i.p, ptr %i.q, align 16, !tbaa !102
  tail call void @gtk_widget_add_events(ptr noundef %i.p, i32 noundef 12288) #15
  %i.r = tail call i64 @g_signal_connect_data(ptr noundef %i.p, ptr noundef nonnull @.str.18, ptr noundef nonnull @_sample_enter_callback, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.s = load ptr, ptr %i.q, align 16, !tbaa !102
  %i.t = tail call i64 @g_signal_connect_data(ptr noundef %i.s, ptr noundef nonnull @.str.19, ptr noundef nonnull @_sample_leave_callback, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.u = tail call ptr @gtk_drawing_area_new() #15 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 264 ; 5 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !104
  tail call void @gtk_widget_add_events(ptr noundef %i.u, i32 noundef 256) #15
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104
  %i.x = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.w, ptr noundef %i.x) #15
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !104
  %i.z = tail call i64 @g_signal_connect_data(ptr noundef %i.y, ptr noundef nonnull @.str.17, ptr noundef nonnull @_live_sample_button, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !104
  %i.ab = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.16, ptr noundef nonnull @_sample_draw_callback, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ac = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #15
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !104 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.ad, i32 noundef 1) #15
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ae, align 8, !tbaa !81
  %i.af = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.20, i32 noundef 637, ptr noundef nonnull @__FUNCTION__._add_sample, ptr noundef %i.ac, ptr noundef nonnull %i.a) #15 ; 2 uses
  call void @gtk_widget_set_name(ptr noundef %i.af, ptr noundef nonnull @.str.31) #15
  %i.ag = call ptr @gtk_label_new(ptr noundef nonnull @.str.32) #15 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 7 uses
  store ptr %i.ag, ptr %i.ah, align 16, !tbaa !105
  call void @dt_gui_add_class(ptr noundef %i.ag, ptr noundef nonnull @.str.33) #15
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !105
  call void @gtk_label_set_ellipsize(ptr noundef %i.ai, i32 noundef 1) #15
  %i.aj = load ptr, ptr %i.ah, align 16, !tbaa !105
  call void @gtk_label_set_selectable(ptr noundef %i.aj, i32 noundef 1) #15
  %i.ak = load ptr, ptr %i.ah, align 16, !tbaa !105
  call void @gtk_widget_set_has_tooltip(ptr noundef %i.ak, i32 noundef 1) #15
  %i.al = load ptr, ptr %i.ah, align 16, !tbaa !105
  %i.am = call i64 @g_signal_connect_data(ptr noundef %i.al, ptr noundef nonnull @.str.34, ptr noundef nonnull @_sample_tooltip_callback, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.an = load ptr, ptr %i.ah, align 16, !tbaa !105
  %i.ao = call i64 @g_signal_connect_data(ptr noundef %i.an, ptr noundef nonnull @.str.35, ptr noundef nonnull @_label_size_allocate_callback, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ap = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_remove, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  %i.aq = call i64 @g_signal_connect_data(ptr noundef %i.ap, ptr noundef nonnull @.str.36, ptr noundef nonnull @_remove_sample_cb, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ar = load ptr, ptr %i.q, align 16, !tbaa !102
  %i.as = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #15
  store ptr %i.af, ptr %i.b, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load ptr, ptr %i.ah, align 16, !tbaa !105 ; 2 uses
  call void @gtk_widget_set_hexpand(ptr noundef %i.au, i32 noundef 1) #15
  store ptr %i.au, ptr %i.at, align 8, !tbaa !81
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aw, align 8, !tbaa !81
  %i.ax = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.20, i32 noundef 657, ptr noundef nonnull @__FUNCTION__._add_sample, ptr noundef %i.as, ptr noundef nonnull %i.b) #15
  call void @gtk_container_add(ptr noundef %i.ar, ptr noundef %i.ax) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.ba = load ptr, ptr %i.q, align 16, !tbaa !102
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bb, align 8, !tbaa !81
  %i.bc = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.20, i32 noundef 658, ptr noundef nonnull @__FUNCTION__._add_sample, ptr noundef %i.az, ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.bd = load ptr, ptr %i.q, align 16, !tbaa !102
  call void @gtk_widget_show_all(ptr noundef %i.bd) #15
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !106
  %i.bh = call ptr @g_slist_append(ptr noundef %i.bg, ptr noundef nonnull %i.i) #15 ; 3 uses
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store ptr null, ptr %i.bk, align 8, !tbaa !99
  %.not6.i = icmp eq ptr %i.bh, null
  br i1 %.not6.i, label %_update_samples_output.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bl = load ptr, ptr %.07.i, align 8, !tbaa !93
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !18
  call fastcc void @_update_sample_label(ptr %.val.i, ptr noundef %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
end_hunk_0
begin_hunk_1_@g_dpgettext
declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef null, i32 noundef 0) #15
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.r, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !102
  tail call void @gtk_widget_destroy(ptr noundef %i.i) #15
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.m = tail call ptr @g_slist_remove(ptr noundef %i.l, ptr noundef %i.g) #15
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.m, ptr %i.o, align 8, !tbaa !106
  tail call void @free(ptr noundef %i.g) #15
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.t) #15
  store ptr null, ptr %i.s, align 8, !tbaa !18
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 22 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !89
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !100
  tail call void @dt_dev_invalidate_all(ptr noundef %i.h) #15
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b, %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef null, i32 noundef 0) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, i8 0, i64 12, i1 false), !tbaa !95
  %scevgep = getelementptr i8, ptr %i.b, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !95
  %scevgep38 = getelementptr i8, ptr %i.b, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep38, i8 0, i64 12, i1 false), !tbaa !95
  %gep29.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %gep31.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %gep29.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %gep31.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i32 0, ptr %i.l, align 4, !tbaa !103
  store <2 x float> zeroinitializer, ptr %i.j, align 4, !tbaa !95
  store <2 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !95
  store <2 x float> zeroinitializer, ptr %gep29.1, align 4, !tbaa !95
  store <2 x float> zeroinitializer, ptr %gep31.1, align 4, !tbaa !95
  store <2 x float> zeroinitializer, ptr %gep29.2, align 4, !tbaa !95
  store <2 x float> zeroinitializer, ptr %gep31.2, align 4, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i32 0, ptr %i.m, align 4, !tbaa !103
  %invariant.gep28.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %invariant.gep30.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store float 0.000000e+00, ptr %invariant.gep28.2, align 4, !tbaa !95
  store float 0.000000e+00, ptr %invariant.gep30.2, align 4, !tbaa !95
  %gep29.1.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store float 0.000000e+00, ptr %gep29.1.2, align 4, !tbaa !95
  %gep31.1.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store float 0.000000e+00, ptr %gep31.1.2, align 4, !tbaa !95
  %gep29.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store float 0.000000e+00, ptr %gep29.2.2, align 4, !tbaa !95
  %gep31.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store float 0.000000e+00, ptr %gep31.2.2, align 4, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store i32 0, ptr %i.n, align 4, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  tail call fastcc void @_update_sample_label(ptr %i.p, ptr noundef nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @gtk_widget_queue_draw(ptr noundef %i.s) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !86
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = icmp ne ptr %i.x, null
  %i.z = zext i1 %i.y to i32
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.u, i32 noundef %i.z) #15
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106 ; 2 uses
  %.not2634 = icmp eq ptr %i.ac, null
  br i1 %.not2634, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ad = phi ptr [ %i.ap, %.lr.ph ], [ %i.ac, %.preheader ]
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !102
  tail call void @gtk_widget_destroy(ptr noundef %i.ag) #15
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.ak = tail call ptr @g_slist_remove(ptr noundef %i.aj, ptr noundef %i.ae) #15
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !106
  tail call void @free(ptr noundef %i.ae) #15
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %.not26 = icmp eq ptr %i.ap, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ar, i32 noundef 0) #15
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !84
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.at, i32 noundef 0) #15
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88
  %i.aw = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.av) #15
  %.not27 = icmp eq i32 %i.aw, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !88
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ax, i32 noundef 0) #15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !100
  tail call void @dt_dev_invalidate_all(ptr noundef %i.ay) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @dt_control_queue_redraw_center() #15
  ret void
}

declare void @dt_dev_invalidate_all(ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #5

declare void @dt_control_queue_redraw_center() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_sample_label(ptr nofree readonly captures(none) %.288.val, ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.288.val, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = zext i32 %i.c to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load <2 x float>, ptr %i.f, align 16, !tbaa !95
  %i.i = fpext <2 x float> %i.h to <2 x double>
  store <2 x double> %i.i, ptr %i.g, align 16, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !95
  %i.l = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.l, ptr %i.m, align 16, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load <4 x float>, ptr %i.o, align 4, !tbaa !95 ; 7 uses
  %i.s = load float, ptr %i.q, align 4, !tbaa !95 ; 11 uses
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.r, splat (float 2.550000e+02)
  %i.u = tail call reassoc nsz arcp contract afn <4 x float> @llvm.round.v4f32(<4 x float> %i.t)
  %i.v = fptosi <4 x float> %i.u to <4 x i32>     ; 6 uses
  store <4 x i32> %i.v, ptr %i.p, align 16, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.w = load i32, ptr %.288.val, align 16, !tbaa !79
  switch i32 %i.w, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.h
    i32 5, label %bb.n
    i32 6, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.x = extractelement <4 x i32> %i.v, i64 0
  %i.y = extractelement <4 x i32> %i.v, i64 1
  %i.z = extractelement <4 x i32> %i.v, i64 2
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.46, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z) #15 ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.ab = extractelement <4 x float> %i.r, i64 0
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, 1.000000e+02
  %i.ad = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.ae = fmul reassoc nsz arcp contract afn float %i.s, 1.000000e+02
  %i.af = fpext reassoc nsz arcp contract afn float %i.ae to double
  %i.ag = extractelement <4 x float> %i.r, i64 2
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 1.000000e+02
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.47, double noundef %i.ad, double noundef %i.af, double noundef %i.ai) #15 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.e ; 2 uses
  %i.am = load float, ptr %i.al, align 16, !tbaa !95 ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, 1.000000e+02
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.am, 0.000000e+00
  %i.ap = fpext reassoc nsz arcp contract afn float %i.am to double
  %spec.select = select i1 %i.ao, double 0.000000e+00, double %i.ap
  %i.aq = select i1 %i.an, double 1.000000e+02, double %spec.select
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !95
  %i.at = fpext <2 x float> %i.as to <2 x double> ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = extractelement <2 x double> %i.at, i64 1
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.48, double noundef %i.aq, double noundef %i.au, double noundef %i.av) #15 ; 0 uses
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.e ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !95 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !95 ; 2 uses
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ba, float %i.bc) ; 3 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = fmul reassoc nnan nsz arcp contract afn float %i.bd, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bd)
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, f0x3E22F983
  %i.bi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bh
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.f, %bb.g
  %.0.i = phi nsz float [ %i.bf, %bb.f ], [ %i.bi, %bb.g ]
  %i.bj = load float, ptr %i.ay, align 4, !tbaa !95 ; 3 uses
  %i.bk = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bc, float noundef %i.ba) #17
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bj, 1.000000e+02
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bj, 0.000000e+00
  %i.bn = select reassoc nsz arcp contract afn i1 %i.bm, float 0.000000e+00, float %i.bj
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bl, float 1.000000e+02, float %i.bn
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bo to double
  %i.bq = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.br = fmul reassoc nsz arcp contract afn float %.0.i, 3.600000e+02
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.48, double noundef %i.bp, double noundef %i.bq, double noundef %i.bs) #15 ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.bu = extractelement <4 x float> %i.r, i64 0  ; 5 uses
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bu, float %i.s)
  %i.bw = extractelement <4 x float> %i.r, i64 2  ; 4 uses
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bv, float %i.bw) ; 2 uses
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bu, float %i.s)
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.by, float %i.bw) ; 5 uses
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bz, %i.bx ; 5 uses
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bz, %i.bx ; 4 uses
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bz)
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, f0x358637BD
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca)
  %i.cf = fcmp reassoc nsz arcp contract afn ogt float %i.ce, f0x358637BD
  %or.cond.i = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond.i, label %bb.i, label %dt_RGB_2_HSL.exit

bb.i:                                             ; preds = %bb.h
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cb, 5.000000e-01
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, 5.000000e-01
  %i.ci = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.cb
  %.pn.i = select i1 %i.ch, float %i.cb, float %i.ci
  %i.cj = fcmp reassoc nsz arcp contract afn oeq float %i.bu, %i.bz
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ck = fsub reassoc nsz arcp contract afn float %i.s, %i.bw
  %i.cl = fdiv reassoc nsz arcp contract afn float %i.ck, %i.ca
  br label %_dt_RGB_2_Hue.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cm = fcmp reassoc nsz arcp contract afn oeq float %i.s, %i.bz
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cn = fsub reassoc nsz arcp contract afn float %i.bw, %i.bu
  %i.co = fdiv reassoc nsz arcp contract afn float %i.cn, %i.ca
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cq = fsub reassoc nsz arcp contract afn float %i.bu, %i.s
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.ca
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

_dt_RGB_2_Hue.exit.i:                             ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i = phi nsz float [ %i.cl, %bb.j ], [ %i.cp, %bb.l ], [ %i.cs, %bb.m ]
  %i.ct = fmul reassoc nsz arcp contract afn float %.0.i.i, f0x3E2AAAAB ; 2 uses
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ct)
  %i.cv = fsub reassoc nsz arcp contract afn float %i.ct, %i.cu
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 3.600000e+02
  %i.cx = fpext reassoc nsz arcp contract afn float %i.cw to double
  %i.cy = fmul reassoc nnan nsz arcp contract afn float %i.ca, 1.000000e+02
  %i.cz = fdiv reassoc nsz arcp contract afn float %i.cy, %.pn.i
  %i.da = fpext reassoc nsz arcp contract afn float %i.cz to double
  br label %dt_RGB_2_HSL.exit

dt_RGB_2_HSL.exit:                                ; preds = %bb.h, %_dt_RGB_2_Hue.exit.i
  %.024.i = phi double [ %i.cx, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %bb.h ]
  %.1.i = phi double [ %i.da, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %bb.h ]
  %i.db = fmul reassoc nsz arcp contract afn float %i.cb, 5.000000e+01
  %i.dc = fpext reassoc nsz arcp contract afn float %i.db to double
  %i.dd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.48, double noundef %.024.i, double noundef %.1.i, double noundef %i.dc) #15 ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.de = extractelement <4 x float> %i.r, i64 0  ; 5 uses
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.de, float %i.s)
  %i.dg = extractelement <4 x float> %i.r, i64 2  ; 4 uses
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.df, float %i.dg)
  %i.di = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float %i.s)
  %i.dj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.di, float %i.dg) ; 6 uses
  %i.dk = fsub reassoc nsz arcp contract afn float %i.dj, %i.dh ; 5 uses
  %i.dl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dj)
  %i.dm = fcmp reassoc nsz arcp contract afn ogt float %i.dl, f0x358637BD
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dk)
  %i.do = fcmp reassoc nsz arcp contract afn ogt float %i.dn, f0x358637BD
  %or.cond.i63 = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %or.cond.i63, label %bb.o, label %dt_RGB_2_HSV.exit

bb.o:                                             ; preds = %bb.n
  %i.dp = fcmp reassoc nsz arcp contract afn oeq float %i.de, %i.dj
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = fsub reassoc nsz arcp contract afn float %i.s, %i.dg
  %i.dr = fdiv reassoc nsz arcp contract afn float %i.dq, %i.dk
  br label %_dt_RGB_2_Hue.exit.i65

bb.q:                                             ; preds = %bb.o
  %i.ds = fcmp reassoc nsz arcp contract afn oeq float %i.s, %i.dj
  br i1 %i.ds, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dt = fsub reassoc nsz arcp contract afn float %i.dg, %i.de
  %i.du = fdiv reassoc nsz arcp contract afn float %i.dt, %i.dk
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i65

bb.s:                                             ; preds = %bb.q
  %i.dw = fsub reassoc nsz arcp contract afn float %i.de, %i.s
  %i.dx = fdiv reassoc nsz arcp contract afn float %i.dw, %i.dk
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i65

_dt_RGB_2_Hue.exit.i65:                           ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i66 = phi nsz float [ %i.dr, %bb.p ], [ %i.dv, %bb.r ], [ %i.dy, %bb.s ]
  %i.dz = fmul reassoc nsz arcp contract afn float %.0.i.i66, f0x3E2AAAAB ; 2 uses
  %i.ea = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.dz)
  %i.eb = fsub reassoc nsz arcp contract afn float %i.dz, %i.ea
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 3.600000e+02
  %i.ed = fpext reassoc nsz arcp contract afn float %i.ec to double
  %i.ee = fmul reassoc nnan nsz arcp contract afn float %i.dk, 1.000000e+02
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ee, %i.dj
  %i.eg = fpext reassoc nsz arcp contract afn float %i.ef to double
  br label %dt_RGB_2_HSV.exit

dt_RGB_2_HSV.exit:                                ; preds = %bb.n, %_dt_RGB_2_Hue.exit.i65
  %.018.i = phi double [ %i.eg, %_dt_RGB_2_Hue.exit.i65 ], [ 0.000000e+00, %bb.n ]
  %.0.i64 = phi double [ %i.ed, %_dt_RGB_2_Hue.exit.i65 ], [ 0.000000e+00, %bb.n ]
  %i.eh = fmul reassoc nsz arcp contract afn float %i.dj, 1.000000e+02
  %i.ei = fpext reassoc nsz arcp contract afn float %i.eh to double
  %i.ej = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.48, double noundef %.0.i64, double noundef %.018.i, double noundef %i.ei) #15 ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.ek = extractelement <4 x i32> %i.v, i64 0
  %spec.select59 = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 0)
  %i.el = tail call i32 @llvm.umin.i32(i32 %spec.select59, i32 255)
  %i.em = shufflevector <4 x i32> %i.v, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.en = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.em, <2 x i32> zeroinitializer)
  %i.eo = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.en, <2 x i32> splat (i32 255)) ; 2 uses
  %i.ep = extractelement <2 x i32> %i.eo, i64 0
  %i.eq = extractelement <2 x i32> %i.eo, i64 1
  %i.er = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.49, i32 noundef %i.el, i32 noundef %i.ep, i32 noundef %i.eq) #15 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  store i32 9344994, ptr %i.a, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %dt_RGB_2_HSV.exit, %dt_RGB_2_HSL.exit, %dt_Lab_2_LCH.exit, %bb.d, %bb.c, %bb.b
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 16, !tbaa !105
  %i.eu = tail call ptr @gtk_label_get_text(ptr noundef %i.et) #15
  %i.ev = call i32 @g_strcmp0(ptr noundef %i.eu, ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.ev, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = load ptr, ptr %i.es, align 16, !tbaa !105
  call void @gtk_label_set_text(ptr noundef %i.ew, ptr noundef nonnull %i.a) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !104
  call void @gtk_widget_queue_draw(ptr noundef %i.ey) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
end_hunk_1
