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
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.c = fdiv <2 x double> splat (double 1.000000e+00), %i.b
  store <2 x double> %i.c, ptr %i.a, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !9
  %i.g = fdiv <2 x double> %i.f, %i.b
  store <2 x double> %i.g, ptr %i.e, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4ap3pC2ENS_3MatE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !18
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
  %i.j = load float, ptr %i.i, align 4, !tbaa !22
  %i.k = fpext float %i.j to double               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = icmp slt i32 %i.e, 2                     ; 2 uses
  %i.n = load i64, ptr %i.h, align 8
  %.sink.idx.i.i = select i1 %i.m, i64 0, i64 %i.n
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !22
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = load float, ptr %i.g, align 4, !tbaa !22
  %i.t = fpext float %i.s to double               ; 2 uses
  store double %i.t, ptr %0, align 8, !tbaa !26
  %i.u = load i64, ptr %i.h, align 8
  %.sink.idx.i7.i = select i1 %i.m, i64 0, i64 %i.u
  %.sink.i8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i7.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i8.i, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !22
  %i.x = fpext float %i.w to double
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.z, ptr %i.aa, align 8, !tbaa !24
  %i.ab = icmp slt i32 %i.e, 2                    ; 2 uses
  %i.ac = load i64, ptr %i.h, align 8
  %.sink.idx.i.i1 = select i1 %i.ab, i64 0, i64 %i.ac
  %.sink.i.i2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i.i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i2, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = load double, ptr %i.g, align 8, !tbaa !9 ; 2 uses
  store double %i.ag, ptr %0, align 8, !tbaa !26
  %i.ah = load i64, ptr %i.h, align 8
  %.sink.idx.i7.i3 = select i1 %i.ab, i64 0, i64 %i.ah
  %.sink.i8.i4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i7.i3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i8.i4, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !9
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
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !9
  %i.as = insertelement <2 x double> poison, double %i.al, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ak, i64 1
  %i.au = fdiv <2 x double> %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.au, ptr %i.av, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv4ap3pC2Edddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) unnamed_addr #2 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.c, align 8, !tbaa !25
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1 ; 2 uses
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.f, ptr %i.g, align 8, !tbaa !9
  %i.h = insertelement <2 x double> poison, double %3, i64 0
  %i.i = insertelement <2 x double> %i.h, double %4, i64 1
  %i.j = fdiv <2 x double> %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.j, ptr %i.k, align 8, !tbaa !9
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
  %i.g = load double, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load double, ptr %i.p, align 8, !tbaa !9 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %8 = load double, ptr %7, align 8, !tbaa !9     ; 3 uses
  %i.r = load <2 x double>, ptr %1, align 8, !tbaa !9 ; 6 uses
  %9 = load <2 x double>, ptr %i.m, align 8, !tbaa !9 ; 7 uses
  %10 = load double, ptr %i.o, align 8, !tbaa !9  ; 3 uses
  %i.s = load <2 x double>, ptr %2, align 8, !tbaa !9 ; 3 uses
  %i.t = load <2 x double>, ptr %i.c, align 8, !tbaa !9 ; 3 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = fsub <2 x double> %i.u, %i.v             ; 5 uses
  %11 = extractelement <2 x double> %i.s, i64 0
  %12 = fsub double %11, %i.g
  %i.x = load double, ptr %6, align 8, !tbaa !9   ; 3 uses
  %13 = fneg double %i.q
  %i.y = fneg double %i.x
  %14 = load double, ptr %i.n, align 8, !tbaa !9  ; 2 uses
  %15 = load <2 x double>, ptr %i.l, align 8, !tbaa !9 ; 8 uses
  %16 = insertelement <2 x double> %9, double %10, i64 1 ; 2 uses
  %i.z = insertelement <2 x double> poison, double %13, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x double> %16, %i.aa
  %18 = insertelement <2 x double> poison, double %8, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %19, <2 x double> %17) ; 2 uses
  %21 = insertelement <2 x double> poison, double %i.y, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul <2 x double> %16, %22
  %23 = insertelement <2 x double> %i.r, double %14, i64 1 ; 2 uses
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %19, <2 x double> %i.ab) ; 2 uses
  %24 = fneg <2 x double> %i.ac                   ; 2 uses
  %25 = fmul <2 x double> %15, %22
  %26 = insertelement <2 x double> poison, double %i.q, i64 0
  %27 = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %27, <2 x double> %25) ; 2 uses
  %i.ad = shufflevector <2 x double> %15, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %29 = shufflevector <2 x double> %i.r, <2 x double> %15, <2 x i32> <i32 0, i32 2> ; 2 uses
  %30 = load double, ptr %i.d, align 8, !tbaa !9  ; 2 uses
  %31 = load double, ptr %i.e, align 8, !tbaa !9
  %32 = fsub double %30, %31
  %33 = shufflevector <2 x double> %i.w, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %34 = shufflevector <2 x double> %i.w, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %35 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %36 = insertelement <2 x double> %35, double %10, i64 1
  %37 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %38 = insertelement <2 x double> %37, double %14, i64 1
  %i.ae = fneg <2 x double> %38                   ; 2 uses
  %39 = shufflevector <2 x double> %i.w, <2 x double> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.af = fmul <2 x double> %33, %39
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %36, <2 x double> %i.af) ; 3 uses
  %i.ag = shufflevector <2 x double> %9, <2 x double> %15, <2 x i32> <i32 0, i32 2>
  %41 = fmul <2 x double> %i.ag, %i.ae
  %i.ah = extractelement <2 x double> %40, i64 1  ; 2 uses
  %42 = fmul double %i.ah, %i.ah
  %43 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %44 = insertelement <2 x double> %43, double %10, i64 0
  %45 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %44, <2 x double> %41) ; 3 uses
  %46 = extractelement <2 x double> %45, i64 0    ; 2 uses
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %42)
  %i.ai = insertelement <2 x double> %45, double %32, i64 0 ; 3 uses
  %i.aj = insertelement <2 x double> %40, double %47, i64 1
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ai, <2 x double> %i.aj)
  %i.al = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ak) ; 5 uses
  %48 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.w, %48             ; 10 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %49 = fdiv <2 x double> %i.ai, %i.al            ; 10 uses
  %i.ap = fneg <2 x double> %40
  %50 = shufflevector <2 x double> %45, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %51 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fdiv <2 x double> %50, %51              ; 11 uses
  %52 = shufflevector <2 x double> %i.am, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  %53 = insertelement <2 x double> poison, double %12, i64 0 ; 2 uses
  %54 = insertelement <2 x double> %53, double %i.x, i64 1
  %55 = shufflevector <2 x double> %i.am, <2 x double> %i.aq, <2 x i32> <i32 1, i32 2>
  %56 = fneg double %i.an
  %57 = extractelement <2 x double> %49, i64 0
  %58 = fneg double %i.ao
  %59 = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %60 = insertelement <2 x double> %59, double %30, i64 0
  %61 = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %62 = insertelement <2 x double> %61, double %i.i, i64 1
  %63 = fsub <2 x double> %60, %62                ; 5 uses
  %64 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = insertelement <2 x double> %64, double %i.q, i64 1
  %65 = fmul <2 x double> %i.ar, %52
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %54, <2 x double> %55, <2 x double> %65)
  %66 = insertelement <2 x double> %63, double %8, i64 1
  %67 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> %66, <2 x double> %i.as) ; 4 uses
  %i.at = extractelement <2 x double> %67, i64 0
  %68 = fneg double %i.at
  %69 = extractelement <2 x double> %63, i64 0
  %70 = fmul double %69, %56
  %71 = extractelement <2 x double> %63, i64 1
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %57, double %70) ; 3 uses
  %73 = insertelement <2 x double> poison, double %58, i64 0
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  %75 = fmul <2 x double> %63, %74
  %76 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %49, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> %i.au, <2 x double> %75) ; 4 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fneg double %i.aw
  %foldExtExtBinop = fmul <2 x double> %i.av, %i.av
  %i.ay = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.az = tail call double @llvm.fmuladd.f64(double %72, double %72, double %i.ay)
  %i.ba = extractelement <2 x double> %i.av, i64 1 ; 3 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.az)
  %sqrt.i236 = tail call noundef double @llvm.sqrt.f64(double %i.bb) ; 6 uses
  %i.bc = insertelement <2 x double> poison, double %i.ax, i64 0
  %77 = insertelement <2 x double> %i.bc, double %72, i64 1
  %i.bd = insertelement <2 x double> poison, double %sqrt.i236, i64 0 ; 3 uses
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fdiv <2 x double> %77, %i.be            ; 5 uses
  %i.bg = fdiv double %i.ba, %sqrt.i236           ; 2 uses
  %78 = fsub <2 x double> %67, %i.al
  %79 = fmul <2 x double> %67, %i.al
  %80 = extractelement <2 x double> %78, i64 0    ; 2 uses
  %81 = fneg double %80
  %82 = fneg double %sqrt.i236
  %83 = fneg <2 x double> %i.aq                   ; 2 uses
  %84 = extractelement <2 x double> %49, i64 1    ; 2 uses
  %85 = fmul <2 x double> %i.ad, %83
  %86 = shufflevector <2 x double> %i.aq, <2 x double> %49, <2 x i32> <i32 1, i32 3>
  %87 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %86, <2 x double> %85) ; 5 uses
  %88 = extractelement <2 x double> %67, i64 1    ; 4 uses
  %89 = fmul double %88, %68                      ; 3 uses
  %90 = fmul double %sqrt.i236, %88               ; 3 uses
  %91 = shufflevector <2 x double> %i.aq, <2 x double> %87, <2 x i32> <i32 0, i32 3>
  %92 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %93 = shufflevector <2 x double> %49, <2 x double> %87, <2 x i32> <i32 1, i32 2>
  %94 = shufflevector <2 x double> %9, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  %95 = shufflevector <2 x double> %83, <2 x double> %24, <2 x i32> <i32 0, i32 3>
  %96 = fmul <2 x double> %94, %95
  %97 = shufflevector <2 x double> %i.r, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %98 = shufflevector <2 x double> %49, <2 x double> %20, <2 x i32> <i32 1, i32 3>
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %97, <2 x double> %98, <2 x double> %96) ; 3 uses
  %100 = extractelement <2 x double> %99, i64 0
  %101 = fneg double %100                         ; 2 uses
  %102 = shufflevector <2 x double> %i.aq, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %103 = shufflevector <2 x double> %24, <2 x double> %99, <2 x i32> <i32 0, i32 2>
  %104 = fmul <2 x double> %102, %103
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> %20, <2 x double> %104)
  %106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %28, <2 x double> %105) ; 2 uses
  %i.bh = extractelement <2 x double> %28, i64 1
  %107 = extractelement <2 x double> %99, i64 1
  %108 = tail call noundef double @llvm.fmuladd.f64(double %84, double %i.bh, double %107)
  %i.bi = extractelement <2 x double> %79, i64 1  ; 2 uses
  %i.bj = fmul double %80, %i.bi
  %109 = extractelement <2 x double> %106, i64 1
  %i.bk = fmul double %109, %81                   ; 2 uses
  %110 = fmul double %sqrt.i236, %i.bi            ; 2 uses
  %i.bl = insertelement <2 x double> %i.bd, double %82, i64 1
  %i.bm = fmul <2 x double> %i.bl, %106           ; 5 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 2 uses
  %i.bo = fmul double %i.bn, %110                 ; 6 uses
  %i.bp = extractelement <2 x double> %i.bm, i64 1
  %i.bq = fmul double %89, %i.bp
  %111 = fneg double %i.bo
  %i.br = tail call double @llvm.fmuladd.f64(double %90, double %i.bk, double %i.bq) ; 5 uses
  %i.bs = insertelement <2 x double> %i.bm, double %89, i64 1
  %i.bt = fneg <2 x double> %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bv, %i.bt          ; 6 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1 ; 4 uses
  %i.by = insertelement <2 x double> %i.bw, double %i.br, i64 1
  %112 = extractelement <2 x double> %i.bw, i64 0 ; 3 uses
  %i.bz = fneg double %112
  %113 = insertelement <2 x double> %i.bd, double %90, i64 1
  %114 = insertelement <2 x double> poison, double %108, i64 0
  %115 = insertelement <2 x double> %114, double %110, i64 1
  %116 = fmul <2 x double> %113, %115             ; 5 uses
  %i.ca = extractelement <2 x double> %116, i64 0
  %i.cb = fneg double %i.ca
  %i.cc = fmul double %89, %i.cb
  %117 = insertelement <2 x double> %i.bm, double %i.bo, i64 1
  %118 = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %119 = insertelement <2 x double> %118, double %i.bo, i64 1
  %120 = fmul <2 x double> %117, %119
  %121 = extractelement <2 x double> %116, i64 1  ; 2 uses
  %122 = fmul double %121, 2.000000e+00
  %123 = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bk, double %i.cc) ; 6 uses
  %124 = fmul double %i.bo, %123                  ; 2 uses
  %125 = tail call double @llvm.fmuladd.f64(double %121, double %i.br, double %124)
  %i.cd = fmul double %i.bx, %122
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.cd)
  %i.cf = tail call double @llvm.fmuladd.f64(double %123, double %123, double %i.ce)
  %126 = fneg double %124
  %127 = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cg = insertelement <2 x double> %127, double %126, i64 1
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.bw, <2 x double> %i.cg) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %111, double %i.bo, double %i.ci)
  %128 = fneg double %123
  %129 = fmul double %123, %128
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %129)
  %i.cl = insertelement <2 x double> %116, double %90, i64 0
  %130 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %116, <2 x double> %120) ; 4 uses
  %131 = extractelement <2 x double> %130, i64 0  ; 4 uses
  %132 = extractelement <2 x double> %130, i64 1
  %133 = tail call double @llvm.fmuladd.f64(double %131, double %131, double %132) ; 6 uses
  %134 = tail call double @llvm.fmuladd.f64(double %131, double %112, double %125)
  %135 = fmul double %134, 2.000000e+00           ; 6 uses
  %136 = fneg double %131
  %137 = insertelement <2 x double> poison, double %136, i64 0
  %138 = shufflevector <2 x double> %137, <2 x double> poison, <2 x i32> zeroinitializer
  %139 = shufflevector <2 x double> %130, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %140 = insertelement <2 x double> %i.ch, double %i.cj, i64 0
  %141 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %138, <2 x double> %139, <2 x double> %140) ; 6 uses
  %i.cm = extractelement <2 x double> %141, i64 0 ; 2 uses
  %142 = extractelement <2 x double> %141, i64 1
  %i.cn = fmul double %142, 2.000000e+00          ; 7 uses
  %i.co = tail call double @llvm.fmuladd.f64(double %i.bz, double %112, double %i.ck) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cs = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %133, double noundef %135, double noundef %i.cm, double noundef %i.cn, double noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.cr) ; 5 uses
  %i.ct = icmp sgt i32 %i.cs, 0                   ; 2 uses
  br i1 %i.ct, label %.preheader.preheader.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.cs to i64 ; 6 uses
  %i.cu = fmul double %133, 4.000000e+00          ; 4 uses
  %i.cv = fmul double %135, 3.000000e+00          ; 4 uses
  %i.cw = fmul double %i.cm, 2.000000e+00         ; 4 uses
  %min.iters.check = icmp eq i32 %i.cs, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat550 = shufflevector <2 x double> %broadcast.splatinsert549, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat552 = shufflevector <2 x double> %broadcast.splatinsert551, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <2 x double> poison, double %133, i64 0
  %broadcast.splat554 = shufflevector <2 x double> %broadcast.splatinsert553, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <2 x double> poison, double %135, i64 0
  %broadcast.splat556 = shufflevector <2 x double> %broadcast.splatinsert555, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat558 = shufflevector <2 x double> %141, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <2 x double> poison, double %i.cn, i64 0
  %broadcast.splat560 = shufflevector <2 x double> %broadcast.splatinsert559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat562 = shufflevector <2 x double> %broadcast.splatinsert561, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cx, align 16, !tbaa !9 ; 8 uses
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat554, <2 x double> %wide.load, <2 x double> %broadcast.splat556)
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %wide.load, <2 x double> %broadcast.splat558)
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %wide.load, <2 x double> %broadcast.splat562)
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat550)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %wide.load, <2 x double> %broadcast.splat552)
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.df = fdiv <2 x double> %i.db, %i.de
  %i.dg = fsub <2 x double> %wide.load, %i.df
  store <2 x double> %i.dg, ptr %i.cx, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %i.di = insertelement <2 x double> poison, double %i.cu, i64 1
  %i.dj = insertelement <2 x double> %141, double %i.cv, i64 1
  %i.dk = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.cw, i64 1
  %i.dm = insertelement <2 x double> poison, double %i.co, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.cn, i64 1
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader595, %._crit_edge.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %._crit_edge.i ], [ %indvars.iv.1.i.ph, %._crit_edge.i.preheader595 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1.i ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !9 ; 3 uses
  %i.dq = call double @llvm.fmuladd.f64(double %133, double %i.dp, double %135)
  %i.dr = insertelement <2 x double> %i.ez, double %i.dq, i64 0
  %i.ds = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dt, <2 x double> %i.fa)
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dt, <2 x double> %i.fc)
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dt, <2 x double> %i.fe) ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = extractelement <2 x double> %i.dw, i64 1
  %i.dz = fdiv double %i.dx, %i.dy
  %i.ea = fsub double %i.dp, %i.dz
  store double %i.ea, ptr %i.do, align 8, !tbaa !9
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i, !llvm.loop !64

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !9 ; 3 uses
  %i.ed = call double @llvm.fmuladd.f64(double %133, double %i.ec, double %135)
  %i.ee = insertelement <2 x double> %i.di, double %i.ed, i64 0
  %i.ef = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.eg, <2 x double> %i.dj)
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.eg, <2 x double> %i.dl)
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.eg, <2 x double> %i.dn) ; 2 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 0
  %i.el = extractelement <2 x double> %i.ej, i64 1
  %i.em = fdiv double %i.ek, %i.el
  %i.en = fsub double %i.ec, %i.em
  store double %i.en, ptr %i.eb, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.preheader, label %scalar.ph, !llvm.loop !65

