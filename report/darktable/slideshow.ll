Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/slideshow?download=true
inline.NumInlined: 48
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
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
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.dt_mipmap_buffer_t = type { i32, i32, i32, i32, float, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [10 x i8] c"slideshow\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"there are no images in this collection\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"SELECT rowid FROM memory.collected_images WHERE imgid=%d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"[sql] %s:%d, function %s(): prepare \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/darktable/darktable/src/views/slideshow.c\00", align 1
@__FUNCTION__.enter = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"sqlite3 error: %s:%d, function %s(), query \22%s\22: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"slideshow_delay\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"waiting to start slideshow\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"start and stop\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"exit slideshow\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"slow down\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"speed up\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"step forward\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"step back\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"go to next image\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"go to previous image\00", align 1
@__FUNCTION__._get_image_at_rank = private unnamed_addr constant [19 x i8] c"_get_image_at_rank\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"sqlite3 error: %s:%d, function %s(): %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"process slideshow image\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"end of images\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"end of images. press any key to return to lighttable mode\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"slideshow paused\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"lighttable\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"slideshow delay set to %d second\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"slideshow delay set to %d seconds\00", align 1

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
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #12
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @view(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 16
}

; Function Attrs: nounwind uwtable
define void @init(ptr nofree noundef writeonly captures(none) initializes((304, 312)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(288) ptr @calloc(i64 noundef 1, i64 noundef 288) #13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.c, ptr noundef null) #12 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define void @cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.e) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @try_enter(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !65
  %i.b = tail call i32 @dt_collection_get_count(ptr noundef %i.a) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #12
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.c) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @dt_collection_get_count(ptr noundef) local_unnamed_addr #6

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @enter(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 35 uses
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 276
  store i32 0, ptr %i.e, align 4, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 228
  store i32 -1, ptr %i.f, align 4, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store i32 -1, ptr %i.g, align 8, !tbaa !70
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  tail call void @dt_ui_panel_show(ptr noundef %i.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #12
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  tail call void @dt_ui_panel_show(ptr noundef %i.k, i32 noundef 4, i32 noundef 0, i32 noundef 1) #12
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  tail call void @dt_ui_panel_show(ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef 1) #12
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  tail call void @dt_ui_panel_show(ptr noundef %i.o, i32 noundef 5, i32 noundef 0, i32 noundef 1) #12
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  tail call void @dt_ui_panel_show(ptr noundef %i.q, i32 noundef 1, i32 noundef 0, i32 noundef 1) #12
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  tail call void @dt_ui_panel_show(ptr noundef %i.s, i32 noundef 2, i32 noundef 0, i32 noundef 1) #12
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = tail call ptr @dt_ui_main_window(ptr noundef %i.u) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.w = tail call ptr @gtk_widget_get_display(ptr noundef %i.v) #12
  %i.x = tail call ptr @gtk_widget_get_window(ptr noundef %i.v) #12
  %i.y = tail call ptr @gdk_display_get_monitor_at_window(ptr noundef %i.w, ptr noundef %i.x) #12
  call void @gdk_monitor_get_geometry(ptr noundef %i.y, ptr noundef nonnull %1) #12
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.aa = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.z) #12 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1440
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load <2 x i32>, ptr %i.ab, align 4, !tbaa !79
  %i.ah = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ag to <2 x double>
  %i.ai = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.ah
  %i.al = fptoui <2 x double> %i.ak to <2 x i64>
  store <2 x i64> %i.al, ptr %i.af, align 8, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.an, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 1, ptr %i.ap, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 2 uses
  store i32 0, ptr %i.as, align 4, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 1, ptr %i.at, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.av, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i32 1, ptr %i.ax, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.az, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 172 ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i32 1, ptr %i.bb, align 8, !tbaa !84
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bd, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 212 ; 2 uses
  store i32 0, ptr %i.be, align 4, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i32 1, ptr %i.bf, align 8, !tbaa !84
  %i.bg = call i32 (...) @dt_act_on_get_main_image() #12 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bi = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.3, i32 noundef %i.bg) #12 ; 4 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !85
  %i.bk = and i32 %i.bj, 256
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 478, ptr noundef nonnull @__FUNCTION__.enter, ptr noundef %i.bi) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.bm = call ptr @dt_database_get(ptr noundef %i.bl) #12
  %i.bn = call i32 @sqlite3_prepare_v2(ptr noundef %i.bm, ptr noundef %i.bi, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #12
  %.not48 = icmp eq i32 %i.bn, 0
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.bq = call ptr @dt_database_get(ptr noundef %i.bp) #12
  %i.br = call ptr @sqlite3_errmsg(ptr noundef %i.bq) #12
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 478, ptr noundef nonnull @__FUNCTION__.enter, ptr noundef %i.bi, ptr noundef %i.br) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.bu = call i32 @sqlite3_step(ptr noundef %i.bt) #12
  %i.bv = icmp eq i32 %i.bu, 100
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.bx = call i32 @sqlite3_column_int(ptr noundef %i.bw, i32 noundef 0) #12
  %i.by = add nsw i32 %i.bx, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.045 = phi i32 [ %i.by, %bb.g ], [ -1, %bb.f ] ; 2 uses
  call void @g_free(ptr noundef %i.bi) #12
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ca = call i32 @sqlite3_finalize(ptr noundef %i.bz) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cb = icmp eq i32 %.045, -1
  br i1 %i.cb, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.a, %bb.h
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !77
  %i.ce = call ptr @dt_ui_thumbtable(ptr noundef %i.cd) #12
  %i.cf = call i32 @dt_thumbtable_get_offset(ptr noundef %i.ce) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %i.cg = phi i32 [ %i.cf, %.thread ], [ %.045, %bb.h ] ; 5 uses
  %i.ch = add nsw i32 %i.cg, -2                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !82
  %i.cj = add nsw i32 %i.cg, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i32 %i.cg, ptr %i.cl, align 8, !tbaa !82
  %i.cm = add nsw i32 %i.cg, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !82
  %i.co = add nsw i32 %i.cg, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !82
  %i.cq = call fastcc i32 @_get_image_at_rank(i32 noundef %i.ch)
  store i32 %i.cq, ptr %i.ao, align 4, !tbaa !83
  %i.cr = load i32, ptr %i.ar, align 8, !tbaa !82
  %i.cs = call fastcc i32 @_get_image_at_rank(i32 noundef %i.cr)
  store i32 %i.cs, ptr %i.as, align 4, !tbaa !83
  %i.ct = load i32, ptr %i.av, align 8, !tbaa !82
  %i.cu = call fastcc i32 @_get_image_at_rank(i32 noundef %i.ct)
  store i32 %i.cu, ptr %i.aw, align 4, !tbaa !83
  %i.cv = load i32, ptr %i.az, align 8, !tbaa !82
  %i.cw = call fastcc i32 @_get_image_at_rank(i32 noundef %i.cv)
  store i32 %i.cw, ptr %i.ba, align 4, !tbaa !83
  %i.cx = load i32, ptr %i.bd, align 8, !tbaa !82
  %i.cy = call fastcc i32 @_get_image_at_rank(i32 noundef %i.cx)
  store i32 %i.cy, ptr %i.be, align 4, !tbaa !83
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !65
  %i.da = call i32 @dt_collection_get_count(ptr noundef %i.cz) #12
  store i32 %i.da, ptr %i.c, align 8, !tbaa !91
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store i32 0, ptr %i.db, align 8, !tbaa !92
  %i.dc = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.7) #12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !93
  %i.de = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.z) #12 ; 0 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !77
  %i.dh = call ptr @dt_ui_center(ptr noundef %i.dg) #12
  call void @gtk_widget_grab_focus(ptr noundef %i.dh) #12
  call void @dt_control_queue_redraw_center() #12
  %i.di = call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_process_job_run, ptr noundef nonnull @.str.19) #12, !inline_history !102 ; 3 uses
  %.not.i = icmp eq ptr %i.di, null
  br i1 %.not.i, label %_process_job_create.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @dt_control_job_set_params(ptr noundef nonnull %i.di, ptr noundef nonnull %i.c, ptr noundef null) #12, !inline_history !102
  br label %_process_job_create.exit

