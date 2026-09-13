Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_blurs?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.3 = private unnamed_addr constant [9 x i8] c"creative\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@__const.process.maxv = private unnamed_addr constant [4 x float] [float 1.000000e+09, float 1.000000e+09, float 1.000000e+09, float 1.000000e+09], align 16
@__const.process.minv = private unnamed_addr constant [4 x float] [float -1.000000e+09, float -1.000000e+09, float -1.000000e+09, float -1.000000e+09], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/darktable/darktable/src/iop/blurs.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" px\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"blades\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"concavity\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"linearity\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\C2\B0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"curvature\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.19 = private unnamed_addr constant [88 x i8] c"size of the blur in pixels\0A<b>caution</b>: doubling the radius quadruples the run-time!\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"shifts towards a star shape as value approaches blades-1\00", align 1
@.str.21 = private unnamed_addr constant [76 x i8] c"adjust straightness of edges from 0=perfect circle\0Ato 1=completely straight\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"set amount by which to rotate shape around its center\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"orientation of the motion's path\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"amount to curve the motion relative\0Ato its overall orientation\00", align 1
@.str.25 = private unnamed_addr constant [80 x i8] c"select which portion of the path to use,\0Aallowing the path to become asymmetric\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.41, i64 36, ptr getelementptr (i8, ptr @introspection_linear, i64 792), i64 1120, i64 688 }, align 8
@introspection_init.f0 = internal global [4 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.26, i32 0, [4 x i8] zeroinitializer, ptr @.str.27 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.28, i32 1, [4 x i8] zeroinitializer, ptr @.str.29 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.30, i32 2, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [13 x i8] c"DT_BLUR_LENS\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"lens\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"DT_BLUR_MOTION\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"motion\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"DT_BLUR_GAUSSIAN\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@introspection_init.f9 = internal global [10 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr getelementptr (i8, ptr @introspection_linear, i64 704), ptr null], align 16
@.str.32 = private unnamed_addr constant [52 x i8] c"[blurs] out of memory, skippping build_pixel_kernel\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"[blurs] out of memory, skipping build_gui_kernel\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"dt_iop_blur_type_t\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"blur type\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"blur radius\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"diaphragm blades\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"dt_iop_blurs_params_t\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.34, ptr @.str.10, ptr @.str.10, ptr @.str.35, i64 4, i64 0, ptr null }, i64 3, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.36, ptr @.str.8, ptr @.str.8, ptr @.str.37, i64 4, i64 4, ptr null }, i32 4, i32 256, i32 8, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.36, ptr @.str.11, ptr @.str.11, ptr @.str.38, i64 4, i64 8, ptr null }, i32 3, i32 11, i32 5, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.12, ptr @.str.12, ptr @.str.12, i64 4, i64 12, ptr null }, float 1.000000e+00, float 9.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.13, ptr @.str.13, ptr @.str.13, i64 4, i64 16, ptr null }, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.14, ptr @.str.14, ptr @.str.14, i64 4, i64 20, ptr null }, float f0xBFC90FDB, float f0x3FC90FDB, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.16, ptr @.str.16, ptr @.str.40, i64 4, i64 24, ptr null }, float f0xC0490FDB, float f0x40490FDB, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.17, ptr @.str.17, ptr @.str.17, i64 4, i64 28, ptr null }, float -2.000000e+00, float 2.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.18, ptr @.str.18, ptr @.str.18, i64 4, i64 32, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.41, ptr @.str.42, ptr @.str.42, ptr @.str.42, i64 36, i64 0, ptr null }, i64 9, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %i.e = sext i32 %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %1, i64 %i.e, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28)) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load float, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !42
  %i.g = fdiv reassoc nsz arcp contract afn float %i.d, %i.f
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float 1.000000e+00)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.j to float
  %i.l = fdiv reassoc nsz arcp contract afn float %i.k, %i.h
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.l) ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt float %i.m, 2.000000e+00
  %spec.select14 = select i1 %i.n, float %i.m, float 2.000000e+00
  %spec.select = fptosi float %spec.select14 to i32
  store <2 x float> <float 2.500000e+00, float 3.500000e+00>, ptr %4, align 4, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.o, align 4, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.p, align 4, !tbaa !77
  %i.q = load i32, ptr %i.b, align 4, !tbaa !46
  %i.r = icmp eq i32 %i.q, 2
  %i.s = select i1 %i.r, i32 0, i32 %spec.select
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.s, ptr %i.t, align 4, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.u, align 4, !tbaa !79
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !29  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load float, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.j = load i32, ptr %i.i, align 4, !tbaa !108
  %i.k = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.j, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fdiv reassoc nsz arcp contract afn float %i.f, %i.h
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float 1.000000e+00)
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 64) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to float
  %i.q = fdiv reassoc nsz arcp contract afn float %i.p, %i.m
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.q) ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.r, 2.000000e+00
  %spec.select238 = select i1 %i.s, float %i.r, float 2.000000e+00
  %spec.select = fptosi float %spec.select238 to i32
  %spec.select.fr = freeze i32 %spec.select       ; 19 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !46
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i32 %spec.select.fr, -1
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fmul reassoc nnan nsz arcp contract afn float %i.w, f0x3EB504F3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.maxv, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.minv, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ac = call ptr @dt_gaussian_init(i32 noundef %i.z, i32 noundef %i.ab, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.x, i32 noundef 0) #22 ; 3 uses
  %.not232 = icmp eq ptr %i.ac, null
  br i1 %.not232, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.ac, ptr noundef %2, ptr noundef %3) #22
  call void @dt_gaussian_free(ptr noundef nonnull %i.ac) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef nonnull %4, ptr noundef %5) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !109
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !110
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.af                ; 8 uses
  %.not295 = icmp eq i64 %i.aj, 0
  br i1 %.not295, label %._crit_edge292, label %iter.check773

