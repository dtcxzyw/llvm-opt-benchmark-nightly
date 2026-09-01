Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_primaries?download=true
inline.NumInlined: 26
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
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
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"rgb primaries\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"adjustment of the RGB color primaries for color grading\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"corrective or creative\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"red_hue\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"shift red towards yellow or magenta\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"red_purity\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"red primary purity\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"green_hue\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"shift green towards cyan or yellow\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"green_purity\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"green primary purity\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"blue_hue\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"shift blue towards magenta or cyan\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"blue_purity\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"blue primary purity\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"achromatic_tint_hue\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\C2\B0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"tint hue\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"achromatic_tint_purity\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"tint purity\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.24 = private unnamed_addr constant [52 x i8] c"[signal] connect    %s to %s; %s:%d, function: %s()\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"_signal_profile_user_changed\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"DT_SIGNAL_CONTROL_PROFILE_USER_CHANGED\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/darktable/darktable/src/iop/primaries.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"_signal_profile_changed\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"DT_SIGNAL_CONTROL_PROFILE_CHANGED\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"DT_SIGNAL_DEVELOP_UI_PIPE_FINISHED\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.39, i64 32, ptr getelementptr (i8, ptr @introspection_linear, i64 704), i64 1120, i64 688 }, align 8
@introspection_init.f8 = internal global [9 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr null], align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"red hue\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"red purity\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"green hue\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"green purity\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"blue hue\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"blue purity\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"dt_iop_primaries_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.18, ptr @.str.18, ptr @.str.20, i64 4, i64 0, ptr null }, float f0xC0490FDB, float f0x40490FDB, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.21, ptr @.str.21, ptr @.str.23, i64 4, i64 4, ptr null }, float 0.000000e+00, float 9.900000e-01, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.6, ptr @.str.6, ptr @.str.33, i64 4, i64 8, ptr null }, float f0xC0490FDB, float f0x40490FDB, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.8, ptr @.str.8, ptr @.str.34, i64 4, i64 12, ptr null }, float f0x3C23D70A, float 5.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.10, ptr @.str.10, ptr @.str.35, i64 4, i64 16, ptr null }, float f0xC0490FDB, float f0x40490FDB, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.12, ptr @.str.12, ptr @.str.36, i64 4, i64 20, ptr null }, float f0x3C23D70A, float 5.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.14, ptr @.str.14, ptr @.str.37, i64 4, i64 24, ptr null }, float f0xC0490FDB, float f0x40490FDB, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.16, ptr @.str.16, ptr @.str.38, i64 4, i64 28, ptr null }, float f0x3C23D70A, float 5.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.5, ptr @.str.5, ptr @.str.5, i64 32, i64 0, ptr null }, i64 8, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #16
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #16
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #16
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #16
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x [2 x float]], align 16       ; 6 uses
  %i.b = alloca [2 x float], align 4              ; 4 uses
  %i.c = alloca [4 x [4 x float]], align 64       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !11  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.g, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #16
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %i.j) #16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.q = load float, ptr %i.p, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = load float, ptr %i.v, align 4, !tbaa !38
  call void @dt_rotate_and_scale_primary(ptr noundef %i.k, float noundef %i.m, float noundef %i.s, i64 noundef 0, ptr noundef nonnull %i.a) #16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @dt_rotate_and_scale_primary(ptr noundef %i.k, float noundef %i.o, float noundef %i.u, i64 noundef 1, ptr noundef nonnull %i.x) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @dt_rotate_and_scale_primary(ptr noundef %i.k, float noundef %i.q, float noundef %i.w, i64 noundef 2, ptr noundef nonnull %i.y) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !39
  %i.ab = load float, ptr %i.e, align 4, !tbaa !40
  call void @dt_rotate_and_scale_primary(ptr noundef %i.k, float noundef %i.aa, float noundef %i.ab, i64 noundef 0, ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 960
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 976
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !41 ; 4 uses
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 992
  %i.af = load float, ptr %gep.2.i.i, align 4, !tbaa !41 ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.ae
  %gep.2.1.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 996
  %i.ah = load float, ptr %gep.2.1.i.i, align 4, !tbaa !41 ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ae
  %gep.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1000
  %i.aj = load float, ptr %gep.2.2.i.i, align 4, !tbaa !41 ; 3 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ae
  %gep.2.3.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1004
  %i.al = load float, ptr %gep.2.3.i.i, align 4, !tbaa !41 ; 3 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ao = load float, ptr %i.an, align 8, !tbaa !41 ; 4 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.af
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %i.ah
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ao, %i.aj
  %i.as = load <4 x float>, ptr %i.ac, align 4, !tbaa !41 ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.au = load <4 x float>, ptr %gep.1.i.i, align 4, !tbaa !41 ; 2 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aw = load <6 x float>, ptr %i.c, align 64, !tbaa !41 ; 2 uses
  %i.ax = shufflevector <6 x float> %i.aw, <6 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.at
  %i.az = shufflevector <6 x float> %i.aw, <6 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.az, %i.av
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, %i.ay ; 8 uses
  %i.bc = extractelement <8 x float> %i.bb, i64 0
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ag ; 2 uses
  %i.be = extractelement <8 x float> %i.bb, i64 1
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ai ; 2 uses
  %i.bg = extractelement <8 x float> %i.bb, i64 2
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.ak ; 2 uses
  %i.bi = extractelement <8 x float> %i.bb, i64 3
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.am ; 2 uses
  %i.bk = extractelement <8 x float> %i.bb, i64 4
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.ap ; 2 uses
  %i.bm = extractelement <8 x float> %i.bb, i64 5
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, %i.aq ; 2 uses
  %i.bo = extractelement <8 x float> %i.bb, i64 6
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.ar ; 2 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.ao, %i.al
  %i.br = extractelement <8 x float> %i.bb, i64 7
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, %i.bq ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !41 ; 4 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.af
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bv, %i.ah
  %i.by = fmul reassoc nsz arcp contract afn float %i.bv, %i.aj
  %6 = load <2 x float>, ptr %i.bt, align 32, !tbaa !41 ; 2 uses
  %i.bz = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fmul reassoc nsz arcp contract afn <4 x float> %i.bz, %i.as
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %7, %i.au
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, %i.ca ; 4 uses
  %i.cd = extractelement <4 x float> %i.cc, i64 0
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.bw ; 2 uses
  %i.cf = extractelement <4 x float> %i.cc, i64 1
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.bx ; 2 uses
  %i.ch = extractelement <4 x float> %i.cc, i64 2
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.by ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn float %i.bv, %i.al
  %i.ck = extractelement <4 x float> %i.cc, i64 3
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !42
  %i.co = shl nsw i32 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !43
  %i.cr = mul nsw i32 %i.co, %i.cq                ; 2 uses
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %.not22 = icmp eq i32 %i.cr, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ct = call i64 @llvm.usub.sat.i64(i64 %i.cs, i64 4) ; 2 uses
  %i.cu = lshr exact i64 %i.ct, 2
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 16
  br i1 %min.iters.check, label %.lr.ph.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cw = call i64 @llvm.usub.sat.i64(i64 %i.cs, i64 4)
  %i.cx = shl i64 %i.cw, 2
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.cy
  %scevgep23 = getelementptr i8, ptr %2, i64 %i.cy
  %bound0 = icmp ult ptr %3, %scevgep23
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cz = and i64 %i.cv, 3                        ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = select i1 %i.da, i64 4, i64 %i.cz
  %n.vec = sub nsw i64 %i.cv, %i.db               ; 2 uses
  %i.dc = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat25 = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat27 = shufflevector <4 x float> %broadcast.splatinsert26, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat29 = shufflevector <4 x float> %broadcast.splatinsert28, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat31 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat33 = shufflevector <4 x float> %broadcast.splatinsert32, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat35 = shufflevector <4 x float> %broadcast.splatinsert34, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat37 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat39 = shufflevector <4 x float> %broadcast.splatinsert38, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat41 = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %i.cl, i64 0
  %broadcast.splat45 = shufflevector <4 x float> %broadcast.splatinsert44, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %vec.ind ; 2 uses
  %i.de = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec = load <16 x float>, ptr %i.dd, align 4, !tbaa !41, !alias.scope !44 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec46 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec47 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.df = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, %broadcast.splat
  %i.dg = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec46, %broadcast.splat25
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.dg, %i.df
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec47, %broadcast.splat27
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.dh, %i.di
  %wide.vec48 = load <16 x float>, ptr %i.dd, align 4, !tbaa !41, !alias.scope !44 ; 3 uses
  %strided.vec49 = shufflevector <16 x float> %wide.vec48, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec50 = shufflevector <16 x float> %wide.vec48, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec51 = shufflevector <16 x float> %wide.vec48, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.dk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec49, %broadcast.splat29
  %i.dl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec50, %broadcast.splat31
  %i.dm = fadd reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dk
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec51, %broadcast.splat33
  %i.do = fadd reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dn
  %wide.vec52 = load <16 x float>, ptr %i.dd, align 4, !tbaa !41, !alias.scope !44 ; 3 uses
  %strided.vec53 = shufflevector <16 x float> %wide.vec52, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec54 = shufflevector <16 x float> %wide.vec52, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec55 = shufflevector <16 x float> %wide.vec52, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec53, %broadcast.splat35
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec54, %broadcast.splat37
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dp
  %i.ds = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec55, %broadcast.splat39
  %i.dt = fadd reassoc nsz arcp contract afn <4 x float> %i.dr, %i.ds
  %wide.vec56 = load <16 x float>, ptr %i.dd, align 4, !tbaa !41, !alias.scope !44 ; 4 uses
  %strided.vec57 = shufflevector <16 x float> %wide.vec56, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec58 = shufflevector <16 x float> %wide.vec56, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec59 = shufflevector <16 x float> %wide.vec56, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec60 = shufflevector <16 x float> %wide.vec56, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.du = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec57, %broadcast.splat41
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec58, %broadcast.splat43
  %i.dw = fadd reassoc nsz arcp contract afn <4 x float> %i.dv, %i.du
  %i.dx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec59, %broadcast.splat45
  %i.dy = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.dx
  %wide.gep61 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 12
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.dy, <4 x ptr> align 4 %wide.gep61, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !47, !noalias !44
  %i.dz = shufflevector <4 x float> %i.dj, <4 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <4 x float> %i.dt, <4 x float> %strided.vec60, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dz, <8 x float> %i.ea, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.de, align 4, !tbaa !41, !alias.scope !47, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %.lr.ph.preheader62, label %vector.body, !llvm.loop !49

.lr.ph.preheader62:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.021.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.dc, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader62, %.lr.ph
  %.021 = phi i64 [ %i.fr, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader62 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.021 ; 7 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 4 uses
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !41
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.bd
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !41
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, %i.bl
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.eh
  %i.el = load float, ptr %i.ef, align 4, !tbaa !41
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ce
  %i.en = fadd reassoc nsz arcp contract afn float %i.ek, %i.em
  store float %i.en, ptr %i.ed, align 4, !tbaa !41
  %i.eo = load float, ptr %i.ec, align 4, !tbaa !41
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, %i.bf
  %i.eq = load float, ptr %i.ee, align 4, !tbaa !41
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.bn
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, %i.ep
  %i.et = load float, ptr %i.ef, align 4, !tbaa !41
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.cg
  %i.ev = fadd reassoc nsz arcp contract afn float %i.es, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.ev, ptr %i.ew, align 4, !tbaa !41
  %i.ex = load float, ptr %i.ec, align 4, !tbaa !41
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, %i.bh
  %i.ez = load float, ptr %i.ee, align 4, !tbaa !41
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, %i.bp
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ey
  %i.fc = load float, ptr %i.ef, align 4, !tbaa !41
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, %i.ci
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %i.fe, ptr %i.ff, align 4, !tbaa !41
  %i.fg = load float, ptr %i.ec, align 4, !tbaa !41
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.bj
  %i.fi = load float, ptr %i.ee, align 4, !tbaa !41
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, %i.bs
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.fh
  %i.fl = load float, ptr %i.ef, align 4, !tbaa !41
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, %i.cl
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ed, i64 12 ; 2 uses
  store float %i.fn, ptr %i.fo, align 4, !tbaa !41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !41
  store float %i.fq, ptr %i.fo, align 4, !tbaa !41
  %i.fr = add nuw i64 %.021, 4                    ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.cs
  br i1 %i.fs, label %.lr.ph, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
end_hunk_0
begin_hunk_1_@get_p:bb.a

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.6) #18
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.8) #18
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.10) #18
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.12) #18
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.14) #18
  %.not23 = icmp eq i32 %i.l, 0
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.16) #18
  %.not24 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %spec.select = select i1 %.not24, ptr %i.o, ptr null
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.n ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.21) #16
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.6) #16
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #16
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.10) #16
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #16
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.14) #16
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.16) #16
  %.not15 = icmp eq i32 %i.h, 0
  %. = select i1 %.not15, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ %., %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_rotate_and_scale_primary(ptr noundef, float noundef, float noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare float @dt_bauhaus_slider_get_hard_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_hard_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_rotated_primary_to_display_RGB(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 3) %3, float noundef %4, float noundef nofpclass(nan inf nzero sub nnorm) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @dt_rotate_and_scale_primary(ptr noundef nonnull %0, float noundef 1.000000e+00, float noundef %4, i64 noundef %3, ptr noundef nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !41 ; 4 uses
  %i.d = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %dt_xyY_to_XYZ.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %i.a, align 16, !tbaa !41 ; 2 uses
  %i.f = fdiv reassoc nsz arcp contract afn float %i.e, %i.c
  %i.g = fadd reassoc nsz arcp contract afn float %i.c, %i.e
  %i.h = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %i.i = fdiv reassoc nsz arcp contract afn float %i.h, %i.c
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.13.0 = phi nsz float [ 1.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi nsz float [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.j = phi reassoc nsz arcp contract afn float [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.n = load float, ptr %i.k, align 4, !tbaa !41
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.0.0
  %i.p = load float, ptr %i.l, align 4, !tbaa !41
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %.sroa.13.0
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.o
  %i.s = load float, ptr %i.m, align 4, !tbaa !41
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.j
  %i.u = fadd reassoc nsz arcp contract afn float %i.r, %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 964
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %.sroa.0.0
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 980
  %i.z = load float, ptr %i.y, align 4, !tbaa !41
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %.sroa.13.0
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 996
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !41
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.j
  %i.af = fadd reassoc nsz arcp contract afn float %i.ab, %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 968
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %.sroa.0.0
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 984
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !41
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %.sroa.13.0
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1000
  %i.ao = load float, ptr %i.an, align 4, !tbaa !41
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.j
  %i.aq = fadd reassoc nsz arcp contract afn float %i.am, %i.ap ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.u, %i.af
  %i.as = select reassoc nsz arcp contract afn i1 %i.ar, float %i.u, float %i.af ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, %i.aq
  %. = select reassoc nsz arcp contract afn i1 %i.at, float %i.as, float %i.aq ; 2 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt float %., 0.000000e+00
  %.neg = fneg reassoc nsz arcp contract afn float %.
  %i.av = select reassoc nsz arcp contract afn i1 %i.au, float %.neg, float -0.000000e+00
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %5 ; 3 uses
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.u ; 3 uses
  %i.ay = fadd reassoc nsz arcp contract afn float %i.aw, %i.af ; 3 uses
  %i.az = fadd reassoc nsz arcp contract afn float %i.aw, %i.aq ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !41
  %i.be = fmul reassoc nsz arcp contract afn float %i.ax, %i.bd
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !41
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ay, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.be
  %i.bi = load float, ptr %i.bc, align 4, !tbaa !41
  %i.bj = fmul reassoc nsz arcp contract afn float %i.az, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 900
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !41
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.ax
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 916
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !41
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.ay
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 932
  %i.bs = load float, ptr %i.br, align 4, !tbaa !41
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.az
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 904
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !41
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.ax
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 920
  %i.by = load float, ptr %i.bx, align 4, !tbaa !41
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.ay
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 936
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !41
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.az
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 992
  %7 = fadd reassoc nsz arcp contract afn float %i.bh, %i.bj
  %8 = fadd reassoc nsz arcp contract afn float %i.bq, %i.bt
  %9 = fadd reassoc nsz arcp contract afn float %i.ca, %i.cd
  %i.ch = load <4 x float>, ptr %i.ce, align 4, !tbaa !41
  %i.ci = insertelement <4 x float> poison, float %7, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cj
  %i.cl = load <4 x float>, ptr %i.cf, align 4, !tbaa !41
  %i.cm = insertelement <4 x float> poison, float %8, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.cl, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cq = load <4 x float>, ptr %i.cg, align 4, !tbaa !41
  %i.cr = insertelement <4 x float> poison, float %9, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn <4 x float> %i.cp, %i.ct ; 4 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0 ; 4 uses
  %i.cw = extractelement <4 x float> %i.cu, i64 1 ; 4 uses
  %i.cx = fcmp reassoc nsz arcp contract afn olt float %i.cv, %i.cw
  %i.cy = select reassoc nsz arcp contract afn i1 %i.cx, float %i.cv, float %i.cw ; 2 uses
  %i.cz = extractelement <4 x float> %i.cu, i64 2 ; 4 uses
  %i.da = fcmp reassoc nsz arcp contract afn olt float %i.cy, %i.cz
  %.31 = select reassoc nsz arcp contract afn i1 %i.da, float %i.cy, float %i.cz ; 2 uses
  %i.db = fcmp reassoc nsz arcp contract afn olt float %.31, 0.000000e+00
  %.neg30 = fneg reassoc nsz arcp contract afn float %.31
  %i.dc = select reassoc nsz arcp contract afn i1 %i.db, float %.neg30, float -0.000000e+00 ; 2 uses
  %i.dd = fcmp reassoc nsz arcp contract afn ogt float %i.cv, %i.cw
  %i.de = select reassoc nsz arcp contract afn i1 %i.dd, float %i.cv, float %i.cw ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt float %i.de, %i.cz
  %i.dg = select reassoc nsz arcp contract afn i1 %i.df, float %i.de, float %i.cz
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dc, %i.dg
  %i.di = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = fadd reassoc nsz arcp contract afn <4 x float> %i.cu, %i.dj
  %i.dl = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fdiv reassoc nsz arcp contract afn <4 x float> %i.dk, %i.dm
  store <4 x float> %i.dn, ptr %6, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_apply_trc_if_nonlinear(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %2) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !153
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load i32, ptr %i.e, align 64, !tbaa !155 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float ; 9 uses
  %i.i = add nsw i32 %i.f, -2
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float ; 6 uses
  %i.k = load ptr, ptr %i.c, align 32, !tbaa !156 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !41
  %i.m = fcmp reassoc nsz arcp contract afn ult float %i.l, 0.000000e+00
  %i.n = load float, ptr %1, align 4, !tbaa !41   ; 4 uses
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, %i.h ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.h
  %..i.i = select reassoc nsz arcp contract afn i1 %i.r, float %i.p, float %i.h
  %i.s = select reassoc nsz arcp contract afn i1 %i.q, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, %i.j
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float %i.s, float %i.j
  %i.v = fptosi float %i.u to i32                 ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.s, %i.w
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !41 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !41
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.x
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.aa
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41
  %i.ai = load float, ptr %i.d, align 16, !tbaa !41
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.al = load float, ptr %i.ak, align 8, !tbaa !41
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aj, float %i.al)
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.an, %bb.e ], [ %i.af, %bb.d ], [ %i.n, %bb.b ]
  store float %i.ao, ptr %2, align 4, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !156 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !41
  %i.as = fcmp reassoc nsz arcp contract afn ult float %i.ar, 0.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !41 ; 4 uses
  br i1 %i.as, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, 1.000000e+00
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ay = load float, ptr %i.ax, align 64, !tbaa !41
  %i.az = load float, ptr %i.aw, align 4, !tbaa !41
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !41
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ba, float %i.bc)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ay
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = fmul reassoc nsz arcp contract afn float %i.au, %i.h ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 0.000000e+00
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.h
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bf, float %i.h
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bg, float %..i.1.i, float 0.000000e+00 ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, %i.j
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bi, float %i.j
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = fsub reassoc nnan nsz arcp contract afn float %i.bi, %i.bm
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !41 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !41
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bw = phi reassoc nsz arcp contract afn float [ %i.be, %bb.h ], [ %i.bv, %bb.i ], [ %i.au, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !156 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !41
  %i.cb = fcmp reassoc nsz arcp contract afn ult float %i.ca, 0.000000e+00
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !41 ; 4 uses
  br i1 %i.cb, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.cd, 1.000000e+00
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !41
  %i.ci = load float, ptr %i.cf, align 8, !tbaa !41
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.cl = load float, ptr %i.ck, align 16, !tbaa !41
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cj, float %i.cl)
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.ch
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.co = fmul reassoc nsz arcp contract afn float %i.cd, %i.h ; 3 uses
  %i.cp = fcmp reassoc nsz arcp contract afn ogt float %i.co, 0.000000e+00
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.co, %i.h
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cq, float %i.co, float %i.h
  %i.cr = select reassoc nsz arcp contract afn i1 %i.cp, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cs = fcmp reassoc nsz arcp contract afn olt float %i.cr, %i.j
  %i.ct = select reassoc nsz arcp contract afn i1 %i.cs, float %i.cr, float %i.j
  %i.cu = fptosi float %i.ct to i32               ; 2 uses
  %i.cv = sitofp reassoc nsz arcp contract afn i32 %i.cu to float
  %i.cw = fsub reassoc nnan nsz arcp contract afn float %i.cr, %i.cv
  %i.cx = sext i32 %i.cu to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cx ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !41 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !41
  %i.dc = fsub reassoc nsz arcp contract afn float %i.db, %i.cz
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cw
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.cz
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.df = phi reassoc nsz arcp contract afn float [ %i.cn, %bb.l ], [ %i.de, %bb.m ], [ %i.cd, %bb.j ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.df, ptr %i.dg, align 4, !tbaa !41
end_hunk_1
