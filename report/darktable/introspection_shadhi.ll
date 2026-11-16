Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_shadhi?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"shadows and highlights\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"modify the tonal range of the shadows and highlights\0Aof an image by enhancing local contrast\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"corrective and creative\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"linear or non-linear, Lab, display-referred\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"non-linear, Lab\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"non-linear, Lab, display-referred\00", align 1
@__const.process.Labmax = private unnamed_addr constant [4 x float] [float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00], align 16
@__const.process.Labmin = private unnamed_addr constant [4 x float] [float 0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"shadows\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"highlights\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"whitepoint\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"shadhi_algo\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"shadows_ccorrect\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"highlights_ccorrect\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"correct shadows\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"correct highlights\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"shift white point\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"spatial extent\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"filter to use for softening. bilateral avoids halos\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"compress the effect on shadows/highlights and\0Apreserve mid-tones\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"adjust saturation of shadows\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"adjust saturation of highlights\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 5, ptr @.str.47, i64 48, ptr getelementptr (i8, ptr @introspection_linear, i64 1056), i64 1120, i64 688 }, align 8
@introspection_init.f0 = internal global [4 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.24, i32 0, [4 x i8] zeroinitializer, ptr @.str.25 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.26, i32 1, [4 x i8] zeroinitializer, ptr @.str.27 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.28, i32 2, [4 x i8] zeroinitializer, ptr @.str.29 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [21 x i8] c"DT_IOP_GAUSSIAN_ZERO\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"order 0\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"DT_IOP_GAUSSIAN_ONE\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"order 1\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"DT_IOP_GAUSSIAN_TWO\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"order 2\00", align 1
@introspection_init.f11 = internal global [3 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.30, i32 0, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.32, i32 1, [4 x i8] zeroinitializer, ptr @.str.33 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [21 x i8] c"SHADHI_ALGO_GAUSSIAN\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"SHADHI_ALGO_BILATERAL\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"bilateral filter\00", align 1
@introspection_init.f12 = internal global [13 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr getelementptr (i8, ptr @introspection_linear, i64 704), ptr getelementptr (i8, ptr @introspection_linear, i64 792), ptr getelementptr (i8, ptr @introspection_linear, i64 880), ptr getelementptr (i8, ptr @introspection_linear, i64 968), ptr null], align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"reserved2\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"low_approximation\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"dt_gaussian_order_t\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"white point adjustment\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"shadows color adjustment\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"highlights color adjustment\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"dt_iop_shadhi_algo_t\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"soften with\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"dt_iop_shadhi_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.38, ptr @.str.34, ptr @.str.34, ptr @.str.39, i64 4, i64 0, ptr null }, i64 3, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.11, ptr @.str.11, ptr @.str.39, i64 4, i64 4, ptr null }, float 1.000000e-01, float 5.000000e+02, float 1.000000e+02, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.7, ptr @.str.7, ptr @.str.39, i64 4, i64 8, ptr null }, float -1.000000e+02, float 1.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.9, ptr @.str.9, ptr @.str.41, i64 4, i64 12, ptr null }, float -1.000000e+01, float 1.000000e+01, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.8, ptr @.str.8, ptr @.str.39, i64 4, i64 16, ptr null }, float -1.000000e+02, float 1.000000e+02, float -5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.35, ptr @.str.35, ptr @.str.39, i64 4, i64 20, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.12, ptr @.str.12, ptr @.str.39, i64 4, i64 24, ptr null }, float 0.000000e+00, float 1.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.14, ptr @.str.14, ptr @.str.42, i64 4, i64 28, ptr null }, float 0.000000e+00, float 1.000000e+02, float 1.000000e+02, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.15, ptr @.str.15, ptr @.str.43, i64 4, i64 32, ptr null }, float 0.000000e+00, float 1.000000e+02, float 5.000000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.44, ptr @.str.36, ptr @.str.36, ptr @.str.39, i64 4, i64 36, ptr null }, i32 0, i32 -1, i32 127, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.40, ptr @.str.37, ptr @.str.37, ptr @.str.39, i64 4, i64 40, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x358637BD, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.10, ptr @.str.10, ptr @.str.46, i64 4, i64 44, ptr null }, i64 2, ptr null, i32 1, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.47, ptr @.str.39, ptr @.str.39, ptr @.str.39, i64 48, i64 0, ptr null }, i64 12, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #19
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !48
  store i32 %i.b, ptr %i.a, align 4, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !51 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.e, ptr %i.f, align 4, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <4 x float>, ptr %i.g, align 4, !tbaa !12 ; 2 uses
  %i.j = fmul reassoc arcp contract afn <4 x float> %i.i, <float 5.000000e-01, float poison, float -5.000000e-01, float poison>
  %6 = shufflevector <4 x float> %i.j, <4 x float> %i.i, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %6, ptr %i.h, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.m, ptr %i.n, align 4, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store <2 x float> <float 1.000000e+02, float 0.000000e+00>, ptr %i.o, align 4, !tbaa !12
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !57
  store i32 %i.q, ptr %i.p, align 4, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !58 ; 2 uses
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load <4 x float>, ptr %i.v, align 4, !tbaa !12
  store <4 x float> %i.x, ptr %i.w, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !12
  store <2 x float> %i.aa, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store float %i.ac, ptr %i.ad, align 4, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.ae, align 4, !tbaa !53
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.af = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.ag = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !63 ; 2 uses
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store float %i.aj, ptr %i.ak, align 4, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load <4 x float>, ptr %i.al, align 4, !tbaa !12
  store <4 x float> %i.an, ptr %i.am, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !12
  store <2 x float> %i.aq, ptr %i.ap, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load float, ptr %i.ar, align 4, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store float %i.as, ptr %i.at, align 4, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !53
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ax = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.ay = load i32, ptr %1, align 4, !tbaa !67
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !68 ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bf = load <4 x float>, ptr %i.bd, align 4, !tbaa !12
  store <4 x float> %i.bf, ptr %i.be, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !12
  store <2 x float> %i.bi, ptr %i.bh, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store float %i.bk, ptr %i.bl, align 4, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !71
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink121 = phi ptr [ %i.ax, %bb.e ], [ %i.af, %bb.d ], [ %i.p, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sink119 = phi float [ %i.bq, %bb.e ], [ f0x3C23D70A, %bb.d ], [ f0x3C23D70A, %bb.c ], [ f0x3C23D70A, %bb.b ]
  %.sink118 = phi float [ %i.ba, %bb.e ], [ %i.ai, %bb.d ], [ %i.s, %bb.c ], [ %i.d, %bb.b ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sink121, i64 40
  store float %.sink119, ptr %i.br, align 4, !tbaa !72
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %.sink118, 0.000000e+00
  %i.bt = zext i1 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink121, i64 44
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !73
  store ptr %.sink121, ptr %3, align 8, !tbaa !74
  store i32 48, ptr %4, align 4, !tbaa !75
  store i32 5, ptr %5, align 4, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
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
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge231, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !31  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33   ; 3 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load float, ptr %i.p, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !12
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, splat (float f0x3C23D70A)
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.t, <2 x float> splat (float -1.000000e+00))
  %i.v = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.u, <2 x float> splat (float 1.000000e+00))
  %i.w = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.v, splat (float 2.000000e+00) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.y = load float, ptr %i.x, align 4, !tbaa !76
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, f0x3C23D70A
  %i.aa = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float f0x3C23D70A) ; 2 uses
  %i.ac = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %i.m, <7 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <7 x float> poison), !tbaa !12
  %i.ad = shufflevector <7 x float> %i.ac, <7 x float> poison, <4 x i32> <i32 0, i32 4, i32 5, i32 6> ; 2 uses
  %i.ae = fmul reassoc arcp contract afn <4 x float> %i.ad, <float poison, float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A>
  %6 = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.af = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %6, <4 x float> <float 1.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>) ; 3 uses
  %i.ag = extractelement <4 x float> %i.af, i64 0
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.o
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ah, %i.q ; 2 uses
  %i.aj = extractelement <4 x float> %i.af, i64 1
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aj, float 9.900000e-01) ; 2 uses
  %i.al = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.am = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.al, <2 x float> splat (float 1.000000e+00))
  %i.an = fpext nnan ninf <2 x float> %i.am to <2 x double>
  %i.ao = fadd reassoc nnan nsz arcp contract afn <2 x double> %i.an, splat (double -5.000000e-01)
  %i.ap = insertelement <2 x float> %i.w, float 0.000000e+00, i64 1
  %i.aq = insertelement <2 x float> %i.w, float 0.000000e+00, i64 0
  %i.ar = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ap, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x float> splat (float -1.000000e+00), <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.at = fpext fast <2 x float> %i.as to <2 x double>
  %i.au = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ao, %i.at
  %i.av = fadd reassoc nnan nsz arcp contract afn <2 x double> %i.au, splat (double 5.000000e-01)
  %i.aw = fptrunc reassoc nnan nsz arcp contract afn <2 x double> %i.av to <2 x float> ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !39 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = and i32 %i.ay, 128
  %.not217 = icmp ne i32 %i.bc, 0
  %or.cond.not = select i1 %i.bb, i1 %.not217, i1 false ; 2 uses
  br i1 %or.cond.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !40
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp eq i32 %i.ba, 0
  %i.bg = and i32 %i.ay, 64
  %i.bh = icmp ne i32 %i.bg, 0                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !40 ; 2 uses
  br i1 %i.bf, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.Labmax, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.Labmin, i64 16, i1 false)
  br i1 %i.bh, label %.preheader256.preheader, label %.loopexit

