Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basicadj?download=true
inline.NumInlined: 82
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
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

@.str = private unnamed_addr constant [70 x i8] c"this module is deprecated. please use the quick access panel instead.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"basic adjustments\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"apply usual image adjustments\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"creative\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"non-linear, RGB\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"non-linear, RGB, scene-referred\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"black_point\00", align 1
@.str.9 = private unnamed_addr constant [205 x i8] c"adjust the black level to unclip negative RGB values.\0Ayou should never use it to add more density in blacks!\0Aif poorly set, it will clip near-black colors out of gamut\0Aby pushing RGB values into negatives\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" EV\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"adjust the exposure correction\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"hlcompr\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"highlight compression adjustment\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"contrast adjustment\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"preserve_colors\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"method to preserve colors when applying contrast\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"middle_grey\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"middle gray adjustment\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"quad-pressed\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"brightness adjustment\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"saturation adjustment\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"vibrance\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"vibrance adjustment\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"apply auto exposure based on the entire image\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"dt_transparent_background\00", align 1
@.str.32 = private unnamed_addr constant [112 x i8] c"apply auto exposure based on a region defined by the user\0Aclick and drag to draw the area\0Aright-click to cancel\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/darktable/darktable/src/iop/basicadj.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"adjusts clipping value for auto exposure calculation\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"[signal] connect    %s to %s; %s:%d, function: %s()\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"_develop_ui_pipe_finished_callback\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"DT_SIGNAL_DEVELOP_PREVIEW_PIPE_FINISHED\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"_signal_profile_user_changed\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"DT_SIGNAL_CONTROL_PROFILE_USER_CHANGED\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.70, i64 44, ptr getelementptr (i8, ptr @introspection_linear, i64 968), i64 1120, i64 688 }, align 8
@introspection_init.f5 = internal global [8 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.42, i32 0, [4 x i8] zeroinitializer, ptr @.str.43 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.44, i32 1, [4 x i8] zeroinitializer, ptr @.str.45 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.46, i32 2, [4 x i8] zeroinitializer, ptr @.str.47 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.48, i32 3, [4 x i8] zeroinitializer, ptr @.str.49 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.50, i32 4, [4 x i8] zeroinitializer, ptr @.str.51 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.52, i32 5, [4 x i8] zeroinitializer, ptr @.str.53 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.54, i32 6, [4 x i8] zeroinitializer, ptr @.str.55 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [17 x i8] c"DT_RGB_NORM_NONE\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"DT_RGB_NORM_LUMINANCE\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"luminance\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"DT_RGB_NORM_MAX\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"max RGB\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"DT_RGB_NORM_AVERAGE\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"average RGB\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"DT_RGB_NORM_SUM\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"sum RGB\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"DT_RGB_NORM_NORM\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"norm RGB\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"DT_RGB_NORM_POWER\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"basic power\00", align 1
@introspection_init.f11 = internal global [12 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr getelementptr (i8, ptr @introspection_linear, i64 704), ptr getelementptr (i8, ptr @introspection_linear, i64 792), ptr getelementptr (i8, ptr @introspection_linear, i64 880), ptr null], align 16
@.str.56 = private unnamed_addr constant [14 x i8] c"hlcomprthresh\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"[_get_auto_exp] expcomp is NaN!\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"[_get_auto_exp] black is NaN!\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"[_get_auto_exp] bright is NaN!\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"[_get_auto_exp] contr is NaN!\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"[_get_auto_exp] hlcompr is NaN!\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"black level correction\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"highlight compression\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"dt_iop_rgb_norms_t\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"preserve colors\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"middle gray\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"dt_iop_basicadj_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.8, ptr @.str.8, ptr @.str.64, i64 4, i64 0, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.10, ptr @.str.10, ptr @.str.65, i64 4, i64 4, ptr null }, float -1.800000e+01, float 1.800000e+01, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.13, ptr @.str.13, ptr @.str.66, i64 4, i64 8, ptr null }, float 0.000000e+00, float 5.000000e+02, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.56, ptr @.str.56, ptr @.str.65, i64 4, i64 12, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.15, ptr @.str.15, ptr @.str.65, i64 4, i64 16, ptr null }, float -1.000000e+00, float 5.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.67, ptr @.str.17, ptr @.str.17, ptr @.str.68, i64 4, i64 20, ptr null }, i64 7, ptr null, i32 1, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.19, ptr @.str.19, ptr @.str.69, i64 4, i64 24, ptr null }, float 5.000000e-02, float 1.000000e+02, float 1.842000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.23, ptr @.str.23, ptr @.str.65, i64 4, i64 28, ptr null }, float -4.000000e+00, float 4.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.25, ptr @.str.25, ptr @.str.65, i64 4, i64 32, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.27, ptr @.str.27, ptr @.str.65, i64 4, i64 36, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.63, ptr @.str.35, ptr @.str.35, ptr @.str.65, i64 4, i64 40, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.70, ptr @.str.65, ptr @.str.65, ptr @.str.65, i64 44, i64 0, ptr null }, i64 11, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #22 ; 8 uses
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !12
  store <4 x float> %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.e, ptr %i.f, align 4, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.h, ptr %i.i, align 4, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !12
  store <2 x float> %i.l, ptr %i.k, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.n, ptr %i.o, align 4, !tbaa !143
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.q = load float, ptr %i.p, align 4, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.q, ptr %i.r, align 4, !tbaa !145
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !146
  store ptr %i.b, ptr %3, align 8, !tbaa !14
  store i32 44, ptr %4, align 4, !tbaa !15
  store i32 2, ptr %5, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #23
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #23
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #23
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #23
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #23
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #23
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #23
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_turn_select_region_off.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 84
  store i32 0, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.e, i32 noundef 0) #23
  br label %_turn_select_region_off.exit

_turn_select_region_off.exit:                     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !32  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load i32, ptr %i.i, align 16, !tbaa !38
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = call i32 @dt_dev_get_preview_size(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.n = load float, ptr %i.a, align 4, !tbaa !12
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store float %i.o, ptr %i.p, align 8, !tbaa !40
  %i.q = load float, ptr %i.b, align 4, !tbaa !12
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %2
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store float %i.r, ptr %i.s, align 8, !tbaa !41
  call void @dt_control_queue_redraw_center() #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_control_queue_redraw_center() local_unnamed_addr #6

end_hunk_0
begin_hunk_1_@gui_post_expose:bb.a
  %.not44 = icmp eq i32 %i.g, 0
  br i1 %.not44, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.k = load float, ptr %i.j, align 4, !tbaa !42 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !41 ; 2 uses
  %i.r = extractelement <2 x float> %i.m, i64 1
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, %i.q
  %or.cond = select i1 %i.o, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.t = insertelement <2 x float> poison, float %i.k, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1
  %i.v = fpext reassoc nsz arcp contract afn <2 x float> %i.u to <2 x double> ; 2 uses
  %i.w = fpext reassoc nsz arcp contract afn <2 x float> %i.m to <2 x double> ; 2 uses
  %i.x = fpext reassoc nsz arcp contract afn float %6 to double ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn <2 x double> @llvm.minnum.v2f64(<2 x double> %i.w, <2 x double> %i.v)
  %i.z = fptrunc reassoc nsz arcp contract afn <2 x double> %i.y to <2 x float> ; 3 uses
  %i.aa = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.w, <2 x double> %i.v)
  %i.ab = fptrunc reassoc nsz arcp contract afn <2 x double> %i.aa to <2 x float>
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = fpext reassoc nsz arcp contract afn float %i.ac to double ; 2 uses
  %i.ae = extractelement <2 x float> %i.z, i64 1
  %i.af = fpext reassoc nsz arcp contract afn float %i.ae to double ; 2 uses
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.z ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double ; 2 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 1
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.x, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double 3.000000e+00>, %i.am ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 4 uses
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ao) #23
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  tail call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 1) #23
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ad, double noundef %i.af, double noundef %i.ai, double noundef %i.ak) #23
  tail call void @cairo_stroke(ptr noundef %1) #23
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.ao, double noundef %i.ao) #23
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.ap = fadd reassoc nsz arcp contract afn double %i.ao, %i.ad
  %i.aq = extractelement <2 x double> %i.an, i64 1
  %i.ar = fsub reassoc nsz arcp contract afn double %i.ai, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.x
  %i.at = fsub reassoc nsz arcp contract afn double %i.ak, %i.as
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ap, double noundef %i.af, double noundef %i.ar, double noundef %i.at) #23
  tail call void @cairo_stroke(ptr noundef %1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %._crit_edge
  ret void
}

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !114
  store i32 -999, ptr %i.a, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !32
  %i.h = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %2) #23 ; 6 uses
  %.not16 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.n = load i32, ptr %i.m, align 64, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 852
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119
  %i.q = tail call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef nonnull %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.p)
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, 1.000000e+02
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load float, ptr %i.i, align 16, !tbaa !12
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3E63D838
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, f0x3F37855B
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.z = load float, ptr %i.y, align 8, !tbaa !12
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, 6.061690e-02
  %i.ab = fadd reassoc nsz arcp contract afn float %i.x, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi reassoc nsz arcp contract afn float [ %i.r, %bb.c ], [ %i.ab, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store float %i.ac, ptr %i.ad, align 4, !tbaa !120
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !120
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ai, float noundef %i.aj) #23
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = atomicrmw add ptr %i.al, i32 -1 seq_cst, align 4 ; 0 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.an, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !150 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = load float, ptr %i.aq, align 4, !tbaa !12
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1.i, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.h ], [ %i.bp, %bb.i ], [ %i.ao, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !150 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = fcmp reassoc nsz arcp contract afn ult float %i.bt, 0.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !12 ; 4 uses
  br i1 %i.bu, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = load float, ptr %i.by, align 4, !tbaa !12
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cc, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.b ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.b
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ch, float %i.b
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ci, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, %i.d
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float %i.ck, float %i.d
  %i.cn = fptosi float %i.cm to i32               ; 2 uses
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = fsub reassoc nsz arcp contract afn float %i.ck, %i.co
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cq ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cp
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cs
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.l ], [ %i.cx, %bb.m ], [ %i.bw, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !12
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bq
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !12
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn float %i.df, %i.di
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = load float, ptr %0, align 4, !tbaa !12
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dp
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dn
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dv
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dt, %i.dy
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_ioppr_apply_trc.exit
  %.0 = phi nsz float [ %i.dj, %dt_ioppr_apply_trc.exit ], [ %i.dz, %bb.n ]
  ret float %.0
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #6

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %4) local_unnamed_addr #12 {
bb.a:
  store <4 x float> <float 2.000000e+00, float 3.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.a, align 4, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 4, !tbaa !154
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 1 dereferenceable(44) %1, i64 44, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !129 ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, 2.000000e+00 ; 3 uses
  %i.f = fcmp reassoc nsz arcp contract afn ult float %i.e, 0.000000e+00
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, 1.000000e+00
  %i.h = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %i.i = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  %i.j = select reassoc nsz arcp contract afn i1 %i.f, float %i.i, float %i.h ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !130 ; 2 uses
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, 1.000000e+00 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load float, ptr %i.n, align 4, !tbaa !120 ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, 0.000000e+00
  %i.q = fmul reassoc nsz arcp contract afn float %i.o, f0x3C23D70A
  %i.r = select reassoc nsz arcp contract afn i1 %i.p, float %i.q, float 1.842000e-01 ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn une float %i.d, 0.000000e+00 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %.not = icmp eq i32 %i.u, 0
  %i.v = fcmp reassoc nsz arcp contract afn une float %i.l, 0.000000e+00
  %spec.select = select i1 %.not, i1 %i.v, i1 false ; 2 uses
  %or.cond = select i1 %i.s, i1 true, i1 %spec.select
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 262188 ; 2 uses
  br i1 %spec.select, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %invariant.op = fdiv reassoc nsz arcp contract afn float f0x37800000, %i.r
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br i1 %i.s, label %vector.body64.preheader, label %vector.body53.preheader

vector.body53.preheader:                          ; preds = %.preheader.split.us
  %i.y = insertelement <4 x float> poison, float %i.m, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body53

vector.body64.preheader:                          ; preds = %.preheader.split.us
  %i.aa = insertelement <4 x float> poison, float %i.j, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = insertelement <4 x float> poison, float %i.m, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body64

