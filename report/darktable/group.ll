inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
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
%struct.timeval = type { i64, i64 }

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [41 x i8] c"[masks] render all masks took %0.04f sec\00", align 1
@dt_masks_functions_group = local_unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 16, [4 x i8] zeroinitializer, ptr null, ptr @_group_setup_mouse_actions, ptr null, ptr null, ptr null, ptr @_group_duplicate_points, ptr null, ptr null, ptr null, ptr null, ptr @_group_get_mask, ptr @_group_get_mask_roi, ptr null, ptr null, ptr @_group_events_mouse_moved, ptr @_group_events_mouse_scrolled, ptr @_group_events_button_pressed, ptr @_group_events_button_released, ptr null }, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"[masks %s] inverse took %0.04f sec\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[masks %d] combine took %0.04f sec\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mask-%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"mask-combined-%d\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @dt_group_events_post_expose(ptr noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.01724 = load ptr, ptr %2, align 8, !tbaa !11  ; 2 uses
  %.not25 = icmp eq ptr %.01724, null
  br i1 %.not25, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01727 = phi ptr [ %.017, %bb.d ], [ %.01724, %bb.a ] ; 2 uses
  %.026 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.a = load ptr, ptr %.01727, align 8, !tbaa !14
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !16
  %i.c = load i32, ptr %i.a, align 4, !tbaa !61
  %i.d = tail call ptr @dt_masks_get_from_id(ptr noundef %i.b, i32 noundef %i.c) #11 ; 3 uses
  %.not22.not = icmp eq ptr %i.d, null
  br i1 %.not22.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.j = tail call i32 @g_list_length(ptr noundef %i.i) #11
  tail call void %i.h(ptr noundef %0, float noundef %1, ptr noundef %3, i32 noundef %.026, i32 noundef %i.j) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = add nuw nsw i32 %.026, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.01727, i64 8
  %.017 = load ptr, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @dt_masks_group_render_roi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #11 ; 0 uses
  %i.c = load i64, ptr %6, align 8, !tbaa !71
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !73
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %.not.i10 = icmp eq ptr %i.m, null
  br i1 %.not.i10, label %dt_masks_get_mask_roi.exit, label %bb.d

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %dt_masks_get_mask_roi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 %i.o(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #11, !inline_history !75
  br label %dt_masks_get_mask_roi.exit

dt_masks_get_mask_roi.exit:                       ; preds = %dt_get_debug_wtime.exit, %bb.d, %bb.e
  %i.q = phi i32 [ %i.p, %bb.e ], [ 0, %bb.d ], [ 0, %dt_get_debug_wtime.exit ] ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  %i.s = and i32 %i.r, 4112
  %or.cond.not = icmp eq i32 %i.s, 4112
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %dt_masks_get_mask_roi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #11 ; 0 uses
  %i.u = load i64, ptr %5, align 8, !tbaa !71
  %i.v = add nsw i64 %i.u, -1290608000
  %i.w = sitofp reassoc nsz arcp contract afn i64 %i.v to double
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !73
  %i.z = sitofp reassoc nsz arcp contract afn i64 %i.y to double
  %i.aa = fmul reassoc nnan nsz arcp contract afn double %i.z, f0x3EB0C6F7A0B5ED8D
  %7 = fadd reassoc nsz arcp contract afn double %i.aa, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %8 = fsub reassoc nsz arcp contract afn double %7, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %8) #11
  br label %bb.g

bb.g:                                             ; preds = %dt_masks_get_mask_roi.exit, %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.f ], [ %i.q, %dt_masks_get_mask_roi.exit ]
  ret i32 %.0
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_group_setup_mouse_actions(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %.02027 = load ptr, ptr %0, align 8, !tbaa !11  ; 2 uses
  %.not28 = icmp eq ptr %.02027, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.2, %bb.f ]
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.02031 = phi ptr [ %.020, %bb.f ], [ %.02027, %bb.a ] ; 2 uses
  %.030 = phi ptr [ %.2, %bb.f ], [ null, %bb.a ] ; 5 uses
  %.01729 = phi i32 [ %.219, %bb.f ], [ 140, %bb.a ] ; 6 uses
  %i.a = load ptr, ptr %.02031, align 8, !tbaa !14
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !16
  %i.c = load i32, ptr %i.a, align 4, !tbaa !61
  %i.d = tail call ptr @dt_masks_get_from_id(ptr noundef %i.b, i32 noundef %i.c) #11 ; 4 uses
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = xor i32 %.01729, -1
  %i.h = and i32 %i.f, %i.g
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %.not26 = icmp eq ptr %i.m, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr %i.m(ptr noundef nonnull %i.d) #11
  %i.o = tail call ptr @g_slist_concat(ptr noundef %.030, ptr noundef %i.n) #11
  %i.p = load i32, ptr %i.e, align 8, !tbaa !76
  %i.q = or i32 %i.p, %.01729
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %.lr.ph, %bb.b
  %.219 = phi i32 [ %.01729, %.lr.ph ], [ %.01729, %bb.b ], [ %i.q, %bb.e ], [ %.01729, %bb.d ], [ %.01729, %bb.c ]
  %.2 = phi ptr [ %.030, %.lr.ph ], [ %.030, %bb.b ], [ %i.o, %bb.e ], [ %.030, %bb.d ], [ %.030, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02031, i64 8
  %.020 = load ptr, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %.not = icmp eq ptr %.020, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @_group_duplicate_points(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %.017 = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %.not18 = icmp eq ptr %.017, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi ptr [ %.017, %.lr.ph ], [ %.0, %bb.b ] ; 2 uses
  %i.b = load ptr, ptr %.019, align 8, !tbaa !14  ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #12 ; 5 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !61
  %i.e = tail call i32 @dt_masks_form_duplicate(ptr noundef %0, i32 noundef %i.d) #11
  store i32 %i.e, ptr %i.c, align 4, !tbaa !61
  %i.f = load i32, ptr %i.a, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.i, ptr %i.j, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float %i.l, ptr %i.m, align 4, !tbaa !81
  %i.n = load ptr, ptr %2, align 8, !tbaa !69
  %i.o = tail call ptr @g_list_append(ptr noundef %i.n, ptr noundef nonnull %i.c) #11
  store ptr %i.o, ptr %2, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %.0 = load ptr, ptr %i.p, align 8, !tbaa !11    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_group_get_mask(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 16          ; 4 uses
  %11 = alloca %struct.timeval, align 16          ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  %i.b = tail call i32 @g_list_length(ptr noundef %i.a) #11 ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %i.b to i64                     ; 11 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 8) #13 ; 9 uses
  %i.f = shl nuw nsw i64 %i.d, 2                  ; 6 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 4 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 8 uses
  %.0428504 = load ptr, ptr %2, align 8, !tbaa !11 ; 2 uses
  %.not505 = icmp eq ptr %.0428504, null
  br i1 %.not505, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr i8, ptr %1, i64 108
  %i.o = getelementptr i8, ptr %1, i64 112
  br label %bb.c

._crit_edge:                                      ; preds = %bb.j
  %i.p = icmp eq i32 %.1424, 0
  br i1 %i.p, label %._crit_edge.thread, label %iter.check976

iter.check976:                                    ; preds = %._crit_edge
  %min.iters.check920 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check920, label %.preheader500.preheader, label %vector.main.loop.iter.check921

vector.main.loop.iter.check921:                   ; preds = %iter.check976
  %min.iters.check922 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check922, label %vec.epilog.ph980, label %vector.ph923

vector.ph923:                                     ; preds = %vector.main.loop.iter.check921
  %i.q = and i64 %i.d, 28
  %n.vec924 = and i64 %i.d, 4294967264            ; 4 uses
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph923
  %index926 = phi i64 [ 0, %vector.ph923 ], [ %index.next958, %vector.body925 ] ; 5 uses
  %vec.phi = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.bb, %vector.body925 ]
  %vec.phi927 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.bc, %vector.body925 ]
  %vec.phi928 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.bd, %vector.body925 ]
  %vec.phi929 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.be, %vector.body925 ]
  %vec.phi930 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.ad, %vector.body925 ]
  %vec.phi931 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.ae, %vector.body925 ]
  %vec.phi932 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.af, %vector.body925 ]
  %vec.phi933 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.ag, %vector.body925 ]
  %vec.phi934 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.ap, %vector.body925 ]
  %vec.phi935 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.aq, %vector.body925 ]
  %vec.phi936 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.ar, %vector.body925 ]
  %vec.phi937 = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph923 ], [ %i.as, %vector.body925 ]
  %vec.phi938 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.v, %vector.body925 ]
  %vec.phi939 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.w, %vector.body925 ]
  %vec.phi940 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.x, %vector.body925 ]
  %vec.phi941 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph923 ], [ %i.y, %vector.body925 ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index926 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load942 = load <8 x i32>, ptr %i.r, align 4, !tbaa !82 ; 2 uses
  %wide.load943 = load <8 x i32>, ptr %i.s, align 4, !tbaa !82 ; 2 uses
  %wide.load944 = load <8 x i32>, ptr %i.t, align 4, !tbaa !82 ; 2 uses
  %wide.load945 = load <8 x i32>, ptr %i.u, align 4, !tbaa !82 ; 2 uses
  %i.v = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi938, <8 x i32> %wide.load942) ; 2 uses
  %i.w = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi939, <8 x i32> %wide.load943) ; 2 uses
  %i.x = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi940, <8 x i32> %wide.load944) ; 2 uses
  %i.y = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi941, <8 x i32> %wide.load945) ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index926 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load946 = load <8 x i32>, ptr %i.z, align 4, !tbaa !82 ; 2 uses
  %wide.load947 = load <8 x i32>, ptr %i.aa, align 4, !tbaa !82 ; 2 uses
  %wide.load948 = load <8 x i32>, ptr %i.ab, align 4, !tbaa !82 ; 2 uses
  %wide.load949 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !82 ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi930, <8 x i32> %wide.load946) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi931, <8 x i32> %wide.load947) ; 2 uses
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi932, <8 x i32> %wide.load948) ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi933, <8 x i32> %wide.load949) ; 2 uses
end_hunk_0
begin_hunk_1_@_group_get_mask:bb.a
  %vec.epilog.resume.val1045 = phi i64 [ %n.vec1037, %vec.epilog.iter.check1048 ], [ 0, %vector.main.loop.iter.check1034 ]
  br label %vec.epilog.vector.body1054

