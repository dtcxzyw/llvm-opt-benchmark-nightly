Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/image_infos?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
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

@.str = private unnamed_addr constant [12 x i8] c"image infos\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"plugins/darkroom/image_infos_position\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"top left\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"top right\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"top center\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"infos\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"plugins/darkroom/image_infos_pattern\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"image-info\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"[signal] connect    %s to %s; %s:%d, function: %s()\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"_lib_imageinfo_update_message\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"DT_SIGNAL_DEVELOP_IMAGE_CHANGED\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/darktable/darktable/src/libs/tools/image_infos.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"DT_SIGNAL_DEVELOP_INITIALIZE\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"_lib_imageinfo_update_message2\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"DT_SIGNAL_IMAGE_INFO_CHANGED\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"_lib_imageinfo_update_message3\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"DT_SIGNAL_COLLECTION_CHANGED\00", align 1

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
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #7
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @views(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  %.not = icmp eq i32 %i.a, 0
  %. = select i1 %.not, i32 2, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @dt_conf_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 14) i32 @container(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.1) #7 ; 3 uses
  %i.b = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.3) #7
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.4) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.5) #7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %1, label %bb.d

1:                                                ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %1, %bb.c
  %.0 = phi i32 [ 13, %bb.c ], [ 0, %bb.a ], [ 10, %1 ], [ 3, %bb.b ]
  ret i32 %.0
}

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #4

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @expandable(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @position(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 1500
}

; Function Attrs: nounwind uwtable
define hidden void @_lib_imageinfo_update_message(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1552
  %i.f = load i32, ptr %i.e, align 16, !tbaa !58  ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 1, ptr %i.b, align 4, !tbaa !92
  call void @dt_image_full_path(i32 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @dt_variables_params_init(ptr noundef nonnull %i.c) #7
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !93   ; 5 uses
  store ptr %i.a, ptr %i.j, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @.str.6, ptr %i.k, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.f, ptr %i.l, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 1, ptr %i.n, align 8, !tbaa !101
  %i.o = call ptr @dt_conf_get_string(ptr noundef nonnull @.str.7) #7 ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.q = call ptr @dt_variables_expand(ptr noundef %i.p, ptr noundef %i.o, i32 noundef 1) #7 ; 2 uses
  call void @g_free(ptr noundef %i.o) #7
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !93
  call void @dt_variables_params_destroy(ptr noundef %i.r) #7
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !102
  call void @gtk_label_set_markup(ptr noundef %i.s, ptr noundef %i.q) #7
  call void @g_free(ptr noundef %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @dt_image_full_path(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_variables_params_init(ptr noundef) local_unnamed_addr #4

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #4

declare ptr @dt_variables_expand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) local_unnamed_addr #4

declare void @dt_variables_params_destroy(ptr noundef) local_unnamed_addr #4

declare void @gtk_label_set_markup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_lib_imageinfo_update_message3(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, i32 %4, ptr nofree noundef readonly captures(none) %5) #1 {
bb.a:
  tail call void @_lib_imageinfo_update_message(ptr poison, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296), (424, 432)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @g_malloc0(i64 noundef 8) #8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.a, ptr %i.b, align 8, !tbaa !87
  %i.c = tail call ptr @gtk_event_box_new() #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !104
  %i.e = tail call ptr @gtk_label_new(ptr noundef nonnull @.str.8) #7 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !102
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.e, i32 noundef 2) #7
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @gtk_label_set_justify(ptr noundef %i.f, i32 noundef 2) #7
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @gtk_container_add(ptr noundef %i.g, ptr noundef %i.h) #7
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @gtk_widget_set_name(ptr noundef %i.i, ptr noundef nonnull @.str.9) #7
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !104
  tail call void @gtk_widget_show_all(ptr noundef %i.j) #7
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !105
  %i.l = and i32 %i.k, 2
  %i.m = icmp ne i32 %i.l, 0
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3432), align 8
  %i.o = icmp ne i32 %i.n, 0
  %or.cond = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !106
  %i.q = and i32 %i.p, 1048576
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 140, ptr noundef nonnull @__FUNCTION__.gui_init) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !107
  tail call void @dt_control_signal_connect(ptr noundef %i.r, i32 noundef 29, ptr noundef nonnull @_lib_imageinfo_update_message, ptr noundef nonnull %0) #7
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !105
  %i.t = and i32 %i.s, 2
  %i.u = icmp ne i32 %i.t, 0
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3392), align 8
  %i.w = icmp ne i32 %i.v, 0
  %or.cond3 = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !106
  %i.y = and i32 %i.x, 1048576
  %.not21 = icmp eq i32 %i.y, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 144, ptr noundef nonnull @__FUNCTION__.gui_init) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !107
  tail call void @dt_control_signal_connect(ptr noundef %i.z, i32 noundef 19, ptr noundef nonnull @_lib_imageinfo_update_message, ptr noundef nonnull %0) #7
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !105
  %i.ab = and i32 %i.aa, 2
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3364), align 4
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond5 = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !106
  %i.ag = and i32 %i.af, 1048576
  %.not22 = icmp eq i32 %i.ag, 0
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef 146, ptr noundef nonnull @__FUNCTION__.gui_init) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !107
  tail call void @dt_control_signal_connect(ptr noundef %i.ah, i32 noundef 12, ptr noundef nonnull @_lib_imageinfo_update_message2, ptr noundef nonnull %0) #7
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !105
  %i.aj = and i32 %i.ai, 2
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3344), align 8
  %i.am = icmp ne i32 %i.al, 0
  %or.cond7 = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond7, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !106
  %i.ao = and i32 %i.an, 1048576
  %.not23 = icmp eq i32 %i.ao, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef 147, ptr noundef nonnull @__FUNCTION__.gui_init) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !107
  tail call void @dt_control_signal_connect(ptr noundef %i.ap, i32 noundef 7, ptr noundef nonnull @_lib_imageinfo_update_message3, ptr noundef nonnull %0) #7
  ret void
}
end_hunk_0
