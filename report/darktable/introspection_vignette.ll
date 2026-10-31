Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_vignette?download=true
inline.NumInlined: 23
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 6
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
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_iop_vignette_params_t = type { float, float, float, float, %struct.dt_iop_fvector_2d_t, i32, float, float, i32, i32 }
%struct.dt_iop_fvector_2d_t = type { float, float }

@.str = private unnamed_addr constant [11 x i8] c"vignetting\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"simulate a lens fall-off close to edges\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"creative\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"non-linear, RGB, display-referred\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"non-linear, RGB\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@mouse_moved.old_grab = internal unnamed_addr global i32 -1, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ew-resize\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ns-resize\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"lomo\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"falloff_scale\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/darktable/darktable/src/iop/vignette.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"section\04position / form\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"center.x\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"center.y\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"autoratio\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"whratio\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"dithering\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"the radii scale of vignette for start of fall-off\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"the radii scale of vignette for end of fall-off\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"strength of effect on brightness\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"strength of effect on saturation\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"horizontal offset of center of the effect\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"vertical offset of center of the effect\00", align 1
@.str.31 = private unnamed_addr constant [88 x i8] c"shape factor\0A0 produces a rectangle\0A1 produces a circle or ellipse\0A2 produces a diamond\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"enable to have the ratio automatically follow the image size\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"width-to-height ratio\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"add some level of random noise to prevent banding\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"[%s on node] change vignette/feather size\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"[%s on node] change vignette/feather size keeping ratio\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"[%s on center] move vignette\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 4, ptr @.str.60, i64 44, ptr getelementptr (i8, ptr @introspection_linear, i64 1056), i64 1120, i64 688 }, align 8
@introspection_init.f6 = internal global [3 x ptr] [ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr null], align 16
@introspection_init.f10 = internal global [4 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.40, i32 1, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.42, i32 2, [4 x i8] zeroinitializer, ptr @.str.43 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [11 x i8] c"DITHER_OFF\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"DITHER_8BIT\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"8-bit output\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"DITHER_16BIT\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"16-bit output\00", align 1
@introspection_init.f12 = internal global [11 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr getelementptr (i8, ptr @introspection_linear, i64 704), ptr getelementptr (i8, ptr @introspection_linear, i64 792), ptr getelementptr (i8, ptr @introspection_linear, i64 880), ptr getelementptr (i8, ptr @introspection_linear, i64 968), ptr null], align 16
@.str.44 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4
@.str.46 = private unnamed_addr constant [17 x i8] c"dt_section_label\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"fall-off start\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"fall-off radius\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"horizontal center\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"vertical center\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"dt_iop_fvector_2d_t\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"automatic ratio\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"width/height ratio\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"dt_iop_dither_t\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"dt_iop_vignette_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.12, ptr @.str.12, ptr @.str.48, i64 4, i64 0, ptr null }, float 0.000000e+00, float 2.000000e+02, float 8.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.13, ptr @.str.13, ptr @.str.49, i64 4, i64 4, ptr null }, float 0.000000e+00, float 2.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.14, ptr @.str.14, ptr @.str.50, i64 4, i64 8, ptr null }, float -1.000000e+00, float 1.000000e+00, float -5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.15, ptr @.str.15, ptr @.str.50, i64 4, i64 12, ptr null }, float -1.000000e+00, float 1.000000e+00, float -5.000000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.18, ptr @.str.51, ptr @.str.52, i64 4, i64 16, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.19, ptr @.str.53, ptr @.str.54, i64 4, i64 20, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.55, ptr @.str.44, ptr @.str.44, ptr @.str.50, i64 8, i64 16, ptr null }, i64 2, ptr null }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.21, ptr @.str.21, ptr @.str.57, i64 4, i64 24, ptr null }, i32 0, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.22, ptr @.str.22, ptr @.str.58, i64 4, i64 28, ptr null }, float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.20, ptr @.str.20, ptr @.str.20, i64 4, i64 32, ptr null }, float 0.000000e+00, float 5.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.59, ptr @.str.23, ptr @.str.23, ptr @.str.50, i64 4, i64 36, ptr null }, i64 3, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.45, ptr @.str.45, ptr @.str.50, i64 4, i64 40, ptr null }, i32 1, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.60, ptr @.str.50, ptr @.str.50, ptr @.str.50, i64 44, i64 0, ptr null }, i64 10, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #18
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #18
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #18
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #18
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #18
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #18
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #18
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !119
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, 1.000000e-02
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.c, i64 0 ; 2 uses
  %i.i = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.c, i64 1
  %i.j = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.h, %i.i
  %i.k = insertelement <2 x double> %i.h, double -1.000000e+00, i64 1
  %i.l = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.c, i64 1
  %i.m = fsub reassoc nsz arcp contract afn <2 x double> %i.k, %i.l
  %i.n = select <2 x i1> %i.j, <2 x double> %i.m, <2 x double> splat (double -1.000000e+00)
  %i.o = insertelement <2 x double> poison, double %i.f, i64 0
  %i.p = load <2 x double>, ptr %1, align 8, !tbaa !120
  %i.q = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.r = shufflevector <2 x double> %i.n, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.s = fmul reassoc nsz arcp contract afn <4 x double> %i.q, %i.r
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x double> %i.t, <4 x double> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.v = fptrunc reassoc nsz arcp contract afn <4 x double> %i.u to <4 x float> ; 3 uses
  store <4 x float> %i.v, ptr %i.a, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !121
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.z = extractelement <4 x float> %i.v, i64 3
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, -2.000000e+00
  store float %i.aa, ptr %i.y, align 4, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !124
  %.not88 = icmp eq i32 %i.ac, 0
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = extractelement <4 x float> %i.v, i64 2
  %i.ae = fneg reassoc nsz arcp contract afn float %i.ad
  store float %i.ae, ptr %i.g, align 4, !tbaa !125
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = load <2 x double>, ptr %i.af, align 8, !tbaa !120
  %i.ai = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ah to <2 x float>
  store <2 x float> %i.ai, ptr %i.ag, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.aj, align 4, !tbaa !126
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !13
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.al = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 5 uses
  %i.am = load <4 x float>, ptr %1, align 4, !tbaa !13
  store <4 x float> %i.am, ptr %i.al, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  store <2 x float> %i.ap, ptr %i.ao, align 4, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.av = load <2 x float>, ptr %i.at, align 4, !tbaa !13
  store <2 x float> %i.av, ptr %i.au, align 4, !tbaa !13
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.aw = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 5 uses
  %i.ax = load <4 x float>, ptr %1, align 4, !tbaa !13
  store <4 x float> %i.ax, ptr %i.aw, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load <2 x float>, ptr %i.ay, align 4, !tbaa !13
  store <2 x float> %i.ba, ptr %i.az, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !126
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !13
  store <2 x float> %i.bg, ptr %i.bf, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !131
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h
  %.sink93 = phi ptr [ %i.aw, %bb.h ], [ %i.al, %bb.g ], [ %i.a, %bb.f ] ; 3 uses
  %.sink91 = phi i32 [ %i.bi, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink93, i64 36
  store i32 %.sink91, ptr %i.bj, align 4, !tbaa !132
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink93, i64 40
  store i32 0, ptr %i.bk, align 4, !tbaa !133
  store ptr %.sink93, ptr %3, align 8, !tbaa !16
  store i32 44, ptr %4, align 4, !tbaa !17
  store i32 4, ptr %5, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
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
define void @gui_post_expose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !36
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, 5.000000e-01
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, 5.000000e-01
  %i.h = fpext reassoc nsz arcp contract afn float %2 to double ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn double %i.g, %i.h
  %i.j = fptrunc reassoc nsz arcp contract afn double %i.i to float ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !37
  %i.m = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, 5.000000e-01
  %i.o = fadd reassoc nsz arcp contract afn double %i.n, 5.000000e-01
  %i.p = fpext reassoc nsz arcp contract afn float %3 to double ; 3 uses
  %i.q = fmul reassoc nsz arcp contract afn double %i.o, %i.p
  %i.r = fptrunc reassoc nsz arcp contract afn double %i.q to float ; 2 uses
  %i.s = fpext reassoc nsz arcp contract afn float %i.j to double
  %i.t = fpext reassoc nsz arcp contract afn float %i.r to double
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.s, double noundef %i.t) #18
  %i.u = load float, ptr %i.b, align 4, !tbaa !38
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.w = fmul reassoc nsz arcp contract afn double %i.v, 5.000000e-03 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, %i.h
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 5 uses
  %i.z = fmul reassoc nsz arcp contract afn double %i.w, %i.p
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 5 uses
  %i.ab = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !39
  %i.ae = fpext reassoc nsz arcp contract afn float %i.ad to double
  %i.af = fmul reassoc nsz arcp contract afn double %i.ae, 5.000000e-03 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn double %i.af, %i.h
  %i.ah = fadd reassoc nsz arcp contract afn double %i.ag, %i.ab
  %i.ai = fptrunc reassoc nsz arcp contract afn double %i.ah to float ; 4 uses
  %i.aj = fpext reassoc nsz arcp contract afn float %i.aa to double ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn double %i.af, %i.p
  %i.al = fadd reassoc nsz arcp contract afn double %i.ak, %i.aj
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.aq = fcmp reassoc nsz arcp contract afn oge float %2, %3 ; 3 uses
  %.112 = select nsz i1 %i.aq, float %2, float %3
  %. = select nsz i1 %i.aq, float %3, float %2
  %i.ar = fdiv reassoc nsz arcp contract afn float %.112, %. ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !41 ; 6 uses
  %i.au = fcmp reassoc nsz arcp contract afn ugt float %i.at, 1.000000e+00 ; 2 uses
  br i1 %i.aq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = fmul reassoc nsz arcp contract afn float %i.ar, %i.aa
  %i.aw = fmul reassoc nsz arcp contract afn float %i.at, %i.y
  %i.ax = fmul reassoc nsz arcp contract afn float %i.at, %i.ai
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ar, %i.am
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.az = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.ba = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.az
  %i.bb = fpext reassoc nsz arcp contract afn float %i.ar to double
  %i.bc = fmul reassoc nsz arcp contract afn double %i.ba, %i.bb
  %i.bd = fptrunc reassoc nsz arcp contract afn double %i.bc to float ; 2 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.aa
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bd, %i.am
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = fmul reassoc nsz arcp contract afn float %i.at, %i.ar
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bh = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.bi = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.bh ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, %i.aj
  %i.bk = fptrunc reassoc nsz arcp contract afn double %i.bj to float
  %i.bl = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.bm = fmul reassoc nsz arcp contract afn double %i.bi, %i.bl
  %i.bn = fptrunc reassoc nsz arcp contract afn double %i.bm to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi float [ %i.bg, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %.197 = phi nsz float [ %i.aa, %bb.g ], [ %i.bk, %bb.h ]
  %.1 = phi nsz float [ %i.am, %bb.g ], [ %i.bn, %bb.h ]
  %.193 = fmul reassoc nsz arcp contract afn float %.pn, %i.ai
  %.1101 = fmul reassoc nsz arcp contract afn float %.pn, %i.y
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.a
  %.3103 = phi nsz float [ %i.y, %bb.a ], [ %.1101, %bb.i ], [ %i.aw, %bb.d ], [ %i.y, %bb.e ] ; 3 uses
  %.399 = phi nsz float [ %i.aa, %bb.a ], [ %.197, %bb.i ], [ %i.av, %bb.d ], [ %i.be, %bb.e ] ; 3 uses
  %.395 = phi nsz float [ %i.ai, %bb.a ], [ %.193, %bb.i ], [ %i.ax, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.3 = phi nsz float [ %i.am, %bb.a ], [ %.1, %bb.i ], [ %i.ay, %bb.d ], [ %i.bf, %bb.e ] ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %4, %2
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.j ; 4 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %5, %3
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.r ; 4 uses
  %i.bs = fdiv reassoc nsz arcp contract afn float 5.000000e+00, %6 ; 2 uses
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bp, %.3103 ; 2 uses
  %square.i = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt
  %square21.i = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 3 uses
  %i.bu = fadd reassoc nsz arcp contract afn float %square.i, %square21.i
  %square22.i = fmul reassoc nsz arcp contract afn float %i.bs, %i.bs ; 5 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ugt float %i.bu, %square22.i
  br i1 %i.bv, label %bb.k, label %_get_grab.exit

bb.k:                                             ; preds = %bb.j
  %square23.i = fmul reassoc nsz arcp contract afn float %i.bp, %i.bp ; 3 uses
  %i.bw = fadd reassoc nsz arcp contract afn float %.399, %i.br ; 2 uses
  %square24.i = fmul reassoc nsz arcp contract afn float %i.bw, %i.bw
  %i.bx = fadd reassoc nsz arcp contract afn float %square24.i, %square23.i
  %i.by = fcmp reassoc nsz arcp contract afn ugt float %i.bx, %square22.i
  br i1 %i.by, label %bb.l, label %_get_grab.exit

bb.l:                                             ; preds = %bb.k
  %i.bz = fadd reassoc nsz arcp contract afn float %square21.i, %square23.i
  %i.ca = fcmp reassoc nsz arcp contract afn ugt float %i.bz, %square22.i
  br i1 %i.ca, label %bb.m, label %_get_grab.exit

bb.m:                                             ; preds = %bb.l
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bp, %.395 ; 2 uses
  %square25.i = fmul reassoc nsz arcp contract afn float %i.cb, %i.cb
  %i.cc = fadd reassoc nsz arcp contract afn float %square25.i, %square21.i
  %i.cd = fcmp reassoc nsz arcp contract afn ugt float %i.cc, %square22.i
  br i1 %i.cd, label %bb.n, label %_get_grab.exit

bb.n:                                             ; preds = %bb.m
  %i.ce = fadd reassoc nsz arcp contract afn float %.3, %i.br ; 2 uses
  %square26.i = fmul reassoc nsz arcp contract afn float %i.ce, %i.ce
  %i.cf = fadd reassoc nsz arcp contract afn float %square26.i, %square23.i
  %i.cg = fcmp reassoc nsz arcp contract afn ugt float %i.cf, %square22.i
  %..i = select i1 %i.cg, i32 0, i32 16
  br label %_get_grab.exit

_get_grab.exit:                                   ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i32 [ 8, %bb.m ], [ 2, %bb.j ], [ 4, %bb.k ], [ 1, %bb.l ], [ %..i, %bb.n ] ; 2 uses
  tail call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 1) #18
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.ci = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.ch) #18
  %.not = icmp eq i32 %i.ci, 0
  %i.cj = select reassoc nsz arcp contract afn i1 %.not, double 1.000000e+00, double 5.000000e-01
  %i.ck = fpext reassoc nsz arcp contract afn float %6 to double
  %i.cl = fdiv reassoc nsz arcp contract afn double %i.cj, %i.ck ; 2 uses
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1432
  %i.co = load double, ptr %i.cn, align 8, !tbaa !88
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, 3.000000e+00
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, %i.cl
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.cq) #18
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !82 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1408
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !134
  %i.cu = fmul reassoc nsz arcp contract afn double %i.ct, 5.000000e-01
  %i.cv = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1384
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !135
  %i.cy = fmul reassoc nsz arcp contract afn double %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 1400
  %i.da = load double, ptr %i.cz, align 8, !tbaa !136
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, %i.cv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 1392
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !137
  %i.de = fmul reassoc nsz arcp contract afn double %i.dd, %i.cv
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.cy, double noundef %i.db, double noundef %i.de, double noundef 8.000000e-01) #18
  tail call fastcc void @draw_overlay(ptr noundef %1, float noundef %.3103, float noundef %.399, float noundef %.395, float noundef %.3, i32 noundef %.0.i, float noundef %6)
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !82
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1432
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !88
  %i.di = fmul reassoc nsz arcp contract afn double %i.dh, %i.cl
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.di) #18
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !82 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1408
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !134
  %i.dm = fmul reassoc nsz arcp contract afn double %i.dl, 5.000000e-01
  %i.dn = fadd reassoc nsz arcp contract afn double %i.dm, 5.000000e-01 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 1384
  %i.dp = load double, ptr %i.do, align 8, !tbaa !135
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 1400
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !136
  %i.dt = fmul reassoc nsz arcp contract afn double %i.ds, %i.dn
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 1392
  %i.dv = load double, ptr %i.du, align 8, !tbaa !137
  %i.dw = fmul reassoc nsz arcp contract afn double %i.dv, %i.dn
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.dq, double noundef %i.dt, double noundef %i.dw, double noundef 8.000000e-01) #18
  tail call fastcc void @draw_overlay(ptr noundef %1, float noundef %.3103, float noundef %.399, float noundef %.395, float noundef %.3, i32 noundef %.0.i, float noundef %6)
  ret void
}

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_overlay(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef range(i32 0, 17) %5, float noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1432
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = fmul reassoc nsz arcp contract afn double %i.c, 1.000000e+01
  %i.e = fpext reassoc nsz arcp contract afn float %6 to double ; 2 uses
  %i.f = fdiv reassoc nsz arcp contract afn double %i.d, %i.e
  %i.g = fptrunc reassoc nsz arcp contract afn double %i.f to float ; 2 uses
  %i.h = fneg reassoc nsz arcp contract afn float %i.g
  %i.i = fpext reassoc nsz arcp contract afn float %i.h to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.i, double noundef 0.000000e+00) #18
  %i.j = fpext reassoc nsz arcp contract afn float %i.g to double ; 2 uses
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.j, double noundef 0.000000e+00) #18
  tail call void @cairo_move_to(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.i) #18
  tail call void @cairo_line_to(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.j) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  tail call void @cairo_save(ptr noundef %0) #18
  %i.k = fcmp reassoc nsz arcp contract afn ugt float %1, %2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fdiv reassoc nsz arcp contract afn float %1, %2
  %i.m = fpext reassoc nsz arcp contract afn float %i.l to double
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.m, double noundef 1.000000e+00) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = fdiv reassoc nsz arcp contract afn float %2, %1
  %i.o = fpext reassoc nsz arcp contract afn float %i.n to double
  tail call void @cairo_scale(ptr noundef %0, double noundef 1.000000e+00, double noundef %i.o) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink99 = phi float [ %1, %bb.c ], [ %2, %bb.b ]
  %i.p = fpext reassoc nsz arcp contract afn float %.sink99 to double
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.p, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_restore(ptr noundef %0) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  tail call void @cairo_save(ptr noundef %0) #18
  %i.q = fcmp reassoc nsz arcp contract afn ugt float %3, %4
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fdiv reassoc nsz arcp contract afn float %3, %4
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.s, double noundef 1.000000e+00) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = fdiv reassoc nsz arcp contract afn float %4, %3
  %i.u = fpext reassoc nsz arcp contract afn float %i.t to double
  tail call void @cairo_scale(ptr noundef %0, double noundef 1.000000e+00, double noundef %i.u) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink100 = phi float [ %3, %bb.f ], [ %4, %bb.e ]
  %i.v = fpext reassoc nsz arcp contract afn float %.sink100 to double
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.v, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_restore(ptr noundef %0) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.x = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.w) #18
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !88
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul reassoc nsz arcp contract afn <2 x double> %i.ac, <double 6.000000e+00, double 4.000000e+00>
  %i.ae = insertelement <2 x double> poison, double %i.e, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv reassoc nsz arcp contract afn <2 x double> %i.ad, %i.af
  %i.ah = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ag to <2 x float> ; 6 uses
  %i.ai = icmp eq i32 %5, 1
  br i1 %i.ai, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.aj = fpext reassoc nsz arcp contract afn <2 x float> %i.ah to <2 x double> ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ak, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.al = extractelement <2 x double> %i.aj, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = extractelement <2 x float> %i.ah, i64 1
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double ; 3 uses
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.an, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.ao = icmp eq i32 %5, 2
  br i1 %i.ao, label %.thread86, label %bb.j