vec.epilog.vector.body1054:                       ; preds = %vec.epilog.vector.body1054, %vec.epilog.ph1050
  %index1055 = phi i64 [ %vec.epilog.resume.val1045, %vec.epilog.ph1050 ], [ %index.next1056, %vec.epilog.vector.body1054 ] ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep701, i64 %index1055
  store <4 x float> %broadcast.splat1053, ptr %i.adc, align 4, !tbaa !121
  %index.next1056 = add nuw i64 %index1055, 4     ; 2 uses
  %i.add = icmp eq i64 %index.next1056, %n.vec1051
  br i1 %i.add, label %vec.epilog.middle.block1057, label %vec.epilog.vector.body1054, !llvm.loop !184

vec.epilog.middle.block1057:                      ; preds = %vec.epilog.vector.body1054
  br i1 %cmp.n1058, label %._crit_edge555, label %.lr.ph554.split.preheader

.lr.ph554.split.preheader:                        ; preds = %iter.check1046, %vec.epilog.iter.check1048, %vec.epilog.middle.block1057
  %indvars.iv630.ph = phi i64 [ 0, %iter.check1046 ], [ %n.vec1037, %vec.epilog.iter.check1048 ], [ %n.vec1051, %vec.epilog.middle.block1057 ]
  br label %.lr.ph554.split

