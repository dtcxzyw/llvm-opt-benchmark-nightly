Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ap3p?download=true
inline.NumInlined: 292
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }

$_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE = comdat any

$_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE = comdat any

$_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE = comdat any

$_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE = comdat any

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@_ZZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_E31__cv_trace_location_extra_fn276 = internal global ptr null, align 8
@_ZZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_E25__cv_trace_location_fn276 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_E31__cv_trace_location_extra_fn276, ptr @.str, ptr @.str.1, i32 276, i32 1 }, align 8
@.str = private unnamed_addr constant [77 x i8] c"bool cv::ap3p::solve(cv::Mat &, cv::Mat &, const cv::Mat &, const cv::Mat &)\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/opencv/opencv/modules/geometry/src/ap3p.cpp\00", align 1
@_ZZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_E31__cv_trace_location_extra_fn301 = internal global ptr null, align 8
@_ZZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_E25__cv_trace_location_fn301 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_E31__cv_trace_location_extra_fn301, ptr @.str.2, ptr @.str.1, i32 301, i32 1 }, align 8
@.str.2 = private unnamed_addr constant [102 x i8] c"int cv::ap3p::solve(std::vector<cv::Mat> &, std::vector<cv::Mat> &, const cv::Mat &, const cv::Mat &)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN2cv4ap3pC1ENS_3MatE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2cv4ap3pC2ENS_3MatE
@_ZN2cv4ap3pC1Edddd = hidden unnamed_addr alias void (ptr, double, double, double, double), ptr @_ZN2cv4ap3pC2Edddd

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv4ap3p23init_inverse_parametersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((32, 64)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 2 uses
  %i.c = fdiv <2 x double> splat (double 1.000000e+00), %i.b
  store <2 x double> %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !8
  %i.g = fdiv <2 x double> %i.f, %i.b
  store <2 x double> %i.g, ptr %i.e, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4ap3pC2ENS_3MatE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !10
  %i.b = and i32 %i.a, 31
  %i.c = icmp eq i32 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !21
  %i.k = fpext float %i.j to double               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = icmp slt i32 %i.e, 2                     ; 2 uses
  %i.n = load i64, ptr %i.h, align 8
  %.sink.idx.i.i = select i1 %i.m, i64 0, i64 %i.n
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !21
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = load float, ptr %i.g, align 4, !tbaa !21
  %i.t = fpext float %i.s to double               ; 2 uses
  store double %i.t, ptr %0, align 8, !tbaa !26
  %i.u = load i64, ptr %i.h, align 8
  %.sink.idx.i7.i = select i1 %i.m, i64 0, i64 %i.u
  %.sink.i8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i7.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i8.i, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !21
  %i.x = fpext float %i.w to double
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.z, ptr %i.aa, align 8, !tbaa !23
  %i.ab = icmp slt i32 %i.e, 2                    ; 2 uses
  %i.ac = load i64, ptr %i.h, align 8
  %.sink.idx.i.i1 = select i1 %i.ab, i64 0, i64 %i.ac
  %.sink.i.i2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i.i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i2, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  store double %i.ag, ptr %0, align 8, !tbaa !26
  %i.ah = load i64, ptr %i.h, align 8
  %.sink.idx.i7.i3 = select i1 %i.ab, i64 0, i64 %i.ah
  %.sink.i8.i4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i7.i3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i8.i4, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = phi double [ %i.q, %bb.b ], [ %i.ae, %bb.c ]
  %i.al = phi double [ %i.k, %bb.b ], [ %i.z, %bb.c ]
  %i.am = phi double [ %i.t, %bb.b ], [ %i.ag, %bb.c ]
  %.sink = phi double [ %i.x, %bb.b ], [ %i.aj, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink, ptr %i.an, align 8, !tbaa !27
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %.sink, i64 1 ; 2 uses
  %i.aq = fdiv <2 x double> splat (double 1.000000e+00), %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !8
  %i.as = insertelement <2 x double> poison, double %i.al, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ak, i64 1
  %i.au = fdiv <2 x double> %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.au, ptr %i.av, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv4ap3pC2Edddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) unnamed_addr #2 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.c, align 8, !tbaa !25
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1 ; 2 uses
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.f, ptr %i.g, align 8, !tbaa !8
  %i.h = insertelement <2 x double> poison, double %3, i64 0
  %i.i = insertelement <2 x double> %i.h, double %4, i64 1
  %i.j = fdiv <2 x double> %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.j, ptr %i.k, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 11 uses
  %i.b = alloca [4 x double], align 16            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load double, ptr %i.j, align 8, !tbaa !8 ; 3 uses
  %i.l = load <2 x double>, ptr %2, align 8, !tbaa !8 ; 2 uses
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !8 ; 3 uses
  %i.n = shufflevector <2 x double> %i.l, <2 x double> %i.m, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.o = shufflevector <2 x double> %i.l, <2 x double> %i.m, <2 x i32> <i32 1, i32 3>
  %i.p = fsub <2 x double> %i.n, %i.o             ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = load double, ptr %6, align 8, !tbaa !8     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %8 = load double, ptr %i.u, align 8, !tbaa !8   ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load double, ptr %9, align 8, !tbaa !8   ; 3 uses
  %i.w = load <2 x double>, ptr %1, align 8, !tbaa !8 ; 5 uses
  %10 = load double, ptr %i.s, align 8, !tbaa !8  ; 2 uses
  %11 = load <2 x double>, ptr %i.r, align 8, !tbaa !8 ; 7 uses
  %12 = load double, ptr %i.t, align 8, !tbaa !8  ; 3 uses
  %13 = fneg double %10
  %14 = fneg double %8
  %15 = fneg double %7
  %i.x = load <2 x double>, ptr %i.q, align 8, !tbaa !8 ; 10 uses
  %16 = shufflevector <2 x double> %i.x, <2 x double> %11, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %18 = insertelement <2 x double> %11, double %12, i64 1 ; 2 uses
  %19 = insertelement <2 x double> poison, double %14, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %18, %20
  %21 = insertelement <2 x double> poison, double %i.v, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %22, <2 x double> %i.y) ; 2 uses
  %i.z = insertelement <2 x double> poison, double %15, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul <2 x double> %18, %i.aa
  %24 = insertelement <2 x double> %i.w, double %10, i64 1 ; 2 uses
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %22, <2 x double> %i.ab) ; 3 uses
  %26 = extractelement <2 x double> %25, i64 0
  %27 = fneg double %26
  %i.ac = fmul <2 x double> %i.x, %i.aa
  %28 = insertelement <2 x double> poison, double %8, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %29, <2 x double> %i.ac) ; 2 uses
  %30 = load double, ptr %i.e, align 8, !tbaa !8
  %31 = load double, ptr %i.d, align 8, !tbaa !8  ; 2 uses
  %32 = fsub double %31, %30
  %33 = shufflevector <2 x double> %11, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %34 = insertelement <2 x double> poison, double %13, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = fmul <2 x double> %33, %35
  %37 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x double> %i.x, double %12, i64 0
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %i.ae, <2 x double> %36) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.af, %i.af
  %38 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %39 = shufflevector <2 x double> %11, <2 x double> %i.p, <2 x i32> <i32 0, i32 3>
  %i.ag = fneg <2 x double> %i.x
  %40 = shufflevector <2 x double> %i.p, <2 x double> %i.ag, <2 x i32> <i32 3, i32 1>
  %41 = fmul <2 x double> %39, %40
  %i.ah = shufflevector <2 x double> %i.x, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %42 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %43 = insertelement <2 x double> %42, double %12, i64 0
  %44 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %43, <2 x double> %41) ; 3 uses
  %45 = extractelement <2 x double> %44, i64 0    ; 2 uses
  %46 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %38)
  %47 = insertelement <2 x double> %i.af, double %32, i64 0 ; 3 uses
  %48 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %49 = insertelement <2 x double> %48, double %46, i64 1
  %50 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %47, <2 x double> %47, <2 x double> %49)
  %51 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %50) ; 5 uses
  %52 = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = fdiv <2 x double> %i.p, %52               ; 11 uses
  %54 = fdiv <2 x double> %47, %51                ; 12 uses
  %55 = fneg <2 x double> %i.af
  %56 = shufflevector <2 x double> %44, <2 x double> %55, <2 x i32> <i32 0, i32 2>
  %i.ai = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %57 = fdiv <2 x double> %56, %i.ai              ; 12 uses
  %58 = extractelement <2 x double> %57, i64 1    ; 2 uses
  %59 = shufflevector <2 x double> %53, <2 x double> %57, <2 x i32> <i32 1, i32 3>
  %i.aj = shufflevector <2 x double> %53, <2 x double> %57, <2 x i32> <i32 0, i32 2>
  %60 = extractelement <2 x double> %54, i64 0    ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.g, i64 0 ; 2 uses
  %61 = insertelement <2 x double> %i.ak, double %i.i, i64 1
  %62 = fsub <2 x double> %i.n, %61               ; 4 uses
  %63 = insertelement <2 x double> %i.m, double %31, i64 1
  %i.al = insertelement <2 x double> poison, double %i.i, i64 0 ; 2 uses
  %i.am = insertelement <2 x double> %i.al, double %i.k, i64 1
  %i.an = fsub <2 x double> %63, %i.am            ; 3 uses
  %i.ao = fneg <2 x double> %53                   ; 2 uses
  %shift = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop591 = fmul <2 x double> %shift, %i.ao
  %64 = extractelement <2 x double> %foldExtExtBinop591, i64 0
  %65 = fmul <2 x double> %i.an, %i.ao
  %66 = shufflevector <2 x double> %62, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %67 = insertelement <2 x double> %66, double %8, i64 1
  %68 = fmul <2 x double> %67, %59
  %i.ap = insertelement <2 x double> %62, double %7, i64 1
  %69 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aj, <2 x double> %68)
  %70 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %71 = insertelement <2 x double> %70, double %i.v, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %54, <2 x double> %71, <2 x double> %69) ; 4 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %72 = fneg double %i.ar
  %73 = shufflevector <2 x double> %53, <2 x double> %54, <2 x i32> <i32 1, i32 2>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %73, <2 x double> %65) ; 3 uses
  %74 = extractelement <2 x double> %62, i64 0
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %60, double %64) ; 3 uses
  %76 = fneg double %75
  %77 = fmul double %75, %75
  %78 = extractelement <2 x double> %i.as, i64 1  ; 2 uses
  %79 = tail call double @llvm.fmuladd.f64(double %78, double %78, double %77)
  %80 = extractelement <2 x double> %i.as, i64 0  ; 3 uses
  %81 = tail call double @llvm.fmuladd.f64(double %80, double %80, double %79)
  %sqrt.i236 = tail call noundef double @llvm.sqrt.f64(double %81) ; 7 uses
  %82 = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %83 = insertelement <2 x double> %82, double %76, i64 1
  %84 = insertelement <2 x double> poison, double %sqrt.i236, i64 0 ; 2 uses
  %85 = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> zeroinitializer
  %86 = fdiv <2 x double> %83, %85                ; 6 uses
  %87 = fdiv double %80, %sqrt.i236               ; 4 uses
  %i.at = fsub <2 x double> %i.aq, %51
  %i.au = fmul <2 x double> %i.aq, %51
  %88 = extractelement <2 x double> %i.at, i64 0  ; 2 uses
  %89 = fneg double %88
  %90 = fneg double %sqrt.i236
  %91 = fneg <2 x double> %57
  %92 = extractelement <2 x double> %54, i64 1
  %93 = fmul <2 x double> %16, %91
  %i.av = shufflevector <2 x double> %57, <2 x double> %54, <2 x i32> <i32 1, i32 3>
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.av, <2 x double> %93) ; 5 uses
  %i.ax = extractelement <2 x double> %i.aq, i64 1 ; 4 uses
  %94 = fmul double %i.ax, %72                    ; 3 uses
  %95 = fmul double %sqrt.i236, %i.ax             ; 3 uses
  %96 = fmul double %58, %27
  %97 = shufflevector <2 x double> %57, <2 x double> %i.aw, <2 x i32> <i32 0, i32 3>
  %98 = insertelement <2 x double> poison, double %96, i64 0
  %99 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %100 = shufflevector <2 x double> %54, <2 x double> %i.aw, <2 x i32> <i32 1, i32 2>
  %101 = shufflevector <2 x double> %11, <2 x double> %57, <2 x i32> <i32 0, i32 3>
  %102 = shufflevector <2 x double> %57, <2 x double> %25, <2 x i32> <i32 0, i32 3>
  %103 = fneg <2 x double> %102
  %104 = fmul <2 x double> %101, %103
  %105 = shufflevector <2 x double> %i.w, <2 x double> %57, <2 x i32> <i32 0, i32 2>
  %106 = shufflevector <2 x double> %54, <2 x double> %23, <2 x i32> <i32 1, i32 3>
  %107 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %105, <2 x double> %106, <2 x double> %104) ; 3 uses
  %108 = extractelement <2 x double> %107, i64 0
  %i.ay = fneg double %108                        ; 3 uses
  %shift593 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop594 = fmul <2 x double> %shift593, %107
  %109 = shufflevector <2 x double> %98, <2 x double> %foldExtExtBinop594, <2 x i32> <i32 0, i32 2>
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %97, <2 x double> %23, <2 x double> %109)
  %111 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %i.ad, <2 x double> %110) ; 2 uses
  %112 = extractelement <2 x double> %i.ad, i64 1
  %113 = extractelement <2 x double> %107, i64 1
  %114 = tail call noundef double @llvm.fmuladd.f64(double %92, double %112, double %113)
  %115 = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %116 = fmul double %88, %115
  %i.az = extractelement <2 x double> %111, i64 1
  %i.ba = fmul double %i.az, %89                  ; 2 uses
  %117 = fmul double %sqrt.i236, %115             ; 2 uses
  %118 = fmul double %sqrt.i236, %114             ; 2 uses
  %i.bb = insertelement <2 x double> %84, double %90, i64 1
  %i.bc = fmul <2 x double> %i.bb, %111           ; 3 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0 ; 3 uses
  %119 = fmul double %i.bd, %117                  ; 4 uses
  %120 = fneg double %118
  %121 = fmul double %94, %120
  %i.be = extractelement <2 x double> %i.bc, i64 1 ; 2 uses
  %122 = fmul double %i.bd, %i.be
  %123 = fmul double %95, %117                    ; 3 uses
  %124 = fmul double %94, %i.be
  %125 = fmul double %123, 2.000000e+00
  %i.bf = fneg double %119
  %126 = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.ba, double %121) ; 6 uses
  %127 = tail call double @llvm.fmuladd.f64(double %95, double %i.ba, double %124) ; 4 uses
  %i.bg = insertelement <2 x double> %i.bc, double %94, i64 1
  %128 = fneg <2 x double> %i.bg
  %129 = insertelement <2 x double> poison, double %116, i64 0
  %130 = shufflevector <2 x double> %129, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %130, %128            ; 5 uses
  %131 = extractelement <2 x double> %i.bh, i64 1 ; 4 uses
  %132 = fmul double %131, %125
  %i.bi = tail call double @llvm.fmuladd.f64(double %127, double %127, double %132)
  %133 = tail call double @llvm.fmuladd.f64(double %126, double %126, double %i.bi)
  %i.bj = insertelement <2 x double> %i.bh, double %127, i64 1 ; 2 uses
  %134 = fneg double %126
  %135 = fmul double %126, %134
  %i.bk = tail call double @llvm.fmuladd.f64(double %131, double %131, double %135)
  %i.bl = extractelement <2 x double> %i.bh, i64 0 ; 3 uses
  %i.bm = fneg double %i.bl
  %136 = insertelement <2 x double> poison, double %119, i64 0
  %137 = shufflevector <2 x double> %136, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %138 = insertelement <2 x double> %137, double %126, i64 1
  %i.bn = fmul <2 x double> %137, %138            ; 2 uses
  %139 = fneg <2 x double> %i.bn
  %i.bo = insertelement <2 x double> %139, double %133, i64 0
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bh, <2 x double> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bf, double %119, double %i.bq)
  %i.bs = tail call double @llvm.fmuladd.f64(double %95, double %118, double %122) ; 4 uses
  %140 = insertelement <2 x double> poison, double %123, i64 0
  %141 = shufflevector <2 x double> %140, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %142 = insertelement <2 x double> %141, double %127, i64 1
  %143 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %141, <2 x double> %142, <2 x double> %i.bn)
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0 ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %144 = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bv = insertelement <2 x double> %144, double %i.bs, i64 0
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bv, <2 x double> %143) ; 4 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %145 = fmul double %i.bx, 2.000000e+00          ; 6 uses
  %146 = fneg double %i.bs                        ; 2 uses
  %147 = tail call double @llvm.fmuladd.f64(double %146, double %i.bs, double %i.br) ; 6 uses
  %i.by = extractelement <2 x double> %i.bp, i64 1
  %148 = tail call double @llvm.fmuladd.f64(double %146, double %i.bl, double %i.by)
  %149 = fmul double %148, 2.000000e+00           ; 7 uses
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.bk) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %150 = extractelement <2 x double> %i.bw, i64 0 ; 4 uses
  %i.cd = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %150, double noundef %145, double noundef %147, double noundef %149, double noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.cc) ; 5 uses
  %i.ce = icmp sgt i32 %i.cd, 0                   ; 2 uses
  br i1 %i.ce, label %.preheader.preheader.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.cd to i64 ; 6 uses
  %i.cf = fmul double %150, 4.000000e+00          ; 4 uses
  %i.cg = fmul double %145, 3.000000e+00          ; 4 uses
  %i.ch = fmul double %147, 2.000000e+00          ; 4 uses
  %min.iters.check = icmp eq i32 %i.cd, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <2 x double> poison, double %i.cg, i64 0
  %broadcast.splat550 = shufflevector <2 x double> %broadcast.splatinsert549, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat552 = shufflevector <2 x double> %broadcast.splatinsert551, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat554 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <2 x double> poison, double %145, i64 0
  %broadcast.splat556 = shufflevector <2 x double> %broadcast.splatinsert555, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert557 = insertelement <2 x double> poison, double %147, i64 0
  %broadcast.splat558 = shufflevector <2 x double> %broadcast.splatinsert557, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <2 x double> poison, double %149, i64 0
  %broadcast.splat560 = shufflevector <2 x double> %broadcast.splatinsert559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat562 = shufflevector <2 x double> %broadcast.splatinsert561, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ci, align 16, !tbaa !8 ; 8 uses
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat554, <2 x double> %wide.load, <2 x double> %broadcast.splat556)
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %wide.load, <2 x double> %broadcast.splat558)
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %wide.load, <2 x double> %broadcast.splat562)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat550)
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %wide.load, <2 x double> %broadcast.splat552)
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.cq = fdiv <2 x double> %i.cm, %i.cp
  %i.cr = fsub <2 x double> %wide.load, %i.cq
  store <2 x double> %i.cr, ptr %i.ci, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %i.ct = insertelement <2 x double> poison, double %i.cf, i64 1
  %151 = insertelement <2 x double> poison, double %147, i64 0
  %i.cu = insertelement <2 x double> %151, double %i.cg, i64 1
  %i.cv = insertelement <2 x double> poison, double %149, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.ch, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %149, i64 1
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader596, %._crit_edge.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %._crit_edge.i ], [ %indvars.iv.1.i.ph, %._crit_edge.i.preheader596 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1.i ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !8 ; 3 uses
  %i.db = call double @llvm.fmuladd.f64(double %150, double %i.da, double %145)
  %i.dc = insertelement <2 x double> %i.ek, double %i.db, i64 0
  %i.dd = insertelement <2 x double> poison, double %i.da, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.de, <2 x double> %i.el)
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.de, <2 x double> %i.en)
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.de, <2 x double> %i.ep) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fsub double %i.da, %i.dk
  store double %i.dl, ptr %i.cz, align 8, !tbaa !8
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i, !llvm.loop !32

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !8 ; 3 uses
  %i.do = call double @llvm.fmuladd.f64(double %150, double %i.dn, double %145)
  %i.dp = insertelement <2 x double> %i.ct, double %i.do, i64 0
  %i.dq = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ds = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dr, <2 x double> %i.cu)
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dr, <2 x double> %i.cw)
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dr, <2 x double> %i.cy) ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = extractelement <2 x double> %i.du, i64 1
  %i.dx = fdiv double %i.dv, %i.dw
  %i.dy = fsub double %i.dn, %i.dx
  store double %i.dy, ptr %i.dm, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.preheader, label %scalar.ph, !llvm.loop !33