.thread86:                                        ; preds = %bb.i
  %i.ap = fpext reassoc nsz arcp contract afn float %1 to double
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fpext reassoc nsz arcp contract afn float %i.aq to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.ap, double noundef 0.000000e+00, double noundef %i.ar, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread
  %.pre-phi = phi double [ %i.an, %bb.i ], [ %i.al, %.thread ] ; 3 uses
  %i.as = fpext reassoc nsz arcp contract afn float %1 to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.as, double noundef 0.000000e+00, double noundef %.pre-phi, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.at = icmp eq i32 %5, 4
  br i1 %i.at, label %.thread87, label %bb.k

.thread87:                                        ; preds = %bb.j
  %i.au = fneg reassoc nsz arcp contract afn float %2
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double
  %i.aw = extractelement <2 x float> %i.ah, i64 0
  %i.ax = fpext reassoc nsz arcp contract afn float %i.aw to double
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.av, double noundef %i.ax, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.thread86
  %.pre-phi91 = phi double [ %.pre-phi, %bb.j ], [ %i.an, %.thread86 ] ; 3 uses
  %i.ay = fneg reassoc nsz arcp contract afn float %2
  %i.az = fpext reassoc nsz arcp contract afn float %i.ay to double
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.az, double noundef %.pre-phi91, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.ba = icmp eq i32 %5, 8
  br i1 %i.ba, label %.thread88, label %bb.l