.lr.ph554.split.us:                               ; preds = %.preheader
  %i.ade = load i32, ptr %i.zl, align 4, !tbaa !82
  %i.adf = icmp slt i32 %.reass562, %i.ade
  br i1 %i.adf, label %.lr.ph554.split.us.split.us, label %iter.check1019

iter.check1019:                                   ; preds = %.lr.ph554.split.us
  %invariant.gep703 = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.acw ; 3 uses
  br i1 %min.iters.check1006, label %.lr.ph554.split.us.split.preheader, label %vector.main.loop.iter.check1007

vector.main.loop.iter.check1007:                  ; preds = %iter.check1019
  br i1 %min.iters.check1008, label %vec.epilog.ph1023, label %vector.body1013

vector.body1013:                                  ; preds = %vector.main.loop.iter.check1007, %vector.body1013
  %index1014 = phi i64 [ %index.next1015, %vector.body1013 ], [ 0, %vector.main.loop.iter.check1007 ] ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep703, i64 %index1014 ; 4 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 64
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 96
  store <8 x float> %broadcast.splat1012, ptr %i.adg, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1012, ptr %i.adh, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1012, ptr %i.adi, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1012, ptr %i.adj, align 4, !tbaa !121
  %index.next1015 = add nuw i64 %index1014, 32    ; 2 uses
  %i.adk = icmp eq i64 %index.next1015, %n.vec1010
  br i1 %i.adk, label %middle.block1016, label %vector.body1013, !llvm.loop !185