vector.body53:                                    ; preds = %vector.body53.preheader, %vector.body53
  %index54 = phi i64 [ %index.next56, %vector.body53 ], [ 0, %vector.body53.preheader ] ; 2 uses
  %vec.ind55 = phi <8 x i32> [ %vec.ind.next57, %vector.body53 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.body53.preheader ] ; 2 uses
  %i.ae = uitofp nneg <8 x i32> %vec.ind55 to <8 x float>
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat61, %i.ae ; 5 uses
  %i.ag = extractelement <8 x float> %i.af, i64 0
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ag, float %i.m)
  %i.ai = extractelement <8 x float> %i.af, i64 1
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ai, float %i.m)
  %i.ak = extractelement <8 x float> %i.af, i64 2
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ak, float %i.m)
  %i.am = shufflevector <8 x float> %i.af, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.an = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.am, <4 x float> %i.z)
  %i.ao = extractelement <8 x float> %i.af, i64 7
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ao, float %i.m)
  %i.aq = insertelement <8 x float> poison, float %i.ah, i64 0
  %i.ar = insertelement <8 x float> %i.aq, float %i.aj, i64 1
  %i.as = insertelement <8 x float> %i.ar, float %i.al, i64 2
  %i.at = shufflevector <4 x float> %i.an, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x float> %i.as, <8 x float> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.av = insertelement <8 x float> %i.au, float %i.ap, i64 7
  %i.aw = fmul reassoc nsz arcp contract afn <8 x float> %i.av, %broadcast.splat63
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index54
  store <8 x float> %i.aw, ptr %i.ax, align 4, !tbaa !12
  %index.next56 = add nuw i64 %index54, 8         ; 2 uses
  %vec.ind.next57 = add <8 x i32> %vec.ind55, splat (i32 8)
  %i.ay = icmp eq i64 %index.next56, 65536
  br i1 %i.ay, label %.loopexit, label %vector.body53, !llvm.loop !155

vector.body64:                                    ; preds = %vector.body64.preheader, %vector.body64
  %index65 = phi i64 [ %index.next67, %vector.body64 ], [ 0, %vector.body64.preheader ] ; 3 uses
  %vec.ind66 = phi <8 x i32> [ %vec.ind.next68, %vector.body64 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.body64.preheader ] ; 2 uses
  %i.az = uitofp nneg <8 x i32> %vec.ind66 to <8 x float> ; 2 uses
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.az, splat (float f0x37800000) ; 5 uses
  %i.bb = extractelement <8 x float> %i.ba, i64 0
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float %i.j)
  %i.bd = extractelement <8 x float> %i.ba, i64 1
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bd, float %i.j)
  %i.bf = extractelement <8 x float> %i.ba, i64 2
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bf, float %i.j)
  %i.bh = shufflevector <8 x float> %i.ba, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.bh, <4 x float> %i.ab)
  %i.bj = extractelement <8 x float> %i.ba, i64 7
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bj, float %i.j)
  %i.bl = insertelement <8 x float> poison, float %i.bc, i64 0
  %i.bm = insertelement <8 x float> %i.bl, float %i.be, i64 1
  %i.bn = insertelement <8 x float> %i.bm, float %i.bg, i64 2
  %i.bo = shufflevector <4 x float> %i.bi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <8 x float> %i.bn, <8 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.bq = insertelement <8 x float> %i.bp, float %i.bk, i64 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index65
  store <8 x float> %i.bq, ptr %i.br, align 4, !tbaa !12
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat61, %i.az ; 5 uses
  %i.bt = extractelement <8 x float> %i.bs, i64 0
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float %i.m)
  %i.bv = extractelement <8 x float> %i.bs, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float %i.m)
  %i.bx = extractelement <8 x float> %i.bs, i64 2
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bx, float %i.m)
  %i.bz = shufflevector <8 x float> %i.bs, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ca = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.bz, <4 x float> %i.ad)
  %i.cb = extractelement <8 x float> %i.bs, i64 7
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float %i.m)
  %i.cd = insertelement <8 x float> poison, float %i.bu, i64 0
  %i.ce = insertelement <8 x float> %i.cd, float %i.bw, i64 1
  %i.cf = insertelement <8 x float> %i.ce, float %i.by, i64 2
  %i.cg = shufflevector <4 x float> %i.ca, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <8 x float> %i.cf, <8 x float> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ci = insertelement <8 x float> %i.ch, float %i.cc, i64 7
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %i.ci, %broadcast.splat63
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index65
  store <8 x float> %i.cj, ptr %i.ck, align 4, !tbaa !12
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %vec.ind.next68 = add <8 x i32> %vec.ind66, splat (i32 8)
  %i.cl = icmp eq i64 %index.next67, 65536
  br i1 %i.cl, label %.loopexit, label %vector.body64, !llvm.loop !156

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.s, label %vector.body.preheader, label %.loopexit

vector.body.preheader:                            ; preds = %.preheader.split
  %i.cm = insertelement <4 x float> poison, float %i.j, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.body.preheader ] ; 2 uses
  %i.co = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.co, splat (float f0x37800000) ; 5 uses
  %i.cq = extractelement <8 x float> %i.cp, i64 0
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cq, float %i.j)
  %i.cs = extractelement <8 x float> %i.cp, i64 1
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float %i.j)
  %i.cu = extractelement <8 x float> %i.cp, i64 2
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cu, float %i.j)
  %i.cw = shufflevector <8 x float> %i.cp, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.cw, <4 x float> %i.cn)
  %i.cy = extractelement <8 x float> %i.cp, i64 7
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cy, float %i.j)
  %i.da = insertelement <8 x float> poison, float %i.cr, i64 0
  %i.db = insertelement <8 x float> %i.da, float %i.ct, i64 1
  %i.dc = insertelement <8 x float> %i.db, float %i.cv, i64 2
  %i.dd = shufflevector <4 x float> %i.cx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = shufflevector <8 x float> %i.dc, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.df = insertelement <8 x float> %i.de, float %i.cz, i64 7
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  store <8 x float> %i.df, ptr %i.dg, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.dh = icmp eq i64 %index.next, 65536
  br i1 %i.dh, label %.loopexit, label %vector.body, !llvm.loop !157

.loopexit:                                        ; preds = %vector.body, %vector.body53, %vector.body64, %.preheader.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(524332) ptr @malloc(i64 noundef 524332) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !128
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 16, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.d, i32 noundef %i.f) #23
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %_turn_select_region_off.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_turn_select_region_off.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 84
  store i32 0, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.e, i32 noundef 0) #23
  br label %_turn_select_region_off.exit

_turn_select_region_off.exit:                     ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @change_image(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 8                ; 4 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 184) #23 ; 16 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(184) %i.b, i8 0, i64 184, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.d, i8 0, i64 44, i1 false)
  %i.e = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.8) #23 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !158
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.e, float noundef -1.000000e-01, float noundef 1.000000e-01) #23
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.g, i32 noundef 4) #23
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.h, ptr noundef %i.i) #23
  %i.j = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.10) #23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !159
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.j, float noundef -4.000000e+00, float noundef 4.000000e+00) #23
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #23
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.l, ptr noundef %i.m) #23
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #23
  %i.p = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.13) #23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !160
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.p, float noundef 1.000000e+02) #23
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.s = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.r, ptr noundef %i.s) #23
  %i.t = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.15) #23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !161
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.t, float noundef -1.000000e+00, float noundef 1.000000e+00) #23
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.v, ptr noundef %i.w) #23
  %i.x = tail call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.17) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.x, ptr %i.y, align 8, !tbaa !162
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.x, ptr noundef %i.z) #23
  %i.aa = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.19) #23
  %i.ab = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef %i.aa) #23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !121
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.ab, ptr noundef nonnull @.str.20) #23
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ad, ptr noundef %i.ae) #23
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.ag = tail call i64 @g_signal_connect_data(ptr noundef %i.af, ptr noundef nonnull @.str.22, ptr noundef nonnull @_color_picker_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ah = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.23) #23 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !163
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.ah, float noundef -1.000000e+00, float noundef 1.000000e+00) #23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ak = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.aj, ptr noundef %i.ak) #23
  %i.al = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.25) #23 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.al, ptr %i.am, align 8, !tbaa !164
  %i.an = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.al, ptr noundef %i.an) #23
  %i.ao = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.27) #23 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !165
  %i.aq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ao, ptr noundef %i.aq) #23
  %i.ar = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #23
  %i.as = tail call ptr @dt_action_button_new(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @_auto_levels_callback, ptr noundef %0, ptr noundef %i.ar, i32 noundef 0, i32 noundef 0) #23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !166
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1432
  %i.aw = load double, ptr %i.av, align 8, !tbaa !172
  %i.ax = fmul reassoc nsz arcp contract afn double %i.aw, 2.400000e+01
  %i.ay = fptosi double %i.ax to i32
  tail call void @gtk_widget_set_size_request(ptr noundef %i.as, i32 noundef -1, i32 noundef %i.ay) #23
  %i.az = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_colorpicker, i32 noundef 0, ptr noundef null) #23 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 4 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !37
  tail call void @dt_gui_add_class(ptr noundef %i.az, ptr noundef nonnull @.str.31) #23
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bb, ptr noundef %i.bc) #23
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !37
end_hunk_1
begin_hunk_2_@process:bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dv = fmul reassoc nsz arcp contract afn float %i.do, 8.192000e+03
  %i.dw = fptoui float %i.dv to i32
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ugt float %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.cm, align 64, !tbaa !15
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.eg = fcmp reassoc nsz arcp contract afn ult float %i.ec, 1.000000e+00
  br i1 %i.eg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.cs, align 4, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ec, 8.192000e+03
  %i.ek = fptoui float %i.ej to i32
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !15
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv78.i.i, %i.cv
  br i1 %exitcond.not, label %._crit_edge.i.i.loopexit, label %.lr.ph67.i.i

bb.x:                                             ; preds = %bb.h
  %i.ep = shl i32 %i.ca, 2
  %i.eq = mul i32 %i.ep, %i.cb                    ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i, label %_get_auto_exp_histogram.exit.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.cm, i64 32764 ; 6 uses
  %i.et = zext nneg i32 %i.eq to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.an, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.an ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i ; 3 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12 ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ugt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.cm, align 64, !tbaa !15
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ez = fcmp reassoc nsz arcp contract afn ult float %i.ev, 1.000000e+00
  br i1 %i.ez, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load i32, ptr %i.es, align 4, !tbaa !15
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.es, align 4, !tbaa !15
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fc = fmul reassoc nsz arcp contract afn float %i.ev, 8.192000e+03
  %i.fd = fptoui float %i.fc to i32
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !15
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12 ; 3 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ugt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.cm, align 64, !tbaa !15
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.fn = fcmp reassoc nsz arcp contract afn ult float %i.fj, 1.000000e+00
  br i1 %i.fn, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load i32, ptr %i.es, align 4, !tbaa !15
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.es, align 4, !tbaa !15
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fj, 8.192000e+03
  %i.fr = fptoui float %i.fq to i32
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !15
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12 ; 3 uses
  %i.fy = fcmp reassoc nsz arcp contract afn ugt float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fz = load i32, ptr %i.cm, align 64, !tbaa !15
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.cm, align 64, !tbaa !15
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.gb = fcmp reassoc nsz arcp contract afn ult float %i.fx, 1.000000e+00
  br i1 %i.gb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = load i32, ptr %i.es, align 4, !tbaa !15
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.es, align 4, !tbaa !15
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ge = fmul reassoc nsz arcp contract afn float %i.fx, 8.192000e+03
  %i.gf = fptoui float %i.ge to i32
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !15
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next.i.i, %i.et
  br i1 %i.gk, label %bb.y, label %_get_auto_exp_histogram.exit.i