iter.check773:                                    ; preds = %bb.f
  %min.iters.check748 = icmp ult i64 %i.aj, 5
  br i1 %min.iters.check748, label %.lr.ph291.preheader, label %vector.main.loop.iter.check749

vector.main.loop.iter.check749:                   ; preds = %iter.check773
  %min.iters.check750 = icmp ult i64 %i.aj, 17
  br i1 %min.iters.check750, label %vec.epilog.ph777, label %vector.ph751

vector.ph751:                                     ; preds = %vector.main.loop.iter.check749
  %i.ak = and i64 %i.aj, 15                       ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, i64 16, i64 %i.ak      ; 2 uses
  %n.vec752 = sub i64 %i.aj, %i.am                ; 3 uses
  br label %vector.body753

vector.body753:                                   ; preds = %vector.body753, %vector.ph751
  %index754 = phi i64 [ 0, %vector.ph751 ], [ %index.next769, %vector.body753 ]
  %vec.ind755 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph751 ], [ %vec.ind.next770, %vector.body753 ] ; 5 uses
  %i.an = shl <4 x i64> %vec.ind755, splat (i64 2)
  %step.add756 = shl <4 x i64> %vec.ind755, splat (i64 2)
  %step.add.2 = shl <4 x i64> %vec.ind755, splat (i64 2)
  %step.add.3 = shl <4 x i64> %vec.ind755, splat (i64 2)
  %i.ao = or disjoint <4 x i64> %i.an, splat (i64 3) ; 2 uses
  %i.ap = extractelement <4 x i64> %i.ao, i64 0
  %i.aq = add <4 x i64> %step.add756, splat (i64 19) ; 2 uses
  %i.ar = extractelement <4 x i64> %i.aq, i64 0
  %i.as = add <4 x i64> %step.add.2, splat (i64 35) ; 2 uses
  %i.at = extractelement <4 x i64> %i.as, i64 0
  %i.au = add <4 x i64> %step.add.3, splat (i64 51) ; 2 uses
  %i.av = extractelement <4 x i64> %i.au, i64 0
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %wide.vec757 = load <16 x float>, ptr %i.aw, align 4, !tbaa !45
  %strided.vec758 = shufflevector <16 x float> %wide.vec757, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec759 = load <16 x float>, ptr %i.ax, align 4, !tbaa !45
  %strided.vec760 = shufflevector <16 x float> %wide.vec759, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec761 = load <16 x float>, ptr %i.ay, align 4, !tbaa !45
  %strided.vec762 = shufflevector <16 x float> %wide.vec761, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec763 = load <16 x float>, ptr %i.az, align 4, !tbaa !45
  %strided.vec764 = shufflevector <16 x float> %wide.vec763, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep765 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %i.ao
  %wide.gep766 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %i.aq
  %wide.gep767 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %i.as
  %wide.gep768 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %i.au
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec758, <4 x ptr> align 4 %wide.gep765, <4 x i1> splat (i1 true)), !tbaa !45
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec760, <4 x ptr> align 4 %wide.gep766, <4 x i1> splat (i1 true)), !tbaa !45
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec762, <4 x ptr> align 4 %wide.gep767, <4 x i1> splat (i1 true)), !tbaa !45
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec764, <4 x ptr> align 4 %wide.gep768, <4 x i1> splat (i1 true)), !tbaa !45
  %index.next769 = add nuw i64 %index754, 16      ; 2 uses
  %vec.ind.next770 = add nuw <4 x i64> %vec.ind755, splat (i64 16)
  %i.ba = icmp eq i64 %index.next769, %n.vec752
  br i1 %i.ba, label %vec.epilog.iter.check775, label %vector.body753, !llvm.loop !80

vec.epilog.iter.check775:                         ; preds = %vector.body753
  %min.epilog.iters.check776 = icmp samesign ult i64 %i.am, 5
  br i1 %min.epilog.iters.check776, label %.lr.ph291.preheader, label %vec.epilog.ph777, !prof !111

.lr.ph291.preheader:                              ; preds = %vec.epilog.vector.body782, %iter.check773, %vec.epilog.iter.check775
  %.0205289.ph = phi i64 [ 0, %iter.check773 ], [ %n.vec752, %vec.epilog.iter.check775 ], [ %n.vec778, %vec.epilog.vector.body782 ]
  br label %.lr.ph291

vec.epilog.ph777:                                 ; preds = %vector.main.loop.iter.check749, %vec.epilog.iter.check775
  %vec.epilog.resume.val772 = phi i64 [ %n.vec752, %vec.epilog.iter.check775 ], [ 0, %vector.main.loop.iter.check749 ] ; 2 uses
  %i.bb = and i64 %i.aj, 3                        ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 4, i64 %i.bb
  %n.vec778 = sub i64 %i.aj, %i.bd                ; 2 uses
  %broadcast.splatinsert779 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val772, i64 0
  %broadcast.splat780 = shufflevector <4 x i64> %broadcast.splatinsert779, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction781 = add nuw <4 x i64> %broadcast.splat780, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body782

vec.epilog.vector.body782:                        ; preds = %vec.epilog.vector.body782, %vec.epilog.ph777
  %index783 = phi i64 [ %vec.epilog.resume.val772, %vec.epilog.ph777 ], [ %index.next788, %vec.epilog.vector.body782 ]
  %vec.ind784 = phi <4 x i64> [ %induction781, %vec.epilog.ph777 ], [ %vec.ind.next789, %vec.epilog.vector.body782 ] ; 2 uses
  %i.be = shl <4 x i64> %vec.ind784, splat (i64 2)
  %i.bf = or disjoint <4 x i64> %i.be, splat (i64 3) ; 2 uses
  %i.bg = extractelement <4 x i64> %i.bf, i64 0
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  %wide.vec785 = load <16 x float>, ptr %i.bh, align 4, !tbaa !45
  %strided.vec786 = shufflevector <16 x float> %wide.vec785, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep787 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %i.bf
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec786, <4 x ptr> align 4 %wide.gep787, <4 x i1> splat (i1 true)), !tbaa !45
  %index.next788 = add nuw i64 %index783, 4       ; 2 uses
  %vec.ind.next789 = add nuw <4 x i64> %vec.ind784, splat (i64 4)
  %i.bi = icmp eq i64 %index.next788, %n.vec778
  br i1 %i.bi, label %.lr.ph291.preheader, label %vec.epilog.vector.body782, !llvm.loop !81

