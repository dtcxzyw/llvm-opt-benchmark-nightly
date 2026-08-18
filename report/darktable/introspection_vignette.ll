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
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #19
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
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
  %i.a = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #20 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !11 ; 4 uses
  %6 = fcmp reassoc nsz arcp contract afn ogt double %i.c, 0.000000e+00
  %7 = fadd reassoc nnan nsz arcp contract afn double %i.c, -1.000000e+00
  %8 = select i1 %6, double %7, double -1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load double, ptr %i.d, align 8, !tbaa !15
  %10 = fmul reassoc nsz arcp contract afn double %9, 1.000000e-02 ; 2 uses
  %11 = fmul reassoc nsz arcp contract afn double %10, %8
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %13 = fcmp reassoc nsz arcp contract afn olt double %i.c, 0.000000e+00
  %.neg = fsub reassoc nsz arcp contract afn double -1.000000e+00, %i.c
  %14 = select reassoc nsz arcp contract afn i1 %13, double %.neg, double -1.000000e+00
  %15 = fmul reassoc nsz arcp contract afn double %10, %14
  %i.e = load <2 x double>, ptr %1, align 8, !tbaa !16
  %16 = insertelement <4 x double> poison, double %11, i64 2
  %17 = insertelement <4 x double> %16, double %15, i64 3
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.g = shufflevector <4 x double> %i.f, <4 x double> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = fptrunc <4 x double> %i.g to <4 x float> ; 3 uses
  store <4 x float> %i.h, ptr %i.a, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.l = extractelement <4 x float> %i.h, i64 3
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, -2.000000e+00
  store float %i.m, ptr %i.k, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23
  %.not88 = icmp eq i32 %i.o, 0
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = extractelement <4 x float> %i.h, i64 2
  %i.q = fneg reassoc nsz arcp contract afn float %i.p
  store float %i.q, ptr %12, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load <2 x double>, ptr %i.r, align 8, !tbaa !16
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  store <2 x float> %i.u, ptr %i.s, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.v, align 4, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.w, align 4, !tbaa !17
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.x = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #20 ; 5 uses
  %i.y = load <4 x float>, ptr %1, align 4, !tbaa !17
  store <4 x float> %i.y, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !17
  store <2 x float> %i.ab, ptr %i.aa, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !17
  store <2 x float> %i.ah, ptr %i.ag, align 4, !tbaa !17
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.ai = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #20 ; 5 uses
  %i.aj = load <4 x float>, ptr %1, align 4, !tbaa !17
  store <4 x float> %i.aj, ptr %i.ai, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load <2 x float>, ptr %i.ak, align 4, !tbaa !17
  store <2 x float> %i.am, ptr %i.al, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !17
  store <2 x float> %i.as, ptr %i.ar, align 4, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h
  %.sink93 = phi ptr [ %i.ai, %bb.h ], [ %i.x, %bb.g ], [ %i.a, %bb.f ] ; 3 uses
  %.sink91 = phi i32 [ %i.au, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sink93, i64 36
  store i32 %.sink91, ptr %i.av, align 4, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink93, i64 40
  store i32 0, ptr %i.aw, align 4, !tbaa !32
  store ptr %.sink93, ptr %3, align 8, !tbaa !33
  store i32 44, ptr %4, align 4, !tbaa !35
  store i32 4, ptr %5, align 4, !tbaa !35
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !53
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, 5.000000e-01
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, 5.000000e-01
  %i.h = fpext reassoc nsz arcp contract afn float %2 to double ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn double %i.g, %i.h
  %i.j = fptrunc reassoc nsz arcp contract afn double %i.i to float ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !55
  %i.m = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, 5.000000e-01
  %i.o = fadd reassoc nsz arcp contract afn double %i.n, 5.000000e-01
  %i.p = fpext reassoc nsz arcp contract afn float %3 to double ; 3 uses
  %i.q = fmul reassoc nsz arcp contract afn double %i.o, %i.p
  %i.r = fptrunc reassoc nsz arcp contract afn double %i.q to float ; 2 uses
  %i.s = fpext reassoc nsz arcp contract afn float %i.j to double
  %i.t = fpext reassoc nsz arcp contract afn float %i.r to double
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.s, double noundef %i.t) #19
  %i.u = load float, ptr %i.b, align 4, !tbaa !56
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.w = fmul reassoc nsz arcp contract afn double %i.v, 5.000000e-03 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, %i.h
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 5 uses
  %i.z = fmul reassoc nsz arcp contract afn double %i.w, %i.p
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 5 uses
  %i.ab = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !57
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.aq = fcmp reassoc nsz arcp contract afn oge float %2, %3 ; 3 uses
  %.112 = select nsz i1 %i.aq, float %2, float %3
  %. = select nsz i1 %i.aq, float %3, float %2
  %i.ar = fdiv reassoc nsz arcp contract afn float %.112, %. ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !59 ; 6 uses
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
  %.1102 = phi nsz float [ %i.am, %bb.g ], [ %i.bn, %bb.h ]
  %.pn = phi float [ %i.bg, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %.194 = phi nsz float [ %i.aa, %bb.g ], [ %i.bk, %bb.h ]
  %.1 = fmul reassoc nsz arcp contract afn float %.pn, %i.y
  %.198 = fmul reassoc nsz arcp contract afn float %.pn, %i.ai
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.a
  %.3104 = phi nsz float [ %i.am, %bb.a ], [ %.1102, %bb.i ], [ %i.ay, %bb.d ], [ %i.bf, %bb.e ] ; 3 uses
  %.3100 = phi nsz float [ %i.ai, %bb.a ], [ %.198, %bb.i ], [ %i.ax, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.396 = phi nsz float [ %i.aa, %bb.a ], [ %.194, %bb.i ], [ %i.av, %bb.d ], [ %i.be, %bb.e ] ; 3 uses
  %.3 = phi nsz float [ %i.y, %bb.a ], [ %.1, %bb.i ], [ %i.aw, %bb.d ], [ %i.y, %bb.e ] ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %4, %2
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.j ; 4 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %5, %3
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.r ; 4 uses
  %i.bs = fdiv reassoc nsz arcp contract afn float 5.000000e+00, %6 ; 2 uses
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bp, %.3 ; 2 uses
  %square.i = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt
  %square21.i = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 3 uses
  %i.bu = fadd reassoc nsz arcp contract afn float %square.i, %square21.i
  %square22.i = fmul reassoc nsz arcp contract afn float %i.bs, %i.bs ; 5 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ugt float %i.bu, %square22.i
  br i1 %i.bv, label %bb.k, label %_get_grab.exit

bb.k:                                             ; preds = %bb.j
end_hunk_0