middle.block1016:                                 ; preds = %vector.body1013
  br i1 %cmp.n1017, label %._crit_edge555, label %vec.epilog.iter.check1021

vec.epilog.iter.check1021:                        ; preds = %middle.block1016
  br i1 %min.epilog.iters.check1022, label %.lr.ph554.split.us.split.preheader, label %vec.epilog.ph1023, !prof !86

vec.epilog.ph1023:                                ; preds = %vector.main.loop.iter.check1007, %vec.epilog.iter.check1021
  %vec.epilog.resume.val1018 = phi i64 [ %n.vec1010, %vec.epilog.iter.check1021 ], [ 0, %vector.main.loop.iter.check1007 ]
  br label %vec.epilog.vector.body1027

vec.epilog.vector.body1027:                       ; preds = %vec.epilog.vector.body1027, %vec.epilog.ph1023
  %index1028 = phi i64 [ %vec.epilog.resume.val1018, %vec.epilog.ph1023 ], [ %index.next1029, %vec.epilog.vector.body1027 ] ; 2 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep703, i64 %index1028
  store <4 x float> %broadcast.splat1026, ptr %i.adl, align 4, !tbaa !121
  %index.next1029 = add nuw i64 %index1028, 4     ; 2 uses
  %i.adm = icmp eq i64 %index.next1029, %n.vec1024
  br i1 %i.adm, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1027, !llvm.loop !186

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1027
  br i1 %cmp.n1031, label %._crit_edge555, label %.lr.ph554.split.us.split.preheader

.lr.ph554.split.us.split.preheader:               ; preds = %iter.check1019, %vec.epilog.iter.check1021, %vec.epilog.middle.block1030
  %indvars.iv635.ph = phi i64 [ 0, %iter.check1019 ], [ %n.vec1010, %vec.epilog.iter.check1021 ], [ %n.vec1024, %vec.epilog.middle.block1030 ]
  br label %.lr.ph554.split.us.split

.lr.ph554.split.us.split.us:                      ; preds = %.lr.ph554.split.us
  %i.adn = load i32, ptr %i.zm, align 4, !tbaa !82
  %invariant.op556 = sub i32 %.0438..lcssa, %i.adn ; 3 uses
  %invariant.gep705 = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.acw ; 3 uses
  br i1 %i.mk, label %.epil.preheader, label %.lr.ph554.split.us.split.us.new