.thread88:                                        ; preds = %bb.k
  %i.bb = fpext reassoc nsz arcp contract afn float %3 to double
  %i.bc = extractelement <2 x float> %i.ah, i64 0
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.bb, double noundef 0.000000e+00, double noundef %i.bd, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %.thread87
  %.pre-phi89 = phi double [ %.pre-phi91, %bb.k ], [ %.pre-phi, %.thread87 ] ; 2 uses
  %i.be = fpext reassoc nsz arcp contract afn float %3 to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.be, double noundef 0.000000e+00, double noundef %.pre-phi89, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.bf = icmp eq i32 %5, 16
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = fneg reassoc nsz arcp contract afn float %4
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double
  %i.bi = extractelement <2 x float> %i.ah, i64 0
  %i.bj = fpext reassoc nsz arcp contract afn float %i.bi to double
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.bh, double noundef %i.bj, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  br label %bb.o

bb.n:                                             ; preds = %.thread88, %bb.l
  %.pre-phi90 = phi double [ %.pre-phi91, %.thread88 ], [ %.pre-phi89, %bb.l ]
  %i.bk = fneg reassoc nsz arcp contract afn float %4
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  tail call void @cairo_arc(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.bl, double noundef %.pre-phi90, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @cairo_stroke(ptr noundef %0) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !89  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.i = call i32 @dt_dev_get_preview_size(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18 ; 0 uses
  %i.j = load float, ptr %i.a, align 4, !tbaa !13 ; 7 uses
  %i.k = load float, ptr %i.b, align 4, !tbaa !13 ; 7 uses
  %i.l = fcmp reassoc nsz arcp contract afn ult float %i.j, %i.k ; 3 uses
  %.219 = select nsz i1 %i.l, float %i.k, float %i.j ; 12 uses
  %i.m = load i32, ptr @mouse_moved.old_grab, align 4, !tbaa !17 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !36
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double
  %i.q = fmul reassoc nsz arcp contract afn double %i.p, 5.000000e-01
  %i.r = fadd reassoc nsz arcp contract afn double %i.q, 5.000000e-01
  %i.s = fpext reassoc nsz arcp contract afn float %i.j to double ; 3 uses
  %i.t = fmul reassoc nsz arcp contract afn double %i.r, %i.s
  %i.u = fptrunc reassoc nsz arcp contract afn double %i.t to float ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !37
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, 5.000000e-01
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, 5.000000e-01
  %i.aa = fpext reassoc nsz arcp contract afn float %i.k to double ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn double %i.z, %i.aa
  %i.ac = fptrunc reassoc nsz arcp contract afn double %i.ab to float ; 3 uses
  %i.ad = load float, ptr %i.f, align 4, !tbaa !38
  %i.ae = fpext reassoc nsz arcp contract afn float %i.ad to double
  %i.af = fmul reassoc nsz arcp contract afn double %i.ae, 5.000000e-03 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn double %i.af, %i.s
  %i.ah = fptrunc reassoc nsz arcp contract afn double %i.ag to float ; 5 uses
  %i.ai = fmul reassoc nsz arcp contract afn double %i.af, %i.aa
  %i.aj = fptrunc reassoc nsz arcp contract afn double %i.ai to float ; 5 uses
  %i.ak = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !39
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.ao = fmul reassoc nsz arcp contract afn double %i.an, 5.000000e-03 ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn double %i.ao, %i.s
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, %i.ak
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float ; 4 uses
  %i.as = fpext reassoc nsz arcp contract afn float %i.aj to double ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn double %i.ao, %i.aa
  %i.au = fadd reassoc nsz arcp contract afn double %i.at, %i.as
  %i.av = fptrunc reassoc nsz arcp contract afn double %i.au to float ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %. = select nsz i1 %i.l, float %i.j, float %i.k
  %i.az = fdiv reassoc nsz arcp contract afn float %.219, %. ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !41 ; 6 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ugt float %i.bb, 1.000000e+00 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.bc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = fmul reassoc nsz arcp contract afn float %i.az, %i.aj
  %i.be = fmul reassoc nsz arcp contract afn float %i.bb, %i.ah
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bb, %i.ar
  %i.bg = fmul reassoc nsz arcp contract afn float %i.az, %i.av
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bb to double
  %i.bi = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.bh
  %i.bj = fpext reassoc nsz arcp contract afn float %i.az to double
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bi, %i.bj
  %i.bl = fptrunc reassoc nsz arcp contract afn double %i.bk to float ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.aj
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, %i.av
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bb, %i.az
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bb to double
  %i.bq = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.bp ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, %i.as
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  %i.bt = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.bu = fmul reassoc nsz arcp contract afn double %i.bq, %i.bt
  %i.bv = fptrunc reassoc nsz arcp contract afn double %i.bu to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi float [ %i.bo, %bb.g ], [ %i.az, %bb.h ] ; 2 uses
  %.1182 = phi nsz float [ %i.aj, %bb.g ], [ %i.bs, %bb.h ]
  %.1 = phi nsz float [ %i.av, %bb.g ], [ %i.bv, %bb.h ]
  %.1178 = fmul reassoc nsz arcp contract afn float %.pn, %i.ar
  %.1186 = fmul reassoc nsz arcp contract afn float %.pn, %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.a
end_hunk_0
begin_hunk_1_@mouse_moved:bb.a
  %.not225 = icmp eq i32 %i.fn, 4
  br i1 %.not225, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fj to double
  %i.fp = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.fo
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fa, 5.000000e-01
  %i.fr = fmul reassoc nsz arcp contract afn double %i.fq, %i.fp
  %i.fs = fptrunc reassoc nsz arcp contract afn double %i.fr to float
  %i.ft = fpext reassoc nsz arcp contract afn float %spec.select223 to double
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, 1.000000e+02
  %i.fv = fpext reassoc nsz arcp contract afn float %i.fs to double
  %i.fw = fdiv reassoc nsz arcp contract afn double %i.fu, %i.fv
  %i.fx = fptrunc reassoc nsz arcp contract afn double %i.fw to float
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !95
  call void @dt_bauhaus_slider_set(ptr noundef %i.fy, float noundef %i.fx) #18
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !96
  %i.gb = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.fg
  call void @dt_bauhaus_slider_set(ptr noundef %i.ga, float noundef %i.gb) #18
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.gc = fmul reassoc nsz arcp contract afn float %.219, 5.000000e-01
  %i.gd = fpext reassoc nsz arcp contract afn float %spec.select223 to double
  %i.ge = fmul reassoc nsz arcp contract afn double %i.gd, 1.000000e+02
  %i.gf = fpext reassoc nsz arcp contract afn float %i.gc to double
  %i.gg = fdiv reassoc nsz arcp contract afn double %i.ge, %i.gf
  %i.gh = fptrunc reassoc nsz arcp contract afn double %i.gg to float
  %i.gi = load ptr, ptr %i.d, align 8, !tbaa !95
  call void @dt_bauhaus_slider_set(ptr noundef %i.gi, float noundef %i.gh) #18
  %i.gj = call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.gk = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !17
  %i.gl = or i32 %i.gk, %4
  %i.gm = and i32 %i.gl, %i.gj
  %.not224 = icmp eq i32 %i.gm, 4
  br i1 %.not224, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fg
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !96
  call void @dt_bauhaus_slider_set(ptr noundef %i.gp, float noundef %i.gn) #18
  br label %bb.am

bb.ah:                                            ; preds = %bb.s
  %i.gq = fmul reassoc nsz arcp contract afn float %i.j, %1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !41 ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn ugt float %i.gs, 1.000000e+00
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gs, %.219
  %i.gv = select reassoc nsz arcp contract afn i1 %i.gt, float %.219, float %i.gu ; 3 uses
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, 5.000000e-01
  %i.gx = fpext reassoc nsz arcp contract afn float %i.gv to double
  %i.gy = fadd reassoc nsz arcp contract afn float %.3188, %i.u
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gq, %i.gy
  %i.ha = fpext reassoc nsz arcp contract afn float %i.gz to double ; 2 uses
  %i.hb = fcmp reassoc nsz arcp contract afn olt double %i.ha, 0.000000e+00
  %i.hc = select reassoc nsz arcp contract afn i1 %i.hb, double 0.000000e+00, double %i.ha ; 2 uses
  %i.hd = fcmp reassoc nsz arcp contract afn ogt double %i.hc, %i.gx
  %i.he = fptrunc reassoc nsz arcp contract afn double %i.hc to float
  %i.hf = select i1 %i.hd, float %i.gv, float %i.he
  %i.hg = fpext reassoc nsz arcp contract afn float %i.hf to double
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hg, 1.000000e+02
  %i.hi = fpext reassoc nsz arcp contract afn float %i.gw to double
  %i.hj = fdiv reassoc nsz arcp contract afn double %i.hh, %i.hi
  %i.hk = fptrunc reassoc nsz arcp contract afn double %i.hj to float
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !97
  call void @dt_bauhaus_slider_set(ptr noundef %i.hm, float noundef %i.hk) #18
  br label %bb.am

bb.ai:                                            ; preds = %bb.s
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !41 ; 2 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %i.ho, 1.000000e+00
  br i1 %i.hp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hq = fpext reassoc nnan nsz arcp contract afn float %i.ho to double
  %i.hr = fpext reassoc nsz arcp contract afn float %.219 to double
  %i.hs = fsub reassoc nnan nsz arcp contract afn double 2.000000e+00, %i.hq
  %i.ht = fmul reassoc nsz arcp contract afn double %i.hs, %i.hr
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hu = fpext reassoc nsz arcp contract afn float %.219 to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hv = phi reassoc nsz arcp contract afn double [ %i.ht, %bb.aj ], [ %i.hu, %bb.ak ]
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 5.000000e-01
  %i.hx = fptrunc reassoc nsz arcp contract afn double %i.hw to float ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, 2.000000e+00 ; 2 uses
  %i.hz = fpext reassoc nsz arcp contract afn float %i.hy to double
  %i.ia = fmul reassoc nsz arcp contract afn float %2, %i.k
  %i.ib = fadd reassoc nsz arcp contract afn float %i.ia, %.3184
  %i.ic = fsub reassoc nsz arcp contract afn float %i.ac, %i.ib
  %i.id = fpext reassoc nsz arcp contract afn float %i.ic to double ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn olt double %i.id, 0.000000e+00
  %i.if = select reassoc nsz arcp contract afn i1 %i.ie, double 0.000000e+00, double %i.id ; 2 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ogt double %i.if, %i.hz
  %i.ih = fptrunc reassoc nsz arcp contract afn double %i.if to float
  %i.ii = select i1 %i.ig, float %i.hy, float %i.ih
  %i.ij = fpext reassoc nsz arcp contract afn float %i.ii to double
  %i.ik = fmul reassoc nsz arcp contract afn double %i.ij, 1.000000e+02
  %i.il = fpext reassoc nsz arcp contract afn float %i.hx to double
  %i.im = fdiv reassoc nsz arcp contract afn double %i.ik, %i.il
  %i.in = fptrunc reassoc nsz arcp contract afn double %i.im to float
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !97
  call void @dt_bauhaus_slider_set(ptr noundef %i.ip, float noundef %i.in) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.s, %bb.ae, %bb.ad, %bb.ag, %bb.af, %bb.y, %bb.x, %bb.aa, %bb.z, %bb.u, %bb.al, %bb.ah
  call void @dt_control_queue_redraw_center() #18
  br label %bb.as

bb.an:                                            ; preds = %bb.r, %_get_grab.exit
  switch i32 %.0189, label %bb.ar [
    i32 0, label %bb.aq
    i32 1, label %.sink.split
    i32 2, label %bb.ao
    i32 4, label %bb.ap
    i32 8, label %bb.ao
    i32 16, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an, %bb.an
  br label %.sink.split

bb.aq:                                            ; preds = %bb.an
  br i1 %i.bw, label %bb.ar, label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.an, %bb.ap, %bb.ao
  %.str.7.sink = phi ptr [ @.str.7, %bb.ao ], [ @.str.6, %bb.an ], [ @.str.8, %bb.ap ], [ @.str.9, %bb.aq ]
  call void @dt_control_change_cursor(ptr noundef nonnull %.str.7.sink) #18
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.an, %bb.aq
  store i32 %.0189, ptr @mouse_moved.old_grab, align 4, !tbaa !17
  call void @dt_control_queue_redraw_center() #18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am, %bb.t
  %.0 = phi i32 [ 0, %bb.t ], [ 1, %bb.am ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_control_queue_redraw_center() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readnone captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %4, 1
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @button_released(ptr nofree noundef readnone captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !164
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !109 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 4, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !166
  %i.l = load <2 x i32>, ptr %i.h, align 16, !tbaa !17 ; 5 uses
  %i.m = sitofp reassoc nsz arcp contract afn <2 x i32> %i.l to <2 x float> ; 4 uses
  %i.n = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.m, splat (float 5.000000e-01)
  %i.o = fpext reassoc nnan nsz arcp contract afn <2 x float> %i.n to <2 x double>
  %i.p = load <2 x float>, ptr %i.i, align 4, !tbaa !13
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.m
  %i.r = fpext reassoc nsz arcp contract afn <2 x float> %i.q to <2 x double>
  %i.s = fmul reassoc nsz arcp contract afn <2 x double> %i.r, splat (double 5.000000e-01)
  %i.t = fadd reassoc nsz arcp contract afn <2 x double> %i.s, %i.o
  %i.u = fptrunc reassoc nsz arcp contract afn <2 x double> %i.t to <2 x float>
  %i.v = load <2 x i32>, ptr %4, align 4, !tbaa !17
  %i.w = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x float>
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !111
  %.not169 = icmp eq i32 %i.y, 0
  br i1 %.not169, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !166 ; 2 uses
  %i.ab = extractelement <2 x float> %i.m, i64 0
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %i.ab
  %i.ad = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.ac
  %i.ae = extractelement <2 x float> %i.m, i64 1
  %i.af = fmul reassoc nsz arcp contract afn float %i.aa, %i.ae
  %i.ag = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.af
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ah = extractelement <2 x i32> %i.l, i64 0
  %i.ai = extractelement <2 x i32> %i.l, i64 1
  %. = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ah)
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %. to float
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !166
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.aj
  %i.an = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !167 ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ugt float %i.ap, 1.000000e+00 ; 2 uses
  %i.ar = fdiv reassoc nsz arcp contract afn float %i.an, %i.ap
  %i.as = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.ap
  %i.at = fdiv reassoc nsz arcp contract afn float %i.an, %i.as
  %.0151 = select nsz i1 %i.aq, float %i.an, float %i.ar
  %.0150 = select nsz i1 %i.aq, float %i.at, float %i.an
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1152 = phi nsz float [ %i.ad, %bb.c ], [ %.0151, %bb.d ]
  %.1 = phi nsz float [ %i.ag, %bb.c ], [ %.0150, %bb.d ]
  %i.au = load float, ptr %i.e, align 4, !tbaa !168
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3C23D70A ; 2 uses
  %i.aw = extractelement <2 x i32> %i.l, i64 0
  %i.ax = extractelement <2 x i32> %i.l, i64 1
  %.172 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ax)
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %.172 to double
  %i.az = fdiv reassoc nsz arcp contract afn double 1.000000e+02, %i.ay
  %i.ba = fptrunc reassoc nsz arcp contract afn double %i.az to float ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169 ; 2 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.bc, %i.ba
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !170 ; 2 uses
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.bg, 1.000000e-03
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bg, float 1.000000e-03 ; 2 uses
  %i.bj = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.bi ; 2 uses
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.bi, 5.000000e-01
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !171 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.bm, 2
  %switch.select = select i1 %switch.selectcmp, float f0x37800000, float 0.000000e+00
  %switch.selectcmp174 = icmp eq i32 %i.bm, 1
  %switch.select175 = select i1 %switch.selectcmp174, float 3.906250e-03, float %switch.select ; 2 uses
  %i.bn = tail call ptr @dt_alloc_aligned(i64 noundef 64) #18 ; 7 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %alloc_tea_states.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bn, i8 0, i64 64, i1 false)
  br label %alloc_tea_states.exit

alloc_tea_states.exit:                            ; preds = %bb.e, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !172 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !173
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !174 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %alloc_tea_states.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bw = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.u
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.w, %i.by ; 2 uses
  %i.ca = fcmp reassoc nsz arcp contract afn une float %switch.select175, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bp, 0.000000e+00
  %.not171 = icmp eq i32 %i.g, 0                  ; 2 uses
  %.pre = load i32, ptr %i.bv, align 4, !tbaa !175
  %i.cd = extractelement <2 x float> %i.bz, i64 1
  %i.ce = extractelement <2 x float> %i.bz, i64 0
  %i.cf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.be
  br label %bb.g

._crit_edge197:                                   ; preds = %._crit_edge, %alloc_tea_states.exit
  tail call void @free(ptr noundef %i.bn) #18
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph196, %._crit_edge
  %i.cg = phi i32 [ %.pre, %.lr.ph196 ], [ %i.cw, %._crit_edge ]
  %indvars.iv201 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next202, %._crit_edge ] ; 3 uses
  %i.ch = phi i32 [ %i.bt, %.lr.ph196 ], [ %i.cx, %._crit_edge ]
  %i.ci = sext i32 %i.cg to i64
  %i.cj = shl nsw i64 %i.ci, 2
  %i.ck = mul i64 %i.cj, %indvars.iv201           ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  %i.cn = trunc nuw nsw i64 %indvars.iv201 to i32 ; 2 uses
  %i.co = mul nuw nsw i32 %i.ch, %i.cn
  store i32 %i.co, ptr %i.bn, align 4, !tbaa !17
  %i.cp = load i32, ptr %i.bv, align 4, !tbaa !175 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.cr = uitofp nsz nneg i32 %i.cn to float
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cd, %i.cr
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %.1
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ct)
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cu, float %i.bj)
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.g
  %i.cw = phi i32 [ %i.cp, %bb.g ], [ %i.lo, %.loopexit ]
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.cx = load i32, ptr %i.bs, align 4, !tbaa !174 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next202, %i.cy
  br i1 %i.cz, label %bb.g, label %._crit_edge197