_get_auto_exp_histogram.exit.i:                   ; preds = %bb.an, %._crit_edge.i.i.loopexit, %bb.x, %_get_selected_area.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_get_auto_exp_histogram.exit.i
  %index = phi i64 [ 0, %_get_auto_exp_histogram.exit.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gt, %vector.body ]
  %vec.phi319 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gu, %vector.body ]
  %vec.phi320 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gv, %vector.body ]
  %vec.phi321 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.gw, %vector.body ]
  %vec.phi322 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hf, %vector.body ]
  %vec.phi323 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hg, %vector.body ]
  %vec.phi324 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hh, %vector.body ]
  %vec.phi325 = phi <8 x float> [ zeroinitializer, %_get_auto_exp_histogram.exit.i ], [ %i.hi, %vector.body ]
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %_get_auto_exp_histogram.exit.i ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 96
  %wide.load = load <8 x i32>, ptr %i.gl, align 64, !tbaa !15
  %wide.load326 = load <8 x i32>, ptr %i.gm, align 32, !tbaa !15
  %wide.load327 = load <8 x i32>, ptr %i.gn, align 64, !tbaa !15
  %wide.load328 = load <8 x i32>, ptr %i.go, align 32, !tbaa !15
  %i.gp = uitofp <8 x i32> %wide.load to <8 x float> ; 2 uses
  %i.gq = uitofp <8 x i32> %wide.load326 to <8 x float> ; 2 uses
  %i.gr = uitofp <8 x i32> %wide.load327 to <8 x float> ; 2 uses
  %i.gs = uitofp <8 x i32> %wide.load328 to <8 x float> ; 2 uses
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi, %i.gp ; 2 uses
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi319, %i.gq ; 2 uses
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi320, %i.gr ; 2 uses
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi321, %i.gs ; 2 uses
  %i.gx = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.gy = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.gz = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.ha = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %i.gp, %i.gx
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gy
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gz
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %i.gs, %i.ha
  %i.hf = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %vec.phi322 ; 2 uses
  %i.hg = fadd reassoc nsz arcp contract afn <8 x float> %i.hc, %vec.phi323 ; 2 uses
  %i.hh = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, %vec.phi324 ; 2 uses
  %i.hi = fadd reassoc nsz arcp contract afn <8 x float> %i.he, %vec.phi325 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.hj = icmp eq i64 %index.next, 8192
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gt
  %bin.rdx329 = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %bin.rdx
  %bin.rdx330 = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %bin.rdx329
  %i.hk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx330) ; 6 uses
  %bin.rdx331 = fadd reassoc nsz arcp contract afn <8 x float> %i.hg, %i.hf
  %bin.rdx332 = fadd reassoc nsz arcp contract afn <8 x float> %i.hh, %bin.rdx331
  %bin.rdx333 = fadd reassoc nsz arcp contract afn <8 x float> %i.hi, %bin.rdx332
  %i.hl = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx333)
  %i.hm = fdiv reassoc nsz arcp contract afn float %i.hl, %i.hk ; 3 uses
  %i.hn = load i32, ptr %i.cm, align 64, !tbaa !15 ; 2 uses
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hk, 5.000000e-01 ; 2 uses
  %i.hp = sitofp reassoc nsz arcp contract afn i32 %i.hn to float
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %i.ho, %i.hp
  br i1 %i.hq, label %.lr.ph.i11.i, label %_auto_exposure.exit

.lr.ph.i11.i:                                     ; preds = %middle.block, %.lr.ph.i11.i
  %indvars.iv.i12.i = phi i64 [ %indvars.iv.next.i13.i, %.lr.ph.i11.i ], [ 0, %middle.block ]
  %.0245337.i.i = phi i32 [ %i.ht, %.lr.ph.i11.i ], [ %i.hn, %middle.block ]
  %indvars.iv.next.i13.i = add nuw nsw i64 %indvars.iv.i12.i, 1 ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i13.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !15
  %i.ht = add i32 %i.hs, %.0245337.i.i            ; 2 uses
  %i.hu = sitofp reassoc nsz arcp contract afn i32 %i.ht to float
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.ho, %i.hu
  br i1 %i.hv, label %.lr.ph.i11.i, label %._crit_edge.i14.i

._crit_edge.i14.i:                                ; preds = %.lr.ph.i11.i
  %i.hw = trunc nuw nsw i64 %indvars.iv.next.i13.i to i32
  %i.hx = fcmp reassoc nsz arcp contract afn olt float %i.hm, 1.000000e+00
  br i1 %i.hx, label %_auto_exposure.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i14.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.hy = fptosi float %i.hm to i32               ; 3 uses
  %i.hz = call i32 @llvm.smin.i32(i32 %i.hy, i32 8192) ; 2 uses
  %i.ia = icmp sgt i32 %i.hy, 0
  %i.ib = fmul reassoc nsz arcp contract afn float %i.hk, 1.250000e-01 ; 2 uses
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hk, 6.250000e-02 ; 2 uses
  br i1 %i.ia, label %.lr.ph342.i.i, label %.lr.ph349.i.i

.lr.ph342.i.i:                                    ; preds = %bb.ao
  %wide.trip.count.i.i = zext nneg i32 %i.hz to i64
  br label %bb.ap

.preheader334.i.i:                                ; preds = %._crit_edge413.i.i
  %i.id = fcmp reassoc nsz arcp contract afn oeq float %i.kn, 0.000000e+00
  %i.ie = icmp slt i32 %i.hy, 8192
  br i1 %i.ie, label %.lr.ph349.i.i, label %_auto_exposure.exit

.lr.ph349.i.i:                                    ; preds = %bb.ao, %.preheader334.i.i
  %.0242.lcssa.i21.i = phi i32 [ %i.hz, %.preheader334.i.i ], [ 0, %bb.ao ]
  %.1246.lcssa.i20.i = phi i32 [ %.2247.i.i, %.preheader334.i.i ], [ 0, %bb.ao ]
  %.0249.lcssa.i19.i = phi i1 [ %i.id, %.preheader334.i.i ], [ true, %bb.ao ]
  %i.if = zext nneg i32 %.0242.lcssa.i21.i to i64
  br label %bb.au

bb.ap:                                            ; preds = %._crit_edge413.i.i, %.lr.ph342.i.i
  %indvars.iv384.i.i = phi i64 [ 0, %.lr.ph342.i.i ], [ %indvars.iv.next385.i.i, %._crit_edge413.i.i ] ; 3 uses
  %.1246339.i.i = phi i32 [ 0, %.lr.ph342.i.i ], [ %.2247.i.i, %._crit_edge413.i.i ] ; 6 uses
  %.0249338.i.i = phi float [ 0.000000e+00, %.lr.ph342.i.i ], [ %i.kn, %._crit_edge413.i.i ]
  %i.ig = icmp slt i32 %.1246339.i.i, 8
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv384.i.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !15
  %i.ij = uitofp reassoc nsz arcp contract afn i32 %i.ii to float ; 2 uses
  br i1 %i.ig, label %bb.aq, label %._crit_edge413.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ik = sext i32 %.1246339.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ik ; 3 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !12
  %i.in = fadd reassoc nsz arcp contract afn float %i.im, %i.ij ; 3 uses
  store float %i.in, ptr %i.il, align 4, !tbaa !12
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.ib
  br i1 %i.io, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ip = icmp eq i32 %.1246339.i.i, 7
  br i1 %i.ip, label %bb.as, label %._crit_edge413.i.i

bb.as:                                            ; preds = %bb.ar
  %i.iq = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.ic
  br i1 %i.iq, label %bb.at, label %._crit_edge413.i.i

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.ir = trunc nuw nsw i64 %indvars.iv384.i.i to i32
  %i.is = uitofp nsz nneg i32 %i.ir to float
  %i.it = fpext reassoc nsz arcp contract afn float %i.is to double
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, 1.000000e+00 ; 3 uses
  %i.iv = fmul reassoc nsz arcp contract afn double %i.iu, 7.071000e-01 ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt double %i.iv, f0x2D30000000000000 ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn double %i.iu, f0x52A6A0902DE00D1B
  %i.iy = select reassoc nsz arcp contract afn i1 %i.iw, double %i.ix, double %i.iv
  %i.iz = bitcast double %i.iy to i64
  %i.ja = lshr i64 %i.iz, 52
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = and i32 %i.jb, 2047
  %.v.i.i.i.i = select i1 %i.iw, i32 -1322, i32 -1022
  %i.jd = add nsw i32 %i.jc, %.v.i.i.i.i          ; 4 uses
  %i.je = icmp sgt i32 %i.jd, 0
  %.lobit.i.i.i.i = sext i1 %i.je to i32          ; 2 uses
  %i.jf = sub nsw i32 %.lobit.i.i.i.i, %i.jd
  %i.jg = ashr i32 %i.jf, 9
  %i.jh = sub nsw i32 %i.jg, %.lobit.i.i.i.i      ; 2 uses
  %i.ji = shl nsw i32 %i.jh, 7
  %i.jj = add nsw i32 %i.ji, 1023
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 52
  %i.jm = bitcast i64 %i.jl to double             ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn double %i.jm, %i.jm ; 2 uses
  %.neg24.i.i.i = mul nsw i32 %i.jh, 3584
  %reass.sub = sub nsw i32 %.neg24.i.i.i, %i.jd
  %i.jo = add nsw i32 %reass.sub, 1023
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl i64 %i.jp, 52
  %i.jr = bitcast i64 %i.jq to double
  %i.js = fmul reassoc nsz arcp contract afn double %i.iu, %i.jr
  %i.jt = fmul reassoc nsz arcp contract afn double %i.jn, %i.jn
  %i.ju = fmul reassoc nsz arcp contract afn double %i.jt, %i.js ; 2 uses
  %i.jv = fadd reassoc nsz arcp contract afn double %i.ju, -1.000000e+00
  %i.jw = fadd reassoc nsz arcp contract afn double %i.ju, 1.000000e+00
  %i.jx = fdiv reassoc nsz arcp contract afn double %i.jv, %i.jw ; 3 uses
  %i.jy = fmul reassoc nsz arcp contract afn double %i.jx, %i.jx ; 7 uses
  %i.jz = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.jy, double f0x3FC2F81F00AD268B, double f0x3FC3990C7CAC8986)
  %i.ka = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.jz, double %i.jy, double f0x3FC746722937E5EC)
  %i.kb = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ka, double %i.jy, double f0x3FCC71C4C1A82632)
  %i.kc = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kb, double %i.jy, double f0x3FD2492494C5B7F2)
  %i.kd = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kc, double %i.jy, double f0x3FD999999996D5D4)
  %i.ke = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.kd, double %i.jy, double f0x3FE55555555555FF)
  %i.kf = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ke, double %i.jy, double 2.000000e+00)
  %i.kg = fmul reassoc nsz arcp contract afn double %i.kf, %i.jx
  %i.kh = sitofp reassoc nsz arcp contract afn i32 %i.jd to double
  %i.ki = fmul reassoc nsz arcp contract afn double %i.kh, f0x3FE62E42FEFA39EF
  %i.kj = fadd reassoc nsz arcp contract afn double %i.kg, %i.ki
  %i.kk = fmul reassoc nsz arcp contract afn double %i.kj, f0x3FF71547652B82FE
  %i.kl = fptrunc reassoc nsz arcp contract afn double %i.kk to float
  store float %i.kl, ptr %i.il, align 4, !tbaa !12
  %i.km = add nsw i32 %.1246339.i.i, 1
  br label %._crit_edge413.i.i

._crit_edge413.i.i:                               ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.2247.i.i = phi i32 [ %i.km, %bb.at ], [ %.1246339.i.i, %bb.ar ], [ 7, %bb.as ], [ %.1246339.i.i, %bb.ap ] ; 2 uses
  %i.kn = fadd reassoc nsz arcp contract afn float %.0249338.i.i, %i.ij ; 2 uses
  %indvars.iv.next385.i.i = add nuw nsw i64 %indvars.iv384.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next385.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader334.i.i, label %bb.ap

bb.au:                                            ; preds = %._crit_edge414.i.i, %.lr.ph349.i.i
  %indvars.iv387.i.i = phi i64 [ %i.if, %.lr.ph349.i.i ], [ %indvars.iv.next388.i.i, %._crit_edge414.i.i ] ; 3 uses
  %.3347.i.i = phi i32 [ %.1246.lcssa.i20.i, %.lr.ph349.i.i ], [ %.4.i.i, %._crit_edge414.i.i ] ; 6 uses
  %.0250346.i.i = phi float [ 0.000000e+00, %.lr.ph349.i.i ], [ %i.mv, %._crit_edge414.i.i ]
  %i.ko = icmp slt i32 %.3347.i.i, 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv387.i.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !15
  %i.kr = uitofp reassoc nsz arcp contract afn i32 %i.kq to float ; 2 uses
  br i1 %i.ko, label %bb.av, label %._crit_edge414.i.i