._crit_edge.i.preheader:                          ; preds = %scalar.ph, %middle.block
  %min.iters.check564 = icmp eq i32 %i.cd, 1
  br i1 %min.iters.check564, label %._crit_edge.i.preheader596, label %vector.ph565

vector.ph565:                                     ; preds = %._crit_edge.i.preheader
  %n.vec566 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splat568 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %145, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert571 = insertelement <2 x double> poison, double %147, i64 0
  %broadcast.splat572 = shufflevector <2 x double> %broadcast.splatinsert571, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %149, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.cg, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat582 = shufflevector <2 x double> %broadcast.splatinsert581, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph565
  %index584 = phi i64 [ 0, %vector.ph565 ], [ %index.next586, %vector.body583 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.dz, align 16, !tbaa !8 ; 8 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat568, <2 x double> %wide.load585, <2 x double> %broadcast.splat570)
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %wide.load585, <2 x double> %broadcast.splat572)
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %wide.load585, <2 x double> %broadcast.splat576)
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat578, <2 x double> %wide.load585, <2 x double> %broadcast.splat580)
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %wide.load585, <2 x double> %broadcast.splat582)
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.eh = fdiv <2 x double> %i.ed, %i.eg
  %i.ei = fsub <2 x double> %wide.load585, %i.eh
  store <2 x double> %i.ei, ptr %i.dz, align 16, !tbaa !8
  %index.next586 = add nuw i64 %index584, 2       ; 2 uses
  %i.ej = icmp eq i64 %index.next586, %n.vec566
  br i1 %i.ej, label %middle.block587, label %vector.body583, !llvm.loop !34