._crit_edge292:                                   ; preds = %.lr.ph291, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.y

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %.0205289 = phi i64 [ %i.bo, %.lr.ph291 ], [ %.0205289.ph, %.lr.ph291.preheader ] ; 2 uses
  %i.bj = shl i64 %.0205289, 2
  %i.bk = or disjoint i64 %i.bj, 3                ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !45
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  store float %i.bm, ptr %i.bn, align 4, !tbaa !45
  %i.bo = add nuw i64 %.0205289, 1                ; 2 uses
  %exitcond351.not = icmp eq i64 %i.bo, %i.aj
  br i1 %exitcond351.not, label %._crit_edge292, label %.lr.ph291, !llvm.loop !82

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !109 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !110
  %.fr = freeze i32 %i.bs                         ; 3 uses
  %i.bt = load <2 x i32>, ptr %5, align 4, !tbaa !49
  %i.bu = load <2 x i32>, ptr %4, align 4, !tbaa !49
  %i.bv = sub nsw <2 x i32> %i.bt, %i.bu          ; 2 uses
  %i.bw = shl nuw nsw i32 %spec.select.fr, 1      ; 3 uses
  %i.bx = or disjoint i32 %i.bw, 1                ; 2 uses
  %6 = zext nneg i32 %i.bx to i64                 ; 17 uses
  %i.by = mul nuw nsw i64 %6, %6                  ; 10 uses
  %i.bz = shl nuw i64 %i.by, 2                    ; 4 uses
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #22 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = shl i64 %i.by, 3
  %i.cc = tail call ptr @dt_alloc_aligned(i64 noundef %i.cb) #22 ; 12 uses
  %i.cd = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #22 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cd, i64 64) ]
  %i.ce = icmp ne ptr %i.ca, null
  %i.cf = icmp ne ptr %i.cc, null
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = icmp ne ptr %i.cd, null
  %or.cond3 = select i1 %or.cond, i1 %i.cg, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.ca) #22
  tail call void @free(ptr noundef %i.cc) #22
  tail call void @free(ptr noundef %i.cd) #22
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ch = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #22 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.32) #22
  br label %_build_pixel_kernel.exit

bb.k:                                             ; preds = %bb.i
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !46
  switch i32 %i.ci, label %iter.check [
    i32 0, label %bb.l
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !50
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to float ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !51 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.cp = load float, ptr %i.co, align 4, !tbaa !52
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, f0x40490FDB
  %i.cr = uitofp nneg i32 %i.bx to float
  %i.cs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !53
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.asin.f32(float %i.cn)
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 2.000000e+00
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cu, f0x40490FDB ; 2 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cw
  %i.cz = fmul reassoc nnan nsz arcp contract afn float %i.cl, 2.000000e+00
  %i.da = fdiv reassoc nsz arcp contract afn float %i.cy, %i.cz
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.da)
  %i.dc = uitofp nneg i32 %i.bw to float
  %i.dd = fmul reassoc nnan nsz arcp contract afn float %i.dc, 5.000000e-01
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, -1.000000e+00 ; 2 uses
  %i.df = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.de
  %i.dg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.de
  %i.dh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cl
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %bb.l
  %.033.i.i = phi i64 [ %i.do, %._crit_edge.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.di = add nsw i64 %.033.i.i, -1
  %i.dj = uitofp reassoc nsz arcp contract afn i64 %i.di to float
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.df
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, -1.000000e+00 ; 2 uses
  %i.dm = mul nuw i64 %.033.i.i, %6
  %i.dn = getelementptr [4 x i8], ptr %i.ch, i64 %i.dm
  br label %bb.m

._crit_edge.i.i:                                  ; preds = %bb.m
  %i.do = add nuw nsw i64 %.033.i.i, 1            ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %i.do, %6
  br i1 %exitcond36.not.i.i, label %_create_gauss_kernel.exit.sink.split.i, label %.preheader.i.i

bb.m:                                             ; preds = %bb.m, %.preheader.i.i
  %.03032.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ek, %bb.m ] ; 3 uses
  %i.dp = add nsw i64 %.03032.i.i, -1
  %i.dq = uitofp reassoc nsz arcp contract afn i64 %i.dp to float
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dg
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, -1.000000e+00 ; 2 uses
  %i.dt = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.dl, float noundef %i.ds) #23
  %i.du = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ds, float %i.dl)
  %i.dv = fadd reassoc nsz arcp contract afn float %i.cq, %i.du
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.cl
  %i.dx = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.dw)
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.cn
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.asin.f32(float %i.dy)
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 2.000000e+00
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.cx
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 5.000000e-01
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dh
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.ed)
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.db, %i.ee
  %i.eg = fadd reassoc nsz arcp contract afn float %i.dt, %i.cs
  %i.eh = fcmp reassoc nsz arcp contract afn oge float %i.ef, %i.eg
  %i.ei = uitofp i1 %i.eh to float
  %i.ej = getelementptr [4 x i8], ptr %i.dn, i64 %.03032.i.i
  store float %i.ei, ptr %i.ej, align 4, !tbaa !45, !alias.scope !112
  %i.ek = add nuw nsw i64 %.03032.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ek, %6
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.m

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %i.ch, i8 0, i64 %i.bz, i1 false), !tbaa !45, !alias.scope !113
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.em = load float, ptr %i.el, align 4, !tbaa !54
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, f0x40490FDB
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.er = load float, ptr %i.eq, align 4, !tbaa !56
  tail call fastcc void @_create_motion_kernel(ptr noundef %i.ch, i64 noundef range(i64 -2147483647, 2147483648) %6, float noundef %i.en, float noundef %i.ep, float noundef %i.er)
  br label %_create_gauss_kernel.exit.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.es = uitofp nneg i32 %i.bw to float
  %i.et = fmul reassoc nnan nsz arcp contract afn float %i.es, 5.000000e-01
  %i.eu = fadd reassoc nsz arcp contract afn float %i.et, -1.000000e+00 ; 3 uses
  %i.ev = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eu
  %min.iters.check = icmp ult i32 %spec.select.fr, 4
  %n.vec = and i64 %6, 2147483640                 ; 2 uses
  %broadcast.splatinsert394 = insertelement <8 x float> poison, float %i.eu, i64 0
  %broadcast.splat395 = shufflevector <8 x float> %broadcast.splatinsert394, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ew = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat395
  %i.ex = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eu
  br label %.preheader.i46.i