bb.av:                                            ; preds = %bb.au
  %i.ks = sext i32 %.3347.i.i to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ks ; 3 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !12
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.kr ; 3 uses
  store float %i.kv, ptr %i.kt, align 4, !tbaa !12
  %i.kw = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %i.ib
  br i1 %i.kw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kx = icmp eq i32 %.3347.i.i, 7
  br i1 %i.kx, label %bb.ax, label %._crit_edge414.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %i.ic
  br i1 %i.ky, label %bb.ay, label %._crit_edge414.i.i

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.kz = trunc nuw nsw i64 %indvars.iv387.i.i to i32
  %i.la = uitofp nsz nneg i32 %i.kz to float
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, 1.000000e+00
  %i.lc = fpext reassoc nsz arcp contract afn float %i.lb to double ; 3 uses
  %i.ld = fmul reassoc nsz arcp contract afn double %i.lc, 7.071000e-01 ; 2 uses
  %i.le = fcmp reassoc nsz arcp contract afn olt double %i.ld, f0x2D30000000000000 ; 2 uses
  %i.lf = fmul reassoc nsz arcp contract afn double %i.lc, f0x52A6A0902DE00D1B
  %i.lg = select reassoc nsz arcp contract afn i1 %i.le, double %i.lf, double %i.ld
  %i.lh = bitcast double %i.lg to i64
  %i.li = lshr i64 %i.lh, 52
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = and i32 %i.lj, 2047
  %.v.i.i271.i.i = select i1 %i.le, i32 -1322, i32 -1022
  %i.ll = add nsw i32 %i.lk, %.v.i.i271.i.i       ; 4 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  %.lobit.i.i272.i.i = sext i1 %i.lm to i32       ; 2 uses
  %i.ln = sub nsw i32 %.lobit.i.i272.i.i, %i.ll
  %i.lo = ashr i32 %i.ln, 9
  %i.lp = sub nsw i32 %i.lo, %.lobit.i.i272.i.i   ; 2 uses
  %i.lq = shl nsw i32 %i.lp, 7
  %i.lr = add nsw i32 %i.lq, 1023
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 52
  %i.lu = bitcast i64 %i.lt to double             ; 2 uses
  %i.lv = fmul reassoc nsz arcp contract afn double %i.lu, %i.lu ; 2 uses
  %.neg24.i273.i.i = mul nsw i32 %i.lp, 3584
  %reass.sub241 = sub nsw i32 %.neg24.i273.i.i, %i.ll
  %i.lw = add nsw i32 %reass.sub241, 1023
  %i.lx = zext i32 %i.lw to i64
  %i.ly = shl i64 %i.lx, 52
  %i.lz = bitcast i64 %i.ly to double
  %i.ma = fmul reassoc nsz arcp contract afn double %i.lz, %i.lc
  %i.mb = fmul reassoc nsz arcp contract afn double %i.lv, %i.lv
  %i.mc = fmul reassoc nsz arcp contract afn double %i.mb, %i.ma ; 2 uses
  %i.md = fadd reassoc nsz arcp contract afn double %i.mc, -1.000000e+00
  %i.me = fadd reassoc nsz arcp contract afn double %i.mc, 1.000000e+00
  %i.mf = fdiv reassoc nsz arcp contract afn double %i.md, %i.me ; 3 uses
  %i.mg = fmul reassoc nsz arcp contract afn double %i.mf, %i.mf ; 7 uses
  %i.mh = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mg, double f0x3FC2F81F00AD268B, double f0x3FC3990C7CAC8986)
  %i.mi = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mh, double %i.mg, double f0x3FC746722937E5EC)
  %i.mj = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mi, double %i.mg, double f0x3FCC71C4C1A82632)
  %i.mk = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mj, double %i.mg, double f0x3FD2492494C5B7F2)
  %i.ml = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mk, double %i.mg, double f0x3FD999999996D5D4)
  %i.mm = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.ml, double %i.mg, double f0x3FE55555555555FF)
  %i.mn = call reassoc nsz arcp contract afn double @llvm.fma.f64(double %i.mm, double %i.mg, double 2.000000e+00)
  %i.mo = fmul reassoc nsz arcp contract afn double %i.mn, %i.mf
  %i.mp = sitofp reassoc nsz arcp contract afn i32 %i.ll to double
  %i.mq = fmul reassoc nsz arcp contract afn double %i.mp, f0x3FE62E42FEFA39EF
  %i.mr = fadd reassoc nsz arcp contract afn double %i.mo, %i.mq
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, f0x3FF71547652B82FE
  %i.mt = fptrunc reassoc nsz arcp contract afn double %i.ms to float
  store float %i.mt, ptr %i.kt, align 4, !tbaa !12
  %i.mu = add nsw i32 %.3347.i.i, 1
  br label %._crit_edge414.i.i

._crit_edge414.i.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  %.4.i.i = phi i32 [ %i.mu, %bb.ay ], [ %.3347.i.i, %bb.aw ], [ 7, %bb.ax ], [ %.3347.i.i, %bb.au ]
  %i.mv = fadd reassoc nsz arcp contract afn float %.0250346.i.i, %i.kr ; 2 uses
  %indvars.iv.next388.i.i = add nuw nsw i64 %indvars.iv387.i.i, 1 ; 2 uses
  %exitcond391.not.i.i = icmp eq i64 %indvars.iv.next388.i.i, 8192
  br i1 %exitcond391.not.i.i, label %._crit_edge350.i.i, label %bb.au

._crit_edge350.i.i:                               ; preds = %._crit_edge414.i.i
  %i.mw = fcmp reassoc nsz arcp contract afn oeq float %i.mv, 0.000000e+00
  %or.cond3.i.i = select i1 %.0249.lcssa.i19.i, i1 true, i1 %i.mw
  br i1 %or.cond3.i.i, label %_auto_exposure.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge350.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.my = load float, ptr %i.mx, align 8, !tbaa !12 ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ule float %i.my, f0x41102D33 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4 ; 4 uses
  br i1 %i.mz, label %..preheader.i_crit_edge.i, label %bb.ba

..preheader.i_crit_edge.i:                        ; preds = %bb.az
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre48.i = load float, ptr %.phi.trans.insert47.i, align 16, !tbaa !12
  br label %.preheader.i.i

bb.ba:                                            ; preds = %bb.az
  %i.na = fmul reassoc nsz arcp contract afn float %.pre.i, 1.500000e+00
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nc = load float, ptr %i.nb, align 16, !tbaa !12 ; 2 uses
  %i.nd = fmul reassoc nsz arcp contract afn float %i.nc, 5.000000e-01
  %i.ne = fsub reassoc nsz arcp contract afn float %i.na, %i.nd
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ba, %..preheader.i_crit_edge.i
  %i.nf = phi float [ %i.nc, %bb.ba ], [ %.pre48.i, %..preheader.i_crit_edge.i ] ; 2 uses
  %i.ng = phi float [ %i.ne, %bb.ba ], [ %i.my, %..preheader.i_crit_edge.i ] ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !12 ; 3 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ule float %i.ni, f0x41102D33 ; 2 uses
  %i.nk = fmul reassoc nsz arcp contract afn float %i.ng, 1.500000e+00
  %i.nl = fmul reassoc nsz arcp contract afn float %.pre.i, 5.000000e-01
  %i.nm = fsub reassoc nsz arcp contract afn float %i.nk, %i.nl
  %i.nn = select i1 %i.nj, float %i.ni, float %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.np = load float, ptr %i.no, align 4, !tbaa !12 ; 2 uses
  %i.nq = fcmp reassoc nsz arcp contract afn oeq float %i.np, 0.000000e+00
  %i.nr = load float, ptr %i.a, align 16
  %i.ns = select i1 %i.nq, float %i.nr, float %i.np ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nu = load float, ptr %i.nt, align 8, !tbaa !12 ; 2 uses
  %i.nv = fcmp reassoc nsz arcp contract afn oeq float %i.nu, 0.000000e+00
  %i.nw = select i1 %i.nv, float %i.ns, float %i.nu ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !12 ; 2 uses
  %i.nz = fcmp reassoc nsz arcp contract afn oeq float %i.ny, 0.000000e+00
  %i.oa = select i1 %i.nz, float %i.nw, float %i.ny ; 4 uses
  %i.ob = fcmp reassoc nsz arcp contract afn oeq float %i.nf, 0.000000e+00
  %i.oc = select i1 %i.ob, float %i.oa, float %i.nf ; 3 uses
  %i.od = fcmp reassoc nsz arcp contract afn oeq float %.pre.i, 0.000000e+00
  %i.oe = select i1 %i.od, float %i.oc, float %.pre.i ; 3 uses
  %i.of = fcmp reassoc nsz arcp contract afn oeq float %i.ng, 0.000000e+00
  %i.og = select i1 %i.of, float %i.oe, float %i.ng ; 4 uses
  %i.oh = fcmp reassoc nsz arcp contract afn oeq float %i.nn, 0.000000e+00
  %i.oi = select i1 %i.oh, float %i.og, float %i.nn
  %i.oj = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.nw, i64 1
  %i.ol = insertelement <4 x float> %i.ok, float %i.oc, i64 2
  %i.om = insertelement <4 x float> %i.ol, float %i.oe, i64 3 ; 2 uses
  %i.on = insertelement <4 x float> poison, float %i.nw, i64 0
  %i.oo = insertelement <4 x float> %i.on, float %i.ns, i64 1
  %i.op = insertelement <4 x float> %i.oo, float %i.oa, i64 2 ; 2 uses
  %i.oq = insertelement <4 x float> %i.op, float %i.oc, i64 3
  %i.or = fsub reassoc nsz arcp contract afn <4 x float> %i.om, %i.oq
  %i.os = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ot = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ou = fsub reassoc nsz arcp contract afn <4 x float> %i.os, %i.ot ; 2 uses
  %i.ov = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ou, splat (float 5.000000e-01)
  %i.ow = select <4 x i1> %i.ov, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ou
  %i.ox = fdiv reassoc nsz arcp contract afn <4 x float> %i.or, %i.ow
  %i.oy = fsub reassoc nsz arcp contract afn float %i.og, %i.oe
  %i.oz = fsub reassoc nsz arcp contract afn float %i.og, %i.oa ; 2 uses
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.oz, 5.000000e-01
  %i.pb = select reassoc nsz arcp contract afn i1 %i.pa, float 5.000000e-01, float %i.oz
  %i.pc = fdiv reassoc nsz arcp contract afn float %i.oy, %i.pb
  %op.rdx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.pc, <4 x float> %i.ox)
  %i.pd = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01 ; 2 uses
  %i.pe = fcmp reassoc nsz arcp contract afn ugt float %i.pd, 0.000000e+00
  br i1 %i.pe, label %.preheader.i, label %_auto_exposure.exit

.preheader.i:                                     ; preds = %.preheader.i.i, %.preheader.i
  %indvars.iv400.in.i.i = phi i64 [ %indvars.iv400.i.i, %.preheader.i ], [ 8192, %.preheader.i.i ] ; 2 uses
  %indvars.iv400.i.i = add nsw i64 %indvars.iv400.in.i.i, -1 ; 3 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv400.i.i
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !15
  %i.ph = icmp eq i32 %i.pg, 0
  %i.pi = icmp samesign ugt i64 %indvars.iv400.in.i.i, 2
  %i.pj = and i1 %i.pi, %i.ph
  br i1 %i.pj, label %.preheader.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i
  %i.pk = trunc nsw i64 %indvars.iv400.i.i to i32
  %i.pl = fmul reassoc nsz arcp contract afn float %i.hk, %i.cd
  %i.pm = fptosi float %i.pl to i32               ; 10 uses
  br label %.lr.ph358.i.i