._crit_edge.i.preheader:                          ; preds = %scalar.ph, %middle.block
  %min.iters.check564 = icmp eq i32 %i.cs, 1
  br i1 %min.iters.check564, label %._crit_edge.i.preheader595, label %vector.ph565

vector.ph565:                                     ; preds = %._crit_edge.i.preheader
  %n.vec566 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert567 = insertelement <2 x double> poison, double %133, i64 0
  %broadcast.splat568 = shufflevector <2 x double> %broadcast.splatinsert567, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %135, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat572 = shufflevector <2 x double> %141, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %i.cn, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat582 = shufflevector <2 x double> %broadcast.splatinsert581, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph565
  %index584 = phi i64 [ 0, %vector.ph565 ], [ %index.next586, %vector.body583 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.eo, align 16, !tbaa !9 ; 8 uses
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat568, <2 x double> %wide.load585, <2 x double> %broadcast.splat570)
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %wide.load585, <2 x double> %broadcast.splat572)
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %wide.load585, <2 x double> %broadcast.splat576)
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat578, <2 x double> %wide.load585, <2 x double> %broadcast.splat580)
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %wide.load585, <2 x double> %broadcast.splat582)
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.ew = fdiv <2 x double> %i.es, %i.ev
  %i.ex = fsub <2 x double> %wide.load585, %i.ew
  store <2 x double> %i.ex, ptr %i.eo, align 16, !tbaa !9
  %index.next586 = add nuw i64 %index584, 2       ; 2 uses
  %i.ey = icmp eq i64 %index.next586, %n.vec566
  br i1 %i.ey, label %middle.block587, label %vector.body583, !llvm.loop !66