_process_job_create.exit:                         ; preds = %bb.i, %bb.j
  %i.dj = call i32 @dt_control_add_job(i32 noundef 2, ptr noundef %i.di) #12 ; 0 uses
  %i.dk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #12
  call void (ptr, ...) @dt_control_log(ptr noundef %i.dk) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #6

declare void @dt_ui_panel_show(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_widget_get_display(ptr noundef) local_unnamed_addr #6

declare ptr @gdk_display_get_monitor_at_window(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #6

declare void @gdk_monitor_get_geometry(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dt_act_on_get_main_image(...) local_unnamed_addr #6

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #6

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #6

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #6

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #6

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @g_free(ptr noundef) local_unnamed_addr #6

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #6
end_hunk_0
begin_hunk_1_@_get_image_at_rank:bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !85
  %i.f = and i32 %i.e, 256
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 106, ptr noundef nonnull @__FUNCTION__._get_image_at_rank, ptr noundef %i.d) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.h = tail call ptr @dt_database_get(ptr noundef %i.g) #12
  %i.i = call i32 @sqlite3_prepare_v2(ptr noundef %i.h, ptr noundef %i.d, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #12
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.l = call ptr @dt_database_get(ptr noundef %i.k) #12
  %i.m = call ptr @sqlite3_errmsg(ptr noundef %i.l) #12
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 106, ptr noundef nonnull @__FUNCTION__._get_image_at_rank, ptr noundef %i.d, ptr noundef %i.m) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.p = call i32 @sqlite3_bind_int(ptr noundef %i.o, i32 noundef 1, i32 noundef %0) #12
  %.not10 = icmp eq i32 %i.p, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.s = call ptr @dt_database_get(ptr noundef %i.r) #12
  %i.t = call ptr @sqlite3_errmsg(ptr noundef %i.s) #12
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 107, ptr noundef nonnull @__FUNCTION__._get_image_at_rank, ptr noundef %i.t) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.w = call i32 @sqlite3_bind_int(ptr noundef %i.v, i32 noundef 2, i32 noundef 1) #12
  %.not11 = icmp eq i32 %i.w, 0
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.z = call ptr @dt_database_get(ptr noundef %i.y) #12
  %i.aa = call ptr @sqlite3_errmsg(ptr noundef %i.z) #12
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 108, ptr noundef nonnull @__FUNCTION__._get_image_at_rank, ptr noundef %i.aa) #14 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ad = call i32 @sqlite3_step(ptr noundef %i.ac) #12
  %i.ae = icmp eq i32 %i.ad, 100
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ag = call i32 @sqlite3_column_int(ptr noundef %i.af, i32 noundef 0) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.ag, %bb.k ], [ 0, %bb.j ]
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ai = call i32 @sqlite3_finalize(ptr noundef %i.ah) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %.1 = phi i32 [ %.0, %bb.l ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #6

declare ptr @dt_ui_center(ptr noundef) local_unnamed_addr #6

declare void @dt_control_queue_redraw_center() local_unnamed_addr #6

declare i32 @dt_control_add_job(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @leave(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 284 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @g_source_remove(i32 noundef %i.d) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !67
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.9) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i32 0, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 276 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !68
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.j = tail call i32 @sleep(i32 noundef 1) #12  ; 0 uses
  %i.k = load i32, ptr %i.g, align 4, !tbaa !68
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = tail call ptr @dt_ui_thumbtable(ptr noundef %i.n) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !82
  %i.s = tail call i32 @dt_thumbtable_set_offset(ptr noundef %i.o, i32 noundef %i.r, i32 noundef 0) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.t) #12 ; 0 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.v) #12
  store ptr null, ptr %i.p, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.x) #12
  store ptr null, ptr %i.w, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.z) #12
  store ptr null, ptr %i.y, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.ab) #12
  store ptr null, ptr %i.aa, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.ad) #12
  store ptr null, ptr %i.ac, align 8, !tbaa !94
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #12 ; 0 uses
  ret void
}

