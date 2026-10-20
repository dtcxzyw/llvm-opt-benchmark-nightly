Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ratings?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@name:bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @views(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @container(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @expandable(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @position(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 1002
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296), (424, 432)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @g_malloc0(i64 noundef 12) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.a, ptr %i.b, align 8, !tbaa !18
  %i.c = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !19
  tail call void @gtk_widget_set_halign(ptr noundef %i.c, i32 noundef 3) #6
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @gtk_widget_set_valign(ptr noundef %i.e, i32 noundef 3) #6
  %i.f = tail call ptr @gtk_drawing_area_new() #6 ; 10 uses
  tail call void @gtk_widget_set_events(ptr noundef %i.f, i32 noundef 45830) #6
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #6
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.f, ptr noundef %i.g) #6
  tail call void @gtk_widget_set_app_paintable(ptr noundef %i.f, i32 noundef 1) #6
  %i.h = tail call i64 @g_signal_connect_data(ptr noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef nonnull @_lib_ratings_draw_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #6 ; 0 uses
  %i.i = tail call i64 @g_signal_connect_data(ptr noundef %i.f, ptr noundef nonnull @.str.3, ptr noundef nonnull @_lib_ratings_button_press_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #6 ; 0 uses
  %i.j = tail call i64 @g_signal_connect_data(ptr noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @_lib_ratings_button_release_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #6 ; 0 uses
  %i.k = tail call i64 @g_signal_connect_data(ptr noundef %i.f, ptr noundef nonnull @.str.5, ptr noundef nonnull @_lib_ratings_motion_notify_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #6 ; 0 uses
  %i.l = tail call i64 @g_signal_connect_data(ptr noundef %i.f, ptr noundef nonnull @.str.6, ptr noundef nonnull @_lib_ratings_leave_notify_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #6 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @gtk_box_pack_start(ptr noundef %i.m, ptr noundef %i.f, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @gtk_widget_set_name(ptr noundef %i.n, ptr noundef nonnull @.str.7) #6
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = tail call ptr @dt_action_define(ptr noundef nonnull %i.p, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %i.f, ptr noundef nonnull @dt_action_def_rating) #6 ; 7 uses
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 0, i32 noundef 0, i32 noundef 48, i32 noundef 0) #6
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 1, i32 noundef 0, i32 noundef 49, i32 noundef 0) #6
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 2, i32 noundef 0, i32 noundef 50, i32 noundef 0) #6
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 3, i32 noundef 0, i32 noundef 51, i32 noundef 0) #6
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 4, i32 noundef 0, i32 noundef 52, i32 noundef 0) #6
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 5, i32 noundef 0, i32 noundef 53, i32 noundef 0) #6
  tail call void @dt_shortcut_register(ptr noundef %i.q, i32 noundef 6, i32 noundef 0, i32 noundef 114, i32 noundef 0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_valign(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_drawing_area_new() local_unnamed_addr #5

declare void @gtk_widget_set_events(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_app_paintable(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_ratings_draw_callback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %4 = alloca %struct._GdkRGBA, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = tail call i32 @dt_control_running() #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #6
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69   ; 2 uses
  %i.f = sitofp reassoc nsz arcp contract afn i32 %i.e to float ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to double ; 2 uses
  %i.j = fpext reassoc nsz arcp contract afn float %i.f to double ; 2 uses
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 5.000000e+00
  %i.l = fsub reassoc nnan nsz arcp contract afn double %i.i, %i.k
  %i.m = fmul reassoc nnan nsz arcp contract afn double %i.l, 2.500000e-01
  %i.n = fptrunc reassoc nsz arcp contract afn double %i.m to float
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1440
  %i.q = load double, ptr %i.p, align 8, !tbaa !77 ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %i.i
  %i.s = fptosi double %i.r to i32
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.e to double
  %i.u = fmul reassoc nsz arcp contract afn double %i.q, %i.t
  %i.v = fptosi double %i.u to i32
  %i.w = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.s, i32 noundef %i.v) #6 ; 4 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1440
  %i.z = load double, ptr %i.y, align 8, !tbaa !77 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.w, double noundef %i.z, double noundef %i.z) #6
  %i.aa = call ptr @cairo_create(ptr noundef %i.w) #6 ; 20 uses
  %i.ab = call ptr @gtk_widget_get_style_context(ptr noundef %0) #6 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.g, align 4, !tbaa !64
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>  ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = extractelement <2 x double> %i.ad, i64 1
  call void @gtk_render_background(ptr noundef %i.ab, ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ae, double noundef %i.af) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ag = call i32 @gtk_widget_get_state_flags(ptr noundef %0) #6
  call void @gtk_style_context_get_color(ptr noundef %i.ab, i32 noundef %i.ag, ptr noundef nonnull %4) #6
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1432
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !78
  call void @cairo_set_line_width(ptr noundef %i.aa, double noundef %i.aj) #6
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.aa, ptr noundef nonnull %4) #6
  store i32 0, ptr %i.b, align 4, !tbaa !66
  %i.ak = insertelement <2 x double> poison, double %i.j, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <4 x i32> zeroinitializer
  %i.am = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.al, <double 5.000000e-01, double 2.000000e-01, double 5.000000e-01, double 2.000000e-01> ; 2 uses
  %i.an = fptrunc <4 x double> %i.am to <4 x float> ; 6 uses
  %i.ao = extractelement <4 x float> %i.an, i64 1 ; 6 uses
  %i.ap = extractelement <4 x float> %i.an, i64 0 ; 10 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.an, %i.an
  %i.aq = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ar = fpext reassoc nsz arcp contract afn float %i.aq to double
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.ao, 8.090170e-01
  %i.at = fsub reassoc nsz arcp contract afn float %i.ap, %i.as
  %i.au = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.av = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x3F30E444
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.ax = fmul reassoc nsz arcp contract afn <4 x float> %i.an, <float 0.000000e+00, float f0x3F167918, float f0x3F737871, float f0x3F737870>
  %i.ay = fmul reassoc nnan nsz arcp contract afn float %i.ao, f0x3E9E377B
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.ap
  %i.ba = fpext reassoc nsz arcp contract afn float %i.az to double
  %i.bb = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x3F167917
  %i.bc = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x3FE78DDF
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.be = fmul reassoc nnan nsz arcp contract afn float %i.ao, f0x33BBBD2E
  %i.bf = fadd reassoc nsz arcp contract afn float %i.ap, %i.ao
  %i.bg = fpext reassoc nsz arcp contract afn float %i.bf to double
  %i.bh = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bi = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bh, <float f0x3F16791A, float f0x3F737870>
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x3FE78DDE
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = fmul reassoc nnan nsz arcp contract afn float %i.ao, f0x3E9E377D
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.ap
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double
  %i.bo = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x3F30E441
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bo to double
  %i.bq = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bh, <float f0x3F737870, float f0x3F167913>
  %i.br = fmul reassoc nnan nsz arcp contract afn float %i.ao, f0x3F4F1BC1
  %i.bs = fsub reassoc nsz arcp contract afn float %i.ap, %i.br
  %i.bt = fpext reassoc nsz arcp contract afn float %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = fadd reassoc nsz arcp contract afn float %i.n, %i.f
  %i.bz = extractelement <4 x double> %i.am, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.h
  call void @cairo_destroy(ptr noundef %i.aa) #6
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.w, double noundef 0.000000e+00, double noundef 0.000000e+00) #6
  call void @cairo_paint(ptr noundef %1) #6
  call void @cairo_surface_destroy(ptr noundef %i.w) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.h
  %.044 = phi i32 [ 0, %bb.b ], [ %.pre-phi, %bb.h ] ; 2 uses
  %.03943 = phi i32 [ 0, %bb.b ], [ %i.dl, %bb.h ] ; 3 uses
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %.03943 to double
  %i.cb = fadd reassoc nsz arcp contract afn double %i.bz, %i.ca
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float ; 4 uses
  %i.cd = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fadd reassoc nsz arcp contract afn <4 x float> %i.ax, %i.ce
  %i.cg = fpext <4 x float> %i.cf to <4 x double> ; 4 uses
  %i.ch = extractelement <4 x double> %i.cg, i64 0
  call void @cairo_move_to(ptr noundef %i.aa, double noundef %i.ch, double noundef %i.ar) #6
  %i.ci = extractelement <4 x double> %i.cg, i64 1
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.ci, double noundef %i.au) #6
  %i.cj = extractelement <4 x double> %i.cg, i64 2
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cj, double noundef %i.aw) #6
  %i.ck = extractelement <4 x double> %i.cg, i64 3
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.ck, double noundef %i.ba) #6
  %i.cl = fadd reassoc nsz arcp contract afn float %i.bb, %i.cc
  %i.cm = fpext reassoc nsz arcp contract afn float %i.cl to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cm, double noundef %i.bd) #6
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cc, %i.be
  %i.co = fpext reassoc nsz arcp contract afn float %i.cn to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.co, double noundef %i.bg) #6
  %i.cp = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fsub reassoc nsz arcp contract afn <2 x float> %i.cq, %i.bi
  %i.cs = fpext <2 x float> %i.cr to <2 x double> ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.ct, double noundef %i.bk) #6
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cu, double noundef %i.bn) #6
  %i.cv = fsub reassoc nsz arcp contract afn <2 x float> %i.cq, %i.bq
  %i.cw = fpext <2 x float> %i.cv to <2 x double> ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cx, double noundef %i.bp) #6
  %i.cy = extractelement <2 x double> %i.cw, i64 1
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cy, double noundef %i.bt) #6
  call void @cairo_close_path(ptr noundef %i.aa) #6
  %i.cz = load i32, ptr %i.bu, align 4, !tbaa !67
  %i.da = icmp slt i32 %.03943, %i.cz
  br i1 %i.da, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @cairo_fill_preserve(ptr noundef %i.aa) #6
  %i.db = load double, ptr %4, align 8, !tbaa !80
  %i.dc = load double, ptr %i.bv, align 8, !tbaa !81
  %i.dd = load double, ptr %i.bw, align 8, !tbaa !82
  %i.de = load double, ptr %i.bx, align 8, !tbaa !83
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 5.000000e-01
  call void @cairo_set_source_rgba(ptr noundef %i.aa, double noundef %i.db, double noundef %i.dc, double noundef %i.dd, double noundef %i.df) #6
  call void @cairo_stroke(ptr noundef %i.aa) #6
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.aa, ptr noundef nonnull %4) #6
  %5 = add nuw nsw i32 %.044, 1                   ; 5 uses
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !66
  %6 = icmp sgt i32 %5, %i.dg
  br i1 %6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 580
  store i32 %5, ptr %i.di, align 4, !tbaa !96
  store i32 %5, ptr %i.b, align 4, !tbaa !66
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @cairo_stroke(ptr noundef %i.aa) #6
  %.pre = add nuw nsw i32 %.044, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.pre-phi = phi i32 [ %5, %bb.e ], [ %5, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %.03943 to float
  %i.dk = fadd reassoc nsz arcp contract afn float %i.by, %i.dj
  %i.dl = fptosi float %i.dk to i32
  %exitcond.not = icmp eq i32 %.pre-phi, 5
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.i:                                             ; preds = %bb.a, %bb.c
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_ratings_button_press_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !66
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 1, i32 noundef 0) #6 ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !66
  tail call void @dt_ratings_apply_on_list(ptr noundef %i.e, i32 noundef %i.f, i32 noundef 1) #6
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !97
  tail call void @dt_collection_update_query(ptr noundef %i.g, i32 noundef 3, i32 noundef 33, ptr noundef %i.e) #6
  tail call void @dt_control_queue_redraw_center() #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_lib_ratings_button_release_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_ratings_motion_notify_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !98
  %i.f = fptosi <2 x double> %i.e to <2 x i32>
  store <2 x i32> %i.f, ptr %i.d, align 4, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @gtk_widget_queue_draw(ptr noundef %i.h) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_ratings_leave_notify_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void @gtk_widget_queue_draw(ptr noundef %i.f) #6
  ret i32 1
}

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_shortcut_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @g_free(ptr noundef %i.b) #6
  store ptr null, ptr %i.a, align 8, !tbaa !18
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #5