middle.block587:                                  ; preds = %vector.body583
  %cmp.n588 = icmp eq i64 %n.vec566, %wide.trip.count.i
  br i1 %cmp.n588, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i.preheader595

._crit_edge.i.preheader595:                       ; preds = %._crit_edge.i.preheader, %middle.block587
  %indvars.iv.1.i.ph = phi i64 [ 0, %._crit_edge.i.preheader ], [ %n.vec566, %middle.block587 ]
  %i.ez = insertelement <2 x double> poison, double %i.cu, i64 1
  %i.fa = insertelement <2 x double> %141, double %i.cv, i64 1
  %i.fb = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.cw, i64 1
  %i.fd = insertelement <2 x double> poison, double %i.co, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.cn, i64 1
  br label %._crit_edge.i

_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit: ; preds = %._crit_edge.i, %middle.block587, %bb.a
  %i.ff = fneg <2 x double> %i.bf                 ; 2 uses
  %i.fg = shufflevector <2 x double> %49, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.fg, %i.ff
  %i.fi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.fj, <2 x double> %i.fh) ; 2 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fm = fdiv double %sqrt.i236, %88             ; 2 uses
  %143 = insertelement <2 x double> poison, double %i.x, i64 0
  %i.fn = insertelement <2 x double> %143, double %i.q, i64 1
  %i.fo = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x double> %i.fn, %i.fp
  %i.fr = fmul double %8, %i.fm
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !9 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !9 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !9 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.ct, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %144 = extractelement <2 x double> %i.bf, i64 0
  %shift596 = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop597 = fmul <2 x double> %i.am, %shift596
  %145 = extractelement <2 x double> %foldExtExtBinop597, i64 0
  %146 = call double @llvm.fmuladd.f64(double %i.ao, double %144, double %145)
  %i.gc = fcmp ogt double %88, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.cs to i64
  %i.gd = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = shufflevector <2 x double> %i.r, <2 x double> %9, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gg = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %147 = extractelement <2 x double> %9, i64 0
  %i.gk = insertelement <2 x double> poison, double %101, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fneg <2 x double> %i.fl
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> %i.fk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %148 = insertelement <3 x double> poison, double %146, i64 0
  %149 = shufflevector <3 x double> %148, <3 x double> poison, <3 x i32> zeroinitializer
  %150 = insertelement <2 x double> poison, double %i.bo, i64 0
  %151 = insertelement <2 x double> poison, double %123, i64 0
  %152 = insertelement <3 x double> poison, double %i.bg, i64 0
  %153 = shufflevector <3 x double> %152, <3 x double> poison, <3 x i32> zeroinitializer
  %154 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = insertelement <2 x double> poison, double %i.g, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %155 = insertelement <2 x double> poison, double %i.i, i64 0
  %i.gr = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer
  %156 = extractelement <2 x double> %87, i64 0
  %157 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.br, i64 1
  %158 = shufflevector <2 x double> %i.aq, <2 x double> %49, <2 x i32> <i32 0, i32 3> ; 2 uses
  %159 = shufflevector <2 x double> %151, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %160 = shufflevector <2 x double> %150, <2 x double> %130, <2 x i32> <i32 0, i32 2>
  %161 = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %162 = shufflevector <2 x double> %49, <2 x double> poison, <3 x i32> zeroinitializer
  %i.gt = insertelement <2 x double> %157, double %101, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.gu = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.gu, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !9 ; 5 uses
  %i.gx = call noundef double @llvm.fabs.f64(double %i.gw)
  %i.gy = fcmp ogt double %i.gx, 1.000000e+00
  br i1 %i.gy, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gz = fneg double %i.gw
  %i.ha = insertelement <2 x double> poison, double %i.gw, i64 0
  %163 = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %164 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %160, <2 x double> %163, <2 x double> %159)
  %165 = insertelement <2 x double> %116, double %i.gz, i64 0
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %165, <2 x double> %163, <2 x double> %i.gs) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = call double @sqrt(double noundef %i.hc) #17 ; 2 uses
  %i.he = fneg double %i.hd
  %i.hf = select i1 %i.gc, double %i.hd, double %i.he ; 4 uses
  %i.hg = extractelement <2 x double> %i.hb, i64 1
  %i.hh = call double @llvm.fmuladd.f64(double %i.hg, double %i.gw, double %i.bx)
  %i.hi = fdiv double %i.hf, %i.hh
  %i.hj = fneg double %i.hf                       ; 2 uses
  %i.hk = fmul <2 x double> %i.bf, %163
  %i.hl = fmul double %i.fr, %i.hf
  %i.hm = sext i32 %.0234531 to i64               ; 3 uses
  %i.hn = getelementptr inbounds [24 x i8], ptr %4, i64 %i.hm ; 4 uses
  %166 = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %167 = getelementptr inbounds [72 x i8], ptr %3, i64 %i.hm ; 8 uses
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 24
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 48
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 8
  %171 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> zeroinitializer, <2 x double> %i.hk)
  %i.ho = insertelement <2 x double> poison, double %i.hf, i64 0 ; 2 uses
  %172 = insertelement <2 x double> %i.ho, double %i.hj, i64 1
  %173 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %172, <2 x double> %171) ; 3 uses
  %174 = shufflevector <2 x double> %173, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %175 = fmul <2 x double> %158, %174
  %176 = fmul <2 x double> %161, %173
  %177 = shufflevector <2 x double> %173, <2 x double> poison, <2 x i32> zeroinitializer
  %178 = fmul <2 x double> %158, %177
  %i.hp = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %164, %i.hq           ; 5 uses
  %179 = extractelement <2 x double> %i.hr, i64 1
  %180 = fneg double %179                         ; 2 uses
  %181 = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %182 = fmul <2 x double> %181, %i.hr            ; 3 uses
  %183 = fmul <2 x double> %163, %i.hr            ; 3 uses
  %184 = shufflevector <2 x double> %182, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %185 = insertelement <3 x double> %184, double %i.gw, i64 2
  %186 = fmul <3 x double> %153, %185
  %187 = shufflevector <2 x double> %i.hr, <2 x double> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %188 = insertelement <3 x double> %187, double 0.000000e+00, i64 2
  %189 = insertelement <3 x double> %188, double %180, i64 0
  %190 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %162, <3 x double> %189, <3 x double> %186)
  %191 = shufflevector <2 x double> %183, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %192 = insertelement <3 x double> %191, double %i.hj, i64 2
  %193 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %149, <3 x double> %192, <3 x double> %190) ; 6 uses
  %194 = shufflevector <3 x double> %193, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %195 = fmul <2 x double> %i.aq, %194
  %196 = shufflevector <3 x double> %193, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %197 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %196, <2 x double> %29, <2 x double> %195)
  %198 = shufflevector <3 x double> %193, <3 x double> poison, <2 x i32> zeroinitializer
  %199 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %198, <2 x double> %i.gt, <2 x double> %197) ; 4 uses
  %200 = extractelement <3 x double> %193, i64 2
  %201 = fmul double %84, %200
  %202 = extractelement <3 x double> %193, i64 1
  %203 = call double @llvm.fmuladd.f64(double %202, double %147, double %201)
  %204 = extractelement <3 x double> %193, i64 0
  %205 = call double @llvm.fmuladd.f64(double %204, double %156, double %203) ; 3 uses
  %i.hs = fmul <2 x double> %i.fq, %181
  %i.ht = shufflevector <2 x double> %182, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x double> %i.bf, %i.ht
  %206 = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %207 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %206, <2 x double> %i.hu)
  %208 = shufflevector <2 x double> %183, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %209 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %208, <2 x double> %207) ; 3 uses
  %i.hv = shufflevector <2 x double> %182, <2 x double> poison, <2 x i32> zeroinitializer
  %210 = fmul <2 x double> %i.bf, %i.hv
  %211 = insertelement <2 x double> poison, double %180, i64 0
  %212 = shufflevector <2 x double> %211, <2 x double> poison, <2 x i32> zeroinitializer
  %213 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %212, <2 x double> %210)
  %i.hw = shufflevector <2 x double> %183, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.hw, <2 x double> %213) ; 3 uses
  %i.hy = shufflevector <2 x double> %209, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.gf, <2 x double> %175)
  %i.ia = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %92, <2 x double> %i.hz) ; 4 uses
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %209, <2 x double> %i.gm, <2 x double> %176)
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.gl, <2 x double> %i.ic) ; 5 uses
  %i.ie = shufflevector <2 x double> %209, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.gf, <2 x double> %178)
  %i.ig = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %92, <2 x double> %i.if) ; 4 uses
  %i.ii = extractelement <2 x double> %i.ih, i64 0
  %i.ij = extractelement <2 x double> %i.ib, i64 0
  %i.ik = shufflevector <2 x double> %i.ih, <2 x double> %i.id, <2 x i32> <i32 0, i32 2>
  %i.il = fmul <2 x double> %i.gr, %i.ik
  %i.im = shufflevector <2 x double> %i.ib, <2 x double> %i.id, <2 x i32> <i32 0, i32 3>
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.im, <2 x double> %i.il)
  %i.io = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %154, <2 x double> %199, <2 x double> %i.in)
  %i.ip = extractelement <2 x double> %i.ih, i64 1 ; 2 uses
  %i.iq = fmul double %i.i, %i.ip
  %i.ir = extractelement <2 x double> %i.ib, i64 1 ; 2 uses
  %214 = call double @llvm.fmuladd.f64(double %i.g, double %i.ir, double %i.iq)
  %i.is = call double @llvm.fmuladd.f64(double %i.k, double %205, double %214)
  %i.it = fsub <2 x double> %i.hs, %i.io
  store <2 x double> %i.it, ptr %i.hn, align 8, !tbaa !9
  %i.iu = fsub double %i.hl, %i.is
  store double %i.iu, ptr %166, align 8, !tbaa !9
  store double %i.ij, ptr %167, align 8, !tbaa !9
  store double %i.ir, ptr %169, align 8, !tbaa !9
  store double %i.ii, ptr %170, align 8, !tbaa !9
  %i.iv = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.iv, ptr %168, align 8, !tbaa !9
  %i.iw = getelementptr inbounds nuw i8, ptr %167, i64 56
  store double %i.ip, ptr %i.iw, align 8, !tbaa !9
  %i.ix = getelementptr inbounds nuw i8, ptr %167, i64 16
  %i.iy = extractelement <2 x double> %199, i64 0
  store double %i.iy, ptr %i.ix, align 8, !tbaa !9
  %i.iz = getelementptr inbounds nuw i8, ptr %167, i64 40
  %215 = extractelement <2 x double> %199, i64 1  ; 2 uses
  store double %215, ptr %i.iz, align 8, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %167, i64 64
  store double %205, ptr %i.ja, align 8, !tbaa !9
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.jc = fmul <2 x double> %i.gj, %i.ih
  %i.jd = load double, ptr %i.hn, align 8, !tbaa !9
  %i.je = extractelement <2 x double> %i.id, i64 0
  %i.jf = fmul double %i.fv, %i.je
  %i.jg = extractelement <2 x double> %i.id, i64 1
  %i.jh = call double @llvm.fmuladd.f64(double %i.jg, double %i.ft, double %i.jf)
  %i.ji = call double @llvm.fmuladd.f64(double %215, double %i.fx, double %i.jh)
  %i.jj = load double, ptr %i.jb, align 8, !tbaa !9
  %i.jk = fadd double %i.ji, %i.jj
  %i.jl = load double, ptr %166, align 8, !tbaa !9
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.gh, <2 x double> %i.jc)
  %216 = insertelement <2 x double> %199, double %205, i64 1
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %216, <2 x double> %i.ge, <2 x double> %i.jm)
  %i.jo = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %i.jl, i64 1
  %i.jq = fadd <2 x double> %i.jn, %i.jp          ; 2 uses
  %i.jr = insertelement <2 x double> %i.jq, double %i.jk, i64 1
  %i.js = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jt = fdiv <2 x double> %i.jr, %i.js          ; 2 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0
  %i.jv = fsub double %i.ju, %i.fz                ; 2 uses
  %i.jw = extractelement <2 x double> %i.jt, i64 1
  %i.jx = fsub double %i.jw, %i.gb                ; 2 uses
  %i.jy = fmul double %i.jx, %i.jx
  %i.jz = call double @llvm.fmuladd.f64(double %i.jv, double %i.jv, double %i.jy)
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hm
  store double %i.jz, ptr %i.ka, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.kb = add nsw i32 %.0234531, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.kb, %bb.e ], [ %.0234531, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !67

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv536 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next537, %.critedge ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv536
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %indvars.iv538 = phi i64 [ %indvars.iv536, %.preheader ], [ %indvars.iv.next539, %bb.h ] ; 5 uses
  %indvars.iv.next539 = add nsw i64 %indvars.iv538, -1 ; 4 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next539 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !9 ; 2 uses
  %i.ke = fcmp ogt double %i.kd, %.pre
  br i1 %i.ke, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count542
  br i1 %exitcond543.not, label %.loopexit, label %.preheader, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv538
  store double %i.kd, ptr %i.kf, align 8, !tbaa !9
  store double %.pre, ptr %i.kc, align 8, !tbaa !9
  %i.kg = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv538 ; 7 uses
  %i.kh = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv.next539 ; 9 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load <2 x double>, ptr %i.kg, align 8, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kp = load <2 x double>, ptr %i.kl, align 8, !tbaa !9
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.ks = load <2 x double>, ptr %i.kq, align 8, !tbaa !9
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 56
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kh, i64 56
  %i.kx = load <2 x double>, ptr %i.kt, align 8, !tbaa !9
  %i.ky = load <4 x double>, ptr %i.ko, align 8, !tbaa !9
  store <2 x double> %i.ks, ptr %i.kr, align 8, !tbaa !9
  store <4 x double> %i.ky, ptr %i.kn, align 8, !tbaa !9
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  %i.la = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.lb = load double, ptr %i.kz, align 8, !tbaa !9
  %i.lc = load <2 x double>, ptr %i.kw, align 8, !tbaa !9
  store <2 x double> %i.kx, ptr %i.ku, align 8, !tbaa !9
  store <2 x double> %i.lc, ptr %i.kv, align 8, !tbaa !9
  %i.ld = load <2 x double>, ptr %i.kj, align 8, !tbaa !9
  store <2 x double> %i.kk, ptr %i.kh, align 8, !tbaa !9
  store <2 x double> %i.kp, ptr %i.km, align 8, !tbaa !9
  %i.le = insertelement <4 x double> poison, double %i.lb, i64 0
  %i.lf = insertelement <4 x double> %i.le, double %i.ki, i64 1
  %i.lg = shufflevector <2 x double> %i.ld, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lh = shufflevector <4 x double> %i.lf, <4 x double> %i.lg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.lh, ptr %i.la, align 8, !tbaa !9
  %i.li = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv538 ; 2 uses
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next539 ; 4 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !9
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = load <2 x double>, ptr %i.li, align 8, !tbaa !9
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.lp = load double, ptr %i.ln, align 8, !tbaa !9
  %i.lq = load <2 x double>, ptr %i.ll, align 8, !tbaa !9
  store <2 x double> %i.lm, ptr %i.lj, align 8, !tbaa !9
  %i.lr = insertelement <4 x double> poison, double %i.lp, i64 0
  %i.ls = insertelement <4 x double> %i.lr, double %i.lk, i64 1
  %i.lt = shufflevector <2 x double> %i.lq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lu = shufflevector <4 x double> %i.ls, <4 x double> %i.lt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.lu, ptr %i.lo, align 8, !tbaa !9
  %i.lv = icmp sgt i64 %indvars.iv538, 1
  br i1 %i.lv, label %bb.g, label %.critedge, !llvm.loop !69

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
  %i.c = load i32, ptr %3, align 8, !tbaa !18
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !18
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
  %i.j = load ptr, ptr %6, align 8, !tbaa !31     ; 20 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !9
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #17
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #17
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !87

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i29) #17
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i29) #17
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 208 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !87

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #18
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !88
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !62
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #18
  invoke void @__cxa_rethrow() #20
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #19
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!13 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!14 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!15 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !14, i64 4, !5, i64 8, !4, i64 12}
!16 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!17 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !12, i64 56, !13, i64 64, !15, i64 72, !16, i64 128}
!18 = !{!17, !5, i64 0}
!19 = !{!17, !5, i64 4}
!20 = !{!17, !11, i64 24}
!21 = !{!"float", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSN2cv4ap3pE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!24 = !{!23, !8, i64 16}
!25 = !{!23, !8, i64 24}
!26 = !{!23, !8, i64 0}
!27 = !{!23, !8, i64 8}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 double", !10, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!33 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !10, i64 8, !32, i64 16}
!34 = !{!33, !5, i64 0}
!35 = !{!33, !10, i64 8}
!36 = !{!30, !29, i64 16}
!37 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !10, i64 0}
!38 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !37, i64 0, !5, i64 8}
!39 = !{!38, !5, i64 8}
!40 = !{!30, !29, i64 8}
!41 = !{!17, !5, i64 12}
!42 = !{!"long", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSN2cv6Point_IfEE", !21, i64 0, !21, i64 4}
!45 = !{!44, !21, i64 0}
!46 = !{!44, !21, i64 4}
!47 = !{!"_ZTSN2cv7Point3_IfEE", !21, i64 0, !21, i64 4, !21, i64 8}
!48 = !{!47, !21, i64 0}
!49 = !{!47, !21, i64 4}
!50 = !{!47, !21, i64 8}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!"_ZTSN2cv6Point_IdEE", !8, i64 0, !8, i64 8}
!53 = !{!52, !8, i64 0}
!54 = !{!52, !8, i64 8}
!55 = !{!"_ZTSN2cv7Point3_IdEE", !8, i64 0, !8, i64 8, !8, i64 16}
!56 = !{!55, !8, i64 0}
!57 = !{!55, !8, i64 8}
!58 = !{!55, !8, i64 16}
!59 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 8}
!62 = !{!60, !59, i64 16}
!63 = distinct !{!63, !28, !70, !71}
!64 = distinct !{!64, !28, !71, !70}
!65 = distinct !{!65, !28, !71, !70}
!66 = distinct !{!66, !28, !70, !71}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !51}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !28}
!77 = distinct !{!77, !51}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !51}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !51}
!84 = distinct !{!84, !28}
!85 = !{!23, !8, i64 32}
!86 = !{!23, !8, i64 40}
!87 = distinct !{!87, !28}
!88 = !{!60, !59, i64 0}
end_hunk_1