.lr.ph358.i.i:                                    ; preds = %bb.bc, %bb.bb
  %indvars.iv.i = phi i64 [ 8191, %bb.bb ], [ %indvars.iv.next.i.8, %bb.bc ] ; 12 uses
  %.1236355.i.i = phi i32 [ 0, %bb.bb ], [ %i.qn, %bb.bc ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !15
  %i.pp = add i32 %i.po, %.1236355.i.i            ; 2 uses
  %.not.i.i = icmp ugt i32 %i.pp, %i.pm
  br i1 %.not.i.i, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.1

.lr.ph358.i.i.1:                                  ; preds = %.lr.ph358.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !15
  %i.ps = add i32 %i.pr, %i.pp                    ; 2 uses
  %.not.i.i.1 = icmp ugt i32 %i.ps, %i.pm
  br i1 %.not.i.i.1, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.2

.lr.ph358.i.i.2:                                  ; preds = %.lr.ph358.i.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.1
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !15
  %i.pv = add i32 %i.pu, %i.ps                    ; 2 uses
  %.not.i.i.2 = icmp ugt i32 %i.pv, %i.pm
  br i1 %.not.i.i.2, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.3

.lr.ph358.i.i.3:                                  ; preds = %.lr.ph358.i.i.2
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.2
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !15
  %i.py = add i32 %i.px, %i.pv                    ; 2 uses
  %.not.i.i.3 = icmp ugt i32 %i.py, %i.pm
  br i1 %.not.i.i.3, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.4

.lr.ph358.i.i.4:                                  ; preds = %.lr.ph358.i.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.3
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !15
  %i.qb = add i32 %i.qa, %i.py                    ; 2 uses
  %.not.i.i.4 = icmp ugt i32 %i.qb, %i.pm
  br i1 %.not.i.i.4, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.5

.lr.ph358.i.i.5:                                  ; preds = %.lr.ph358.i.i.4
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, -5 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !15
  %i.qe = add i32 %i.qd, %i.qb                    ; 2 uses
  %.not.i.i.5 = icmp ugt i32 %i.qe, %i.pm
  br i1 %.not.i.i.5, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.6

.lr.ph358.i.i.6:                                  ; preds = %.lr.ph358.i.i.5
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, -6 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.5
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !15
  %i.qh = add i32 %i.qg, %i.qe                    ; 2 uses
  %.not.i.i.6 = icmp ugt i32 %i.qh, %i.pm
  br i1 %.not.i.i.6, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.7

.lr.ph358.i.i.7:                                  ; preds = %.lr.ph358.i.i.6
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, -7 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.6
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !15
  %i.qk = add i32 %i.qj, %i.qh                    ; 2 uses
  %.not.i.i.7 = icmp ugt i32 %i.qk, %i.pm
  br i1 %.not.i.i.7, label %.lr.ph364.preheader.i.i, label %.lr.ph358.i.i.8

.lr.ph358.i.i.8:                                  ; preds = %.lr.ph358.i.i.7
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i.7
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !15
  %i.qn = add i32 %i.qm, %i.qk                    ; 2 uses
  %.not.i.i.8 = icmp ugt i32 %i.qn, %i.pm
  br i1 %.not.i.i.8, label %.lr.ph364.preheader.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph358.i.i.8
  %indvars.iv.next.i.8 = add nsw i64 %indvars.iv.i, -9
  %i.qo = icmp sgt i64 %indvars.iv.i, 10
  br i1 %i.qo, label %.lr.ph358.i.i, label %.critedge5.i.i

.lr.ph364.preheader.i.i:                          ; preds = %.lr.ph358.i.i.8, %.lr.ph358.i.i.7, %.lr.ph358.i.i.6, %.lr.ph358.i.i.5, %.lr.ph358.i.i.4, %.lr.ph358.i.i.3, %.lr.ph358.i.i.2, %.lr.ph358.i.i.1, %.lr.ph358.i.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.lr.ph358.i.i ], [ %indvars.iv.next.i, %.lr.ph358.i.i.1 ], [ %indvars.iv.next.i.1, %.lr.ph358.i.i.2 ], [ %indvars.iv.next.i.2, %.lr.ph358.i.i.3 ], [ %indvars.iv.next.i.3, %.lr.ph358.i.i.4 ], [ %indvars.iv.next.i.4, %.lr.ph358.i.i.5 ], [ %indvars.iv.next.i.5, %.lr.ph358.i.i.6 ], [ %indvars.iv.next.i.6, %.lr.ph358.i.i.7 ], [ %indvars.iv.next.i.7, %.lr.ph358.i.i.8 ]
  %i.qp = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32 ; 3 uses
  %i.qq = add nsw i32 %i.qp, -1                   ; 2 uses
  %wide.trip.count406.i.i = zext nneg i32 %i.qq to i64
  br label %.lr.ph364.i.i

.lr.ph364.i.i:                                    ; preds = %bb.bd, %.lr.ph364.preheader.i.i
  %indvars.iv403.i.i = phi i64 [ 0, %.lr.ph364.preheader.i.i ], [ %indvars.iv.next404.i.i, %bb.bd ] ; 3 uses
  %.2237362.i.i = phi i32 [ 0, %.lr.ph364.preheader.i.i ], [ %i.qt, %bb.bd ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv403.i.i
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !15
  %i.qt = add i32 %i.qs, %.2237362.i.i            ; 2 uses
  %.not264.i.i = icmp ugt i32 %i.qt, %i.pm
  br i1 %.not264.i.i, label %.critedge5.loopexit.split.loop.exit457.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph364.i.i
  %indvars.iv.next404.i.i = add nuw nsw i64 %indvars.iv403.i.i, 1 ; 2 uses
  %exitcond407.not.i.i = icmp eq i64 %indvars.iv.next404.i.i, %wide.trip.count406.i.i
  br i1 %exitcond407.not.i.i, label %.critedge5.i.i, label %.lr.ph364.i.i

.critedge5.loopexit.split.loop.exit457.i.i:       ; preds = %.lr.ph364.i.i
  %i.qu = trunc nuw nsw i64 %indvars.iv403.i.i to i32
  br label %.critedge5.i.i

.critedge5.i.i:                                   ; preds = %bb.bc, %bb.bd, %.critedge5.loopexit.split.loop.exit457.i.i
  %.0233.lcssa.i23.i = phi i32 [ %i.qp, %bb.bd ], [ %i.qp, %.critedge5.loopexit.split.loop.exit457.i.i ], [ 1, %bb.bc ]
  %.0232.lcssa.i.i = phi i32 [ %i.qq, %bb.bd ], [ %i.qu, %.critedge5.loopexit.split.loop.exit457.i.i ], [ 0, %bb.bc ]
  %i.qv = shl i32 %i.pk, 3
  %i.qw = shl i32 %.0233.lcssa.i23.i, 3
  %i.qx = fmul reassoc nsz arcp contract afn float %i.hm, 8.000000e+00 ; 2 uses
  %i.qy = shl i32 %i.hw, 3
  %i.qz = shl i32 %.0232.lcssa.i.i, 3
  %i.ra = fmul reassoc nsz arcp contract afn float %i.cf, 6.553600e+02
  %i.rb = sitofp reassoc nsz arcp contract afn i32 %i.qz to float ; 3 uses
  %i.rc = fsub reassoc nsz arcp contract afn float %i.qx, %i.rb
  %i.rd = fmul reassoc nsz arcp contract afn float %i.cg, %i.rb
  %i.re = fadd reassoc nsz arcp contract afn float %i.rc, %i.rd
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.ra, %i.re
  %i.rg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rf)
  %i.rh = fmul reassoc nsz arcp contract afn float %i.rg, f0x3FB8AA3B ; 3 uses
  %i.ri = and i1 %i.mz, %i.nj                     ; 3 uses
  %i.rj = sitofp reassoc nsz arcp contract afn i32 %i.qv to float ; 2 uses
  %i.rk = fdiv reassoc nsz arcp contract afn float 6.553600e+04, %i.rj
  %i.rl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rk)
  %i.rm = fmul reassoc nsz arcp contract afn float %i.rl, f0x3FB8AA3B ; 2 uses
  %..i.i = select i1 %i.ri, float %i.ni, float %i.oi
  %.462.i.i = select i1 %i.ri, float %i.ng, float %i.rm
  %.463.i.i = select i1 %i.ri, float %i.rm, float %i.og
  %.neg329.i.i = fmul reassoc nsz arcp contract afn float %..i.i, -2.000000e+00
  %i.rn = fadd reassoc nsz arcp contract afn float %.neg329.i.i, 1.250000e+01
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, %.462.i.i
  %i.rp = fadd reassoc nsz arcp contract afn float %i.ro, %.463.i.i
  %.0229.i.i = fmul reassoc nsz arcp contract afn float %i.rp, 5.000000e-01 ; 3 uses
  %i.rq = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rh) ; 3 uses
  %i.rr = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0229.i.i) ; 3 uses
  %i.rs = fsub reassoc nsz arcp contract afn float %i.rq, %i.rr
  %i.rt = fcmp reassoc nsz arcp contract afn ogt float %i.rs, 1.000000e+00
  br i1 %i.rt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge5.i.i
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rh, %i.rr
  %i.rv = fmul reassoc nsz arcp contract afn float %i.rq, %.0229.i.i
  %i.rw = fadd reassoc nsz arcp contract afn float %i.rv, %i.ru
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rq, %i.rr
  %i.ry = fdiv reassoc nsz arcp contract afn float %i.rw, %i.rx
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge5.i.i
  %i.rz = fpext reassoc nsz arcp contract afn float %i.rh to double
  %i.sa = fpext reassoc nsz arcp contract afn float %.0229.i.i to double
  %i.sb = fadd reassoc nsz arcp contract afn double %i.rz, %i.sa
  %i.sc = fmul reassoc nsz arcp contract afn double %i.sb, 5.000000e-01
  %i.sd = fptrunc reassoc nsz arcp contract afn double %i.sc to float
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0215.i.i = phi nsz float [ %i.ry, %bb.be ], [ %i.sd, %bb.bf ] ; 5 uses
  %i.se = fmul reassoc nsz arcp contract afn float %.0215.i.i, f0x3F317218
  %i.sf = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.se) ; 3 uses
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, 6.553600e+04
  %i.sh = fdiv reassoc nsz arcp contract afn float %i.sg, %i.rj
  %i.si = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.sh) ; 3 uses
  %i.sj = fmul reassoc nsz arcp contract afn float %i.si, %i.rb ; 4 uses
  %i.sk = sitofp reassoc nsz arcp contract afn i32 %i.qw to float ; 2 uses
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, f0x38133333
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, %i.sf
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sm, -2.300000e+00
  %i.so = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0215.i.i, float 0.000000e+00)
  %i.sp = fadd reassoc nsz arcp contract afn float %i.so, 1.000000e+00
  %i.sq = fdiv reassoc nsz arcp contract afn float %i.sn, %i.sp
  %i.sr = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sq, float 1.000000e+02)
  %i.ss = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sr, float 0.000000e+00) ; 2 uses
  %i.st = sitofp reassoc nsz arcp contract afn i32 %i.qy to float
  %i.su = fmul reassoc nsz arcp contract afn float %i.qx, %i.st
  %i.sv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.su)
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sf, %i.sv ; 2 uses
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, f0x37800000 ; 3 uses
  %i.sy = fcmp reassoc nsz arcp contract afn olt float %i.sx, 1.000000e-01
  %i.sz = fsub reassoc nsz arcp contract afn float %i.cg, %i.sx
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sz, 1.500000e+01 ; 2 uses
  br i1 %i.sy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tb = fdiv reassoc nsz arcp contract afn float %i.ta, %i.sx
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.tc = fpext reassoc nsz arcp contract afn float %i.ta to double
  %i.td = fmul reassoc nsz arcp contract afn float %i.sw, f0x35AA9931
  %i.te = fpext reassoc nsz arcp contract afn float %i.td to double
  %i.tf = fsub reassoc nsz arcp contract afn double 1.083300e-01, %i.te
  %i.tg = fdiv reassoc nsz arcp contract afn double %i.tc, %i.tf
  %i.th = fptrunc reassoc nsz arcp contract afn double %i.tg to float
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0222.i.i = phi nsz float [ %i.tb, %bb.bh ], [ %i.th, %bb.bi ] ; 2 uses
  %i.ti = fcmp reassoc nsz arcp contract afn olt float %.0222.i.i, 0.000000e+00
  %i.tj = select reassoc nsz arcp contract afn i1 %i.ti, float 0.000000e+00, float %.0222.i.i
  %i.tk = fmul reassoc nsz arcp contract afn float %i.tj, 2.500000e-01 ; 2 uses
  %i.tl = fsub reassoc nsz arcp contract afn float 1.100000e+00, %i.pd
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, %i.cf ; 2 uses
  %i.tn = fcmp reassoc nsz arcp contract afn ogt float %i.tm, 1.000000e+02
  %i.to = select reassoc nsz arcp contract afn i1 %i.tn, float 1.000000e+02, float %i.tm ; 2 uses
  %i.tp = fcmp reassoc nsz arcp contract afn olt float %i.to, 0.000000e+00
  %i.tq = select reassoc nsz arcp contract afn i1 %i.tp, float 0.000000e+00, float %i.to
  %i.tr = fmul reassoc nsz arcp contract afn float %i.si, %i.sk
  %i.ts = fpext reassoc nsz arcp contract afn float %i.tr to double ; 3 uses
  %i.tt = fcmp reassoc nsz arcp contract afn ugt double %i.ts, 3.040000e-03
  br i1 %i.tt, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.tu = fmul reassoc nsz arcp contract afn double %i.ts, 1.292000e+01
  br label %gamma2.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.tv = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ts)
  %i.tw = fmul reassoc nsz arcp contract afn double %i.tv, f0x3FDAAAAAAAAAAAAB
  %i.tx = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.tw)
  %i.ty = fmul reassoc nsz arcp contract afn double %i.tx, 1.055000e+00
  %i.tz = fadd reassoc nsz arcp contract afn double %i.ty, -5.500000e-02
  br label %gamma2.exit.i.i