.preheader.i46.i:                                 ; preds = %._crit_edge.i48.i, %bb.o
  %.022.i.i = phi i64 [ %i.fp, %._crit_edge.i48.i ], [ 0, %bb.o ] ; 3 uses
  %i.ey = add nsw i64 %.022.i.i, -1
  %i.ez = uitofp reassoc nsz arcp contract afn i64 %i.ey to float
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, %i.ev
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, -1.000000e+00 ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.fb ; 2 uses
  %i.fd = mul nuw i64 %.022.i.i, %6
  %i.fe = getelementptr [4 x i8], ptr %i.ca, i64 %i.fd ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.i46.i
  %.01921.i.i.ph = phi i64 [ 0, %.preheader.i46.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader.i46.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.fc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ff = add nsw <8 x i64> %vec.ind, splat (i64 -1)
  %i.fg = uitofp <8 x i64> %i.ff to <8 x float>
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, %i.ew
  %i.fi = fadd reassoc nsz arcp contract afn <8 x float> %i.fh, splat (float -1.000000e+00) ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.fi, %i.fi
  %i.fk = fadd reassoc nsz arcp contract afn <8 x float> %i.fj, %broadcast.splat
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %i.fk, splat (float -4.000000e+00)
  %i.fm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fl)
  %i.fn = getelementptr [4 x i8], ptr %i.fe, i64 %index
  store <8 x float> %i.fm, ptr %i.fn, align 4, !tbaa !45, !alias.scope !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %scalar.ph.preheader, label %vector.body, !llvm.loop !89

._crit_edge.i48.i:                                ; preds = %scalar.ph
  %i.fp = add nuw nsw i64 %.022.i.i, 1            ; 2 uses
  %exitcond25.not.i.i = icmp eq i64 %i.fp, %6
  br i1 %exitcond25.not.i.i, label %iter.check, label %.preheader.i46.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01921.i.i = phi i64 [ %i.fz, %scalar.ph ], [ %.01921.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fq = add nsw i64 %.01921.i.i, -1
  %i.fr = uitofp reassoc nsz arcp contract afn i64 %i.fq to float
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.ex
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, -1.000000e+00 ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, %i.ft
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.fc
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, -4.000000e+00
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.fw)
  %i.fy = getelementptr [4 x i8], ptr %i.fe, i64 %.01921.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !45, !alias.scope !114
  %i.fz = add nuw nsw i64 %.01921.i.i, 1          ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %i.fz, %6
  br i1 %exitcond.not.i47.i, label %._crit_edge.i48.i, label %scalar.ph, !llvm.loop !90

_create_gauss_kernel.exit.sink.split.i:           ; preds = %._crit_edge.i.i, %bb.n
  tail call fastcc void @_blur_2D_Bspline(ptr noundef %i.ch, ptr noundef nonnull %i.ca, i64 noundef range(i64 -2147483647, 2147483648) %6, i64 noundef range(i64 -2147483647, 2147483648) %6)
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i48.i, %_create_gauss_kernel.exit.sink.split.i, %bb.k
  %min.iters.check397 = icmp eq i32 %spec.select.fr, 0
  br i1 %min.iters.check397, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check398 = icmp ult i32 %spec.select.fr, 3
  br i1 %min.iters.check398, label %vec.epilog.ph, label %vector.ph399