declare i32 @g_source_remove(i32 noundef) local_unnamed_addr #6

declare i32 @sleep(i32 noundef) local_unnamed_addr #6

declare i32 @dt_thumbtable_set_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @expose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !96
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 1, ptr %i.r, align 8, !tbaa !84
  %i.s = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_process_job_run, ptr noundef nonnull @.str.19) #12, !inline_history !0 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_requeue_job.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.s, ptr noundef nonnull %i.b, ptr noundef null) #12, !inline_history !0
  br label %_requeue_job.exit

_requeue_job.exit:                                ; preds = %bb.c, %bb.d
  %i.t = tail call i32 @dt_control_add_job(i32 noundef 2, ptr noundef %i.s) #12, !inline_history !1 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_requeue_job.exit, %bb.b
  tail call void @cairo_paint(ptr noundef %1) #12
  tail call void @cairo_save(ptr noundef %1) #12
  %i.u = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.v = insertelement <2 x i32> %i.u, i32 %3, i64 1
  %i.w = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x double> ; 5 uses
  %i.x = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.w, splat (double 5.000000e-01) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = extractelement <2 x double> %i.x, i64 1
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.y, double noundef %i.z) #12
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = icmp sgt i32 %i.g, 0                    ; 2 uses
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !84
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ag = load <2 x i64>, ptr %i.j, align 8, !tbaa !80
  %i.ah = uitofp reassoc nsz arcp contract afn <2 x i64> %i.ag to <2 x double>
  %i.ai = fdiv reassoc nsz arcp contract afn <2 x double> %i.w, %i.ah ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn olt double %i.aj, %i.ak
  %. = select reassoc nsz arcp contract afn i1 %i.al, double %i.aj, double %i.ak ; 2 uses
  tail call void @cairo_scale(ptr noundef %1, double noundef %., double noundef %.) #12
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.an = load i64, ptr %i.j, align 8, !tbaa !96
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !98
  %i.ap = tail call ptr @dt_view_create_surface(ptr noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao) #12 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.j, align 8, !tbaa !80
  %i.ar = uitofp reassoc nsz arcp contract afn <2 x i64> %i.aq to <2 x double>
  %i.as = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ar, splat (double -5.000000e-01) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = extractelement <2 x double> %i.as, i64 1
  tail call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ap, double noundef %i.at, double noundef %i.au) #12
  %i.av = tail call ptr @cairo_get_source(ptr noundef %1) #12
  tail call void @cairo_pattern_set_filter(ptr noundef %i.av, i32 noundef 2) #12
  tail call void @cairo_paint(ptr noundef %1) #12
  tail call void @cairo_surface_destroy(ptr noundef %i.ap) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  store i32 %i.g, ptr %i.aw, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 %i.g, ptr %i.ax, align 8, !tbaa !70
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %i.ac, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.f, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70
  %.not74 = icmp eq i32 %i.g, %i.az
  br i1 %.not74, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ba = sdiv i32 %2, 8
  %i.bb = sdiv i32 %3, 8
  %i.bc = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.ba, i32 noundef %i.bb) #12
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %6, i32 noundef %i.g, i32 noundef %i.bc, i32 noundef 3, i8 noundef signext 114, ptr noundef nonnull @.str.5, i32 noundef 588) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !105
  %.not75 = icmp eq ptr %i.be, null
  br i1 %.not75, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bh = load <2 x i32>, ptr %i.bf, align 8, !tbaa !79
  %i.bi = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bh to <2 x double>
  %i.bj = fdiv reassoc nsz arcp contract afn <2 x double> %i.w, %i.bi ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bl = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt double %i.bk, %i.bl
  %.76 = select reassoc nsz arcp contract afn i1 %i.bm, double %i.bk, double %i.bl ; 2 uses
  call void @cairo_scale(ptr noundef %1, double noundef %.76, double noundef %.76) #12
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !105
  %i.bo = load i32, ptr %i.bf, align 8, !tbaa !106 ; 2 uses
  %i.bp = load i32, ptr %i.bg, align 4, !tbaa !107
  %i.bq = shl nsw i32 %i.bo, 2
  %i.br = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.bn, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.bq, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.bs = load <2 x i32>, ptr %i.bf, align 8, !tbaa !79
  %i.bt = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bs to <2 x double>
  %i.bu = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.bt, splat (double -5.000000e-01) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = extractelement <2 x double> %i.bu, i64 1
  call void @gdk_cairo_set_source_pixbuf(ptr noundef %1, ptr noundef %i.br, double noundef %i.bv, double noundef %i.bw) #12
  %i.bx = call ptr @cairo_get_source(ptr noundef %1) #12
  call void @cairo_pattern_set_filter(ptr noundef %i.bx, i32 noundef 1) #12
  call void @cairo_paint(ptr noundef %1) #12
  call void @g_object_unref(ptr noundef %i.br) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.ay, align 8, !tbaa !70
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, i32 noundef 603) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %.thread, %bb.k, %bb.g
  call void @cairo_restore(ptr noundef %1) #12
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1440
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !78 ; 2 uses
  %i.cb = extractelement <2 x double> %i.w, i64 0
  %i.cc = fmul reassoc nsz arcp contract afn double %i.ca, %i.cb
  %i.cd = fptoui double %i.cc to i64
  store i64 %i.cd, ptr %i.h, align 8, !tbaa !95
  %i.ce = extractelement <2 x double> %i.w, i64 1
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ca, %i.ce
  %i.cg = fptoui double %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !97
  %i.ci = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #12 ; 0 uses
  ret void
}