gamma2.exit.i.i:                                  ; preds = %bb.bl, %bb.bk
  %i.ua = phi reassoc nsz arcp contract afn double [ %i.tu, %bb.bk ], [ %i.tz, %bb.bl ] ; 3 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.si, 8.000000e+00 ; 3 uses
  %invariant.op359 = fadd reassoc nsz arcp contract afn float %i.ub, %i.ub
  br label %.lr.ph371.i.i

._crit_edge372.i.i:                               ; preds = %gamma2.exit275.i.i.1
  %i.uc = fdiv reassoc nsz arcp contract afn float %i.vl, %i.hk ; 2 uses
  %i.ud = fcmp reassoc nsz arcp contract afn olt float %i.sj, %i.uc
  br i1 %i.ud, label %bb.bq, label %bb.br

.lr.ph371.i.i:                                    ; preds = %gamma2.exit275.i.i.1, %gamma2.exit.i.i
  %indvars.iv408.i.i = phi i64 [ 0, %gamma2.exit.i.i ], [ %indvars.iv.next409.i.i.1, %gamma2.exit275.i.i.1 ] ; 3 uses
  %.0216369.i.i = phi float [ 0.000000e+00, %gamma2.exit.i.i ], [ %.reass, %gamma2.exit275.i.i.1 ] ; 3 uses
  %.0217368.i.i = phi float [ 0.000000e+00, %gamma2.exit.i.i ], [ %i.vl, %gamma2.exit275.i.i.1 ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv408.i.i
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !15
  %i.ug = uitofp reassoc nsz arcp contract afn i32 %i.uf to double
  %i.uh = fpext reassoc nsz arcp contract afn float %.0216369.i.i to double ; 3 uses
  %i.ui = fcmp reassoc nsz arcp contract afn ugt double %i.uh, 3.040000e-03
  br i1 %i.ui, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph371.i.i
  %i.uj = fmul reassoc nsz arcp contract afn double %i.uh, 1.292000e+01
  br label %gamma2.exit275.i.i

bb.bn:                                            ; preds = %.lr.ph371.i.i
  %i.uk = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.uh)
  %i.ul = fmul reassoc nsz arcp contract afn double %i.uk, f0x3FDAAAAAAAAAAAAB
  %i.um = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ul)
  %i.un = fmul reassoc nsz arcp contract afn double %i.um, 1.055000e+00
  %i.uo = fadd reassoc nsz arcp contract afn double %i.un, -5.500000e-02
  br label %gamma2.exit275.i.i

gamma2.exit275.i.i:                               ; preds = %bb.bn, %bb.bm
  %i.up = phi reassoc nsz arcp contract afn double [ %i.uj, %bb.bm ], [ %i.uo, %bb.bn ]
  %i.uq = fmul reassoc nsz arcp contract afn double %i.up, %i.ug
  %i.ur = fpext reassoc nsz arcp contract afn float %.0217368.i.i to double
  %i.us = fadd reassoc nsz arcp contract afn double %i.uq, %i.ur
  %i.ut = fptrunc reassoc nsz arcp contract afn double %i.us to float
  %i.uu = fadd reassoc nsz arcp contract afn float %.0216369.i.i, %i.ub
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv408.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !15
  %i.uy = uitofp reassoc nsz arcp contract afn i32 %i.ux to double
  %i.uz = fpext reassoc nsz arcp contract afn float %i.uu to double ; 3 uses
  %i.va = fcmp reassoc nsz arcp contract afn ugt double %i.uz, 3.040000e-03
  br i1 %i.va, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %gamma2.exit275.i.i
  %i.vb = fmul reassoc nsz arcp contract afn double %i.uz, 1.292000e+01
  br label %gamma2.exit275.i.i.1

bb.bp:                                            ; preds = %gamma2.exit275.i.i
  %i.vc = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.uz)
  %i.vd = fmul reassoc nsz arcp contract afn double %i.vc, f0x3FDAAAAAAAAAAAAB
  %i.ve = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.vd)
  %i.vf = fmul reassoc nsz arcp contract afn double %i.ve, 1.055000e+00
  %i.vg = fadd reassoc nsz arcp contract afn double %i.vf, -5.500000e-02
  br label %gamma2.exit275.i.i.1

gamma2.exit275.i.i.1:                             ; preds = %bb.bp, %bb.bo
  %i.vh = phi reassoc nsz arcp contract afn double [ %i.vb, %bb.bo ], [ %i.vg, %bb.bp ]
  %i.vi = fmul reassoc nsz arcp contract afn double %i.vh, %i.uy
  %i.vj = fpext reassoc nsz arcp contract afn float %i.ut to double
  %i.vk = fadd reassoc nsz arcp contract afn double %i.vi, %i.vj
  %i.vl = fptrunc reassoc nsz arcp contract afn double %i.vk to float ; 2 uses
  %.reass = fadd reassoc nsz arcp contract afn float %.0216369.i.i, %invariant.op359
  %indvars.iv.next409.i.i.1 = add nuw nsw i64 %indvars.iv408.i.i, 2 ; 2 uses
  %exitcond412.not.i.i.1 = icmp eq i64 %indvars.iv.next409.i.i.1, 8192
  br i1 %exitcond412.not.i.i.1, label %._crit_edge372.i.i, label %.lr.ph371.i.i

bb.bq:                                            ; preds = %._crit_edge372.i.i
  %i.vm = fsub reassoc nsz arcp contract afn float %i.uc, %i.sj
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, f0x3FAAAAAB
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vn, %i.sj
  %i.vp = fptosi float %i.vo to i32
  %i.vq = sitofp reassoc nsz arcp contract afn i32 %i.vp to double ; 2 uses
  %i.vr = fcmp reassoc nsz arcp contract afn olt double %i.ua, %i.vq
  %spec.select.i.i = select nsz i1 %i.vr, double %i.vq, double %i.ua
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge372.i.i
  %.1219.i.i = phi nsz double [ %spec.select.i.i, %bb.bq ], [ %i.ua, %._crit_edge372.i.i ] ; 3 uses
  %i.vs = fcmp reassoc nsz arcp contract afn ugt double %.1219.i.i, 3.928000e-02
  br i1 %i.vs, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vt = fmul reassoc nsz arcp contract afn double %.1219.i.i, f0x3FB3D0722149B580
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.vu = fmul reassoc nsz arcp contract afn double %.1219.i.i, f0x3FEE54EDCD0AEB60
  %i.vv = fadd reassoc nsz arcp contract afn double %i.vu, f0x3FAAB1232F514A03
  %i.vw = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.vv)
  %i.vx = fmul reassoc nsz arcp contract afn double %i.vw, 2.400000e+00
  %i.vy = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.vx)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.vz = phi reassoc nsz arcp contract afn double [ %i.vt, %bb.bs ], [ %i.vy, %bb.bt ]
  %i.wa = fpext reassoc nsz arcp contract afn float %i.sj to double
  %i.wb = fdiv reassoc nsz arcp contract afn double %i.wa, %i.vz
  %i.wc = fptrunc reassoc nsz arcp contract afn double %i.wb to float
  %i.wd = fcmp reassoc nsz arcp contract afn ogt float %.0215.i.i, 1.200000e+01
  %i.we = fcmp reassoc nsz arcp contract afn olt float %.0215.i.i, -5.000000e+00
  %i.wf = select reassoc nsz arcp contract afn i1 %i.we, float -5.000000e+00, float %.0215.i.i
  %i.wg = select reassoc nsz arcp contract afn i1 %i.wd, float 1.200000e+01, float %i.wf ; 2 uses
  %i.wh = fcmp reassoc nsz arcp contract afn olt float %i.tk, 1.000000e+02
  %i.wi = select reassoc nsz arcp contract afn i1 %i.wh, float %i.tk, float 1.000000e+02 ; 2 uses
  %i.wj = fcmp reassoc nsz arcp contract afn olt float %i.wi, -1.000000e+02
  %i.wk = select reassoc nsz arcp contract afn i1 %i.wj, float -1.000000e+02, float %i.wi
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wc, f0x3C23D70A ; 2 uses
  %i.wm = fmul reassoc nsz arcp contract afn float %i.wk, f0x3C23D70A ; 2 uses
  %i.wn = fmul reassoc nsz arcp contract afn float %i.tq, f0x3C23D70A ; 2 uses
  %i.wo = fcmp ord float %i.wg, 0.000000e+00
  br i1 %i.wo, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.57) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2.i.i = phi nsz float [ %i.wg, %bb.bu ], [ 0.000000e+00, %bb.bv ] ; 2 uses
  %i.wp = fcmp ord float %i.wl, 0.000000e+00
  br i1 %i.wp, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.58) #23
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1221.i.i = phi nsz float [ %i.wl, %bb.bw ], [ 0.000000e+00, %bb.bx ] ; 2 uses
  %i.wq = fcmp ord float %i.wm, 0.000000e+00
  br i1 %i.wq, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.59) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.2224.i.i = phi nsz float [ %i.wm, %bb.by ], [ 0.000000e+00, %bb.bz ] ; 2 uses
  %i.wr = fcmp ord float %i.wn, 0.000000e+00
  br i1 %i.wr, label %6, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.60) #23
  br label %6

6:                                                ; preds = %bb.cb, %bb.ca
  %.1226.i.i = phi nsz float [ %i.wn, %bb.ca ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %7 = fcmp ord float %i.ss, 0.000000e+00
  br i1 %7, label %_auto_exposure.exit, label %8

8:                                                ; preds = %6
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.61) #23
  br label %_auto_exposure.exit