declare i32 @dt_control_running() local_unnamed_addr #5

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #5

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #5

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @gtk_style_context_get_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gtk_widget_get_state_flags(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #5

declare void @gdk_cairo_set_source_rgba(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #5

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_paint(ptr noundef) local_unnamed_addr #5

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #5

declare ptr @dt_act_on_get_images(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_ratings_apply_on_list(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_collection_update_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_control_queue_redraw_center() local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!14 = !{!"dt_action_t", !8, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!16 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!17 = !{!"dt_lib_module_t", !14, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !15, i64 280, !11, i64 288, !7, i64 296, !16, i64 424, !16, i64 432, !8, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !8, i64 480}
!18 = !{!17, !11, i64 288}
!19 = !{!17, !16, i64 424}
!20 = !{!"dt_codepath_t", !8, i64 0}
!21 = !{!"p1 _ZTS6_GList", !11, i64 0}
!22 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!23 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!24 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!25 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!26 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!27 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!28 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!29 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!30 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!31 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!32 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!33 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!34 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!35 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!36 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!37 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!38 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!39 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!40 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!41 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!42 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!43 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!44 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!45 = !{!"dt_pthread_mutex_t", !7, i64 0}
!46 = !{!"p1 _ZTS9lua_State", !11, i64 0}
end_hunk_0