declare void @cairo_paint(ptr noundef) local_unnamed_addr #6

declare void @cairo_save(ptr noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare ptr @dt_view_create_surface(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_pattern_set_filter(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #6

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #6

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @gdk_pixbuf_new_from_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @gdk_cairo_set_source_pixbuf(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @g_object_unref(ptr noundef) local_unnamed_addr #6

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_restore(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @mouse_moved(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 284 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @g_source_remove(i32 noundef %i.d) #12 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.9) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @g_timeout_add_seconds(i32 noundef 1, ptr noundef nonnull @_hide_mouse, ptr noundef nonnull %0) #12
  store i32 %i.f, ptr %i.c, align 4, !tbaa !67
  ret void
}

declare i32 @g_timeout_add_seconds(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @_hide_mouse(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  store i32 0, ptr %i.c, align 4, !tbaa !67
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.2) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @button_released(ptr nofree noundef readnone captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  switch i32 %4, label %bb.c [
    i32 1, label %.sink.split
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call fastcc void @_step_state(ptr noundef %i.b, i32 noundef %.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_step_state(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %i.f = load i32, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  %scevgep.i = getelementptr nuw i8, ptr %0, i64 64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %scevgep.i, i64 160, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  store i32 0, ptr %i.m, align 4, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i32 1, ptr %i.n, align 8, !tbaa !84
  %i.o = load i32, ptr %i.d, align 8, !tbaa !82
  %i.p = add nsw i32 %i.o, 2                      ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !82
  %.not.i = icmp sgt i32 %i.p, %i.f
  br i1 %.not.i, label %_shift_left.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc i32 @_get_image_at_rank(i32 noundef %i.p)
  br label %_shift_left.exit

_shift_left.exit:                                 ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  store i32 %i.r, ptr %i.m, align 4, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 -1, ptr %i.s, align 4, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 -1, ptr %i.t, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.j) #12
  %i.u = load i32, ptr %i.d, align 8, !tbaa !82
  %i.v = add nsw i32 %i.u, 2                      ; 3 uses
  store i32 %i.v, ptr %i.l, align 8, !tbaa !82
  %i.w = load i32, ptr %0, align 8, !tbaa !91
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_shift_left.exit
  %i.y = tail call fastcc i32 @_get_image_at_rank(i32 noundef %i.v)
  br label %bb.f

bb.f:                                             ; preds = %_shift_left.exit, %bb.e
  %i.z = phi i32 [ %i.y, %bb.e ], [ 0, %_shift_left.exit ]
  store i32 %i.z, ptr %i.m, align 4, !tbaa !83
  store i32 1, ptr %i.n, align 8, !tbaa !84
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.aa) #12
  store ptr null, ptr %i.k, align 8, !tbaa !94
  %i.ab = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_process_job_run, ptr noundef nonnull @.str.19) #12, !inline_history !0 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %.critedge, label %.critedge.sink.split

end_hunk_1
begin_hunk_2_@_process_job_run:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_is_slot_waiting.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.k = load i32, ptr %i.j, align 4, !tbaa !83
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_is_slot_waiting.exit, label %_is_slot_waiting.exit.thread

_is_slot_waiting.exit:                            ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !82
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_is_slot_waiting.exit.thread, label %bb.d

bb.d:                                             ; preds = %_is_slot_waiting.exit
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #12 ; 0 uses
  tail call fastcc void @_process_image(ptr noundef nonnull %i.a, i32 noundef 2)
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.q

_is_slot_waiting.exit.thread:                     ; preds = %bb.a, %bb.b, %bb.c, %_is_slot_waiting.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.r = load i32, ptr %i.q, align 8, !tbaa !84
  %.not.i25 = icmp eq i32 %i.r, 0
  br i1 %.not.i25, label %_is_slot_waiting.exit26.thread, label %bb.e

bb.e:                                             ; preds = %_is_slot_waiting.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %_is_slot_waiting.exit26.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %_is_slot_waiting.exit26, label %_is_slot_waiting.exit26.thread

_is_slot_waiting.exit26:                          ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !82
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_is_slot_waiting.exit26.thread, label %bb.g

bb.g:                                             ; preds = %_is_slot_waiting.exit26
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #12 ; 0 uses
  tail call fastcc void @_process_image(ptr noundef nonnull %i.a, i32 noundef 3)
  br label %bb.q

_is_slot_waiting.exit26.thread:                   ; preds = %_is_slot_waiting.exit.thread, %bb.e, %bb.f, %_is_slot_waiting.exit26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !84
  %.not.i27 = icmp eq i32 %i.ad, 0
  br i1 %.not.i27, label %_is_slot_waiting.exit28.thread, label %bb.h

bb.h:                                             ; preds = %_is_slot_waiting.exit26.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %_is_slot_waiting.exit28.thread

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !83
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %_is_slot_waiting.exit28, label %_is_slot_waiting.exit28.thread

_is_slot_waiting.exit28:                          ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !82
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_is_slot_waiting.exit28.thread, label %bb.j

bb.j:                                             ; preds = %_is_slot_waiting.exit28
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #12 ; 0 uses
  tail call fastcc void @_process_image(ptr noundef nonnull %i.a, i32 noundef 4)
  br label %bb.q

_is_slot_waiting.exit28.thread:                   ; preds = %_is_slot_waiting.exit26.thread, %bb.h, %bb.i, %_is_slot_waiting.exit28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !84
  %.not.i29 = icmp eq i32 %i.ap, 0
  br i1 %.not.i29, label %_is_slot_waiting.exit30.thread, label %bb.k

bb.k:                                             ; preds = %_is_slot_waiting.exit28.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !94
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %_is_slot_waiting.exit30.thread

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.au = load i32, ptr %i.at, align 4, !tbaa !83
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %_is_slot_waiting.exit30, label %_is_slot_waiting.exit30.thread

_is_slot_waiting.exit30:                          ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !82
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %_is_slot_waiting.exit30.thread, label %bb.m

bb.m:                                             ; preds = %_is_slot_waiting.exit30
  %i.az = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #12 ; 0 uses
  tail call fastcc void @_process_image(ptr noundef nonnull %i.a, i32 noundef 1)
  br label %bb.q

_is_slot_waiting.exit30.thread:                   ; preds = %_is_slot_waiting.exit28.thread, %bb.k, %bb.l, %_is_slot_waiting.exit30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !84
  %.not.i31 = icmp eq i32 %i.bb, 0
  br i1 %.not.i31, label %_is_slot_waiting.exit32.thread, label %bb.n

bb.n:                                             ; preds = %_is_slot_waiting.exit30.thread
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.o, label %_is_slot_waiting.exit32.thread

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !83
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %_is_slot_waiting.exit32, label %_is_slot_waiting.exit32.thread

_is_slot_waiting.exit32:                          ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !82
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %_is_slot_waiting.exit32.thread, label %bb.p

bb.p:                                             ; preds = %_is_slot_waiting.exit32
  %i.bk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #12 ; 0 uses
  tail call fastcc void @_process_image(ptr noundef nonnull %i.a, i32 noundef 0)
  br label %bb.q

_is_slot_waiting.exit32.thread:                   ; preds = %_is_slot_waiting.exit30.thread, %bb.n, %bb.o, %_is_slot_waiting.exit32
  %i.bl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #12 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.m, %_is_slot_waiting.exit32.thread, %bb.p, %bb.j, %bb.d
  %i.bm = tail call fastcc i32 @_is_idle(ptr noundef nonnull %i.a)
  %.not24 = icmp eq i32 %i.bm, 0
  br i1 %.not24, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bn = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_process_job_run, ptr noundef nonnull @.str.19) #12, !inline_history !0 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_requeue_job.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.a, ptr noundef null) #12, !inline_history !0
  br label %_requeue_job.exit

_requeue_job.exit:                                ; preds = %bb.r, %bb.s
  %i.bo = tail call i32 @dt_control_add_job(i32 noundef 2, ptr noundef %i.bn) #12, !inline_history !1 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_requeue_job.exit, %bb.q
  ret i32 0
}

declare void @dt_control_job_set_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dt_control_job_get_params(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @_process_image(ptr noundef %0, i32 noundef range(i32 0, 5) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !108
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !78
  %i.v = load <2 x i64>, ptr %i.i, align 8, !tbaa !80
  %i.w = uitofp reassoc nsz arcp contract afn <2 x i64> %i.v to <2 x double>
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fdiv reassoc nsz arcp contract afn <2 x double> %i.w, %i.y ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fptoui double %i.aa to i64
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fptoui double %i.ac to i64
  call void @dt_dev_image(i32 noundef %i.q, i64 noundef %i.ab, i64 noundef %i.ad, i32 noundef -1, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef -1, ptr noundef null, i32 noundef -2, i32 noundef 0) #12
  %i.ae = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !83
  %.not = icmp eq i32 %i.af, %i.q
  br i1 %.not, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !83
  %i.ai = icmp eq i32 %i.ah, %i.q
  br i1 %i.ai, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !83
  %i.al = icmp eq i32 %i.ak, %i.q
  br i1 %i.al, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.an = load i32, ptr %i.am, align 4, !tbaa !83
  %i.ao = icmp eq i32 %i.an, %i.q
  br i1 %i.ao, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !83
  %i.ar = icmp eq i32 %i.aq, %i.q
  br i1 %i.ar, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83
  %i.au = icmp eq i32 %i.at, %i.q
  br i1 %i.au, label %select.unfold, label %_get_slot_for_image.exit

select.unfold:                                    ; preds = %bb.f, %bb.a, %bb.e, %bb.b, %bb.c, %bb.d
  %.0.ph = phi i32 [ %1, %bb.a ], [ 2, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ], [ 3, %bb.e ], [ 4, %bb.f ]
  %i.av = load i64, ptr %i.i, align 8, !tbaa !95
  %i.aw = icmp eq i64 %i.av, %i.j
  br i1 %i.aw, label %bb.g, label %_get_slot_for_image.exit

bb.g:                                             ; preds = %select.unfold
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !97
  %i.ay = icmp eq i64 %i.ax, %i.l
  br i1 %i.ay, label %bb.h, label %_get_slot_for_image.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.a, align 8, !tbaa !80
  %i.ba = zext nneg i32 %.0.ph to i64
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !96
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !98
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !108
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i32 0, ptr %i.bg, align 8, !tbaa !84
  br label %bb.i

_get_slot_for_image.exit:                         ; preds = %bb.f, %bb.g, %select.unfold
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !108
  call void @free(ptr noundef %i.bh) #12
  br label %bb.i

bb.i:                                             ; preds = %_get_slot_for_image.exit, %bb.h
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !68
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !68
  %i.bk = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @_is_idle(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_is_slot_waiting.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_is_slot_waiting.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %_is_slot_waiting.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !82
  %.lobit = lshr i32 %i.j, 31
  br label %_is_slot_waiting.exit

_is_slot_waiting.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ %.lobit, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !84
  %.not.i.1 = icmp eq i32 %i.m, 0
  br i1 %.not.i.1, label %_is_slot_waiting.exit.1, label %bb.e

bb.e:                                             ; preds = %_is_slot_waiting.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_is_slot_waiting.exit.1

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %_is_slot_waiting.exit.1

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !82
  %.lobit.1 = lshr i32 %i.u, 31
  br label %_is_slot_waiting.exit.1

_is_slot_waiting.exit.1:                          ; preds = %bb.g, %bb.f, %bb.e, %_is_slot_waiting.exit
  %i.v = phi i32 [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %_is_slot_waiting.exit ], [ %.lobit.1, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !84
  %.not.i.2 = icmp eq i32 %i.x, 0
  br i1 %.not.i.2, label %_is_slot_waiting.exit.2, label %bb.h

bb.h:                                             ; preds = %_is_slot_waiting.exit.1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %_is_slot_waiting.exit.2

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !83
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_is_slot_waiting.exit.2

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !82
  %.lobit.2 = lshr i32 %i.af, 31
  br label %_is_slot_waiting.exit.2

_is_slot_waiting.exit.2:                          ; preds = %bb.j, %bb.i, %bb.h, %_is_slot_waiting.exit.1
  %i.ag = phi i32 [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %_is_slot_waiting.exit.1 ], [ %.lobit.2, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !84
  %.not.i.3 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.3, label %_is_slot_waiting.exit.3, label %bb.k

bb.k:                                             ; preds = %_is_slot_waiting.exit.2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !94
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %_is_slot_waiting.exit.3

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.an = load i32, ptr %i.am, align 4, !tbaa !83
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %_is_slot_waiting.exit.3

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !82
  %.lobit.3 = lshr i32 %i.aq, 31
  br label %_is_slot_waiting.exit.3

_is_slot_waiting.exit.3:                          ; preds = %bb.m, %bb.l, %bb.k, %_is_slot_waiting.exit.2
  %i.ar = phi i32 [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %_is_slot_waiting.exit.2 ], [ %.lobit.3, %bb.m ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.at = load i32, ptr %i.as, align 8, !tbaa !84
  %.not.i.4 = icmp eq i32 %i.at, 0
  br i1 %.not.i.4, label %_is_slot_waiting.exit.4, label %bb.n

bb.n:                                             ; preds = %_is_slot_waiting.exit.3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !94
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.o, label %_is_slot_waiting.exit.4

bb.o:                                             ; preds = %bb.n
end_hunk_2