.lr.ph554.split.us.split.us.new:                  ; preds = %.lr.ph554.split.us.split.us, %bb.ak
  %indvars.iv640 = phi i64 [ %indvars.iv.next641.1, %bb.ak ], [ 0, %.lr.ph554.split.us.split.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.ak ], [ 0, %.lr.ph554.split.us.split.us ]
  %i.ado = trunc nuw nsw i64 %indvars.iv640 to i32
  %.reass557 = add i32 %invariant.op556, %i.ado   ; 3 uses
  %i.adp = icmp sgt i32 %.reass557, -1
  br i1 %i.adp, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph554.split.us.split.us.new
  %i.adq = load i32, ptr %i.zn, align 4, !tbaa !82 ; 2 uses
  %i.adr = icmp slt i32 %.reass557, %i.adq
  br i1 %i.adr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ads = load ptr, ptr %i.zo, align 8, !tbaa !124
  %i.adt = mul nsw i32 %i.adq, %.reass562
  %i.adu = add nuw i32 %.reass557, %i.adt
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.adv
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !121
  %.pre667 = fmul reassoc nsz arcp contract afn float %i.zs, %i.adx
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph554.split.us.split.us.new
  %.pre-phi = phi float [ %.pre667, %bb.ag ], [ %i.zu, %bb.af ], [ %i.zu, %.lr.ph554.split.us.split.us.new ]
  %gep706 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep705, i64 %indvars.iv640
  store float %.pre-phi, ptr %gep706, align 4, !tbaa !121
  %indvars.iv.next641 = or disjoint i64 %indvars.iv640, 1 ; 2 uses
  %i.ady = trunc nuw nsw i64 %indvars.iv.next641 to i32
  %.reass557.1 = add i32 %invariant.op556, %i.ady ; 3 uses
  %i.adz = icmp sgt i32 %.reass557.1, -1
  br i1 %i.adz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.aea = load i32, ptr %i.zn, align 4, !tbaa !82 ; 2 uses
  %i.aeb = icmp slt i32 %.reass557.1, %i.aea
  br i1 %i.aeb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aec = load ptr, ptr %i.zo, align 8, !tbaa !124
  %i.aed = mul nsw i32 %i.aea, %.reass562
  %i.aee = add nuw i32 %.reass557.1, %i.aed
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds [4 x i8], ptr %i.aec, i64 %i.aef
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !121
  %.pre667.1 = fmul reassoc nsz arcp contract afn float %i.zs, %i.aeh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre-phi.1 = phi float [ %.pre667.1, %bb.aj ], [ %i.zu, %bb.ai ], [ %i.zu, %bb.ah ]
  %gep706.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep705, i64 %indvars.iv.next641
  store float %.pre-phi.1, ptr %gep706.1, align 4, !tbaa !121
  %indvars.iv.next641.1 = add nuw nsw i64 %indvars.iv640, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge555.loopexit.unr-lcssa, label %.lr.ph554.split.us.split.us.new

.lr.ph554.split.us.split:                         ; preds = %.lr.ph554.split.us.split.preheader, %.lr.ph554.split.us.split
  %indvars.iv635 = phi i64 [ %indvars.iv.next636, %.lr.ph554.split.us.split ], [ %indvars.iv635.ph, %.lr.ph554.split.us.split.preheader ] ; 2 uses
  %gep704 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep703, i64 %indvars.iv635
  store float %i.zu, ptr %gep704, align 4, !tbaa !121
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %i.mg
  br i1 %exitcond639.not, label %._crit_edge555, label %.lr.ph554.split.us.split, !llvm.loop !187