bb.h:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.da = trunc nuw nsw i64 %indvars.iv to i32
  %i.db = uitofp nsz nneg i32 %i.da to float
  %i.dc = fadd reassoc nsz arcp contract afn float %i.ce, %i.db
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %.1152
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dd)
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.de, float %i.bj)
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.cv
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dg, float %i.bk) ; 2 uses
  %i.di = fcmp reassoc nsz arcp contract afn ult float %i.dh, %i.av
  br i1 %i.di, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = fsub reassoc nsz arcp contract afn float %i.dh, %i.av
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 1.000000e+02
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.cf ; 4 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ult float %i.dl, 1.000000e+00
  br i1 %i.dm, label %bb.j, label %.thread178

.thread178:                                       ; preds = %bb.i
  %i.dn = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dn
  %.sroa.0.0.copyload223 = load <4 x float>, ptr %i.do, align 4, !tbaa !13, !alias.scope !176
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.dp = fcmp reassoc nsz arcp contract afn ugt float %i.dl, 0.000000e+00
  br i1 %i.dp, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  br i1 %i.ca, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dl, f0x40490FDB
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.dq)
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, 5.000000e-01
  %i.dt = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ds
  %i.du = load i32, ptr %i.bn, align 4, !tbaa !17
  %i.dv = load i32, ptr %i.cb, align 4, !tbaa !17 ; 4 uses
  %i.dw = shl i32 %i.dv, 4
  %i.dx = add i32 %i.dw, -1556008596
  %i.dy = add i32 %i.dv, -1640531527
  %i.dz = lshr i32 %i.dv, 5
  %i.ea = add nuw nsw i32 %i.dz, -939442524
  %i.eb = xor i32 %i.dx, %i.dy
  %i.ec = xor i32 %i.eb, %i.ea
  %i.ed = add i32 %i.ec, %i.du                    ; 4 uses
  %i.ee = shl i32 %i.ed, 4
  %i.ef = add i32 %i.ee, -1383041155
  %i.eg = add i32 %i.ed, -1640531527
  %i.eh = xor i32 %i.ef, %i.eg
  %i.ei = lshr i32 %i.ed, 5
  %i.ej = add nuw i32 %i.ei, 2123724318
  %i.ek = xor i32 %i.eh, %i.ej
  %i.el = add i32 %i.ek, %i.dv                    ; 4 uses
  %i.em = shl i32 %i.el, 4
  %i.en = add i32 %i.em, -1556008596
  %i.eo = add i32 %i.el, 1013904242
  %i.ep = lshr i32 %i.el, 5
  %i.eq = add nuw nsw i32 %i.ep, -939442524
  %i.er = xor i32 %i.en, %i.eo
  %i.es = xor i32 %i.er, %i.eq
  %i.et = add i32 %i.es, %i.ed                    ; 4 uses
  %i.eu = shl i32 %i.et, 4
  %i.ev = add i32 %i.eu, -1383041155
  %i.ew = add i32 %i.et, 1013904242
  %i.ex = xor i32 %i.ev, %i.ew
end_hunk_1