vector.ph399:                                     ; preds = %vector.main.loop.iter.check
  %i.ga = and i64 %i.by, 24
  %n.vec400 = and i64 %i.by, 4611686018427387872  ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next409, %vector.body401 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph399 ], [ %i.gf, %vector.body401 ]
  %vec.phi403 = phi <8 x float> [ zeroinitializer, %vector.ph399 ], [ %i.gg, %vector.body401 ]
  %vec.phi404 = phi <8 x float> [ zeroinitializer, %vector.ph399 ], [ %i.gh, %vector.body401 ]
  %vec.phi405 = phi <8 x float> [ zeroinitializer, %vector.ph399 ], [ %i.gi, %vector.body401 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index402 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 96
  %wide.load = load <8 x float>, ptr %i.gb, align 64, !tbaa !45
  %wide.load406 = load <8 x float>, ptr %i.gc, align 32, !tbaa !45
  %wide.load407 = load <8 x float>, ptr %i.gd, align 64, !tbaa !45
  %wide.load408 = load <8 x float>, ptr %i.ge, align 32, !tbaa !45
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load, %vec.phi ; 2 uses
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load406, %vec.phi403 ; 2 uses
  %i.gh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load407, %vec.phi404 ; 2 uses
  %i.gi = fadd reassoc nsz arcp contract afn <8 x float> %wide.load408, %vec.phi405 ; 2 uses
  %index.next409 = add nuw i64 %index402, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next409, %n.vec400
  br i1 %i.gj, label %vec.epilog.iter.check, label %vector.body401, !llvm.loop !91

vec.epilog.iter.check:                            ; preds = %vector.body401
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.gg, %i.gf
  %bin.rdx411 = fadd reassoc nsz arcp contract afn <8 x float> %i.gh, %bin.rdx
  %bin.rdx412 = fadd reassoc nsz arcp contract afn <8 x float> %i.gi, %bin.rdx411
  %i.gk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx412) ; 2 uses
  %min.epilog.iters.check = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec400, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.gk, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %n.vec414 = add nsw i64 %i.by, -1               ; 2 uses
  %i.gl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index415 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next418, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi416 = phi <4 x float> [ %i.gl, %vec.epilog.ph ], [ %i.gn, %vec.epilog.vector.body ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index415
  %wide.load417 = load <4 x float>, ptr %i.gm, align 16, !tbaa !45
  %i.gn = fadd reassoc nsz arcp contract afn <4 x float> %wide.load417, %vec.phi416 ; 2 uses
  %index.next418 = add nuw i64 %index415, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next418, %n.vec414
  br i1 %i.go, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gn)
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.middle.block, %iter.check, %vec.epilog.iter.check
  %.09.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec400, %vec.epilog.iter.check ], [ %n.vec414, %vec.epilog.middle.block ]
  %.078.i.i.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.gk, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.gt, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.078.i.i = phi float [ %i.gs, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.09.i.i
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !45
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, %.078.i.i ; 4 uses
  %i.gt = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i50.i = icmp eq i64 %i.gt, %i.by
  br i1 %exitcond.not.i50.i, label %iter.check440, label %.lr.ph.i.i, !llvm.loop !93

iter.check440:                                    ; preds = %.lr.ph.i.i
  %min.iters.check423 = icmp eq i32 %spec.select.fr, 0
  br i1 %min.iters.check423, label %.lr.ph.i54.i.preheader, label %vector.main.loop.iter.check424

vector.main.loop.iter.check424:                   ; preds = %iter.check440
  %min.iters.check425 = icmp ult i32 %spec.select.fr, 3
  br i1 %min.iters.check425, label %vec.epilog.ph444, label %vector.ph426

vector.ph426:                                     ; preds = %vector.main.loop.iter.check424
  %i.gu = and i64 %i.by, 24
  %n.vec427 = and i64 %i.by, 4611686018427387872  ; 3 uses
  %broadcast.splatinsert428 = insertelement <8 x float> poison, float %i.gs, i64 0
  %broadcast.splat429 = shufflevector <8 x float> %broadcast.splatinsert428, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.gv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat429
  %i.gw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat429
  %i.gx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat429
  %i.gy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat429
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph426
  %index431 = phi i64 [ 0, %vector.ph426 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index431 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 64 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 96 ; 2 uses
  %wide.load432 = load <8 x float>, ptr %i.gz, align 64, !tbaa !45
  %wide.load433 = load <8 x float>, ptr %i.ha, align 32, !tbaa !45
  %wide.load434 = load <8 x float>, ptr %i.hb, align 64, !tbaa !45
  %wide.load435 = load <8 x float>, ptr %i.hc, align 32, !tbaa !45
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load432, %i.gv
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %wide.load433, %i.gw
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load434, %i.gx
  %i.hg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load435, %i.gy
  store <8 x float> %i.hd, ptr %i.gz, align 64, !tbaa !45
  store <8 x float> %i.he, ptr %i.ha, align 32, !tbaa !45
  store <8 x float> %i.hf, ptr %i.hb, align 64, !tbaa !45
  store <8 x float> %i.hg, ptr %i.hc, align 32, !tbaa !45
  %index.next436 = add nuw i64 %index431, 32      ; 2 uses
  %i.hh = icmp eq i64 %index.next436, %n.vec427
  br i1 %i.hh, label %vec.epilog.iter.check442, label %vector.body430, !llvm.loop !94

vec.epilog.iter.check442:                         ; preds = %vector.body430
  %min.epilog.iters.check443 = icmp eq i64 %i.gu, 0
  br i1 %min.epilog.iters.check443, label %.lr.ph.i54.i.preheader, label %vec.epilog.ph444, !prof !115

vec.epilog.ph444:                                 ; preds = %vector.main.loop.iter.check424, %vec.epilog.iter.check442
  %vec.epilog.resume.val439 = phi i64 [ %n.vec427, %vec.epilog.iter.check442 ], [ 0, %vector.main.loop.iter.check424 ]
  %n.vec445 = add nsw i64 %i.by, -1               ; 2 uses
  %broadcast.splatinsert446 = insertelement <4 x float> poison, float %i.gs, i64 0
  %broadcast.splat447 = shufflevector <4 x float> %broadcast.splatinsert446, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat447
  br label %vec.epilog.vector.body448

vec.epilog.vector.body448:                        ; preds = %vec.epilog.vector.body448, %vec.epilog.ph444
  %index449 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph444 ], [ %index.next451, %vec.epilog.vector.body448 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index449 ; 2 uses
  %wide.load450 = load <4 x float>, ptr %i.hj, align 16, !tbaa !45
  %i.hk = fmul reassoc nsz arcp contract afn <4 x float> %wide.load450, %i.hi
  store <4 x float> %i.hk, ptr %i.hj, align 16, !tbaa !45
  %index.next451 = add nuw i64 %index449, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next451, %n.vec445
  br i1 %i.hl, label %.lr.ph.i54.i.preheader, label %vec.epilog.vector.body448, !llvm.loop !95

.lr.ph.i54.i.preheader:                           ; preds = %vec.epilog.vector.body448, %iter.check440, %vec.epilog.iter.check442
  %.06.i.i.ph = phi i64 [ 0, %iter.check440 ], [ %n.vec427, %vec.epilog.iter.check442 ], [ %n.vec445, %vec.epilog.vector.body448 ]
  %i.hm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gs
  br label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %.lr.ph.i54.i.preheader, %.lr.ph.i54.i
  %.06.i.i = phi i64 [ %i.hq, %.lr.ph.i54.i ], [ %.06.i.i.ph, %.lr.ph.i54.i.preheader ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.06.i.i ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !45
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, %i.hm
  store float %i.hp, ptr %i.hn, align 4, !tbaa !45
  %i.hq = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %i.hq, %i.by
  br i1 %exitcond.not.i55.i, label %_normalize.exit.i, label %.lr.ph.i54.i, !llvm.loop !96

_normalize.exit.i:                                ; preds = %.lr.ph.i54.i
  tail call void @free(ptr noundef %i.ch) #22
  br label %_build_pixel_kernel.exit

_build_pixel_kernel.exit:                         ; preds = %bb.j, %_normalize.exit.i
  %i.hr = sub i32 0, %spec.select.fr              ; 2 uses
  %.not222249 = icmp slt i32 %spec.select.fr, 0   ; 2 uses
  br i1 %.not222249, label %.preheader244, label %.preheader245.lr.ph

.preheader245.lr.ph:                              ; preds = %_build_pixel_kernel.exit
  %i.hs = sext i32 %i.bq to i64
  %i.ht = sext i32 %i.hr to i64                   ; 4 uses
  %i.hu = zext nneg i32 %spec.select.fr to i64    ; 2 uses
  %i.hv = add nuw i32 %spec.select.fr, 1          ; 2 uses
  %invariant.gep381 = getelementptr [4 x i8], ptr %i.ca, i64 %i.hu
  %indvars.iv.next.prol = add nsw i64 %i.ht, 1
  %i.hw = icmp eq i32 %spec.select.fr, 0
  br label %.preheader245

.preheader245:                                    ; preds = %.preheader245.lr.ph, %._crit_edge
  %indvars.iv306 = phi i64 [ %i.ht, %.preheader245.lr.ph ], [ %indvars.iv.next307, %._crit_edge ] ; 3 uses
  %.0204250 = phi i32 [ 0, %.preheader245.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %i.hx = add nsw i64 %indvars.iv306, %i.hu
  %i.hy = mul nuw nsw i64 %i.hx, %6
  %i.hz = mul nsw i64 %indvars.iv306, %i.hs       ; 3 uses
  %gep382 = getelementptr [4 x i8], ptr %invariant.gep381, i64 %i.hy ; 3 uses
  %gep.prol = getelementptr [4 x i8], ptr %gep382, i64 %i.ht
  %i.ia = load float, ptr %gep.prol, align 4, !tbaa !45 ; 2 uses
  %i.ib = fcmp reassoc nsz arcp contract afn ogt float %i.ia, f0x358637BD
  br i1 %i.ib, label %bb.p, label %.prol.loopexit

bb.p:                                             ; preds = %.preheader245
  %i.ic = add nsw i64 %i.hz, %i.ht
  %i.id = shl nsw i64 %i.ic, 2
  %i.ie = sext i32 %.0204250 to i64               ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ie
  store i64 %i.id, ptr %i.if, align 8, !tbaa !116
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ie
  store float %i.ia, ptr %i.ig, align 4, !tbaa !45
  %i.ih = add nsw i32 %.0204250, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.preheader245, %bb.p
  %.2.prol = phi i32 [ %i.ih, %bb.p ], [ %.0204250, %.preheader245 ] ; 2 uses
  br i1 %i.hw, label %._crit_edge, label %.preheader245.new

.preheader244:                                    ; preds = %._crit_edge, %_build_pixel_kernel.exit
  %.0204.lcssa = phi i32 [ 0, %_build_pixel_kernel.exit ], [ %.2.lcssa, %._crit_edge ] ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !110 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.preheader243.lr.ph, label %._crit_edge288.split

.preheader243.lr.ph:                              ; preds = %.preheader244
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.im = load i32, ptr %i.il, align 4, !tbaa !109 ; 6 uses
  %i.in = icmp sgt i32 %i.im, 0
  %i.io = sext i32 %i.im to i64
  %i.ip = sub i32 %.fr, %spec.select.fr
  %i.iq = add nsw i32 %.fr, -1
  %i.ir = add nsw i32 %i.bq, -1                   ; 3 uses
  %i.is = sext i32 %i.bq to i64                   ; 5 uses
  %i.it = icmp sgt i32 %.0204.lcssa, 0            ; 2 uses
  br i1 %i.in, label %.preheader243.preheader, label %._crit_edge288.split

.preheader243.preheader:                          ; preds = %.preheader243.lr.ph
  %i.iu = sub nsw i32 %i.bq, %spec.select.fr      ; 2 uses
  %i.iv = sext i32 %i.hr to i64                   ; 8 uses
  %i.iw = sext i32 %spec.select.fr to i64         ; 4 uses
  %i.ix = add i32 %spec.select.fr, 1              ; 2 uses
  %i.iy = sext i32 %.fr to i64
  %i.iz = extractelement <2 x i32> %i.bv, i64 0
  %i.ja = sext i32 %i.iz to i64                   ; 3 uses
  %wide.trip.count349 = zext nneg i32 %i.ij to i64
  %wide.trip.count328 = zext nneg i32 %i.im to i64 ; 3 uses
  %i.jb = sext i32 %i.iu to i64
  %invariant.gep384 = getelementptr [4 x i8], ptr %i.ca, i64 %i.iw
  %wide.trip.count = zext i32 %.0204.lcssa to i64 ; 11 uses
  %wide.trip.count333 = zext nneg i32 %i.im to i64
  %wide.trip.count344 = zext nneg i32 %i.im to i64
  %i.jc = sext i32 %i.iu to i64
  %wide.trip.count338 = zext nneg i32 %.0204.lcssa to i64
  %i.jd = extractelement <2 x i32> %i.bv, i64 1
  %min.iters.check651 = icmp ult i32 %spec.select.fr, 4
  %min.iters.check653 = icmp ult i32 %spec.select.fr, 8
  %i.je = and i64 %6, 8
  %n.vec655 = and i64 %6, 2147483632              ; 3 uses
  %i.jf = add nsw i64 %n.vec655, %i.iv            ; 2 uses
  %broadcast.splatinsert660 = insertelement <8 x i64> poison, i64 %i.is, i64 0
  %broadcast.splat661 = shufflevector <8 x i64> %broadcast.splatinsert660, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert662 = insertelement <8 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat663 = shufflevector <8 x i32> %broadcast.splatinsert662, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert664 = insertelement <8 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat665 = shufflevector <8 x i64> %broadcast.splatinsert664, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat665, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %min.epilog.iters.check709.not.not = icmp eq i64 %i.je, 0
  %n.vec711 = and i64 %6, 2147483640              ; 2 uses
  %i.jg = add nsw i64 %n.vec711, %i.iv
  %broadcast.splatinsert716 = insertelement <8 x i64> poison, i64 %i.is, i64 0
  %broadcast.splat717 = shufflevector <8 x i64> %broadcast.splatinsert716, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert718 = insertelement <8 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat719 = shufflevector <8 x i32> %broadcast.splatinsert718, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check557 = icmp ult i32 %.0204.lcssa, 4
  %min.iters.check559 = icmp ult i32 %.0204.lcssa, 16
  %i.jh = and i64 %wide.trip.count, 12
  %n.vec561 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n619 = icmp eq i64 %n.vec561, %wide.trip.count
  %min.epilog.iters.check627 = icmp eq i64 %i.jh, 0
  %n.vec629 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n645 = icmp eq i64 %n.vec629, %wide.trip.count
  %min.iters.check548 = icmp ult i32 %i.im, 9
  %i.ji = and i64 %wide.trip.count328, 7          ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  %i.jk = select i1 %i.jj, i64 8, i64 %i.ji
  %n.vec550 = sub nsw i64 %wide.trip.count328, %i.jk ; 2 uses
  %min.iters.check456 = icmp ult i32 %.0204.lcssa, 4
  %min.iters.check458 = icmp ult i32 %.0204.lcssa, 16
  %i.jl = and i64 %wide.trip.count, 12
  %n.vec460 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n516 = icmp eq i64 %n.vec460, %wide.trip.count
  %min.epilog.iters.check524 = icmp eq i64 %i.jl, 0
  %n.vec526 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n542 = icmp eq i64 %n.vec526, %wide.trip.count
  br label %.preheader243

._crit_edge:                                      ; preds = %bb.t, %.prol.loopexit
  %.2.lcssa = phi i32 [ %.2.prol, %.prol.loopexit ], [ %.2.1, %bb.t ] ; 2 uses
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, 1 ; 2 uses
  %lftr.wideiv309 = trunc i64 %indvars.iv.next307 to i32
  %exitcond310.not = icmp eq i32 %i.hv, %lftr.wideiv309
  br i1 %exitcond310.not, label %.preheader244, label %.preheader245

.preheader245.new:                                ; preds = %.prol.loopexit, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.t ], [ %indvars.iv.next.prol, %.prol.loopexit ] ; 4 uses
  %.1247 = phi i32 [ %.2.1, %bb.t ], [ %.2.prol, %.prol.loopexit ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %gep382, i64 %indvars.iv
  %i.jm = load float, ptr %gep, align 4, !tbaa !45 ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt float %i.jm, f0x358637BD
  br i1 %i.jn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader245.new
  %i.jo = add nsw i64 %i.hz, %indvars.iv
  %i.jp = shl nsw i64 %i.jo, 2
  %i.jq = sext i32 %.1247 to i64                  ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.jq
  store i64 %i.jp, ptr %i.jr, align 8, !tbaa !116
  %i.js = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.jq
  store float %i.jm, ptr %i.js, align 4, !tbaa !45
  %i.jt = add nsw i32 %.1247, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader245.new
  %.2 = phi i32 [ %i.jt, %bb.q ], [ %.1247, %.preheader245.new ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %gep382, i64 %indvars.iv.next
  %i.ju = load float, ptr %gep.1, align 4, !tbaa !45 ; 2 uses
  %i.jv = fcmp reassoc nsz arcp contract afn ogt float %i.ju, f0x358637BD
  br i1 %i.jv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jw = add nsw i64 %i.hz, %indvars.iv.next
  %i.jx = shl nsw i64 %i.jw, 2
  %i.jy = sext i32 %.2 to i64                     ; 2 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.jy
  store i64 %i.jx, ptr %i.jz, align 8, !tbaa !116
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.jy
  store float %i.ju, ptr %i.ka, align 4, !tbaa !45
  %i.kb = add nsw i32 %.2, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.1 = phi i32 [ %i.kb, %bb.s ], [ %.2, %bb.r ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.hv, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.preheader245.new

.preheader243:                                    ; preds = %.preheader243.preheader, %._crit_edge286
  %indvars.iv346 = phi i64 [ 0, %.preheader243.preheader ], [ %indvars.iv.next347, %._crit_edge286 ] ; 3 uses
  %i.kc = mul nuw nsw i64 %indvars.iv346, %i.io   ; 4 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv346 to i32
  %i.ke = add nsw i32 %i.jd, %i.kd
  %.fr293 = freeze i32 %i.ke                      ; 3 uses
  %.not223 = icmp sge i32 %.fr293, %spec.select.fr ; 2 uses
  %i.kf = icmp slt i32 %.fr293, %i.ip             ; 2 uses
  %i.kg = sext i32 %.fr293 to i64                 ; 2 uses
  %i.kh = mul nsw i64 %i.kg, %i.is                ; 4 uses
  br i1 %.not222249, label %.lr.ph285.split.us, label %.lr.ph285.split

.lr.ph285.split.us:                               ; preds = %.preheader243
  %i.ki = and i1 %i.kf, %.not223
  br i1 %i.ki, label %.lr.ph285.split.us.split, label %.preheader241.us.us.preheader

.preheader241.us.us.preheader:                    ; preds = %.lr.ph285.split.us
  %invariant.op = add i64 %i.kh, %i.ja            ; 2 uses
  br i1 %min.iters.check548, label %.preheader241.us.us.preheader792, label %vector.body551

vector.body551:                                   ; preds = %.preheader241.us.us.preheader, %vector.body551
  %index552 = phi i64 [ %index.next553, %vector.body551 ], [ 0, %.preheader241.us.us.preheader ] ; 3 uses
  %i.kj = add nuw nsw i64 %i.kc, %index552
  %i.kk = shl i64 %i.kj, 4
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 %i.kk
  %i.km = add i64 %index552, %invariant.op
  %i.kn = shl i64 %i.km, 4
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %wide.vec = load <32 x float>, ptr %i.kp, align 4, !tbaa !45
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.kq = shufflevector <8 x float> zeroinitializer, <8 x float> %strided.vec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> zeroinitializer, <16 x float> %i.kq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.kl, align 16, !tbaa !45
  %index.next553 = add nuw i64 %index552, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next553, %n.vec550
  br i1 %i.kr, label %.preheader241.us.us.preheader792, label %vector.body551, !llvm.loop !97

.preheader241.us.us.preheader792:                 ; preds = %vector.body551, %.preheader241.us.us.preheader
  %indvars.iv330.ph = phi i64 [ 0, %.preheader241.us.us.preheader ], [ %n.vec550, %vector.body551 ]
  br label %.preheader241.us.us

.preheader241.us.us:                              ; preds = %.preheader241.us.us.preheader792, %.preheader241.us.us
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %.preheader241.us.us ], [ %indvars.iv330.ph, %.preheader241.us.us.preheader792 ] ; 3 uses
  %i.ks = add nuw nsw i64 %i.kc, %indvars.iv330
  %.idx240.us.us = shl i64 %i.ks, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 %.idx240.us.us ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.kt, align 16, !tbaa !45
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store float 0.000000e+00, ptr %i.ku, align 8, !tbaa !45
  %.reass = add i64 %indvars.iv330, %invariant.op
  %.idx230.us.us = shl i64 %.reass, 4
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx230.us.us
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  store float %i.kx, ptr %i.ky, align 4, !tbaa !45
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %._crit_edge286, label %.preheader241.us.us, !llvm.loop !98

.lr.ph285.split.us.split:                         ; preds = %.lr.ph285.split.us, %.preheader241.us
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %.preheader241.us ], [ 0, %.lr.ph285.split.us ] ; 3 uses
  %i.kz = add nuw nsw i64 %i.kc, %indvars.iv340
  %i.la = add nsw i64 %indvars.iv340, %i.ja       ; 3 uses
  %.not224.us.wide = icmp sge i64 %i.la, %i.iw
  %.wide342 = icmp slt i64 %i.la, %i.jc
  %or.cond237.us = select i1 %.not224.us.wide, i1 %.wide342, i1 false
  %i.lb = add nsw i64 %i.kh, %i.la
  %.idx229.us = shl i64 %i.lb, 4                  ; 2 uses
  br i1 %or.cond237.us, label %bb.u, label %.preheader241.us

bb.u:                                             ; preds = %.lr.ph285.split.us.split
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx229.us ; 6 uses
  br i1 %i.it, label %iter.check521, label %.preheader241.us

iter.check521:                                    ; preds = %bb.u
  br i1 %min.iters.check456, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check457

vector.main.loop.iter.check457:                   ; preds = %iter.check521
  br i1 %min.iters.check458, label %vec.epilog.ph525, label %vector.body461

vector.body461:                                   ; preds = %vector.main.loop.iter.check457, %vector.body461
  %index462 = phi i64 [ %index.next505, %vector.body461 ], [ 0, %vector.main.loop.iter.check457 ] ; 3 uses
  %vec.phi463 = phi <4 x float> [ %i.mf, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi464 = phi <4 x float> [ %i.mg, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi465 = phi <4 x float> [ %i.mh, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi466 = phi <4 x float> [ %i.mi, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi467 = phi <4 x float> [ %i.lx, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi468 = phi <4 x float> [ %i.ly, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi469 = phi <4 x float> [ %i.lz, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi470 = phi <4 x float> [ %i.ma, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi471 = phi <4 x float> [ %i.lp, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi472 = phi <4 x float> [ %i.lq, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi473 = phi <4 x float> [ %i.lr, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %vec.phi474 = phi <4 x float> [ %i.ls, %vector.body461 ], [ zeroinitializer, %vector.main.loop.iter.check457 ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index462 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 96
  %wide.load475 = load <4 x i64>, ptr %i.ld, align 8, !tbaa !116
  %wide.load476 = load <4 x i64>, ptr %i.le, align 8, !tbaa !116
  %wide.load477 = load <4 x i64>, ptr %i.lf, align 8, !tbaa !116
  %wide.load478 = load <4 x i64>, ptr %i.lg, align 8, !tbaa !116
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.lc, <4 x i64> %wide.load475 ; 3 uses
  %wide.gep479 = getelementptr inbounds [4 x i8], ptr %i.lc, <4 x i64> %wide.load476 ; 3 uses
  %wide.gep480 = getelementptr inbounds [4 x i8], ptr %i.lc, <4 x i64> %wide.load477 ; 3 uses
  %wide.gep481 = getelementptr inbounds [4 x i8], ptr %i.lc, <4 x i64> %wide.load478 ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index462 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %wide.load482 = load <4 x float>, ptr %i.lh, align 64, !tbaa !45 ; 3 uses
  %wide.load483 = load <4 x float>, ptr %i.li, align 16, !tbaa !45 ; 3 uses
  %wide.load484 = load <4 x float>, ptr %i.lj, align 32, !tbaa !45 ; 3 uses
  %wide.load485 = load <4 x float>, ptr %i.lk, align 16, !tbaa !45 ; 3 uses
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !45
  %wide.masked.gather486 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep479, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !45
  %wide.masked.gather487 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep480, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !45
  %wide.masked.gather488 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep481, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !45
end_hunk_0