.preheader256.preheader:                          ; preds = %bb.d
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.a, align 16, !tbaa !12
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.b, align 16, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader256.preheader, %bb.d
  %i.bk = call ptr @dt_gaussian_init(i32 noundef %i.i, i32 noundef %i.k, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.ai, i32 noundef %i.l) #19 ; 3 uses
  %.not219.not = icmp eq ptr %i.bk, null
  br i1 %.not219.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.bk, ptr noundef %2, ptr noundef %3) #19
  call void @dt_gaussian_free(ptr noundef nonnull %i.bk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.f:                                             ; preds = %.thread, %bb.c
  %i.bl = phi float [ %i.be, %.thread ], [ %i.bj, %bb.c ]
  %i.bm = tail call ptr @dt_bilateral_init(i32 noundef %i.i, i32 noundef %i.k, float noundef %i.ai, float noundef 1.000000e+02) #19 ; 5 uses
  %.not218.not = icmp eq ptr %i.bm, null
  br i1 %.not218.not, label %.critedge231, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.bm, ptr noundef %2) #19
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.bm) #19
  tail call void @dt_bilateral_slice(ptr noundef nonnull %i.bm, ptr noundef %2, ptr noundef %3, float noundef -1.000000e+00) #19
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.bm) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.bn = phi float [ %i.bl, %bb.g ], [ %i.bj, %bb.e ] ; 2 uses
  %i.bo = phi i1 [ %or.cond.not, %bb.g ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bp = sext i32 %i.i to i64
  %i.bq = sext i32 %i.k to i64
  %i.br = shl nsw i64 %i.bp, 2
  %i.bs = mul i64 %i.br, %i.bq                    ; 2 uses
  %.not278 = icmp eq i64 %i.bs, 0
  br i1 %.not278, label %.critedge231, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.h
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.w ; 3 uses
  %i.bu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ak ; 2 uses
  %i.bv = and i32 %i.ay, 8
  %.not225 = icmp eq i32 %i.bv, 0                 ; 3 uses
  %i.bw = and i32 %i.ay, 16
  %.not228 = icmp eq i32 %i.bw, 0
  %i.bx = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bz = and <4 x i32> %i.by, <i32 4, i32 2, i32 1, i32 32>
  %i.ca = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bt, zeroinitializer ; 2 uses
  %i.cb = icmp eq <4 x i32> %i.bz, zeroinitializer ; 4 uses
  %i.cc = extractelement <2 x i1> %i.ca, i64 0
  %i.cd = extractelement <2 x i1> %i.ca, i64 1
  %i.ce = extractelement <2 x float> %i.bt, i64 0
  %i.cf = extractelement <2 x float> %i.bt, i64 1
  %i.cg = extractelement <2 x float> %i.as, i64 0
  %i.ch = extractelement <2 x float> %i.as, i64 1
  %i.ci = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.cj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.ck = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bu
  %i.cl = extractelement <4 x i1> %i.cb, i64 3
  %i.cm = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = extractelement <2 x float> %i.aw, i64 1
  %i.cp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bu
  %i.cq = extractelement <4 x i1> %i.cb, i64 0
  %i.cr = extractelement <4 x i1> %i.cb, i64 1
  %i.cs = extractelement <4 x i1> %i.cb, i64 2
  %i.ct = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = extractelement <2 x float> %i.aw, i64 0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph277, %._crit_edge271
  %.0189275 = phi i64 [ 0, %.lr.ph277 ], [ %i.iu, %._crit_edge271 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0189275 ; 3 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, f0x3C23D70A ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 7.812500e-03 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !12
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, 7.812500e-03 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0189275 ; 3 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = fmul reassoc nsz arcp contract afn float %i.dg, f0x3C23D70A
  %i.dj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.di ; 3 uses
  %i.dk = fcmp reassoc nsz arcp contract afn ogt float %i.cy, 0.000000e+00
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cy, %i.ci
  %i.dm = select reassoc nsz arcp contract afn i1 %i.dk, float %i.dl, float %i.cy ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt float %i.dj, 0.000000e+00
  %i.do = fmul reassoc nsz arcp contract afn float %i.dj, %i.cj
  %i.dp = select reassoc nsz arcp contract afn i1 %i.dn, float %i.do, float %i.dj ; 4 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.ck
  %i.dr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dq ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt float %i.dr, 1.000000e+00
  %i.dt = fcmp reassoc nsz arcp contract afn olt float %i.dr, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.dt, float 0.000000e+00, float %i.dr
  %i.du = select reassoc nsz arcp contract afn i1 %i.ds, float 1.000000e+00, float %spec.select
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dp, -5.000000e-01
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.ch ; 2 uses
  %i.dx = fneg reassoc nsz arcp contract afn float %i.dw
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.ab
  %.0188262 = phi float [ %i.cf, %.lr.ph ], [ %i.eu, %bb.ab ] ; 3 uses
  %.sroa.22.0261 = phi float [ %i.de, %.lr.ph ], [ %i.gb, %bb.ab ]
  %.sroa.0239.0260 = phi float [ %i.dm, %.lr.ph ], [ %i.fk, %bb.ab ] ; 4 uses
  %.sroa.14245.0259 = phi float [ %i.db, %.lr.ph ], [ %i.fx, %bb.ab ]
  br i1 %.not225, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dy = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0239.0260, 1.000000e+00
  br i1 %i.dy, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = fcmp reassoc nsz arcp contract afn olt float %.sroa.0239.0260, 0.000000e+00
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dz, float 0.000000e+00, float %.sroa.0239.0260
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %i.eb = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.k ], [ %i.ea, %bb.l ], [ %.sroa.0239.0260, %bb.j ] ; 5 uses
  %i.ec = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eb ; 2 uses
  %i.ed = fcmp reassoc nsz arcp contract afn olt float %i.ec, 0.000000e+00
  %i.ee = select reassoc nsz arcp contract afn i1 %i.ed, float %i.dx, float %i.dw
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, 5.000000e-01 ; 4 uses
  br i1 %i.bo, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eg = fcmp reassoc nsz arcp contract afn ogt float %i.ef, 1.000000e+00
  br i1 %i.eg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = fcmp reassoc nsz arcp contract afn olt float %i.ef, 0.000000e+00
  %i.ei = select reassoc nsz arcp contract afn i1 %i.eh, float 0.000000e+00, float %i.ef
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %i.ej = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.n ], [ %i.ei, %bb.o ], [ %i.ef, %bb.m ] ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ec, i64 1 ; 2 uses
  %i.em = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.el) ; 2 uses
  %i.en = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.em, %i.cn
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.em, <2 x float> %i.cn
  %i.ep = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.eo
  %i.eq = call reassoc nsz arcp contract afn <2 x float> @llvm.copysign.v2f32(<2 x float> %i.ep, <2 x float> %i.el) ; 2 uses
  %i.er = fcmp reassoc nsz arcp contract afn ogt float %.0188262, 1.000000e+00
end_hunk_0
