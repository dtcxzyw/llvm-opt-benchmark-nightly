Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_invert?download=true
inline.NumInlined: 47
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
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
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct._GdkRGBA = type { double, double, double, double }

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [54 x i8] c"[invert] `%s' color matrix not found for 4bayer image\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"`%s' color matrix not found for 4bayer image\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"this module is deprecated. please use the negadoctor module instead.\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invert film negatives\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"corrective\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"linear, raw, display-referred\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"linear, raw\00", align 1
@color_picker_apply.old = internal unnamed_addr global [4 x float] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [28 x i8] c"brightness of film material\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"color of film material\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"pick color of film material from image\00", align 1
@dt_action_def_button = external constant %struct.dt_action_def_t, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"select color of film material\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"color-set\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/darktable/darktable/src/iop/invert.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.21, i64 16, ptr getelementptr (i8, ptr @introspection_linear, i64 176), i64 1120, i64 688 }, align 8
@introspection_init.f2 = internal global [2 x ptr] [ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr null], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"color[0]\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"float[]\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"dt_iop_invert_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.17, ptr @.str.17, ptr @.str.12, i64 4, i64 0, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.20, ptr @.str.18, ptr @.str.18, ptr @.str.12, i64 16, i64 0, ptr null }, i64 4, i32 2, [4 x i8] zeroinitializer, ptr @introspection_linear } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.12, ptr @.str.12, ptr @.str.12, i64 16, i64 0, ptr null }, i64 1, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x [3 x double]], align 16      ; 4 uses
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !12
  store <2 x float> %i.d, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float +qnan, ptr %i.h, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1540
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = and i32 %i.l, 16384
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1904
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1728
  %i.p = call i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.o, ptr noundef null) #15
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1104 ; 2 uses
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, ptr noundef nonnull %i.r) #15
  %i.s = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  call void (ptr, ...) @dt_control_log(ptr noundef %i.s, ptr noundef nonnull %i.r) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @dt_colorspaces_rgb_to_cygm(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.a) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b
  store ptr %i.c, ptr %3, align 8, !tbaa !61
  store i32 16, ptr %4, align 4, !tbaa !62
  store i32 2, ptr %5, align 4, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #4

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @dt_colorspaces_rgb_to_cygm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #15
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #15
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #15
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #15
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #15
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #15
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #15
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 132
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 7 uses
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.d = load float, ptr @color_picker_apply.old, align 16, !tbaa !12
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = load float, ptr getelementptr inbounds nuw (i8, ptr @color_picker_apply.old, i64 4), align 4, !tbaa !12
  %i.i = fcmp reassoc nsz arcp contract afn oeq float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  %i.l = load float, ptr getelementptr inbounds nuw (i8, ptr @color_picker_apply.old, i64 8), align 8, !tbaa !12
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = load float, ptr getelementptr inbounds nuw (i8, ptr @color_picker_apply.old, i64 12), align 4, !tbaa !12
  %i.q = fcmp reassoc nsz arcp contract afn oeq float %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color_picker_apply.old, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 4 uses
  store float %i.c, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store float %i.u, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.x = load float, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store float %i.aa, ptr %i.ab, align 4, !tbaa !12
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = atomicrmw add ptr %i.ad, i32 1 seq_cst, align 4 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !102 ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !63  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = fpext reassoc nsz arcp contract afn <2 x float> %i.ai to <2 x double>
  store <2 x double> %i.aj, ptr %3, align 16, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !12 ; 2 uses
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double
  store double %i.an, ptr %i.ak, align 16, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.ao, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1540
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !107
  %i.at = and i32 %i.as, 16384
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %gui_update_from_coeffs.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store <2 x float> %i.ai, ptr %i.a, align 16, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.am, ptr %i.au, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.aw, ptr %i.ax, align 4, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.ay) #15
  %i.az = load <2 x float>, ptr %i.a, align 16, !tbaa !12
  %i.ba = fpext reassoc nsz arcp contract afn <2 x float> %i.az to <2 x double>
  store <2 x double> %i.ba, ptr %3, align 16, !tbaa !103
  %i.bb = load float, ptr %i.au, align 8, !tbaa !12
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  store double %i.bc, ptr %i.ak, align 16, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %gui_update_from_coeffs.exit

gui_update_from_coeffs.exit:                      ; preds = %bb.e, %bb.f
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !110
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bd, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 seq_cst, align 4 ; 0 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  call void @dt_dev_add_history_item(ptr noundef %i.bh, ptr noundef nonnull %0, i32 noundef 1) #15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !112
  call void @dt_control_queue_redraw_widget(ptr noundef %i.bj) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %gui_update_from_coeffs.exit
  ret void
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_queue_redraw_widget(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = alloca [4 x float], align 16             ; 36 uses
  %i.d = alloca [3 x [4 x float]], align 16       ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !119 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !12
  %i.l = load float, ptr %i.j, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !12
  %i.o = load <4 x float>, ptr %i.i, align 4, !tbaa !12
  %i.p = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 6 uses
  %i.q = insertelement <4 x float> %i.p, float %i.l, i64 1
  %i.r = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 6 uses
  %i.s = shufflevector <4 x float> %i.q, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %i.s
  store <4 x float> %i.t, ptr %i.c, align 16, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.v = load i32, ptr %i.u, align 8, !tbaa !143  ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 188 ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !144  ; 4 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !145
  %.fr437 = freeze i32 %i.ab                      ; 4 uses
  %i.ac = sext i32 %.fr437 to i64                 ; 11 uses
  switch i32 %i.v, label %bb.h [
    i32 9, label %.preheader399
    i32 0, label %bb.k
  ]

.preheader399:                                    ; preds = %bb.a
  %.not436 = icmp eq i32 %i.y, 0
  br i1 %.not436, label %.preheader396, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader399
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ao = add nsw i64 %i.ac, -3                   ; 2 uses
  %i.ap = trunc i32 %.fr437 to i2
  br label %bb.b

.preheader396.loopexit:                           ; preds = %._crit_edge413
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %.preheader396

.preheader396:                                    ; preds = %.preheader396.loopexit, %.preheader399
  %i.aq = phi ptr [ %.pre, %.preheader396.loopexit ], [ %i.h, %.preheader399 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.ar, align 4, !tbaa !12
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph415, %._crit_edge413
  %indvars.iv = phi i2 [ 0, %.lr.ph415 ], [ %indvars.iv.next, %._crit_edge413 ] ; 2 uses
  %.0307414 = phi i64 [ 0, %.lr.ph415 ], [ %i.pg, %._crit_edge413 ] ; 3 uses
  %i.as = zext i2 %indvars.iv to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.as) ; 5 uses
  %i.at = mul i64 %.0307414, %i.ac                ; 8 uses
  %i.au = sub i64 0, %i.at
  %i.av = and i64 %i.au, 3
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ac)
  %.not438 = icmp eq i64 %invariant.umin, 0
  %.pre483 = trunc i64 %.0307414 to i32
  %.pre485 = add nsw i32 %.pre483, 600            ; 5 uses
  br i1 %.not438, label %._crit_edge405, label %.lr.ph404

.lr.ph404:                                        ; preds = %bb.b
  %i.aw = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.ax = insertelement <2 x i32> <i32 600, i32 poison>, i32 %.pre485, i64 1 ; 3 uses
  %i.ay = add nsw <2 x i32> %i.aw, %i.ax
  %i.az = srem <2 x i32> %i.ay, splat (i32 6)     ; 2 uses
  %i.ba = extractelement <2 x i32> %i.az, i64 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.bb
  %i.bd = extractelement <2 x i32> %i.az, i64 0
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !127
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12 ; 3 uses
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bj, %i.bl
  %i.bn = fcmp reassoc nsz arcp contract afn ogt float %i.bm, 1.000000e+00
  br i1 %i.bn, label %bb.c, label %FCxtrans.exit319

FCxtrans.exit319:                                 ; preds = %.lr.ph404
  %i.bo = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.bp = add nsw <2 x i32> %i.bo, %i.ax
  %i.bq = srem <2 x i32> %i.bp, splat (i32 6)     ; 2 uses
  %i.br = extractelement <2 x i32> %i.bq, i64 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.bs
  %i.bu = extractelement <2 x i32> %i.bq, i64 0
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !127
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.ca, %i.bl
  br i1 %i.cb, label %bb.c, label %FCxtrans.exit323

FCxtrans.exit323:                                 ; preds = %FCxtrans.exit319
  %i.cc = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.cd = add nsw <2 x i32> %i.cc, %i.ax
  %i.ce = srem <2 x i32> %i.cd, splat (i32 6)     ; 2 uses
  %i.cf = extractelement <2 x i32> %i.ce, i64 1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.cg
  %i.ci = extractelement <2 x i32> %i.ce, i64 0
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !127
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !12
  %i.cp = fsub reassoc nsz arcp contract afn float %i.co, %i.bl
  br label %bb.c

bb.c:                                             ; preds = %FCxtrans.exit323, %FCxtrans.exit319, %.lr.ph404
  %i.cq = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.lr.ph404 ], [ %i.cp, %FCxtrans.exit323 ], [ 0.000000e+00, %FCxtrans.exit319 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.at
  store float %i.cq, ptr %i.cr, align 4, !tbaa !12
  %exitcond445.not = icmp eq i64 %umin, 1
  br i1 %exitcond445.not, label %._crit_edge405, label %.lr.ph404.1

.lr.ph404.1:                                      ; preds = %bb.c
  %i.cs = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.ct = insertelement <2 x i32> <i32 601, i32 poison>, i32 %.pre485, i64 1 ; 3 uses
  %i.cu = add nsw <2 x i32> %i.cs, %i.ct
  %i.cv = srem <2 x i32> %i.cu, splat (i32 6)     ; 2 uses
  %i.cw = extractelement <2 x i32> %i.cv, i64 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.cx
  %i.cz = extractelement <2 x i32> %i.cv, i64 0
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !127
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !12
  %i.dg = add i64 %i.at, 1                        ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !12 ; 3 uses
  %i.dj = fsub reassoc nsz arcp contract afn float %i.df, %i.di
  %i.dk = fcmp reassoc nsz arcp contract afn ogt float %i.dj, 1.000000e+00
  br i1 %i.dk, label %bb.d, label %FCxtrans.exit319.1

FCxtrans.exit319.1:                               ; preds = %.lr.ph404.1
  %i.dl = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.dm = add nsw <2 x i32> %i.dl, %i.ct
  %i.dn = srem <2 x i32> %i.dm, splat (i32 6)     ; 2 uses
  %i.do = extractelement <2 x i32> %i.dn, i64 1
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.dp
  %i.dr = extractelement <2 x i32> %i.dn, i64 0
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !127
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
  %i.dy = fcmp reassoc nsz arcp contract afn olt float %i.dx, %i.di
  br i1 %i.dy, label %bb.d, label %FCxtrans.exit323.1

FCxtrans.exit323.1:                               ; preds = %FCxtrans.exit319.1
  %i.dz = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.ea = add nsw <2 x i32> %i.dz, %i.ct
  %i.eb = srem <2 x i32> %i.ea, splat (i32 6)     ; 2 uses
  %i.ec = extractelement <2 x i32> %i.eb, i64 1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.ed
  %i.ef = extractelement <2 x i32> %i.eb, i64 0
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !127
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = fsub reassoc nsz arcp contract afn float %i.el, %i.di
  br label %bb.d

bb.d:                                             ; preds = %FCxtrans.exit323.1, %FCxtrans.exit319.1, %.lr.ph404.1
  %i.en = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.lr.ph404.1 ], [ %i.em, %FCxtrans.exit323.1 ], [ 0.000000e+00, %FCxtrans.exit319.1 ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dg
  store float %i.en, ptr %i.eo, align 4, !tbaa !12
  %exitcond445.not.1 = icmp eq i64 %umin, 2
  br i1 %exitcond445.not.1, label %._crit_edge405, label %.lr.ph404.2

.lr.ph404.2:                                      ; preds = %bb.d
  %i.ep = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.eq = insertelement <2 x i32> <i32 602, i32 poison>, i32 %.pre485, i64 1 ; 3 uses
  %i.er = add nsw <2 x i32> %i.ep, %i.eq
  %i.es = srem <2 x i32> %i.er, splat (i32 6)     ; 2 uses
  %i.et = extractelement <2 x i32> %i.es, i64 1
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.eu
  %i.ew = extractelement <2 x i32> %i.es, i64 0
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !127
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !12
  %i.fd = add i64 %i.at, 2                        ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !12 ; 3 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.jl = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.jk
  %i.jm = extractelement <8 x i32> %i.iy, i64 3
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !127
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !12
  store float %i.js, ptr %i.ah, align 4, !tbaa !12
  %i.jt = extractelement <8 x i32> %i.iy, i64 4
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.ju
  %i.jw = extractelement <8 x i32> %i.iy, i64 5
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %i.jv, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !127
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !12
  store float %i.kc, ptr %i.ai, align 8, !tbaa !12
  %i.kd = extractelement <8 x i32> %i.iy, i64 6
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.ke
  %i.kg = extractelement <8 x i32> %i.iy, i64 7
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.kf, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !127
  %i.kk = zext i8 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !12
  store float %i.km, ptr %i.aj, align 4, !tbaa !12
  %i.kn = load <2 x i32>, ptr %5, align 4, !tbaa !62 ; 3 uses
  %i.ko = shufflevector <2 x i32> %i.kn, <2 x i32> poison, <8 x i32> <i32 1, i32 0, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kp = shufflevector <2 x i32> %i.kn, <2 x i32> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kq = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.kr = shufflevector <2 x i32> %i.kn, <2 x i32> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ks = shufflevector <8 x i32> %i.kq, <8 x i32> %i.kr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.kt = shufflevector <4 x i32> %i.go, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ku = add nsw <8 x i32> %i.kt, <i32 608, i32 609, i32 610, i32 611, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kv = shufflevector <8 x i32> %i.gu, <8 x i32> %i.ku, <8 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11>
  %i.kw = add nsw <8 x i32> %i.ks, %i.kv
  %i.kx = srem <8 x i32> %i.kw, splat (i32 6)     ; 8 uses
  %i.ky = extractelement <8 x i32> %i.kx, i64 0
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.kz
  %i.lb = extractelement <8 x i32> %i.kx, i64 1
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !127
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !12
  store float %i.lh, ptr %i.ak, align 16, !tbaa !12
  %i.li = extractelement <8 x i32> %i.kx, i64 2
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.lj
  %i.ll = extractelement <8 x i32> %i.kx, i64 3
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds i8, ptr %i.lk, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !127
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !12
  store float %i.lr, ptr %i.al, align 4, !tbaa !12
  %i.ls = extractelement <8 x i32> %i.kx, i64 4
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.lt
  %i.lv = extractelement <8 x i32> %i.kx, i64 5
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds i8, ptr %i.lu, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !127
  %i.lz = zext i8 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !12
  store float %i.mb, ptr %i.am, align 8, !tbaa !12
  %i.mc = extractelement <8 x i32> %i.kx, i64 6
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.md
  %i.mf = extractelement <8 x i32> %i.kx, i64 7
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %i.me, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !127
  %i.mj = zext i8 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mj
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !12
  store float %i.ml, ptr %i.an, align 4, !tbaa !12
  %i.mm = icmp ult i64 %.0304.lcssa, %i.ao
  br i1 %i.mm, label %.lr.ph409, label %.preheader398

.lr.ph409:                                        ; preds = %._crit_edge405
  %i.mn = getelementptr [4 x i8], ptr %2, i64 %i.at
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.at
  br label %bb.f

.preheader398:                                    ; preds = %bb.f, %._crit_edge405
  %.1305.lcssa = phi i64 [ %.0304.lcssa, %._crit_edge405 ], [ %i.nf, %bb.f ] ; 2 uses
  %i.mp = icmp ult i64 %.1305.lcssa, %i.ac
  br i1 %i.mp, label %.lr.ph412.preheader, label %._crit_edge413

.lr.ph412.preheader:                              ; preds = %.preheader398
  %i.mq = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.mr = insertelement <2 x i32> poison, i32 %.pre485, i64 1
  br label %.lr.ph412

bb.f:                                             ; preds = %.lr.ph409, %bb.f
  %.0303408 = phi i64 [ 0, %.lr.ph409 ], [ %i.ne, %bb.f ] ; 2 uses
  %.1305407 = phi i64 [ %.0304.lcssa, %.lr.ph409 ], [ %i.nf, %bb.f ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.0303408
  %i.mt = getelementptr [4 x i8], ptr %i.mn, i64 %.1305407
  %i.mu = load <4 x float>, ptr %i.ms, align 16, !tbaa !12
  %i.mv = load <4 x float>, ptr %i.mt, align 4, !tbaa !12
  %i.mw = fsub reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mv ; 3 uses
  %i.mx = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.mw, splat (float 1.000000e+00)
  %i.my = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.mw, zeroinitializer
  %i.mz = select <4 x i1> %i.my, <4 x float> zeroinitializer, <4 x float> %i.mw
  %i.na = select <4 x i1> %i.mx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.mz
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %.1305407
  store <4 x float> %i.na, ptr %i.nb, align 16, !tbaa !127, !alias.scope !146, !nontemporal !147
  %i.nc = add i64 %.0303408, 1                    ; 2 uses
  %i.nd = icmp eq i64 %i.nc, 3
  %i.ne = select i1 %i.nd, i64 0, i64 %i.nc
  %i.nf = add i64 %.1305407, 4                    ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %i.ao
  br i1 %i.ng, label %bb.f, label %.preheader398

.lr.ph412:                                        ; preds = %.lr.ph412.preheader, %bb.g
  %.2306411 = phi i64 [ %i.pf, %bb.g ], [ %.1305.lcssa, %.lr.ph412.preheader ] ; 3 uses
  %i.nh = trunc i64 %.2306411 to i32
  %i.ni = add nsw i32 %i.nh, 600
  %i.nj = insertelement <2 x i32> %i.mr, i32 %i.ni, i64 0 ; 3 uses
  %i.nk = add nsw <2 x i32> %i.mq, %i.nj
  %i.nl = srem <2 x i32> %i.nk, splat (i32 6)     ; 2 uses
  %i.nm = extractelement <2 x i32> %i.nl, i64 1
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.nn
  %i.np = extractelement <2 x i32> %i.nl, i64 0
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds i8, ptr %i.no, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !127
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.nt
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !12
  %i.nw = add i64 %.2306411, %i.at                ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !12 ; 3 uses
  %i.nz = fsub reassoc nsz arcp contract afn float %i.nv, %i.ny
  %i.oa = fcmp reassoc nsz arcp contract afn ogt float %i.nz, 1.000000e+00
  br i1 %i.oa, label %bb.g, label %FCxtrans.exit379

FCxtrans.exit379:                                 ; preds = %.lr.ph412
  %i.ob = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.oc = add nsw <2 x i32> %i.ob, %i.nj
  %i.od = srem <2 x i32> %i.oc, splat (i32 6)     ; 2 uses
  %i.oe = extractelement <2 x i32> %i.od, i64 1
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.of
  %i.oh = extractelement <2 x i32> %i.od, i64 0
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds i8, ptr %i.og, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !127
  %i.ol = zext i8 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ol
  %i.on = load float, ptr %i.om, align 4, !tbaa !12
  %i.oo = fcmp reassoc nsz arcp contract afn olt float %i.on, %i.ny
  br i1 %i.oo, label %bb.g, label %FCxtrans.exit383

FCxtrans.exit383:                                 ; preds = %FCxtrans.exit379
  %i.op = load <2 x i32>, ptr %5, align 4, !tbaa !62
  %i.oq = add nsw <2 x i32> %i.op, %i.nj
  %i.or = srem <2 x i32> %i.oq, splat (i32 6)     ; 2 uses
  %i.os = extractelement <2 x i32> %i.or, i64 1
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [6 x i8], ptr %i.w, i64 %i.ot
  %i.ov = extractelement <2 x i32> %i.or, i64 0
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %i.ou, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !127
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.oz
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !12
  %i.pc = fsub reassoc nsz arcp contract afn float %i.pb, %i.ny
  br label %bb.g

bb.g:                                             ; preds = %FCxtrans.exit383, %FCxtrans.exit379, %.lr.ph412
  %i.pd = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.lr.ph412 ], [ %i.pc, %FCxtrans.exit383 ], [ 0.000000e+00, %FCxtrans.exit379 ]
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nw
  store float %i.pd, ptr %i.pe, align 4, !tbaa !12
  %i.pf = add nuw i64 %.2306411, 1                ; 2 uses
  %exitcond447.not = icmp eq i64 %i.pf, %i.ac
  br i1 %exitcond447.not, label %._crit_edge413, label %.lr.ph412

._crit_edge413:                                   ; preds = %bb.g, %.preheader398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.pg = add nuw i64 %.0307414, 1                ; 2 uses
  %indvars.iv.next = sub i2 %indvars.iv, %i.ap
  %exitcond448.not = icmp eq i64 %i.pg, %i.z
  br i1 %exitcond448.not, label %.preheader396.loopexit, label %bb.b

bb.h:                                             ; preds = %bb.a
  %i.ph = load i32, ptr %5, align 4, !tbaa !148   ; 2 uses
  %i.pi = zext i32 %i.ph to i64                   ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !149
  %i.pl = sext i32 %i.pk to i64
  %.not439 = icmp eq i32 %i.y, 0
  br i1 %.not439, label %.preheader, label %.lr.ph434

.lr.ph434:                                        ; preds = %bb.h
  %i.pm = add nsw i64 %i.ac, -3                   ; 2 uses
  %i.pn = trunc i32 %.fr437 to i2
  %wide.trip.count = zext i32 %i.y to i64
  %i.po = trunc i32 %i.ph to i1                   ; 2 uses
  %i.pp = and i64 %i.pi, 1
  %i.pq = and i64 %i.pi, 1
  %i.pr = and i64 %i.pi, 1
  %6 = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %6, -32
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.pi, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert504 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat505 = shufflevector <8 x i32> %broadcast.splatinsert504, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op517 = xor i1 %i.po, true
  br label %bb.i

.preheader.loopexit:                              ; preds = %._crit_edge431
  %.pre477 = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %i.ps = phi ptr [ %.pre477, %.preheader.loopexit ], [ %i.h, %bb.h ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.pt, align 4, !tbaa !12
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph434, %._crit_edge431
  %i.pu = phi i32 [ %.fr437, %.lr.ph434 ], [ %i.sn, %._crit_edge431 ]
  %indvars.iv459 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next460, %._crit_edge431 ] ; 3 uses
  %indvars.iv453 = phi i2 [ 0, %.lr.ph434 ], [ %indvars.iv.next454, %._crit_edge431 ] ; 2 uses
  %i.pv = zext i2 %indvars.iv453 to i64
  %umin455 = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.pv) ; 5 uses
  %i.pw = mul nsw i64 %indvars.iv459, %i.ac       ; 11 uses
  %i.px = sub i64 0, %i.pw
  %i.py = and i64 %i.px, 3
  %invariant.umin418 = call i64 @llvm.umin.i64(i64 %i.py, i64 %i.ac)
  %.not440 = icmp eq i64 %invariant.umin418, 0
  %.pre478 = add nsw i64 %indvars.iv459, %i.pl
  %.pre479 = shl nsw i64 %.pre478, 1
  %.pre481 = and i64 %.pre479, 14                 ; 8 uses
  br i1 %.not440, label %._crit_edge422, label %.lr.ph421

.lr.ph421:                                        ; preds = %bb.i
  %i.pz = or disjoint i64 %i.pp, %.pre481
  %.tr.i = trunc nuw nsw i64 %i.pz to i32
  %i.qa = shl nuw nsw i32 %.tr.i, 1
  %i.qb = lshr i32 %i.v, %i.qa
  %i.qc = and i32 %i.qb, 3
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qd
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !12 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pw
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !12 ; 2 uses
  %i.qi = fsub reassoc nsz arcp contract afn float %i.qf, %i.qh ; 2 uses
  %i.qj = fcmp reassoc nsz arcp contract afn ogt float %i.qi, 1.000000e+00
  %i.qk = fcmp reassoc nsz arcp contract afn olt float %i.qf, %i.qh
  %spec.select393 = select reassoc nsz arcp contract afn i1 %i.qk, float 0.000000e+00, float %i.qi
  %i.ql = select reassoc nsz arcp contract afn i1 %i.qj, float 1.000000e+00, float %spec.select393
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pw
  store float %i.ql, ptr %i.qm, align 4, !tbaa !12
  %exitcond456.not = icmp eq i64 %umin455, 1
  br i1 %exitcond456.not, label %._crit_edge422, label %.lr.ph421.1

.lr.ph421.1:                                      ; preds = %.lr.ph421
  %i.qn = or disjoint i64 %i.pq, %.pre481
  %i.qo = trunc nuw nsw i64 %i.qn to i32
  %.tr.i.1 = shl nuw nsw i32 %i.qo, 1
  %i.qp = xor i32 %.tr.i.1, 2
  %i.qq = lshr i32 %i.v, %i.qp
  %i.qr = and i32 %i.qq, 3
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !12 ; 2 uses
  %i.qv = add nsw i64 %i.pw, 1                    ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qv
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !12 ; 2 uses
  %i.qy = fsub reassoc nsz arcp contract afn float %i.qu, %i.qx ; 2 uses
  %i.qz = fcmp reassoc nsz arcp contract afn ogt float %i.qy, 1.000000e+00
  %i.ra = fcmp reassoc nsz arcp contract afn olt float %i.qu, %i.qx
  %spec.select393.1 = select reassoc nsz arcp contract afn i1 %i.ra, float 0.000000e+00, float %i.qy
  %i.rb = select reassoc nsz arcp contract afn i1 %i.qz, float 1.000000e+00, float %spec.select393.1
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qv
  store float %i.rb, ptr %i.rc, align 4, !tbaa !12
  %exitcond456.not.1 = icmp eq i64 %umin455, 2
  br i1 %exitcond456.not.1, label %._crit_edge422, label %.lr.ph421.2

.lr.ph421.2:                                      ; preds = %.lr.ph421.1
  %i.rd = or disjoint i64 %i.pr, %.pre481
  %.tr.i.2 = trunc nuw nsw i64 %i.rd to i32
  %i.re = shl nuw nsw i32 %.tr.i.2, 1
  %i.rf = lshr i32 %i.v, %i.re
  %i.rg = and i32 %i.rf, 3
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rh
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !12 ; 2 uses
  %i.rk = add nsw i64 %i.pw, 2                    ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rk
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !12 ; 2 uses
  %i.rn = fsub reassoc nsz arcp contract afn float %i.rj, %i.rm ; 2 uses
  %i.ro = fcmp reassoc nsz arcp contract afn ogt float %i.rn, 1.000000e+00
  %i.rp = fcmp reassoc nsz arcp contract afn olt float %i.rj, %i.rm
  %spec.select393.2 = select reassoc nsz arcp contract afn i1 %i.rp, float 0.000000e+00, float %i.rn
  %i.rq = select reassoc nsz arcp contract afn i1 %i.ro, float 1.000000e+00, float %spec.select393.2
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rk
  store float %i.rq, ptr %i.rr, align 4, !tbaa !12
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %.lr.ph421, %.lr.ph421.1, %.lr.ph421.2, %bb.i
  %.0299.lcssa = phi i64 [ 0, %bb.i ], [ %umin455, %.lr.ph421.2 ], [ %umin455, %.lr.ph421.1 ], [ %umin455, %.lr.ph421 ] ; 4 uses
  %i.rs = icmp ult i64 %.0299.lcssa, %i.pm
  br i1 %i.rs, label %.lr.ph427, label %.preheader395

.lr.ph427:                                        ; preds = %._crit_edge422
  %i.rt = add nsw i64 %.0299.lcssa, %i.pi
  %i.ru = and i64 %i.rt, 1
  %i.rv = or disjoint i64 %i.ru, %.pre481
  %.tr.i386 = trunc nuw nsw i64 %i.rv to i32
  %i.rw = shl nuw nsw i32 %.tr.i386, 1            ; 2 uses
  %i.rx = xor i32 %i.rw, 2
  %i.ry = lshr i32 %i.v, %i.rx
  %i.rz = and i32 %i.ry, 3
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sa
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !12
  %i.sd = lshr i32 %i.v, %i.rw
  %i.se = and i32 %i.sd, 3
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !12
  %i.si = getelementptr [4 x i8], ptr %2, i64 %i.pw
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pw
  %i.sk = insertelement <4 x float> poison, float %i.sh, i64 0
  %i.sl = insertelement <4 x float> %i.sk, float %i.sc, i64 1
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.j

.preheader395.loopexit:                           ; preds = %bb.j
  %.pre476 = load i32, ptr %i.aa, align 4, !tbaa !145
  br label %.preheader395

.preheader395:                                    ; preds = %.preheader395.loopexit, %._crit_edge422
  %i.sn = phi i32 [ %i.pu, %._crit_edge422 ], [ %.pre476, %.preheader395.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0299.lcssa, %._crit_edge422 ], [ %i.vd, %.preheader395.loopexit ] ; 6 uses
  %i.so = sext i32 %i.sn to i64                   ; 5 uses
  %i.sp = icmp ult i64 %.1.lcssa, %i.so
  br i1 %i.sp, label %.lr.ph430.preheader, label %._crit_edge431

.lr.ph430.preheader:                              ; preds = %.preheader395
  %i.sq = sub nuw i64 %i.so, %.1.lcssa            ; 3 uses
  %min.iters.check = icmp ult i64 %i.sq, 8
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph430.preheader508, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph430.preheader
  %n.vec = and i64 %i.sq, -8                      ; 3 uses
  %i.sr = add i64 %.1.lcssa, %n.vec
  %broadcast.splatinsert502 = insertelement <8 x i64> poison, i64 %.pre481, i64 0
  %broadcast.splat503 = shufflevector <8 x i64> %broadcast.splatinsert502, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert506 = insertelement <8 x i64> poison, i64 %.1.lcssa, i64 0
  %broadcast.splat507 = shufflevector <8 x i64> %broadcast.splatinsert506, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw <8 x i64> %broadcast.splat507, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.op = add i64 %.1.lcssa, %i.pw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ss = add <8 x i64> %vec.ind, %broadcast.splat
  %i.st = and <8 x i64> %i.ss, splat (i64 1)
  %i.su = or disjoint <8 x i64> %i.st, %broadcast.splat503
  %i.sv = trunc nuw nsw <8 x i64> %i.su to <8 x i32>
  %i.sw = shl nuw nsw <8 x i32> %i.sv, splat (i32 1)
  %i.sx = lshr <8 x i32> %broadcast.splat505, %i.sw
  %i.sy = and <8 x i32> %i.sx, splat (i32 3)
  %i.sz = zext nneg <8 x i32> %i.sy to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, <8 x i64> %i.sz
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %.reass = add i64 %index, %invariant.op         ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %wide.load = load <8 x float>, ptr %i.ta, align 4, !tbaa !12 ; 2 uses
  %i.tb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.load ; 2 uses
  %i.tc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.tb, splat (float 1.000000e+00)
  %i.td = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, %wide.load
  %i.te = select reassoc nsz arcp contract afn <8 x i1> %i.td, <8 x float> zeroinitializer, <8 x float> %i.tb
  %i.tf = select reassoc nsz arcp contract afn <8 x i1> %i.tc, <8 x float> splat (float 1.000000e+00), <8 x float> %i.te
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass
  store <8 x float> %i.tf, ptr %i.tg, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.th = icmp eq i64 %index.next, %n.vec
  br i1 %i.th, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sq, %n.vec
  br i1 %cmp.n, label %._crit_edge431, label %.lr.ph430.preheader508

.lr.ph430.preheader508:                           ; preds = %.lr.ph430.preheader, %middle.block
  %.2429.ph = phi i64 [ %.1.lcssa, %.lr.ph430.preheader ], [ %i.sr, %middle.block ] ; 6 uses
  %i.ti = sub i64 %i.so, %.2429.ph
  %xtraiter511 = and i64 %i.ti, 1
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.lr.ph430.prol.loopexit, label %.lr.ph430.prol

.lr.ph430.prol:                                   ; preds = %.lr.ph430.preheader508
  %i.tj = add i64 %.2429.ph, %i.pi
  %i.tk = and i64 %i.tj, 1
  %i.tl = or disjoint i64 %i.tk, %.pre481
  %.tr.i390.prol = trunc nuw nsw i64 %i.tl to i32
  %i.tm = shl nuw nsw i32 %.tr.i390.prol, 1
  %i.tn = lshr i32 %i.v, %i.tm
  %i.to = and i32 %i.tn, 3
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tp
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !12 ; 2 uses
  %i.ts = add i64 %.2429.ph, %i.pw                ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ts
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !12 ; 2 uses
  %i.tv = fsub reassoc nsz arcp contract afn float %i.tr, %i.tu ; 2 uses
  %i.tw = fcmp reassoc nsz arcp contract afn ogt float %i.tv, 1.000000e+00
  %i.tx = fcmp reassoc nsz arcp contract afn olt float %i.tr, %i.tu
  %spec.select394.prol = select reassoc nsz arcp contract afn i1 %i.tx, float 0.000000e+00, float %i.tv
  %i.ty = select reassoc nsz arcp contract afn i1 %i.tw, float 1.000000e+00, float %spec.select394.prol
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ts
  store float %i.ty, ptr %i.tz, align 4, !tbaa !12
  %i.ua = add nuw i64 %.2429.ph, 1
  br label %.lr.ph430.prol.loopexit

.lr.ph430.prol.loopexit:                          ; preds = %.lr.ph430.prol, %.lr.ph430.preheader508
  %.2429.unr = phi i64 [ %.2429.ph, %.lr.ph430.preheader508 ], [ %i.ua, %.lr.ph430.prol ] ; 2 uses
  %i.ub = add nsw i64 %i.so, -1
  %i.uc = icmp eq i64 %.2429.ph, %i.ub
  br i1 %i.uc, label %._crit_edge431, label %.lr.ph430.preheader508.new

.lr.ph430.preheader508.new:                       ; preds = %.lr.ph430.prol.loopexit
  %i.ud = trunc i64 %.2429.unr to i1              ; 2 uses
  %i.ue = xor i1 %i.po, %i.ud
  %i.uf = zext i1 %i.ue to i64
  %.reass518 = xor i1 %i.ud, %invariant.op517
  %i.ug = zext i1 %.reass518 to i64
  %i.uh = or disjoint i64 %.pre481, %i.uf
  %.tr.i390 = trunc nuw nsw i64 %i.uh to i32
  %i.ui = shl nuw nsw i32 %.tr.i390, 1
  %i.uj = lshr i32 %i.v, %i.ui
  %i.uk = and i32 %i.uj, 3
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ul
  %i.un = load float, ptr %i.um, align 4, !tbaa !12 ; 2 uses
  %i.uo = or disjoint i64 %.pre481, %i.ug
  %.tr.i390.1 = trunc nuw nsw i64 %i.uo to i32
  %i.up = shl nuw nsw i32 %.tr.i390.1, 1
  %i.uq = lshr i32 %i.v, %i.up
  %i.ur = and i32 %i.uq, 3
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.us
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !12 ; 2 uses
  %invariant.op515 = add i64 1, %i.pw
  br label %.lr.ph430

bb.j:                                             ; preds = %.lr.ph427, %bb.j
  %.1425 = phi i64 [ %.0299.lcssa, %.lr.ph427 ], [ %i.vd, %bb.j ] ; 3 uses
  %i.uv = getelementptr [4 x i8], ptr %i.si, i64 %.1425
  %i.uw = load <4 x float>, ptr %i.uv, align 4, !tbaa !12
  %i.ux = fsub reassoc nsz arcp contract afn <4 x float> %i.sm, %i.uw ; 3 uses
  %i.uy = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ux, splat (float 1.000000e+00)
  %i.uz = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ux, zeroinitializer
  %i.va = select <4 x i1> %i.uz, <4 x float> zeroinitializer, <4 x float> %i.ux
  %i.vb = select <4 x i1> %i.uy, <4 x float> splat (float 1.000000e+00), <4 x float> %i.va
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.1425
  store <4 x float> %i.vb, ptr %i.vc, align 16, !tbaa !127, !alias.scope !152, !nontemporal !147
  %i.vd = add i64 %.1425, 4                       ; 3 uses
  %i.ve = icmp ult i64 %i.vd, %i.pm
  br i1 %i.ve, label %bb.j, label %.preheader395.loopexit

.lr.ph430:                                        ; preds = %.lr.ph430, %.lr.ph430.preheader508.new
  %.2429 = phi i64 [ %.2429.unr, %.lr.ph430.preheader508.new ], [ %i.vu, %.lr.ph430 ] ; 3 uses
  %i.vf = add i64 %.2429, %i.pw                   ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vf
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !12 ; 2 uses
  %i.vi = fsub reassoc nsz arcp contract afn float %i.un, %i.vh ; 2 uses
  %i.vj = fcmp reassoc nsz arcp contract afn ogt float %i.vi, 1.000000e+00
  %i.vk = fcmp reassoc nsz arcp contract afn olt float %i.un, %i.vh
  %spec.select394 = select reassoc nsz arcp contract afn i1 %i.vk, float 0.000000e+00, float %i.vi
  %i.vl = select reassoc nsz arcp contract afn i1 %i.vj, float 1.000000e+00, float %spec.select394
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vf
  store float %i.vl, ptr %i.vm, align 4, !tbaa !12
  %.reass516 = add i64 %.2429, %invariant.op515   ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass516
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !12 ; 2 uses
  %i.vp = fsub reassoc nsz arcp contract afn float %i.uu, %i.vo ; 2 uses
  %i.vq = fcmp reassoc nsz arcp contract afn ogt float %i.vp, 1.000000e+00
  %i.vr = fcmp reassoc nsz arcp contract afn olt float %i.uu, %i.vo
  %spec.select394.1 = select reassoc nsz arcp contract afn i1 %i.vr, float 0.000000e+00, float %i.vp
  %i.vs = select reassoc nsz arcp contract afn i1 %i.vq, float 1.000000e+00, float %spec.select394.1
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass516
  store float %i.vs, ptr %i.vt, align 4, !tbaa !12
  %i.vu = add nuw i64 %.2429, 2                   ; 2 uses
  %exitcond458.not.1 = icmp eq i64 %i.vu, %i.so
  br i1 %exitcond458.not.1, label %._crit_edge431, label %.lr.ph430, !llvm.loop !138

._crit_edge431:                                   ; preds = %.lr.ph430.prol.loopexit, %.lr.ph430, %middle.block, %.preheader395
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %indvars.iv.next454 = sub i2 %indvars.iv453, %i.pn
  %exitcond461.not = icmp eq i64 %indvars.iv.next460, %wide.trip.count
  br i1 %exitcond461.not, label %.preheader.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.a
  %i.vv = mul nsw i64 %i.ac, %i.z                 ; 4 uses
  %.not = icmp eq i64 %i.vv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter = and i64 %i.vv, 3                    ; 3 uses
  %i.vw = icmp ult i64 %i.vv, 4
  br i1 %i.vw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.vv, -4
  %i.vx = insertelement <4 x float> %i.p, float 1.000000e+00, i64 3
  %i.vy = shufflevector <4 x float> %i.vx, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.vz = insertelement <4 x float> %i.p, float 1.000000e+00, i64 3
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.wb = insertelement <4 x float> %i.p, float 1.000000e+00, i64 3
  %i.wc = shufflevector <4 x float> %i.wb, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.wd = insertelement <4 x float> %i.p, float 1.000000e+00, i64 3
  %i.we = shufflevector <4 x float> %i.wd, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0296401.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.xf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod510 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod510)
  %i.wf = insertelement <4 x float> %i.p, float 1.000000e+00, i64 3
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0296401.epil = phi i64 [ %i.wl, %.lr.ph.epil ], [ %.0296401.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.idx312.epil = shl i64 %.0296401.epil, 4       ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx312.epil
  %i.wi = load <4 x float>, ptr %i.wh, align 4, !tbaa !12
  %i.wj = fsub reassoc nsz arcp contract afn <4 x float> %i.wg, %i.wi
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312.epil
  store <4 x float> %i.wj, ptr %i.wk, align 16, !tbaa !127, !alias.scope !153, !nontemporal !147
  %i.wl = add nuw i64 %.0296401.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !141

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.k
  tail call void @llvm.x86.sse.sfence()
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0296401 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.xf, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.idx312 = shl i64 %.0296401, 4                 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx312
  %i.wn = load <4 x float>, ptr %i.wm, align 4, !tbaa !12
  %i.wo = fsub reassoc nsz arcp contract afn <4 x float> %i.vy, %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312
  store <4 x float> %i.wo, ptr %i.wp, align 16, !tbaa !127, !alias.scope !153, !nontemporal !147
  %i.wq = shl i64 %.0296401, 4
  %.idx312.1 = or disjoint i64 %i.wq, 16          ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx312.1
  %i.ws = load <4 x float>, ptr %i.wr, align 4, !tbaa !12
  %i.wt = fsub reassoc nsz arcp contract afn <4 x float> %i.wa, %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312.1
  store <4 x float> %i.wt, ptr %i.wu, align 16, !tbaa !127, !alias.scope !153, !nontemporal !147
  %i.wv = shl i64 %.0296401, 4
  %.idx312.2 = or disjoint i64 %i.wv, 32          ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %2, i64 %.idx312.2
  %i.wx = load <4 x float>, ptr %i.ww, align 4, !tbaa !12
  %i.wy = fsub reassoc nsz arcp contract afn <4 x float> %i.wc, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312.2
  store <4 x float> %i.wy, ptr %i.wz, align 16, !tbaa !127, !alias.scope !153, !nontemporal !147
  %i.xa = shl i64 %.0296401, 4
  %.idx312.3 = or disjoint i64 %i.xa, 48          ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx312.3
  %i.xc = load <4 x float>, ptr %i.xb, align 4, !tbaa !12
  %i.xd = fsub reassoc nsz arcp contract afn <4 x float> %i.we, %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %3, i64 %.idx312.3
  store <4 x float> %i.xd, ptr %i.xe, align 16, !tbaa !127, !alias.scope !153, !nontemporal !147
  %i.xf = add nuw i64 %.0296401, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

.loopexit:                                        ; preds = %.preheader396, %.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !102 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.e) #15
  %.not13 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #15
  tail call void @dtgtk_reset_label_set_text(ptr noundef %i.h, ptr noundef %i.i) #15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #15
  tail call void @dtgtk_reset_label_set_text(ptr noundef %i.h, ptr noundef %i.j) #15
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1540
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %i.n = and i32 %i.m, 16384
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1904
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1728
  %i.s = tail call i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef null) #15
  %.not15 = icmp eq i32 %i.s, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1104 ; 2 uses
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, ptr noundef nonnull %i.u) #15
  %i.v = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.v, ptr noundef nonnull %i.u) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  ret void
}

declare i32 @dt_image_is_monochrome(ptr noundef) local_unnamed_addr #4

declare void @dtgtk_reset_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !132
  store i32 -999, ptr %i.a, align 4, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  tail call void @free(ptr noundef %i.b) #15
  store ptr null, ptr %i.a, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !119 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !12
  store float %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.e, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.k, ptr %i.l, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2152
  %i.n = load i32, ptr %i.m, align 8, !tbaa !158
  %i.o = icmp eq i32 %i.n, 9
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 0, ptr %i.p, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1540
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = and i32 %i.t, 16384
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 0, ptr %i.v, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.x = load i32, ptr %i.w, align 8, !tbaa !160
  %.not13 = icmp eq i32 %i.x, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.y, align 16, !tbaa !161
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !119
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !119
  tail call void @g_free(ptr noundef %i.b) #15
  store ptr null, ptr %i.a, align 16, !tbaa !119
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 7 uses
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !102 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %i.g = fpext reassoc nsz arcp contract afn <2 x float> %i.f to <2 x double>
  store <2 x double> %i.g, ptr %1, align 16, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = fpext reassoc nsz arcp contract afn float %i.j to double
  store double %i.k, ptr %i.h, align 16, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1540
  %i.p = load i32, ptr %i.o, align 4, !tbaa !107
  %i.q = and i32 %i.p, 16384
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %gui_update_from_coeffs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store <2 x float> %i.f, ptr %i.a, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.j, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.t, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.v) #15
  %i.w = load <2 x float>, ptr %i.a, align 16, !tbaa !12
  %i.x = fpext reassoc nsz arcp contract afn <2 x float> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %1, align 16, !tbaa !103
  %i.y = load float, ptr %i.r, align 8, !tbaa !12
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  store double %i.z, ptr %i.h, align 16, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %gui_update_from_coeffs.exit

gui_update_from_coeffs.exit:                      ; preds = %bb.a, %bb.b
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !110
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.aa, ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = alloca [4 x ptr], align 8                ; 5 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 216) #15 ; 10 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %i.b, i8 0, i64 216, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %i.f = tail call ptr @dtgtk_reset_label_new(ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %i.e, i32 noundef 16) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !12
  %i.i = fpext reassoc nsz arcp contract afn <2 x float> %i.h to <2 x double>
  store <2 x double> %i.i, ptr %1, align 16, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fpext reassoc nsz arcp contract afn float %i.l to double
  store double %i.m, ptr %i.j, align 16, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !106
  %i.o = call ptr @gtk_color_button_new_with_rgba(ptr noundef nonnull %1) #15 ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !110
  %i.p = call ptr @dt_action_define(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef %i.o, ptr noundef nonnull @dt_action_def_button) #15 ; 0 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !110
  call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.q, i32 noundef 0) #15
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.s = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #15
  call void @gtk_color_button_set_title(ptr noundef %i.r, ptr noundef %i.s) #15
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.u = call i64 @g_signal_connect_data(ptr noundef %i.t, ptr noundef nonnull @.str.15, ptr noundef nonnull @colorpicker_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.v = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef null) #15
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !162
  %i.x = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #15
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  call void @gtk_widget_set_hexpand(ptr noundef %i.y, i32 noundef 1) #15
  store ptr %i.y, ptr %i.a, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  call void @gtk_widget_set_hexpand(ptr noundef %i.aa, i32 noundef 1) #15
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !162
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ad, align 8, !tbaa !61
  %i.ae = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.16, i32 noundef 500, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.x, ptr noundef nonnull %i.a) #15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

declare ptr @dtgtk_reset_label_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_color_button_new_with_rgba(ptr noundef) local_unnamed_addr #4

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_color_chooser_set_use_alpha(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_color_button_set_title(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @colorpicker_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 7 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 5 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %2) #15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load <2 x double>, ptr %2, align 16, !tbaa !103
  %i.k = fptrunc reassoc nsz arcp contract afn <2 x double> %i.j to <2 x float>
  store <2 x float> %i.k, ptr %i.g, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 16, !tbaa !105
  %i.n = fptrunc reassoc nsz arcp contract afn double %i.m to float
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1540
  %i.s = load i32, ptr %i.r, align 4, !tbaa !107
  %i.t = and i32 %i.s, 16384
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @dt_colorspaces_rgb_to_cygm(ptr noundef nonnull %i.g, i32 noundef 1, ptr noundef nonnull %i.u) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.w = call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.v) #15
  %.not17 = icmp eq i32 %i.w, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %2, align 16, !tbaa !163
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, f0x3FCAE147A0000000
  %i.z = load double, ptr %i.h, align 8, !tbaa !164
  %i.aa = fmul reassoc nsz arcp contract afn double %i.z, f0x3FE70A3D80000000
  %i.ab = fadd reassoc nsz arcp contract afn double %i.aa, %i.y
  %i.ac = load double, ptr %i.l, align 16, !tbaa !105
  %i.ad = fmul reassoc nsz arcp contract afn double %i.ac, f0x3FB1EB8520000000
  %i.ae = fadd reassoc nsz arcp contract afn double %i.ab, %i.ad
  %i.af = fptrunc reassoc nsz arcp contract afn double %i.ae to float ; 3 uses
  store float %i.af, ptr %i.o, align 4, !tbaa !12
  store float %i.af, ptr %i.i, align 4, !tbaa !12
  store float %i.af, ptr %i.g, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !111
  call void @dt_dev_add_history_item(ptr noundef %i.ag, ptr noundef nonnull %1, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !167
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !127
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !127
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !127
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !127
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 248), align 8, !tbaa !127
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.17) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.18) #21
  %.not6 = icmp eq i32 %i.b, 0
  %. = select i1 %.not6, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %., %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.17) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #15
  %.not3 = icmp eq i32 %i.b, 0
  %. = select i1 %.not3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ @introspection_linear, %bb.a ], [ %., %bb.b ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_colorspaces_cygm_to_rgb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_color_chooser_set_rgba(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #15

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_color_chooser_get_rgba(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }

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
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!15 = !{!"p1 int", !13, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 20}
!18 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!19 = !{!"dt_pthread_mutex_t", !7, i64 0}
!20 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!21 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8}
!23 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!24 = !{!"", !23, i64 0, !8, i64 8}
!25 = !{!"", !22, i64 0, !24, i64 16}
!26 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!27 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!28 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!29 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !14, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !15, i64 608, !17, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !18, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !19, i64 712, !13, i64 752, !13, i64 760, !20, i64 768, !20, i64 776, !13, i64 784, !25, i64 792, !26, i64 824, !26, i64 832, !26, i64 840, !26, i64 848, !26, i64 856, !26, i64 864, !26, i64 872, !8, i64 880, !26, i64 888, !26, i64 896, !26, i64 904, !27, i64 912, !27, i64 920, !26, i64 928, !26, i64 936, !8, i64 944, !28, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !26, i64 1096, !13, i64 1104, !8, i64 1112}
!30 = !{!29, !18, i64 664}
!31 = !{!"double", !7, i64 0}
!32 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!33 = !{!"short", !7, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 2}
!35 = !{!"", !8, i64 0, !7, i64 16}
!36 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !34, i64 48, !35, i64 64, !7, i64 96, !8, i64 112}
!37 = !{!"p1 omnipotent char", !13, i64 0}
!38 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!39 = !{!"dt_image_geoloc_t", !31, i64 0, !31, i64 8, !31, i64 16}
!40 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!41 = !{!"p1 _ZTS6_GList", !13, i64 0}
!42 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!43 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !16, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !16, i64 1448, !16, i64 1456, !16, i64 1464, !16, i64 1472, !8, i64 1480, !36, i64 1488, !7, i64 1616, !37, i64 1656, !8, i64 1664, !8, i64 1668, !38, i64 1672, !39, i64 1680, !40, i64 1704, !33, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !41, i64 1856, !42, i64 1864, !8, i64 1872, !8, i64 1876}
!44 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!45 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!46 = !{!"dt_dev_proxy_exposure_t", !23, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!47 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!48 = !{!"", !47, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!49 = !{!"", !47, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!50 = !{!"", !46, i64 0, !23, i64 40, !48, i64 48, !49, i64 120}
!51 = !{!"dt_dev_chroma_t", !23, i64 0, !23, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!52 = !{!"", !23, i64 0, !23, i64 8, !13, i64 16}
!53 = !{!"", !26, i64 0, !26, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!54 = !{!"", !26, i64 0, !26, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!55 = !{!"", !26, i64 0, !26, i64 8}
!56 = !{!"", !26, i64 0, !8, i64 8}
!57 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!58 = !{!"dt_dev_viewport_t", !26, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !32, i64 80, !26, i64 88, !18, i64 96}
!59 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !31, i64 24, !31, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !31, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !23, i64 88, !32, i64 96, !43, i64 112, !8, i64 2000, !8, i64 2004, !19, i64 2008, !8, i64 2048, !41, i64 2056, !8, i64 2064, !23, i64 2072, !8, i64 2080, !41, i64 2088, !41, i64 2096, !8, i64 2104, !41, i64 2112, !41, i64 2120, !15, i64 2128, !15, i64 2136, !8, i64 2144, !8, i64 2148, !41, i64 2152, !44, i64 2160, !45, i64 2168, !41, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !23, i64 2208, !8, i64 2216, !50, i64 2224, !51, i64 2384, !52, i64 2496, !53, i64 2520, !54, i64 2560, !55, i64 2592, !56, i64 2608, !57, i64 2624, !26, i64 2664, !26, i64 2672, !58, i64 2680, !58, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !41, i64 2904, !8, i64 2912, !18, i64 2920}
!60 = !{!59, !8, i64 1540}
!61 = !{!13, !13, i64 0}
!62 = !{!8, !8, i64 0}
!63 = !{!29, !13, i64 680}
!64 = !{!"dt_codepath_t", !8, i64 0}
!65 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!66 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!67 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!68 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!69 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!70 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!71 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!72 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!73 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!74 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!75 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!76 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!77 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!78 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!79 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!80 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!81 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!82 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!83 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!84 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!85 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!86 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!87 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!88 = !{!"_Bool", !7, i64 0}
!89 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!90 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!91 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!92 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!93 = !{!"", !87, i64 0, !19, i64 8, !7, i64 48, !88, i64 96, !88, i64 97, !89, i64 104, !90, i64 112, !91, i64 120, !92, i64 128, !92, i64 136, !92, i64 144}
!94 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!95 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!96 = !{!"dt_sys_resources_t", !16, i64 0, !16, i64 8, !15, i64 16, !15, i64 24, !8, i64 32}
!97 = !{!"dt_backthumb_t", !31, i64 0, !31, i64 8, !8, i64 16, !8, i64 20}
!98 = !{!"dt_gimp_t", !8, i64 0, !37, i64 8, !37, i64 16, !8, i64 24, !8, i64 28}
!99 = !{!"dt_splash_t", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !8, i64 32}
!100 = !{!"darktable_t", !64, i64 0, !8, i64 4, !8, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !65, i64 48, !66, i64 56, !18, i64 64, !67, i64 72, !68, i64 80, !69, i64 88, !70, i64 96, !71, i64 104, !72, i64 112, !73, i64 120, !74, i64 128, !75, i64 136, !76, i64 144, !77, i64 152, !78, i64 160, !79, i64 168, !80, i64 176, !81, i64 184, !82, i64 192, !83, i64 200, !84, i64 208, !85, i64 216, !86, i64 224, !7, i64 232, !19, i64 2792, !19, i64 2832, !19, i64 2872, !19, i64 2912, !19, i64 2952, !19, i64 2992, !37, i64 3032, !37, i64 3040, !37, i64 3048, !37, i64 3056, !37, i64 3064, !37, i64 3072, !37, i64 3080, !37, i64 3088, !37, i64 3096, !37, i64 3104, !37, i64 3112, !37, i64 3120, !37, i64 3128, !93, i64 3136, !41, i64 3288, !31, i64 3296, !41, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !94, i64 3520, !95, i64 3528, !96, i64 3536, !97, i64 3576, !98, i64 3600, !99, i64 3632, !8, i64 3672}
!101 = !{!100, !71, i64 104}
!102 = !{!29, !13, i64 704}
!103 = !{!31, !31, i64 0}
!104 = !{!"_GdkRGBA", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!105 = !{!104, !31, i64 16}
!106 = !{!104, !31, i64 24}
!107 = !{!43, !8, i64 1428}
!108 = !{!"p1 _ZTS23_GtkDarktableResetLabel", !13, i64 0}
!109 = !{!"dt_iop_invert_gui_data_t", !26, i64 0, !108, i64 8, !26, i64 16, !7, i64 24, !7, i64 120}
!110 = !{!109, !26, i64 0}
!111 = !{!100, !18, i64 64}
!112 = !{!29, !26, i64 824}
!113 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!114 = !{!"dt_dev_histogram_collection_params_t", !113, i64 0, !8, i64 8}
!115 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!116 = !{!"p1 float", !13, i64 0}
!117 = !{!"dt_dev_distorted_mask_cache_t", !116, i64 0, !115, i64 8, !16, i64 32, !16, i64 40}
!118 = !{!"dt_dev_pixelpipe_iop_t", !23, i64 0, !32, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !114, i64 40, !15, i64 56, !17, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !16, i64 120, !8, i64 128, !8, i64 132, !115, i64 136, !115, i64 156, !115, i64 176, !115, i64 196, !8, i64 216, !8, i64 220, !36, i64 224, !36, i64 352, !7, i64 480, !8, i64 516, !21, i64 520, !117, i64 528, !117, i64 576}
!119 = !{!118, !13, i64 16}
!120 = !{!"any p2 pointer", !13, i64 0}
!121 = !{!"p1 long", !13, i64 0}
!122 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !13, i64 0}
!123 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !16, i64 8, !16, i64 16, !120, i64 24, !121, i64 32, !122, i64 40, !121, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !8, i64 80, !16, i64 88, !16, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!124 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!125 = !{!"dt_dev_detail_mask_t", !115, i64 0, !16, i64 24, !116, i64 32}
!126 = !{!"dt_dev_pixelpipe_t", !123, i64 0, !8, i64 120, !16, i64 128, !116, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !36, i64 176, !124, i64 304, !124, i64 312, !124, i64 320, !124, i64 328, !41, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !37, i64 360, !16, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !16, i64 416, !19, i64 424, !19, i64 464, !19, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !125, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !43, i64 656, !8, i64 2544, !37, i64 2552, !8, i64 2560, !41, i64 2568, !41, i64 2576, !41, i64 2584, !8, i64 2592, !116, i64 2600, !16, i64 2608, !7, i64 2616, !7, i64 2632}
!127 = !{!7, !7, i64 0}
!128 = !{!109, !108, i64 8}
!129 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!130 = !{!"dt_action_t", !8, i64 0, !37, i64 8, !37, i64 16, !13, i64 24, !129, i64 32, !129, i64 40}
!131 = !{!"dt_iop_module_so_t", !130, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !14, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!132 = !{!131, !13, i64 520}
!133 = distinct !{!133, i1 true, !"copy_pixel_nontemporal"}
!134 = distinct !{!134, !133, !"copy_pixel_nontemporal: argument 0"}
!135 = distinct !{!135, !150, !151}
!136 = distinct !{!136, i1 true, !"copy_pixel_nontemporal"}
!137 = distinct !{!137, !136, !"copy_pixel_nontemporal: argument 0"}
!138 = distinct !{!138, !150}
!139 = distinct !{!139, i1 true, !"copy_pixel_nontemporal"}
!140 = distinct !{!140, !139, !"copy_pixel_nontemporal: argument 0"}
!141 = distinct !{!141, !154}
!142 = !{!118, !32, i64 8}
!143 = !{!126, !8, i64 184}
!144 = !{!115, !8, i64 12}
!145 = !{!115, !8, i64 8}
!146 = !{!134}
!147 = !{i32 1}
!148 = !{!115, !8, i64 0}
!149 = !{!115, !8, i64 4}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!137}
!153 = !{!140}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = !{!"dt_iop_invert_global_data_t", !8, i64 0, !8, i64 4}
!156 = !{!155, !8, i64 0}
!157 = !{!155, !8, i64 4}
!158 = !{!126, !8, i64 2152}
!159 = !{!118, !8, i64 216}
!160 = !{!29, !8, i64 488}
!161 = !{!118, !8, i64 32}
!162 = !{!109, !26, i64 16}
!163 = !{!104, !31, i64 0}
!164 = !{!104, !31, i64 8}
!165 = !{!"p1 _ZTS24dt_introspection_field_t", !13, i64 0}
!166 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !37, i64 8, !16, i64 16, !165, i64 24, !16, i64 32, !16, i64 40}
!167 = !{!166, !8, i64 0}
end_hunk_1