._crit_edge555.loopexit.unr-lcssa:                ; preds = %bb.ak
  br i1 %lcmp.mod1220.not, label %._crit_edge555, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge555.loopexit.unr-lcssa, %.lr.ph554.split.us.split.us
  %indvars.iv640.epil.init = phi i64 [ 0, %.lr.ph554.split.us.split.us ], [ %indvars.iv.next641.1, %._crit_edge555.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1221)
  %i.aei = trunc nuw nsw i64 %indvars.iv640.epil.init to i32
  %.reass557.epil = add i32 %invariant.op556, %i.aei ; 3 uses
  %i.aej = icmp sgt i32 %.reass557.epil, -1
  br i1 %i.aej, label %bb.al, label %._crit_edge555.loopexit.epilog-lcssa

bb.al:                                            ; preds = %.epil.preheader
  %i.aek = load i32, ptr %i.zn, align 4, !tbaa !82 ; 2 uses
  %i.ael = icmp slt i32 %.reass557.epil, %i.aek
  br i1 %i.ael, label %bb.am, label %._crit_edge555.loopexit.epilog-lcssa

bb.am:                                            ; preds = %bb.al
  %i.aem = load ptr, ptr %i.zo, align 8, !tbaa !124
  %i.aen = mul nsw i32 %i.aek, %.reass562
  %i.aeo = add nuw i32 %.reass557.epil, %i.aen
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.aep
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !121
  %.pre667.epil = fmul reassoc nsz arcp contract afn float %i.zs, %i.aer
  br label %._crit_edge555.loopexit.epilog-lcssa

._crit_edge555.loopexit.epilog-lcssa:             ; preds = %bb.am, %bb.al, %.epil.preheader
  %.pre-phi.epil = phi float [ %.pre667.epil, %bb.am ], [ %i.zu, %bb.al ], [ %i.zu, %.epil.preheader ]
  %gep706.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep705, i64 %indvars.iv640.epil.init
  store float %.pre-phi.epil, ptr %gep706.epil, align 4, !tbaa !121
  br label %._crit_edge555

._crit_edge555:                                   ; preds = %.lr.ph554.split, %.lr.ph554.split.us.split, %._crit_edge555.loopexit.epilog-lcssa, %._crit_edge555.loopexit.unr-lcssa, %middle.block1043, %vec.epilog.middle.block1057, %middle.block1016, %vec.epilog.middle.block1030
  %indvars.iv.next646 = add nuw nsw i64 %indvars.iv645, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next646, %wide.trip.count648
  br i1 %exitcond649.not, label %.loopexit, label %.preheader

.lr.ph554.split:                                  ; preds = %.lr.ph554.split.preheader, %.lr.ph554.split
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %.lr.ph554.split ], [ %indvars.iv630.ph, %.lr.ph554.split.preheader ] ; 2 uses
  %gep702 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep701, i64 %indvars.iv630
  store float %i.zu, ptr %gep702, align 4, !tbaa !121
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %exitcond634.not = icmp eq i64 %indvars.iv.next631, %i.mg
  br i1 %exitcond634.not, label %._crit_edge555, label %.lr.ph554.split, !llvm.loop !188

.loopexit:                                        ; preds = %._crit_edge518, %._crit_edge525, %._crit_edge535, %._crit_edge545, %._crit_edge555, %.preheader498, %.preheader490.lr.ph, %.preheader496, %.preheader489.lr.ph, %.preheader494, %.preheader488.lr.ph, %.preheader492, %.preheader487.lr.ph, %.preheader491, %.preheader.lr.ph
  %i.aes = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70 ; 2 uses
  %i.aet = and i32 %i.aes, 4112
  %or.cond473.not = icmp eq i32 %i.aet, 4112
  br i1 %or.cond473.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.aeu = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #11 ; 0 uses
  %i.aev = load i64, ptr %8, align 8, !tbaa !71
  %i.aew = add nsw i64 %i.aev, -1290608000
  %i.aex = sitofp reassoc nsz arcp contract afn i64 %i.aew to double
  %i.aey = load i64, ptr %i.mf, align 8, !tbaa !73
  %i.aez = sitofp reassoc nsz arcp contract afn i64 %i.aey to double
  %i.afa = fmul reassoc nnan nsz arcp contract afn double %i.aez, f0x3EB0C6F7A0B5ED8D
  %12 = fadd reassoc nsz arcp contract afn double %i.afa, %i.aex
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %13 = fsub reassoc nsz arcp contract afn double %12, %i.nh
  %i.afb = trunc nuw nsw i64 %indvars.iv650 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, i32 noundef %i.afb, double noundef %13) #11
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.afc = phi i32 [ %.pre, %bb.an ], [ %i.aes, %.loopexit ]
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next651, %i.d
  br i1 %exitcond654.not, label %bb.k, label %bb.l