middle.block587:                                  ; preds = %vector.body583
  %cmp.n588 = icmp eq i64 %n.vec566, %wide.trip.count.i
  br i1 %cmp.n588, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i.preheader596

._crit_edge.i.preheader596:                       ; preds = %._crit_edge.i.preheader, %middle.block587
  %indvars.iv.1.i.ph = phi i64 [ 0, %._crit_edge.i.preheader ], [ %n.vec566, %middle.block587 ]
  %i.ek = insertelement <2 x double> poison, double %i.cf, i64 1
  %152 = insertelement <2 x double> poison, double %147, i64 0
  %i.el = insertelement <2 x double> %152, double %i.cg, i64 1
  %i.em = insertelement <2 x double> poison, double %149, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ch, i64 1
  %i.eo = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %149, i64 1
  br label %._crit_edge.i

_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit: ; preds = %._crit_edge.i, %middle.block587, %bb.a
  %153 = extractelement <2 x double> %86, i64 1   ; 2 uses
  %154 = extractelement <2 x double> %53, i64 1   ; 2 uses
  %155 = extractelement <2 x double> %53, i64 0
  %156 = fneg <2 x double> %86                    ; 2 uses
  %157 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  %158 = fmul <2 x double> %157, %156
  %159 = insertelement <2 x double> poison, double %87, i64 0
  %160 = shufflevector <2 x double> %159, <2 x double> poison, <2 x i32> zeroinitializer
  %161 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %160, <2 x double> %158) ; 4 uses
  %i.eq = extractelement <2 x double> %156, i64 0
  %162 = fmul double %154, %i.eq
  %i.er = call double @llvm.fmuladd.f64(double %155, double %153, double %162) ; 3 uses
  %i.es = fdiv double %sqrt.i236, %i.ax           ; 2 uses
  %163 = insertelement <2 x double> poison, double %7, i64 0
  %i.et = insertelement <2 x double> %163, double %8, i64 1
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = fmul double %i.v, %i.es
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.ce, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %164 = extractelement <2 x double> %161, i64 0
  %165 = fneg double %164                         ; 2 uses
  %i.fi = fcmp ogt double %i.ax, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.cd to i64
  %i.fj = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x double> %i.w, <2 x double> %11, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fm = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x double> poison, double %i.k, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %166 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fs = insertelement <2 x double> <double 1.000000e+00, double poison>, double %126, i64 1
  %167 = insertelement <2 x double> %i.bt, double %123, i64 1
  %168 = extractelement <2 x double> %86, i64 0
  %169 = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ft = shufflevector <2 x double> %11, <2 x double> %53, <2 x i32> <i32 0, i32 2>
  %i.fu = insertelement <2 x double> %53, double %165, i64 1
  %170 = shufflevector <2 x double> %86, <2 x double> %57, <2 x i32> <i32 1, i32 3>
  %171 = insertelement <2 x double> poison, double %165, i64 0
  %i.fv = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %172 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %173 = extractelement <2 x double> %161, i64 1  ; 2 uses
  %174 = extractelement <2 x double> %i.x, i64 0
  %175 = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %176 = shufflevector <2 x double> %169, <2 x double> %54, <2 x i32> <i32 0, i32 2>
  %177 = shufflevector <2 x double> %161, <2 x double> %54, <2 x i32> <i32 0, i32 2>
  %178 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fw = shufflevector <2 x double> %57, <2 x double> %54, <2 x i32> <i32 0, i32 3> ; 2 uses
  %179 = insertelement <2 x double> poison, double %119, i64 1
  %180 = insertelement <2 x double> poison, double %i.ay, i64 1
  %i.fx = insertelement <2 x double> %166, double %i.ay, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.fy = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.fy, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !8 ; 8 uses
  %i.gb = call noundef double @llvm.fabs.f64(double %i.ga)
  %i.gc = fcmp ogt double %i.gb, 1.000000e+00
  br i1 %i.gc, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gd = fneg double %i.ga
  %i.ge = insertelement <2 x double> %179, double %i.gd, i64 0
  %i.gf = insertelement <2 x double> poison, double %i.ga, i64 0 ; 2 uses
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.gg, <2 x double> %i.fs) ; 2 uses
  %i.gi = extractelement <2 x double> %i.gh, i64 0
  %i.gj = call double @sqrt(double noundef %i.gi) #17 ; 2 uses
  %i.gk = fneg double %i.gj
  %i.gl = select i1 %i.fi, double %i.gj, double %i.gk ; 6 uses
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %167, <2 x double> %i.gg, <2 x double> %i.bj) ; 2 uses
  %i.gn = extractelement <2 x double> %i.gm, i64 1
  %i.go = call double @llvm.fmuladd.f64(double %i.gn, double %i.ga, double %131)
  %i.gp = fdiv double %i.gl, %i.go                ; 2 uses
  %i.gq = extractelement <2 x double> %i.gh, i64 1
  %i.gr = fmul double %i.gq, %i.gp                ; 5 uses
  %i.gs = extractelement <2 x double> %i.gm, i64 0
  %181 = fmul double %i.gs, %i.gp                 ; 3 uses
  %182 = fmul double %i.gl, %181                  ; 3 uses
  %i.gt = fmul double %i.gl, %i.gr                ; 3 uses
  %i.gu = fmul double %i.ga, %181                 ; 3 uses
  %i.gv = fmul double %i.ga, %i.gr                ; 3 uses
  %i.gw = fmul double %168, %i.gt
  %183 = insertelement <2 x double> %i.gf, double %182, i64 1
  %i.gx = fmul <2 x double> %86, %183
  %184 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.gr, i64 1
  %185 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %184, <2 x double> %i.gx) ; 2 uses
  %186 = extractelement <2 x double> %185, i64 0
  %i.gy = fmul double %153, %i.ga
  %i.gz = fmul double %87, %182
  %i.ha = call double @llvm.fmuladd.f64(double %154, double 0.000000e+00, double %i.gy)
  %187 = insertelement <2 x double> poison, double %i.gl, i64 0 ; 2 uses
  %i.hb = insertelement <2 x double> %187, double %i.gr, i64 1
  %i.hc = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.gz, i64 1
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %177, <2 x double> %i.hb, <2 x double> %i.hd) ; 3 uses
  %i.hf = extractelement <2 x double> %i.he, i64 1
  %188 = call double @llvm.fmuladd.f64(double %i.er, double %i.gu, double %i.hf)
  %i.hg = fmul double %87, %i.ga
  %i.hh = fneg double %181                        ; 3 uses
  %189 = fneg double %i.gl                        ; 2 uses
  %i.hi = call double @llvm.fmuladd.f64(double %173, double %189, double %186) ; 2 uses
  %190 = fmul double %87, %i.gt
  %191 = call double @llvm.fmuladd.f64(double %60, double 0.000000e+00, double %i.hg)
  %i.hj = insertelement <2 x double> poison, double %189, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.hh, i64 1
  %192 = insertelement <2 x double> poison, double %191, i64 0
  %193 = insertelement <2 x double> %192, double %190, i64 1
  %194 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %176, <2 x double> %i.hk, <2 x double> %193) ; 3 uses
  %195 = extractelement <2 x double> %194, i64 1
  %196 = extractelement <2 x double> %i.he, i64 0
  %i.hl = fmul double %58, %196
  %197 = insertelement <2 x double> poison, double %i.hi, i64 0
  %198 = shufflevector <2 x double> %197, <2 x double> poison, <2 x i32> zeroinitializer
  %199 = fmul <2 x double> %i.fw, %198
  %i.hm = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x double> %i.fw, %i.hm
  %200 = fmul double %i.ex, %i.gl
  %201 = sext i32 %.0234531 to i64                ; 3 uses
  %202 = getelementptr inbounds [24 x i8], ptr %4, i64 %201 ; 4 uses
  %203 = call double @llvm.fmuladd.f64(double %i.er, double %i.gv, double %195) ; 2 uses
  %i.ho = insertelement <2 x double> %178, double %182, i64 1
  %204 = shufflevector <2 x double> %194, <2 x double> %86, <2 x i32> <i32 0, i32 2>
  %i.hp = fmul <2 x double> %i.ho, %204
  %205 = insertelement <2 x double> poison, double %188, i64 0 ; 2 uses
  %206 = insertelement <2 x double> %205, double %i.gr, i64 1
  %207 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %206, <2 x double> %i.ft, <2 x double> %i.hp)
  %208 = insertelement <2 x double> %161, double %203, i64 0
  %i.hq = insertelement <2 x double> %i.aw, double %i.gu, i64 1
  %209 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %208, <2 x double> %i.hq, <2 x double> %207) ; 4 uses
  %210 = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hr = insertelement <2 x double> %210, double %i.gu, i64 1
  %211 = insertelement <2 x double> %185, double %i.gw, i64 0
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.hr, <2 x double> %211) ; 3 uses
  %212 = extractelement <2 x double> %i.hs, i64 0
  %213 = shufflevector <2 x double> %209, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %213, <2 x double> %i.fl, <2 x double> %199)
  %i.hu = insertelement <2 x double> poison, double %i.gt, i64 0
  %214 = insertelement <2 x double> %i.hu, double %i.hi, i64 1
  %i.hv = fmul <2 x double> %170, %214
  %215 = shufflevector <2 x double> %53, <2 x double> %209, <2 x i32> <i32 1, i32 3>
  %216 = insertelement <2 x double> %175, double %i.hh, i64 0
  %217 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %215, <2 x double> %216, <2 x double> %i.hv)
  %218 = call double @llvm.fmuladd.f64(double %173, double %i.gv, double %212) ; 2 uses
  %i.hw = insertelement <2 x double> poison, double %218, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %99, <2 x double> %i.ht) ; 4 uses
  %219 = extractelement <2 x double> %i.hy, i64 0
  %i.hz = insertelement <2 x double> %171, double %218, i64 1
  %220 = insertelement <2 x double> %180, double %i.gv, i64 0
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %220, <2 x double> %217) ; 3 uses
  %i.ib = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.fl, <2 x double> %i.hn)
  %221 = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %221, <2 x double> %99, <2 x double> %i.ic) ; 4 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  %222 = extractelement <2 x double> %i.hs, i64 1
  %223 = call double @llvm.fmuladd.f64(double %222, double %174, double %i.hl)
  %224 = extractelement <2 x double> %i.ia, i64 0
  %225 = call double @llvm.fmuladd.f64(double %224, double %i.ay, double %223) ; 3 uses
  %226 = shufflevector <2 x double> %194, <2 x double> poison, <2 x i32> zeroinitializer
  %227 = fmul <2 x double> %57, %226
  %228 = shufflevector <2 x double> %205, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %17, <2 x double> %227)
  %230 = insertelement <2 x double> poison, double %203, i64 0
  %231 = shufflevector <2 x double> %230, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %231, <2 x double> %i.fx, <2 x double> %229) ; 5 uses
  %232 = fmul double %i.i, %225
  %i.ig = extractelement <2 x double> %i.ia, i64 1 ; 3 uses
  %233 = call double @llvm.fmuladd.f64(double %i.g, double %i.ig, double %232)
  %234 = extractelement <2 x double> %i.id, i64 1
  %235 = fmul <2 x double> %172, %i.id
  %236 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.hy, <2 x double> %235) ; 2 uses
  %i.ih = insertelement <2 x double> %236, double %233, i64 1
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.if, <2 x double> %i.ih)
  %i.ij = extractelement <2 x double> %209, i64 0 ; 2 uses
  %i.ik = extractelement <2 x double> %236, i64 1
  %i.il = call double @llvm.fmuladd.f64(double %i.k, double %i.ij, double %i.ik)
  %237 = shufflevector <2 x double> %187, <2 x double> poison, <2 x i32> zeroinitializer
  %238 = fmul <2 x double> %i.ew, %237
  %i.im = fsub <2 x double> %238, %i.ii
  store <2 x double> %i.im, ptr %202, align 8, !tbaa !8
  %i.in = fsub double %200, %i.il
  %239 = getelementptr inbounds nuw i8, ptr %202, i64 16 ; 2 uses
  store double %i.in, ptr %239, align 8, !tbaa !8
  %240 = getelementptr inbounds [72 x i8], ptr %3, i64 %201 ; 8 uses
  store double %219, ptr %240, align 8, !tbaa !8
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 24
  store double %i.ig, ptr %241, align 8, !tbaa !8
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 8
  store double %i.ie, ptr %242, align 8, !tbaa !8
  %243 = getelementptr inbounds nuw i8, ptr %240, i64 32
  store double %225, ptr %243, align 8, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %240, i64 56
  store double %234, ptr %i.io, align 8, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %240, i64 16
  %i.iq = extractelement <2 x double> %i.if, i64 0
  store double %i.iq, ptr %i.ip, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %240, i64 40
  %i.is = shufflevector <2 x double> %i.if, <2 x double> %i.hy, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.is, ptr %i.ir, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %240, i64 64
  store double %i.ij, ptr %i.it, align 8, !tbaa !8
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.iu = getelementptr inbounds nuw i8, ptr %202, i64 8
  %i.iv = fmul <2 x double> %i.fp, %i.id
  %i.iw = load double, ptr %202, align 8, !tbaa !8
  %i.ix = fmul double %i.fb, %225
  %i.iy = call double @llvm.fmuladd.f64(double %i.ig, double %i.ez, double %i.ix)
  %i.iz = extractelement <2 x double> %i.if, i64 1
  %i.ja = call double @llvm.fmuladd.f64(double %i.iz, double %i.fd, double %i.iy)
  %i.jb = load double, ptr %i.iu, align 8, !tbaa !8
  %i.jc = fadd double %i.ja, %i.jb
  %i.jd = load double, ptr %239, align 8, !tbaa !8
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.fn, <2 x double> %i.iv)
  %i.jf = shufflevector <2 x double> %i.if, <2 x double> %209, <2 x i32> <i32 0, i32 2>
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.fk, <2 x double> %i.je)
  %i.jh = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %i.jd, i64 1
  %i.jj = fadd <2 x double> %i.jg, %i.ji          ; 2 uses
  %i.jk = insertelement <2 x double> %i.jj, double %i.jc, i64 1
  %i.jl = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jm = fdiv <2 x double> %i.jk, %i.jl          ; 2 uses
  %i.jn = extractelement <2 x double> %i.jm, i64 0
  %i.jo = fsub double %i.jn, %i.ff                ; 2 uses
  %i.jp = extractelement <2 x double> %i.jm, i64 1
  %i.jq = fsub double %i.jp, %i.fh                ; 2 uses
  %i.jr = fmul double %i.jq, %i.jq
  %i.js = call double @llvm.fmuladd.f64(double %i.jo, double %i.jo, double %i.jr)
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %201
  store double %i.js, ptr %i.jt, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ju = add nsw i32 %.0234531, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.ju, %bb.e ], [ %.0234531, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv536 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next537, %.critedge ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv536
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %indvars.iv538 = phi i64 [ %indvars.iv536, %.preheader ], [ %indvars.iv.next539, %bb.h ] ; 5 uses
  %indvars.iv.next539 = add nsw i64 %indvars.iv538, -1 ; 4 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next539 ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !8 ; 2 uses
  %i.jx = fcmp ogt double %i.jw, %.pre
  br i1 %i.jx, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count542
  br i1 %exitcond543.not, label %.loopexit, label %.preheader, !llvm.loop !36

bb.h:                                             ; preds = %bb.g
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv538
  store double %i.jw, ptr %i.jy, align 8, !tbaa !8
  store double %.pre, ptr %i.jv, align 8, !tbaa !8
  %i.jz = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv538 ; 6 uses
  %i.ka = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv.next539 ; 6 uses
  %i.kb = load <2 x double>, ptr %i.jz, align 8, !tbaa !8
  %i.kc = load <2 x double>, ptr %i.ka, align 8, !tbaa !8
  store <2 x double> %i.kc, ptr %i.jz, align 8, !tbaa !8
  store <2 x double> %i.kb, ptr %i.ka, align 8, !tbaa !8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.kf = load <2 x double>, ptr %i.kd, align 8, !tbaa !8
  %i.kg = load <2 x double>, ptr %i.ke, align 8, !tbaa !8
  store <2 x double> %i.kg, ptr %i.kd, align 8, !tbaa !8
  store <2 x double> %i.kf, ptr %i.ke, align 8, !tbaa !8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 32 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 32 ; 2 uses
  %i.kj = load <2 x double>, ptr %i.kh, align 8, !tbaa !8
  %i.kk = load <2 x double>, ptr %i.ki, align 8, !tbaa !8
  store <2 x double> %i.kk, ptr %i.kh, align 8, !tbaa !8
  store <2 x double> %i.kj, ptr %i.ki, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 48 ; 2 uses
  %i.kn = load <2 x double>, ptr %i.kl, align 8, !tbaa !8
  %i.ko = load <2 x double>, ptr %i.km, align 8, !tbaa !8
  store <2 x double> %i.ko, ptr %i.kl, align 8, !tbaa !8
  store <2 x double> %i.kn, ptr %i.km, align 8, !tbaa !8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 64 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 64 ; 2 uses
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !8
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !8
  store double %i.ks, ptr %i.kp, align 8, !tbaa !8
  store double %i.kr, ptr %i.kq, align 8, !tbaa !8
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv538 ; 3 uses
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next539 ; 3 uses
  %i.kv = load <2 x double>, ptr %i.kt, align 8, !tbaa !8
  %i.kw = load <2 x double>, ptr %i.ku, align 8, !tbaa !8
  store <2 x double> %i.kw, ptr %i.kt, align 8, !tbaa !8
  store <2 x double> %i.kv, ptr %i.ku, align 8, !tbaa !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !8
  %i.la = load double, ptr %i.ky, align 8, !tbaa !8
  store double %i.la, ptr %i.kx, align 8, !tbaa !8
  store double %i.kz, ptr %i.ky, align 8, !tbaa !8
  %i.lb = icmp sgt i64 %indvars.iv538, 1
  br i1 %i.lb, label %bb.g, label %.critedge, !llvm.loop !37

.loopexit:                                        ; preds = %.critedge, %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, %._crit_edge
  %.0234.lcssa548 = phi i32 [ 0, %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit ], [ %.1, %._crit_edge ], [ %.1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0234.lcssa548
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.a = alloca [3 x [3 x double]], align 16      ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_E25__cv_trace_location_fn276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.c = load i32, ptr %3, align 8, !tbaa !10
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !10
  %i.f = and i32 %i.e, 31
  %i.g = icmp eq i32 %i.d, %i.f
  %i.h = icmp eq i32 %i.d, 5                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %i.j = load ptr, ptr %6, align 8, !tbaa !38     ; 20 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8
  %i.ax = invoke noundef zeroext i1 @_ZN2cv4ap3p5solveEPA3_dPddddddddddddddddddddd(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %i.k, double noundef %i.m, double noundef %i.o, double noundef %i.q, double noundef %i.s, double noundef %i.u, double noundef %i.w, double noundef %i.y, double noundef %i.aa, double noundef %i.ac, double noundef %i.ae, double noundef %i.ag, double noundef %i.ai, double noundef %i.ak, double noundef %i.am, double noundef %i.ao, double noundef %i.aq, double noundef %i.as, double noundef %i.au, double noundef %i.aw)
          to label %bb.j unwind label %bb.r

end_hunk_0
