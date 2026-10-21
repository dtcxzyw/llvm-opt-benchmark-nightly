Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_exposure?download=true
inline.NumInlined: 82
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
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
%struct.dt_iop_exposure_params_t = type { i32, float, float, float, float, i32, i32 }
%struct.dt_dev_histogram_stats_t = type { i32, i64, i32, i32 }
%struct.dt_image_t = type { i32, i32, float, float, float, float, float, float, float, float, i32, [64 x i8], [64 x i8], [128 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i64, i32, %union.dt_image_correction_data_t, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, [4 x i8], %struct.dt_iop_buffer_dsc_t, [9 x float], ptr, i32, i32, %struct.dt_image_raw_parameters_t, %struct.dt_image_geoloc_t, %struct._color_harmony_t, i16, [4 x i16], i32, i32, float, float, [12 x i8], [4 x float], [4 x [3 x float]], [4 x float], ptr, ptr, i32, i32, [8 x i8] }
%union.dt_image_correction_data_t = type { %struct.anon.3 }
%struct.anon.3 = type { i32, float, [11 x float], [11 x float], [11 x float], [11 x float], [11 x float] }
%struct.dt_iop_buffer_dsc_t = type { i32, i32, i32, [6 x [6 x i8]], %struct.anon.6, [12 x i8], %struct.anon.7, [4 x float], i32, [12 x i8] }
%struct.anon.6 = type { i16, i16 }
%struct.anon.7 = type { i32, [12 x i8], [4 x float] }
%struct.dt_image_raw_parameters_t = type { i32 }
%struct.dt_image_geoloc_t = type { double, double, double }
%struct._color_harmony_t = type { i32, i32, i32, i32, [4 x float] }
%struct.dt_mipmap_buffer_t = type { i32, i32, i32, i32, float, ptr, i32, i32, ptr }
%struct.dt_dev_histogram_collection_params_t = type { ptr, i32 }
%struct.dt_histogram_roi_t = type { i32, i32, i32, i32, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.1 = private unnamed_addr constant [126 x i8] c"redo the exposure of the shot as if you were still in-camera\0Ausing a color-safe brightening similar to increasing ISO setting\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"corrective and creative\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"magic lantern defaults\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"scene-referred default\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"_builtin_scene-referred default\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"compensate camera exposure (%+.1f EV)\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"highlight preservation mode (%.1f EV)\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"darkroom/modules/exposure/lightness\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"deflicker\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/darktable/darktable/src/iop/exposure.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"compensate_exposure_bias\00", align 1
@.str.16 = private unnamed_addr constant [100 x i8] c"automatically remove the camera exposure bias\0Athis is useful if you exposed the image to the right.\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"compensate_hilite_pres\00", align 1
@.str.18 = private unnamed_addr constant [222 x i8] c"remove the camera's hidden exposure bias in\0AHDR / highlight preservation / dynamic range / HLG tone mode.\0A\0Awhen enabled on an image with nonzero bias, tone mapping\0A(e.g. sigmoid) is required to avoid blown-out highlights.\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"adjust the exposure correction\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" EV\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"set the exposure adjustment using the selected area\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"deflicker_percentile\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"where in the histogram to meter for deflicking. E.g. 50% is median\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"deflicker_target_level\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"where to place the exposure level for processed pics, EV below overexposure.\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"what exposure correction has actually been used\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"computed EC: \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.31 = private unnamed_addr constant [206 x i8] c"adjust the black level to unclip negative RGB values.\0Ayou should never use it to add more density in blacks!\0Aif poorly set, it will clip near-black colors out of gamut\0Aby pushing RGB values into negatives.\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"plugins/darkroom/exposure/mapping\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"area exposure mapping\00", align 1
@.str.34 = private unnamed_addr constant [318 x i8] c"define a target brightness, in terms of exposure,\0Afor a selected region of the image (the control sample),\0Awhich you then match against the same target brightness\0Ain other images. the control sample can either\0Abe a critical part of your subject or a non-moving and\0Aconsistently-lit surface over your series of images.\00", align 1
@gui_init.texts = internal global [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr null], align 16
@.str.35 = private unnamed_addr constant [11 x i8] c"correction\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"measure\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"area mode\00", align 1
@.str.38 = private unnamed_addr constant [215 x i8] c"\22correction\22 automatically adjust exposure\0Asuch that the input lightness is mapped to the target.\0A\22measure\22 simply shows how an input color is mapped by\0Athe exposure compensation and can be used to define a target.\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"the input color that should be mapped to the target\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"L : \09N/A\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"these LCh coordinates are computed from CIE Lab 1976 coordinates\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"the desired target exposure after mapping\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"section\04input\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"section\04target\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 7, ptr @.str.68, i64 28, ptr getelementptr (i8, ptr @introspection_linear, i64 616), i64 1120, i64 688 }, align 8
@introspection_init.f0 = internal global [3 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr @.str.51 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [21 x i8] c"EXPOSURE_MODE_MANUAL\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"EXPOSURE_MODE_DEFLICKER\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@introspection_init.f7 = internal global [8 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr null], align 16
@.str.52 = private unnamed_addr constant [8 x i8] c"%.2f EV\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"failed to get raw buffer from image `%s'\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"L : \09%.1f %%\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"dt_section_label\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"dt_iop_exposure_mode_t\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"black level correction\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"percentile\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"target level\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"compensate exposure bias\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"compensate highlight preservation\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"dt_iop_exposure_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.60, ptr @.str.29, ptr @.str.29, ptr @.str.11, i64 4, i64 0, ptr null }, i64 2, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.61, ptr @.str.30, ptr @.str.30, ptr @.str.62, i64 4, i64 4, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.61, ptr @.str, ptr @.str, ptr @.str.11, i64 4, i64 8, ptr null }, float -1.800000e+01, float 1.800000e+01, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.61, ptr @.str.22, ptr @.str.22, ptr @.str.63, i64 4, i64 12, ptr null }, float 0.000000e+00, float 1.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.61, ptr @.str.25, ptr @.str.25, ptr @.str.64, i64 4, i64 16, ptr null }, float -1.800000e+01, float 1.800000e+01, float -4.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.65, ptr @.str.15, ptr @.str.15, ptr @.str.66, i64 4, i64 20, ptr null }, i32 0, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.65, ptr @.str.17, ptr @.str.17, ptr @.str.67, i64 4, i64 24, ptr null }, i32 1, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.68, ptr @.str.11, ptr @.str.11, ptr @.str.11, i64 28, i64 0, ptr null }, i64 7, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 7
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.g [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !161
  %6 = shufflevector <2 x float> %i.c, <2 x float> <float 5.000000e+01, float -4.000000e+00>, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %i.b, align 4, !tbaa !13
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !163
  %.not = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not to i32
  store i32 %i.h, ptr %i.e, align 4, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %1, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  %i.k = shufflevector <5 x float> %i.j, <5 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !161
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23 ; 4 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !165
  store i32 %i.n, ptr %i.m, align 4, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load <4 x float>, ptr %i.o, align 4, !tbaa !13
  store <4 x float> %i.q, ptr %i.p, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !161
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23 ; 4 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !167
  store i32 %i.t, ptr %i.s, align 4, !tbaa !160
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load <4 x float>, ptr %i.u, align 4, !tbaa !13
  store <4 x float> %i.w, ptr %i.v, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !161
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.y = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #23 ; 5 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !160
  store i32 %i.z, ptr %i.y, align 4, !tbaa !169
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load <4 x float>, ptr %i.aa, align 4, !tbaa !13
  store <4 x float> %i.ac, ptr %i.ab, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !170
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 0, ptr %i.ag, align 4, !tbaa !171
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sink86 = phi ptr [ %i.y, %bb.f ], [ %i.s, %bb.e ], [ %i.m, %bb.d ], [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %.sink85 = phi i32 [ 28, %bb.f ], [ 24, %bb.e ], [ 24, %bb.d ], [ 24, %bb.c ], [ 24, %bb.b ]
  %.sink = phi i32 [ 7, %bb.f ], [ 6, %bb.e ], [ 6, %bb.d ], [ 6, %bb.c ], [ 6, %bb.b ]
  store ptr %.sink86, ptr %3, align 8, !tbaa !15
  store i32 %.sink85, ptr %4, align 4, !tbaa !16
  store i32 %.sink, ptr %5, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef initializes((548, 552)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_exposure_params_t, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 1, ptr %i.a, align 4, !tbaa !172
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.e = tail call i32 (...) %i.d() #22
  store i32 1, ptr %1, align 4, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e+01, float -4.000000e+00>, ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.h, align 4, !tbaa !25
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, i32 noundef %i.e, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 1, i32 noundef 3) #22
  %i.i = call i32 @dt_is_scene_referred() #22
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.k = call i32 (...) %i.j() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, i32 noundef %i.k, ptr noundef null, i32 noundef 0, i32 noundef 1, i32 noundef 4) #22
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.m = call i32 (...) %i.l() #22
  call void @dt_gui_presets_update_format(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, i32 noundef %i.m, i32 noundef 2) #22
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.o = call i32 (...) %i.n() #22
  call void @dt_gui_presets_update_autoapply(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, i32 noundef %i.o, i32 noundef 1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_is_scene_referred() local_unnamed_addr #3

declare void @dt_gui_presets_update_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_presets_update_autoapply(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !174 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = tail call i32 @dt_image_is_rawprepare_supported(ptr noundef nonnull %i.e) #22
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @dt_is_scene_referred() #22
  %.not17 = icmp eq i32 %i.g, 0
  store i32 0, ptr %i.b, align 4, !tbaa !23
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.i = load i32, ptr %i.h, align 16, !tbaa !175
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.l) #22
  %.not16 = icmp eq i32 %i.m, 0                   ; 2 uses
  %i.n = select reassoc nsz arcp contract afn i1 %.not16, float f0x3F333333, float 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !42
  %i.p = select reassoc nsz arcp contract afn i1 %.not16, float f0xB9800000, float 0.000000e+00
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink19 = phi float [ 0.000000e+00, %bb.e ], [ %i.p, %bb.d ]
  %.sink = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %.sink19, ptr %i.r, align 4, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %.sink, ptr %i.s, align 4, !tbaa !24
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2088
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !176
  %i.w = tail call i32 @dt_iop_is_first_instance(ptr noundef %i.v, ptr noundef nonnull %0) #22
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.w, ptr %i.x, align 4, !tbaa !25
  ret void
}

declare i32 @dt_image_is_rawprepare_supported(ptr noundef) local_unnamed_addr #3

declare i32 @dt_image_is_monochrome(ptr noundef) local_unnamed_addr #3

declare i32 @dt_iop_is_first_instance(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.dt_dev_histogram_stats_t, align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