bb.ap:                                            ; preds = %bb.k, %bb.ap
  %indvars.iv655 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next656, %bb.ap ] ; 2 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv655
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.afe) #11
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next656, %i.d
  br i1 %exitcond659.not, label %.sink.split, label %bb.ap

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  tail call void @free(ptr noundef %i.l) #11
  tail call void @free(ptr noundef %i.k) #11
  tail call void @free(ptr noundef %i.j) #11
  tail call void @free(ptr noundef %i.i) #11
  tail call void @free(ptr noundef %i.h) #11
  tail call void @free(ptr noundef %i.g) #11
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.thread, %bb.aq
  %indvars.iv660 = phi i64 [ 0, %._crit_edge.thread ], [ %indvars.iv.next661, %bb.aq ] ; 2 uses
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv660
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.afg) #11
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next661, %i.d
  br i1 %exitcond665.not, label %.sink.split, label %bb.aq

.sink.split:                                      ; preds = %bb.ap, %bb.aq
  %.1.ph = phi i32 [ 0, %bb.aq ], [ 1, %bb.ap ]
  tail call void @free(ptr noundef nonnull %i.e) #11
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_group_get_mask_roi(ptr noalias noundef %0, ptr noalias noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noalias noundef %4) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !69
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.d = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #11 ; 0 uses
  %i.e = load i64, ptr %6, align 8, !tbaa !71
  %i.f = add nsw i64 %i.e, -1290608000
  %i.g = sitofp reassoc nsz arcp contract afn i64 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73
  %i.j = sitofp reassoc nsz arcp contract afn i64 %i.i to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, f0x3EB0C6F7A0B5ED8D
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.m = phi reassoc nsz arcp contract afn double [ %i.l, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !189  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !190  ; 3 uses
  %i.r = sext i32 %i.o to i64
  %i.s = sext i32 %i.q to i64
  %i.t = mul nsw i64 %i.s, %i.r                   ; 84 uses
  %i.u = shl i64 %i.t, 2                          ; 2 uses
  %i.v = tail call ptr @dt_alloc_aligned(i64 noundef %i.u) #11 ; 42 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 64) ]
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.y, label %.preheader145

.preheader145:                                    ; preds = %dt_get_debug_wtime.exit
  %.088147 = load ptr, ptr %2, align 8, !tbaa !11 ; 2 uses
  %.not92148 = icmp eq ptr %.088147, null
  br i1 %.not92148, label %._crit_edge, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader145
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %.not42.i = icmp eq i64 %i.t, 0                 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %min.iters.check496 = icmp ult i64 %i.t, 4
  %min.iters.check498 = icmp ult i64 %i.t, 32
  %i.ab = and i64 %i.t, 28
  %n.vec500 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n515 = icmp eq i64 %i.t, %n.vec500
  %min.epilog.iters.check520 = icmp eq i64 %i.ab, 0
  %n.vec522 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n531 = icmp eq i64 %i.t, %n.vec522
  %min.iters.check458 = icmp ult i64 %i.t, 4
  %min.iters.check460 = icmp ult i64 %i.t, 32
  %i.ac = and i64 %i.t, 28
  %n.vec462 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n477 = icmp eq i64 %i.t, %n.vec462
  %min.epilog.iters.check482 = icmp eq i64 %i.ac, 0
  %n.vec484 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n493 = icmp eq i64 %i.t, %n.vec484
  %min.iters.check420 = icmp ult i64 %i.t, 4
  %min.iters.check422 = icmp ult i64 %i.t, 32
  %i.ad = and i64 %i.t, 28
  %n.vec424 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n439 = icmp eq i64 %i.t, %n.vec424
  %min.epilog.iters.check444 = icmp eq i64 %i.ad, 0
  %n.vec446 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n455 = icmp eq i64 %i.t, %n.vec446
  %min.iters.check382 = icmp ult i64 %i.t, 4
  %min.iters.check384 = icmp ult i64 %i.t, 32
  %i.ae = and i64 %i.t, 28
  %n.vec386 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n401 = icmp eq i64 %i.t, %n.vec386
  %min.epilog.iters.check406 = icmp eq i64 %i.ae, 0
  %n.vec408 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n417 = icmp eq i64 %i.t, %n.vec408
  %min.iters.check344 = icmp ult i64 %i.t, 8
  %min.iters.check346 = icmp ult i64 %i.t, 32
  %i.af = and i64 %i.t, 24
  %n.vec348 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n363 = icmp eq i64 %i.t, %n.vec348
  %min.epilog.iters.check368 = icmp eq i64 %i.af, 0
  %n.vec370 = and i64 %i.t, -8                    ; 3 uses
  %cmp.n379 = icmp eq i64 %i.t, %n.vec370
  %min.iters.check306 = icmp ult i64 %i.t, 8
  %min.iters.check308 = icmp ult i64 %i.t, 32
  %i.ag = and i64 %i.t, 24
  %n.vec310 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n325 = icmp eq i64 %i.t, %n.vec310
  %min.epilog.iters.check330 = icmp eq i64 %i.ag, 0
  %n.vec332 = and i64 %i.t, -8                    ; 3 uses
  %cmp.n341 = icmp eq i64 %i.t, %n.vec332
  %min.iters.check268 = icmp ult i64 %i.t, 4
  %min.iters.check270 = icmp ult i64 %i.t, 32
  %i.ah = and i64 %i.t, 28
  %n.vec272 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n287 = icmp eq i64 %i.t, %n.vec272
  %min.epilog.iters.check292 = icmp eq i64 %i.ah, 0
  %n.vec294 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n303 = icmp eq i64 %i.t, %n.vec294
  %min.iters.check230 = icmp ult i64 %i.t, 4
  %min.iters.check232 = icmp ult i64 %i.t, 32
  %i.ai = and i64 %i.t, 28
  %n.vec234 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n249 = icmp eq i64 %i.t, %n.vec234
  %min.epilog.iters.check254 = icmp eq i64 %i.ai, 0
  %n.vec256 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n265 = icmp eq i64 %i.t, %n.vec256
  %min.iters.check216 = icmp ult i64 %i.t, 8
  %n.vec218 = and i64 %i.t, -8                    ; 3 uses
  %cmp.n227 = icmp eq i64 %i.t, %n.vec218
  %min.iters.check202 = icmp ult i64 %i.t, 8
  %n.vec204 = and i64 %i.t, -8                    ; 3 uses
  %cmp.n213 = icmp eq i64 %i.t, %n.vec204
  %min.iters.check = icmp ult i64 %i.t, 4
  %i.aj = sub i64 %i.w, %i.a
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  %min.iters.check191 = icmp ult i64 %i.t, 32
  %i.ak = and i64 %i.t, 28
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  %n.vec195 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n201 = icmp eq i64 %i.t, %n.vec195
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.al = icmp ne i32 %.2, 0
  %i.am = zext i1 %i.al to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader145
  %.086.lcssa = phi i32 [ 0, %.preheader145 ], [ %i.am, %._crit_edge.loopexit ]
  tail call void @free(ptr noundef %i.v) #11
  br label %bb.y

bb.d:                                             ; preds = %.lr.ph152, %bb.x
  %.088151 = phi ptr [ %.088147, %.lr.ph152 ], [ %.088, %bb.x ] ; 2 uses
end_hunk_1
