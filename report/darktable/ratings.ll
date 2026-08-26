Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ratings?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.dt_action_def_t = type { ptr, ptr, ptr, ptr, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct._GdkRGBA = type { double, double, double, double }

@.str = private unnamed_addr constant [8 x i8] c"ratings\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"set star rating for selected images\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"leave-notify-event\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"lib-rating-stars\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"rating\00", align 1
@dt_action_def_rating = external constant %struct.dt_action_def_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @name(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #6
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
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
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
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !20
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = tail call i32 @dt_control_running() #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #6
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64   ; 2 uses
  %i.f = sitofp reassoc nsz arcp contract afn i32 %i.e to float ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !66
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to double ; 2 uses
  %i.j = fpext reassoc nsz arcp contract afn float %i.f to double ; 2 uses
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 5.000000e+00
  %i.l = fsub reassoc nnan nsz arcp contract afn double %i.i, %i.k
  %i.m = fmul reassoc nnan nsz arcp contract afn double %i.l, 2.500000e-01
  %i.n = fptrunc reassoc nsz arcp contract afn double %i.m to float
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1440
  %i.q = load double, ptr %i.p, align 8, !tbaa !68 ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %i.i
  %i.s = fptosi double %i.r to i32
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.e to double
  %i.u = fmul reassoc nsz arcp contract afn double %i.q, %i.t
  %i.v = fptosi double %i.u to i32
  %i.w = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.s, i32 noundef %i.v) #6 ; 4 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1440
  %i.z = load double, ptr %i.y, align 8, !tbaa !68 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.w, double noundef %i.z, double noundef %i.z) #6
  %i.aa = call ptr @cairo_create(ptr noundef %i.w) #6 ; 20 uses
  %i.ab = call ptr @gtk_widget_get_style_context(ptr noundef %0) #6 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.g, align 4, !tbaa !74
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>  ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = extractelement <2 x double> %i.ad, i64 1
  call void @gtk_render_background(ptr noundef %i.ab, ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ae, double noundef %i.af) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ag = call i32 @gtk_widget_get_state_flags(ptr noundef %0) #6
  call void @gtk_style_context_get_color(ptr noundef %i.ab, i32 noundef %i.ag, ptr noundef nonnull %4) #6
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1432
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !75
  call void @cairo_set_line_width(ptr noundef %i.aa, double noundef %i.aj) #6
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.aa, ptr noundef nonnull %4) #6
  store i32 0, ptr %i.b, align 4, !tbaa !76
  %i.ak = insertelement <2 x double> poison, double %i.j, i64 0
  %5 = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul reassoc nnan nsz arcp contract afn <2 x double> %5, <double 5.000000e-01, double 2.000000e-01> ; 2 uses
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.al = fptrunc <4 x double> %7 to <4 x float>  ; 5 uses
  %i.am = extractelement <4 x float> %i.al, i64 1 ; 8 uses
  %i.an = extractelement <4 x float> %i.al, i64 0 ; 12 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.al, %i.al
  %i.ao = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double
  %i.aq = fmul reassoc nnan nsz arcp contract afn float %i.am, 8.090170e-01
  %i.ar = fsub reassoc nsz arcp contract afn float %i.an, %i.aq
  %i.as = fpext reassoc nsz arcp contract afn float %i.ar to double
  %i.at = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3F30E444
  %i.au = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.av = fmul reassoc nsz arcp contract afn <4 x float> %i.al, <float 0.000000e+00, float f0x3F167918, float f0x3F737871, float f0x3F737870>
  %i.aw = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x3F737870
  %i.ax = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x3E9E377B
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.an
  %i.az = fpext reassoc nsz arcp contract afn float %i.ay to double
  %i.ba = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3F167917
  %i.bb = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3FE78DDF
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x33BBBD2E
  %i.be = fadd reassoc nsz arcp contract afn float %i.an, %i.am
  %i.bf = fpext reassoc nsz arcp contract afn float %i.be to double
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3F16791A
  %i.bh = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3FE78DDE
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x3E9E377D
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.an
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3F737870
  %i.bn = fmul reassoc nnan nsz arcp contract afn float %i.an, f0x3F30E441
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  %i.bp = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x3F167913
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x3F4F1BC1
  %i.br = fsub reassoc nsz arcp contract afn float %i.an, %i.bq
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bx = fadd reassoc nsz arcp contract afn float %i.n, %i.f
  %i.by = extractelement <2 x double> %6, i64 0
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
  %.044 = phi i32 [ 0, %bb.b ], [ %i.dk, %bb.h ]  ; 3 uses
  %.03943 = phi i32 [ 0, %bb.b ], [ %i.dj, %bb.h ] ; 3 uses
  %i.bz = sitofp reassoc nsz arcp contract afn i32 %.03943 to double
  %i.ca = fadd reassoc nsz arcp contract afn double %i.by, %i.bz
  %i.cb = fptrunc reassoc nsz arcp contract afn double %i.ca to float ; 7 uses
  %i.cc = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fadd reassoc nsz arcp contract afn <4 x float> %i.av, %i.cd
  %i.cf = fpext <4 x float> %i.ce to <4 x double> ; 4 uses
  %i.cg = extractelement <4 x double> %i.cf, i64 0
  call void @cairo_move_to(ptr noundef %i.aa, double noundef %i.cg, double noundef %i.ap) #6
  %i.ch = extractelement <4 x double> %i.cf, i64 1
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.ch, double noundef %i.as) #6
  %i.ci = extractelement <4 x double> %i.cf, i64 2
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.ci, double noundef %i.au) #6
  %i.cj = extractelement <4 x double> %i.cf, i64 3
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cj, double noundef %i.az) #6
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ba, %i.cb
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cl, double noundef %i.bc) #6
  %i.cm = fsub reassoc nsz arcp contract afn float %i.cb, %i.bd
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cn, double noundef %i.bf) #6
  %i.co = fsub reassoc nsz arcp contract afn float %i.cb, %i.bg
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cp, double noundef %i.bi) #6
  %i.cq = fsub reassoc nsz arcp contract afn float %i.cb, %i.aw
  %i.cr = fpext reassoc nsz arcp contract afn float %i.cq to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cr, double noundef %i.bl) #6
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cb, %i.bm
  %i.ct = fpext reassoc nsz arcp contract afn float %i.cs to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.ct, double noundef %i.bo) #6
  %i.cu = fsub reassoc nsz arcp contract afn float %i.cb, %i.bp
  %i.cv = fpext reassoc nsz arcp contract afn float %i.cu to double
  call void @cairo_line_to(ptr noundef %i.aa, double noundef %i.cv, double noundef %i.bs) #6
  call void @cairo_close_path(ptr noundef %i.aa) #6
  %i.cw = load i32, ptr %i.bt, align 4, !tbaa !78
  %i.cx = icmp slt i32 %.03943, %i.cw
  br i1 %i.cx, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @cairo_fill_preserve(ptr noundef %i.aa) #6
  %i.cy = load double, ptr %4, align 8, !tbaa !79
  %i.cz = load double, ptr %i.bu, align 8, !tbaa !81
  %i.da = load double, ptr %i.bv, align 8, !tbaa !82
  %i.db = load double, ptr %i.bw, align 8, !tbaa !83
  %i.dc = fmul reassoc nsz arcp contract afn double %i.db, 5.000000e-01
  call void @cairo_set_source_rgba(ptr noundef %i.aa, double noundef %i.cy, double noundef %i.cz, double noundef %i.da, double noundef %i.dc) #6
  call void @cairo_stroke(ptr noundef %i.aa) #6
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.aa, ptr noundef nonnull %4) #6
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !76
  %.not42 = icmp slt i32 %.044, %i.dd
  br i1 %.not42, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = add nuw nsw i32 %.044, 1                ; 2 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 580
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !84
  store i32 %i.de, ptr %i.b, align 4, !tbaa !76
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @cairo_stroke(ptr noundef %i.aa) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %.03943 to float
  %i.di = fadd reassoc nsz arcp contract afn float %i.bx, %i.dh
  %i.dj = fptosi float %i.di to i32
  %i.dk = add nuw nsw i32 %.044, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dk, 5
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.i:                                             ; preds = %bb.a, %bb.c
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_ratings_button_press_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 1, i32 noundef 0) #6 ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !76
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !98
  %i.f = fptosi <2 x double> %i.e to <2 x i32>
  store <2 x i32> %i.f, ptr %i.d, align 4, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @gtk_widget_queue_draw(ptr noundef %i.h) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_ratings_leave_notify_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !78
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  tail call void @g_free(ptr noundef %i.b) #6
  store ptr null, ptr %i.a, align 8, !tbaa !11
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

end_hunk_0