_auto_exposure.exit:                              ; preds = %middle.block, %._crit_edge.i14.i, %.preheader334.i.i, %._crit_edge350.i.i, %.preheader.i.i, %6, %8
  %.2224326.i.i = phi float [ %.1226.i.i, %6 ], [ %.1226.i.i, %8 ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.2304312325.i.i = phi float [ %.1221.i.i, %6 ], [ %.1221.i.i, %8 ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.0227290303313324.i.i = phi float [ %.2.i.i, %6 ], [ %.2.i.i, %8 ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.1221315323.i.i = phi float [ %.2224.i.i, %6 ], [ %.2224.i.i, %8 ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.1226.i.i.a = phi nsz float [ %i.ss, %6 ], [ 0.000000e+00, %8 ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  store float %.0227290303313324.i.i, ptr %i.ch, align 4, !tbaa !12
  store float %.2304312325.i.i, ptr %i.m, align 8, !tbaa !12
  store float %.1221315323.i.i, ptr %i.ci, align 4, !tbaa !12
  store float %.2224326.i.i, ptr %i.cj, align 8, !tbaa !12
  store float %.1226.i.i.a, ptr %i.ck, align 8, !tbaa !12
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @free(ptr noundef nonnull %i.cm) #23
  %i.ws = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #23 ; 0 uses
  store i32 2, ptr %i.t, align 4, !tbaa !110
  %i.wt = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.d, %bb.c
  %i.wu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %_auto_exposure.exit, %bb.cc, %bb.b, %bb.a
  %i.wv = load float, ptr %i.k, align 4, !tbaa !201 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !202 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !203
  %i.xa = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !204 ; 2 uses
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, 1.000000e+00
  %i.xd = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !205 ; 2 uses
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xe, f0x3F36DB6E ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !130 ; 2 uses
  %i.xi = fadd reassoc nsz arcp contract afn float %i.xh, 1.000000e+00 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !120 ; 2 uses
  %i.xl = fcmp reassoc nsz arcp contract afn ogt float %i.xk, 0.000000e+00
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xk, f0x3C23D70A
  %spec.select = select reassoc nsz arcp contract afn i1 %i.xl, float %i.xm, float 1.842000e-01 ; 5 uses
  %i.xn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !129 ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, 2.000000e+00 ; 3 uses
  %i.xr = fcmp reassoc nsz arcp contract afn ult float %i.xq, 0.000000e+00
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xq, 1.000000e+00
  %i.xt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xs
  %i.xu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xq
  %i.xv = select reassoc nsz arcp contract afn i1 %i.xr, float %i.xu, float %i.xt ; 3 uses
  %i.xw = fmul reassoc nsz arcp contract afn float %i.wx, f0x3C23D70A ; 2 uses
  %i.xx = fmul reassoc nsz arcp contract afn float %i.wz, 1.250000e-03 ; 2 uses
  %i.xy = fsub reassoc nsz arcp contract afn float f0x3F666666, %i.xx ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !131 ; 2 uses
  %.not211 = icmp eq i32 %i.ya, 0
  %i.yb = fcmp reassoc nsz arcp contract afn une float %i.xh, 0.000000e+00 ; 2 uses
  %spec.select222 = select i1 %.not211, i1 %i.yb, i1 false ; 3 uses
  %i.yc = select i1 %i.yb, i32 %i.ya, i32 0
  %i.yd = fcmp reassoc nsz arcp contract afn une float %i.xp, 0.000000e+00 ; 3 uses
  %i.ye = fcmp reassoc nsz arcp contract afn une float %i.xb, 0.000000e+00
  %i.yf = fcmp reassoc nsz arcp contract afn une float %i.xe, 0.000000e+00
  %i.yg = select i1 %i.ye, i1 true, i1 %i.yf
  %i.yh = fcmp reassoc nsz arcp contract afn ogt float %i.wx, 0.000000e+00
  %i.yi = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !193
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !192
  %i.yn = sext i32 %i.ym to i64
  %i.yo = sext i32 %i.i to i64                    ; 2 uses
  %i.yp = mul nsw i64 %i.yk, %i.yo
  %i.yq = mul i64 %i.yp, %i.yn                    ; 2 uses
  %.not242 = icmp eq i64 %i.yq, 0
  br i1 %.not242, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.cd
  %i.yr = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !206
  %i.yt = fneg reassoc nsz arcp contract afn float %i.ys
  %i.yu = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.yt)
  %i.yv = fsub reassoc nsz arcp contract afn float %i.yu, %i.wv ; 3 uses
  %.not212 = icmp eq ptr %i.g, null               ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.g, i64 576 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.g, i64 712 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.g, i64 768 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.g, i64 704 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.g, i64 852 ; 2 uses
  %i.zb = fcmp reassoc nsz arcp contract afn ogt float %i.xw, 0.000000e+00
  %i.zc = fsub reassoc nsz arcp contract afn float f0xBDCCCCD0, %i.xx
  %i.zd = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.k, i64 262188 ; 3 uses
  %i.zf = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.xf)
  %i.zg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yv ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.zg, f0x3E63D838
  %i.zh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yv
  %i.zi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yv
  %i.zj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xy
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.0200240 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.aio, %.loopexit ] ; 6 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0200240
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !12
  %i.zm = fsub reassoc nsz arcp contract afn float %i.zl, %i.wv ; 2 uses
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, %i.zg
  %i.zo = getelementptr [4 x i8], ptr %3, i64 %.0200240 ; 43 uses
  store float %i.zn, ptr %i.zo, align 4, !tbaa !12
  %i.zp = add nuw i64 %.0200240, 1                ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zp
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !12
  %i.zs = fsub reassoc nsz arcp contract afn float %i.zr, %i.wv
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, %i.zh
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zp
  store float %i.zt, ptr %i.zu, align 4, !tbaa !12
  %i.zv = add i64 %.0200240, 2                    ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zv
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !12
  %i.zy = fsub reassoc nsz arcp contract afn float %i.zx, %i.wv
  %i.zz = fmul reassoc nsz arcp contract afn float %i.zy, %i.zi
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zv
  store float %i.zz, ptr %i.aaa, align 4, !tbaa !12
  br i1 %i.yh, label %bb.ce, label %.loopexit226

._crit_edge:                                      ; preds = %.loopexit, %bb.cd
  ret void

bb.ce:                                            ; preds = %.preheader
  br i1 %.not212, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aab = load i32, ptr %i.yz, align 64, !tbaa !118
  %i.aac = load i32, ptr %i.za, align 4, !tbaa !119
  %i.aad = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %i.zo, ptr noundef %i.yw, ptr noundef %i.yx, ptr noundef %i.yy, i32 noundef %i.aab, i32 noundef %i.aac)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %.reass310 = fmul reassoc nsz arcp contract afn float %i.zm, %invariant.op
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !12
  %i.aag = fmul reassoc nsz arcp contract afn float %i.aaf, f0x3F37855B
  %i.aah = fadd reassoc nsz arcp contract afn float %i.aag, %.reass310
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !12
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aaj, 6.061690e-02
  %i.aal = fadd reassoc nsz arcp contract afn float %i.aah, %i.aak
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.aam = phi reassoc nsz arcp contract afn float [ %i.aad, %bb.cf ], [ %i.aal, %bb.cg ] ; 2 uses
  %i.aan = fcmp reassoc nsz arcp contract afn ogt float %i.aam, 0.000000e+00
  br i1 %i.aan, label %bb.ci, label %.loopexit226

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.zb, label %bb.cj, label %hlcurve.exit

bb.cj:                                            ; preds = %bb.ci
  %i.aao = fadd reassoc nsz arcp contract afn float %i.zc, %i.aam ; 2 uses
  %i.aap = fcmp reassoc nsz arcp contract afn oeq float %i.aao, 0.000000e+00
  %spec.store.select.i = select i1 %i.aap, float f0x358637BD, float %i.aao
  %i.aaq = fmul reassoc nsz arcp contract afn float %spec.store.select.i, %i.xw ; 2 uses
  %i.aar = fmul reassoc nsz arcp contract afn float %i.aaq, %i.zj ; 2 uses
  %i.aas = fcmp reassoc nsz arcp contract afn ole float %i.aar, -1.000000e+00
  %spec.store.select1.i = select i1 %i.aas, float f0xBF7FFFEF, float %i.aar
  %i.aat = call reassoc nsz arcp contract afn float @log1pf(float noundef %spec.store.select1.i) #24
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aat, %i.xy
  %i.aav = fdiv reassoc nsz arcp contract afn float %i.aau, %i.aaq
  br label %hlcurve.exit

hlcurve.exit:                                     ; preds = %bb.ci, %bb.cj
  %.0.i = phi nsz float [ %i.aav, %bb.cj ], [ 1.000000e+00, %bb.ci ] ; 2 uses
  %i.aaw = load <2 x float>, ptr %i.zo, align 4, !tbaa !12
  %i.aax = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.aay = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = fmul reassoc nsz arcp contract afn <2 x float> %i.aaw, %i.aay
  store <2 x float> %i.aaz, ptr %i.zo, align 4, !tbaa !12
  %i.aba = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !12
  %i.abc = fmul reassoc nsz arcp contract afn float %i.abb, %.0.i
  store float %i.abc, ptr %i.aba, align 4, !tbaa !12
  br label %.loopexit226

.loopexit226:                                     ; preds = %hlcurve.exit, %bb.ch, %.preheader
  br i1 %i.yd, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %.loopexit226
  %i.abd = load float, ptr %i.zo, align 4, !tbaa !12 ; 4 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ogt float %i.abd, 0.000000e+00
  br i1 %i.abe, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.abf = fcmp reassoc nsz arcp contract afn ogt float %i.abd, 1.000000e+00
  br i1 %i.abf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.abg = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.abd, float %i.xv)
  br label %get_lut_gamma.exit

bb.cn:                                            ; preds = %bb.cl
  %i.abh = fmul reassoc nsz arcp contract afn float %i.abd, 6.553600e+04
  %i.abi = fptosi float %i.abh to i32
  %9 = call i32 @llvm.smax.i32(i32 %i.abi, i32 0)
  %i.abj = call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.abk
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !12
  br label %get_lut_gamma.exit

get_lut_gamma.exit:                               ; preds = %bb.cm, %bb.cn
  %i.abn = phi reassoc nsz arcp contract afn float [ %i.abg, %bb.cm ], [ %i.abm, %bb.cn ]
  store float %i.abn, ptr %i.zo, align 4, !tbaa !12
  br label %bb.co

bb.co:                                            ; preds = %get_lut_gamma.exit, %bb.ck, %.loopexit226
  br i1 %spec.select222, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.abo = load float, ptr %i.zo, align 4, !tbaa !12 ; 4 uses
  %i.abp = fcmp reassoc nsz arcp contract afn ogt float %i.abo, 0.000000e+00
  br i1 %i.abp, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.abq = fcmp reassoc nsz arcp contract afn ogt float %i.abo, 1.000000e+00
  br i1 %i.abq, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abo, %i.xn
  %i.abs = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.abr, float %i.xi)
  %i.abt = fmul reassoc nsz arcp contract afn float %i.abs, %spec.select
  br label %get_lut_contrast.exit

bb.cs:                                            ; preds = %bb.cq
  %i.abu = fmul reassoc nsz arcp contract afn float %i.abo, 6.553600e+04
  %i.abv = fptosi float %i.abu to i32
  %10 = call i32 @llvm.smax.i32(i32 %i.abv, i32 0)
  %i.abw = call i32 @llvm.umin.i32(i32 %10, i32 65535)
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.abx
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !12
  br label %get_lut_contrast.exit

get_lut_contrast.exit:                            ; preds = %bb.cr, %bb.cs
  %i.aca = phi reassoc nsz arcp contract afn float [ %i.abt, %bb.cr ], [ %i.abz, %bb.cs ]
  store float %i.aca, ptr %i.zo, align 4, !tbaa !12
  br label %bb.ct

bb.ct:                                            ; preds = %bb.co, %bb.cp, %get_lut_contrast.exit
  br i1 %i.yd, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.acb = getelementptr i8, ptr %i.zo, i64 4     ; 2 uses
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !12 ; 4 uses
  %i.acd = fcmp reassoc nsz arcp contract afn ogt float %i.acc, 0.000000e+00
  br i1 %i.acd, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.ace = fcmp reassoc nsz arcp contract afn ogt float %i.acc, 1.000000e+00
  br i1 %i.ace, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.acf = fmul reassoc nsz arcp contract afn float %i.acc, 6.553600e+04
  %i.acg = fptosi float %i.acf to i32
  %11 = call i32 @llvm.smax.i32(i32 %i.acg, i32 0)
  %i.ach = call i32 @llvm.umin.i32(i32 %11, i32 65535)
  %i.aci = zext nneg i32 %i.ach to i64
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.aci
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !12
  br label %get_lut_gamma.exit.1

bb.cx:                                            ; preds = %bb.cv
  %i.acl = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.acc, float %i.xv)
  br label %get_lut_gamma.exit.1

get_lut_gamma.exit.1:                             ; preds = %bb.cx, %bb.cw
  %i.acm = phi reassoc nsz arcp contract afn float [ %i.acl, %bb.cx ], [ %i.ack, %bb.cw ]
  store float %i.acm, ptr %i.acb, align 4, !tbaa !12
  br label %bb.cy

bb.cy:                                            ; preds = %get_lut_gamma.exit.1, %bb.cu, %bb.ct
  br i1 %spec.select222, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.acn = getelementptr i8, ptr %i.zo, i64 4     ; 2 uses
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !12 ; 4 uses
  %i.acp = fcmp reassoc nsz arcp contract afn ogt float %i.aco, 0.000000e+00
  br i1 %i.acp, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.acq = fcmp reassoc nsz arcp contract afn ogt float %i.aco, 1.000000e+00
  br i1 %i.acq, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acr = fmul reassoc nsz arcp contract afn float %i.aco, 6.553600e+04
  %i.acs = fptosi float %i.acr to i32
  %12 = call i32 @llvm.smax.i32(i32 %i.acs, i32 0)
  %i.act = call i32 @llvm.umin.i32(i32 %12, i32 65535)
  %i.acu = zext nneg i32 %i.act to i64
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.acu
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !12
  br label %get_lut_contrast.exit.1

bb.dc:                                            ; preds = %bb.da
  %i.acx = fmul reassoc nsz arcp contract afn float %i.aco, %i.xn
  %i.acy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.acx, float %i.xi)
  %i.acz = fmul reassoc nsz arcp contract afn float %i.acy, %spec.select
  br label %get_lut_contrast.exit.1

get_lut_contrast.exit.1:                          ; preds = %bb.dc, %bb.db
  %i.ada = phi reassoc nsz arcp contract afn float [ %i.acz, %bb.dc ], [ %i.acw, %bb.db ]
  store float %i.ada, ptr %i.acn, align 4, !tbaa !12
  br label %bb.dd

bb.dd:                                            ; preds = %get_lut_contrast.exit.1, %bb.cz, %bb.cy
  br i1 %i.yd, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.adb = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !12 ; 4 uses
  %i.add = fcmp reassoc nsz arcp contract afn ogt float %i.adc, 0.000000e+00
  br i1 %i.add, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.ade = fcmp reassoc nsz arcp contract afn ogt float %i.adc, 1.000000e+00
  br i1 %i.ade, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.adf = fmul reassoc nsz arcp contract afn float %i.adc, 6.553600e+04
  %i.adg = fptosi float %i.adf to i32
  %13 = call i32 @llvm.smax.i32(i32 %i.adg, i32 0)
  %i.adh = call i32 @llvm.umin.i32(i32 %13, i32 65535)
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.adi
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !12
  br label %get_lut_gamma.exit.2

bb.dh:                                            ; preds = %bb.df
  %i.adl = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.adc, float %i.xv)
  br label %get_lut_gamma.exit.2

get_lut_gamma.exit.2:                             ; preds = %bb.dh, %bb.dg
  %i.adm = phi reassoc nsz arcp contract afn float [ %i.adl, %bb.dh ], [ %i.adk, %bb.dg ]
  store float %i.adm, ptr %i.adb, align 4, !tbaa !12
  br label %bb.di

bb.di:                                            ; preds = %get_lut_gamma.exit.2, %bb.de, %bb.dd
  br i1 %spec.select222, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.adn = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !12 ; 4 uses
  %i.adp = fcmp reassoc nsz arcp contract afn ogt float %i.ado, 0.000000e+00
  br i1 %i.adp, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.adq = fcmp reassoc nsz arcp contract afn ogt float %i.ado, 1.000000e+00
  br i1 %i.adq, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.adr = fmul reassoc nsz arcp contract afn float %i.ado, 6.553600e+04
  %i.ads = fptosi float %i.adr to i32
  %14 = call i32 @llvm.smax.i32(i32 %i.ads, i32 0)
  %i.adt = call i32 @llvm.umin.i32(i32 %14, i32 65535)
  %i.adu = zext nneg i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.adu
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !12
  br label %get_lut_contrast.exit.2

bb.dm:                                            ; preds = %bb.dk
  %i.adx = fmul reassoc nsz arcp contract afn float %i.ado, %i.xn
  %i.ady = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adx, float %i.xi)
  %i.adz = fmul reassoc nsz arcp contract afn float %i.ady, %spec.select
  br label %get_lut_contrast.exit.2

get_lut_contrast.exit.2:                          ; preds = %bb.dm, %bb.dl
  %i.aea = phi reassoc nsz arcp contract afn float [ %i.adz, %bb.dm ], [ %i.adw, %bb.dl ]
  store float %i.aea, ptr %i.adn, align 4, !tbaa !12
  br label %bb.dn

bb.dn:                                            ; preds = %get_lut_contrast.exit.2, %bb.dj, %bb.di
  switch i32 %i.yc, label %bb.dw [
    i32 0, label %.loopexit225
    i32 1, label %bb.do
    i32 2, label %bb.dr
    i32 3, label %bb.ds
    i32 4, label %bb.dt
    i32 5, label %bb.du
    i32 6, label %bb.dv
  ]

bb.do:                                            ; preds = %bb.dn
  br i1 %.not212, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aeb = load i32, ptr %i.yz, align 64, !tbaa !118
  %i.aec = load i32, ptr %i.za, align 4, !tbaa !119
  %i.aed = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef readonly %i.zo, ptr noundef readonly %i.yw, ptr noundef readonly %i.yx, ptr noundef readonly %i.yy, i32 noundef %i.aeb, i32 noundef %i.aec)
  br label %dt_rgb_norm.exit

bb.dq:                                            ; preds = %bb.do
  %i.aee = load float, ptr %i.zo, align 4, !tbaa !12
  %i.aef = fmul reassoc nsz arcp contract afn float %i.aee, f0x3E63D838
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !12
  %i.aei = fmul reassoc nsz arcp contract afn float %i.aeh, f0x3F37855B
  %i.aej = fadd reassoc nsz arcp contract afn float %i.aei, %i.aef
  %i.aek = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !12
  %i.aem = fmul reassoc nsz arcp contract afn float %i.ael, 6.061690e-02
  %i.aen = fadd reassoc nsz arcp contract afn float %i.aej, %i.aem
  br label %dt_rgb_norm.exit

bb.dr:                                            ; preds = %bb.dn
  %i.aeo = load float, ptr %i.zo, align 4, !tbaa !12
  %i.aep = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !12
  %i.aer = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aeo, float %i.aeq)
  %i.aes = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !12
  %i.aeu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aer, float %i.aet)
  br label %dt_rgb_norm.exit

bb.ds:                                            ; preds = %bb.dn
  %i.aev = load float, ptr %i.zo, align 4, !tbaa !12
  %i.aew = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !12
  %i.aey = fadd reassoc nsz arcp contract afn float %i.aex, %i.aev
  %i.aez = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !12
  %i.afb = fadd reassoc nsz arcp contract afn float %i.aey, %i.afa
  %i.afc = fmul reassoc nsz arcp contract afn float %i.afb, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.dt:                                            ; preds = %bb.dn
  %i.afd = load float, ptr %i.zo, align 4, !tbaa !12
  %i.afe = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !12
  %i.afg = fadd reassoc nsz arcp contract afn float %i.aff, %i.afd
  %i.afh = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !12
  %i.afj = fadd reassoc nsz arcp contract afn float %i.afg, %i.afi
  br label %dt_rgb_norm.exit

bb.du:                                            ; preds = %bb.dn
  %i.afk = load float, ptr %i.zo, align 4, !tbaa !12 ; 2 uses
  %i.afl = fmul reassoc nsz arcp contract afn float %i.afk, %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !12 ; 2 uses
  %i.afo = fmul reassoc nsz arcp contract afn float %i.afn, %i.afn
  %i.afp = fadd reassoc nsz arcp contract afn float %i.afo, %i.afl
  %i.afq = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !12 ; 2 uses
  %i.afs = fmul reassoc nsz arcp contract afn float %i.afr, %i.afr
  %i.aft = fadd reassoc nsz arcp contract afn float %i.afp, %i.afs
  %i.afu = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aft)
  br label %dt_rgb_norm.exit

bb.dv:                                            ; preds = %bb.dn
  %i.afv = load float, ptr %i.zo, align 4, !tbaa !12 ; 3 uses
  %i.afw = fmul reassoc nsz arcp contract afn float %i.afv, %i.afv ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !12 ; 3 uses
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afy, %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !12 ; 3 uses
  %i.agc = fmul reassoc nsz arcp contract afn float %i.agb, %i.agb ; 2 uses
  %i.agd = fmul reassoc nsz arcp contract afn float %i.afw, %i.afv
  %i.age = fmul reassoc nsz arcp contract afn float %i.afz, %i.afy
  %i.agf = fadd reassoc nsz arcp contract afn float %i.age, %i.agd
  %i.agg = fmul reassoc nsz arcp contract afn float %i.agc, %i.agb
  %i.agh = fadd reassoc nsz arcp contract afn float %i.agf, %i.agg
  %i.agi = fadd reassoc nsz arcp contract afn float %i.afz, %i.afw
  %i.agj = fadd reassoc nsz arcp contract afn float %i.agi, %i.agc
  %i.agk = fdiv reassoc nsz arcp contract afn float %i.agh, %i.agj
  br label %dt_rgb_norm.exit

bb.dw:                                            ; preds = %bb.dn
  %i.agl = load float, ptr %i.zo, align 4, !tbaa !12
  %i.agm = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !12
  %i.ago = fadd reassoc nsz arcp contract afn float %i.agn, %i.agl
  %i.agp = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !12
  %i.agr = fadd reassoc nsz arcp contract afn float %i.ago, %i.agq
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw
  %.0.i215 = phi nsz float [ %i.ags, %bb.dw ], [ %i.aeu, %bb.dr ], [ %i.afc, %bb.ds ], [ %i.afj, %bb.dt ], [ %i.afu, %bb.du ], [ %i.agk, %bb.dv ], [ %i.aed, %bb.dp ], [ %i.aen, %bb.dq ] ; 3 uses
  %i.agt = fcmp reassoc nsz arcp contract afn ogt float %.0.i215, 0.000000e+00
  br i1 %i.agt, label %bb.dx, label %.loopexit225.loopexit

bb.dx:                                            ; preds = %dt_rgb_norm.exit
  %i.agu = fmul reassoc nsz arcp contract afn float %.0.i215, %i.xn
  %i.agv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.agu, float %i.xi)
  %i.agw = fmul reassoc nsz arcp contract afn float %i.agv, %spec.select
  %i.agx = fdiv reassoc nsz arcp contract afn float %i.agw, %.0.i215
  br label %.loopexit225.loopexit

.loopexit225.loopexit:                            ; preds = %bb.dx, %dt_rgb_norm.exit
  %.0196 = phi nsz float [ %i.agx, %bb.dx ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 2 uses
  %i.agy = load <2 x float>, ptr %i.zo, align 4, !tbaa !12
  %i.agz = insertelement <2 x float> poison, float %.0196, i64 0
  %i.aha = shufflevector <2 x float> %i.agz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahb = fmul reassoc nsz arcp contract afn <2 x float> %i.agy, %i.aha
  store <2 x float> %i.ahb, ptr %i.zo, align 4, !tbaa !12
  %i.ahc = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !12
  %i.ahe = fmul reassoc nsz arcp contract afn float %i.ahd, %.0196
  store float %i.ahe, ptr %i.ahc, align 4, !tbaa !12
  br label %.loopexit225

.loopexit225:                                     ; preds = %bb.dn, %.loopexit225.loopexit
  br i1 %i.yg, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit225
  %i.ahf = getelementptr i8, ptr %i.zo, i64 8     ; 2 uses
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !12 ; 3 uses
  %i.ahh = load <2 x float>, ptr %i.zo, align 4, !tbaa !12 ; 3 uses
  %i.ahi = extractelement <2 x float> %i.ahh, i64 0 ; 2 uses
  %i.ahj = extractelement <2 x float> %i.ahh, i64 1 ; 2 uses
  %i.ahk = fadd reassoc nsz arcp contract afn float %i.ahj, %i.ahi
  %i.ahl = fadd reassoc nsz arcp contract afn float %i.ahk, %i.ahg
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.ahl, f0x3EAAAAAB ; 6 uses
  %i.ahn = fsub reassoc nsz arcp contract afn float %i.ahm, %i.ahi ; 2 uses
  %i.aho = fmul reassoc nsz arcp contract afn float %i.ahn, %i.ahn
  %i.ahp = fsub reassoc nsz arcp contract afn float %i.ahm, %i.ahj ; 2 uses
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.ahp, %i.ahp
  %i.ahr = fadd reassoc nsz arcp contract afn float %i.aho, %i.ahq
  %i.ahs = fsub reassoc nsz arcp contract afn float %i.ahm, %i.ahg ; 2 uses
  %i.aht = fmul reassoc nsz arcp contract afn float %i.ahs, %i.ahs
  %i.ahu = fadd reassoc nsz arcp contract afn float %i.ahr, %i.aht
  %i.ahv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ahu)
  %i.ahw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahv, float %i.zf)
  %i.ahx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ahw
  %i.ahy = fmul reassoc nsz arcp contract afn float %i.ahx, %i.xf
  %i.ahz = fadd reassoc nsz arcp contract afn float %i.xc, %i.ahy ; 2 uses
  %i.aia = insertelement <2 x float> poison, float %i.ahm, i64 0
  %i.aib = shufflevector <2 x float> %i.aia, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aic = fsub reassoc nsz arcp contract afn <2 x float> %i.ahh, %i.aib
  %i.aid = insertelement <2 x float> poison, float %i.ahz, i64 0
  %i.aie = shufflevector <2 x float> %i.aid, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aif = fmul reassoc nsz arcp contract afn <2 x float> %i.aic, %i.aie
  %i.aig = fadd reassoc nsz arcp contract afn <2 x float> %i.aif, %i.aib
  store <2 x float> %i.aig, ptr %i.zo, align 4, !tbaa !12
  %i.aih = fsub reassoc nsz arcp contract afn float %i.ahg, %i.ahm
  %i.aii = fmul reassoc nsz arcp contract afn float %i.aih, %i.ahz
  %i.aij = fadd reassoc nsz arcp contract afn float %i.aii, %i.ahm
  store float %i.aij, ptr %i.ahf, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit225
  %i.aik = add i64 %.0200240, 3                   ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aik
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !12
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aik
  store float %i.aim, ptr %i.ain, align 4, !tbaa !12
  %i.aio = add i64 %.0200240, %i.yo               ; 2 uses
  %i.aip = icmp ult i64 %i.aio, %i.yq
  br i1 %i.aip, label %.preheader, label %._crit_edge
}

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #6
end_hunk_2
