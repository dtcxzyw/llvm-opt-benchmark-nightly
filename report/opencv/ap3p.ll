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
  %i.i = load double, ptr %i.h, align 8, !tbaa !9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load double, ptr %i.j, align 8, !tbaa !9 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load double, ptr %i.p, align 8, !tbaa !9 ; 4 uses
  %i.r = load <2 x double>, ptr %1, align 8, !tbaa !9 ; 6 uses
  %i.s = load <2 x double>, ptr %i.m, align 8, !tbaa !9 ; 7 uses
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.v = load <2 x double>, ptr %2, align 8, !tbaa !9 ; 2 uses
  %i.w = load <2 x double>, ptr %i.c, align 8, !tbaa !9 ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = shufflevector <2 x double> %i.w, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.z = fsub <2 x double> %i.x, %i.y             ; 5 uses
  %i.aa = load double, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %i.ab = load double, ptr %i.e, align 8, !tbaa !9
  %i.ac = fsub double %i.aa, %i.ab
  %i.ad = fneg double %i.q
  %6 = shufflevector <2 x double> %i.z, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <2 x double> %i.z, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = load <2 x double>, ptr %i.l, align 8, !tbaa !9 ; 8 uses
  %9 = load <2 x double>, ptr %i.o, align 8, !tbaa !9 ; 7 uses
  %10 = load <2 x double>, ptr %i.n, align 8, !tbaa !9 ; 5 uses
  %11 = fneg <2 x double> %10                     ; 3 uses
  %12 = shufflevector <2 x double> %i.z, <2 x double> %11, <2 x i32> <i32 0, i32 3>
  %13 = fmul <2 x double> %6, %12
  %14 = shufflevector <2 x double> %i.z, <2 x double> %9, <2 x i32> <i32 1, i32 3>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %14, <2 x double> %13) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = fneg double %i.ah
  %15 = shufflevector <2 x double> %i.s, <2 x double> %9, <2 x i32> <i32 0, i32 2> ; 2 uses
  %16 = fmul <2 x double> %15, %i.af
  %17 = fmul <2 x double> %15, %11
  %18 = shufflevector <2 x double> %i.r, <2 x double> %10, <2 x i32> <i32 0, i32 2> ; 2 uses
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %9, <2 x double> %17) ; 4 uses
  %20 = extractelement <2 x double> %19, i64 1    ; 2 uses
  %21 = fneg double %20
  %foldExtExtBinop = fmul <2 x double> %19, %19
  %i.aj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %22 = shufflevector <2 x double> %i.s, <2 x double> %8, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %8, <2 x double> %10, <2 x i32> <i32 1, i32 2>
  %24 = fneg <2 x double> %23
  %25 = fmul <2 x double> %22, %24
  %26 = shufflevector <2 x double> %9, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %26, <2 x double> %25) ; 3 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0 ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.aj)
  %i.an = fneg <2 x double> %19
  %i.ao = shufflevector <2 x double> %i.ak, <2 x double> %i.an, <2 x i32> <i32 0, i32 2>
  %i.ap = insertelement <2 x double> %i.ak, double %i.ac, i64 0 ; 3 uses
  %i.aq = insertelement <2 x double> %i.ag, double %i.am, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ap, <2 x double> %i.aq)
  %i.as = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ar) ; 5 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fdiv <2 x double> %i.ao, %i.at          ; 10 uses
  %i.av = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.aw = extractelement <2 x double> %i.au, i64 0
  %i.ax = fneg <2 x double> %i.au                 ; 2 uses
  %foldExtExtBinop591 = fmul <2 x double> %i.s, %i.ax
  %i.ay = extractelement <2 x double> %foldExtExtBinop591, i64 0
  %i.az = fdiv <2 x double> %i.ap, %i.as          ; 9 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1 ; 2 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.t, double %i.ba, double %i.ay) ; 2 uses
  %i.bc = fneg double %i.bb                       ; 2 uses
  %i.bd = shufflevector <2 x double> %8, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.be = fmul <2 x double> %i.bd, %i.ax
  %i.bf = shufflevector <2 x double> %i.r, <2 x double> %8, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bg = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = shufflevector <2 x double> %i.au, <2 x double> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bh, <2 x double> %i.be) ; 4 uses
  %27 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %27, <2 x double> %16) ; 2 uses
  %28 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %8, %28
  %i.bl = insertelement <2 x double> poison, double %i.q, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.bm, <2 x double> %i.bk) ; 2 uses
  %i.bo = fmul double %i.av, %i.ai
  %i.bp = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %i.z, %i.bp           ; 10 uses
  %i.br = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.i, i64 0 ; 2 uses
  %i.bt = insertelement <2 x double> %i.bs, double %i.g, i64 1
  %i.bu = fsub <2 x double> %i.x, %i.bt           ; 5 uses
  %i.bv = fsub double %i.aa, %i.k                 ; 3 uses
  %i.bw = fneg <2 x double> %i.bq                 ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = fmul double %i.bv, %i.bx
  %29 = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x double> %29, double %i.bv, i64 0
  %i.ca = fmul <2 x double> %i.bz, %i.bw
  %i.cb = shufflevector <2 x double> %i.az, <2 x double> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cb, <2 x double> %i.ca) ; 3 uses
  %i.cd = extractelement <2 x double> %i.bu, i64 1
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.br, double %i.by) ; 3 uses
  %i.cf = fneg double %i.ce
  %i.cg = fmul double %i.ce, %i.ce
  %i.ch = extractelement <2 x double> %i.cc, i64 0 ; 2 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.cg)
  %i.cj = extractelement <2 x double> %i.cc, i64 1 ; 3 uses
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %i.ci)
  %sqrt.i236 = tail call noundef double @llvm.sqrt.f64(double %i.ck) ; 7 uses
  %i.cl = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.cn = insertelement <2 x double> poison, double %sqrt.i236, i64 0 ; 2 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv <2 x double> %i.cm, %i.co          ; 5 uses
  %i.cq = fdiv double %i.cj, %sqrt.i236           ; 4 uses
  %i.cr = fmul double %20, %i.bb
  %i.cs = shufflevector <2 x double> %i.au, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.ct = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cr, i64 1
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.bj, <2 x double> %i.cu)
  %i.cw = shufflevector <2 x double> %i.az, <2 x double> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.bn, <2 x double> %i.cv) ; 2 uses
  %i.cy = insertelement <2 x double> %i.bu, double %i.q, i64 1
  %i.cz = shufflevector <2 x double> %i.bq, <2 x double> %i.au, <2 x i32> <i32 0, i32 3>
  %i.da = fmul <2 x double> %i.cy, %i.cz
  %30 = shufflevector <2 x double> %i.bu, <2 x double> %10, <2 x i32> <i32 1, i32 3>
  %i.db = shufflevector <2 x double> %i.bq, <2 x double> %i.au, <2 x i32> <i32 1, i32 2>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %i.db, <2 x double> %i.da)
  %i.dd = insertelement <2 x double> %9, double %i.bv, i64 0
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.az, <2 x double> %i.dc) ; 4 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = fneg double %i.df
  %i.dh = extractelement <2 x double> %i.de, i64 1 ; 4 uses
  %i.di = fmul double %i.dh, %i.dg                ; 3 uses
  %i.dj = fmul double %sqrt.i236, %i.dh           ; 3 uses
  %i.dk = fsub <2 x double> %i.de, %i.as
  %i.dl = fmul <2 x double> %i.de, %i.as
  %i.dm = fmul double %i.av, %21
  %i.dn = extractelement <2 x double> %i.bj, i64 1
  %i.do = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.dn, double %i.dm)
  %i.dp = extractelement <2 x double> %i.bn, i64 1
  %i.dq = tail call noundef double @llvm.fmuladd.f64(double %i.ba, double %i.dp, double %i.do)
  %i.dr = extractelement <2 x double> %i.dk, i64 0 ; 2 uses
  %i.ds = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.dt = fmul double %i.dr, %i.ds
  %i.du = fneg double %i.dr
  %i.dv = extractelement <2 x double> %i.cx, i64 1
  %i.dw = fmul double %i.dv, %i.du                ; 2 uses
  %i.dx = fmul double %sqrt.i236, %i.ds           ; 2 uses
  %i.dy = fmul double %sqrt.i236, %i.dq           ; 2 uses
  %i.dz = fneg double %sqrt.i236
  %i.ea = insertelement <2 x double> %i.cn, double %i.dz, i64 1
  %i.eb = fmul <2 x double> %i.ea, %i.cx          ; 3 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0 ; 3 uses
  %i.ed = fneg double %i.dy
  %i.ee = fmul double %i.di, %i.ed
  %i.ef = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.eg = fmul double %i.ec, %i.ef
  %i.eh = fmul double %i.di, %i.ef
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.dw, double %i.ee) ; 6 uses
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dw, double %i.eh) ; 4 uses
  %i.ek = insertelement <2 x double> %i.eb, double %i.di, i64 1
  %i.el = fneg <2 x double> %i.ek
  %i.em = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.el          ; 5 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 1 ; 4 uses
  %i.eq = insertelement <2 x double> %i.eo, double %i.ej, i64 1 ; 2 uses
  %i.er = fneg double %i.ei
  %i.es = fmul double %i.ei, %i.er
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.es)
  %i.eu = extractelement <2 x double> %i.eo, i64 0 ; 3 uses
  %i.ev = fneg double %i.eu
  %i.ew = fmul double %i.ec, %i.dx                ; 4 uses
  %i.ex = fmul double %i.dj, %i.dx                ; 3 uses
  %i.ey = fmul double %i.ex, 2.000000e+00
  %i.ez = fneg double %i.ew
  %i.fa = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = insertelement <2 x double> %i.fb, double %i.ei, i64 1
  %i.fd = fmul <2 x double> %i.fb, %i.fc          ; 2 uses
  %i.fe = fmul double %i.ep, %i.ey
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double %i.fe)
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.ff)
  %i.fh = fneg <2 x double> %i.fd
  %i.fi = insertelement <2 x double> %i.fh, double %i.fg, i64 0
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.eo, <2 x double> %i.fi) ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 0
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ew, double %i.fk)
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dy, double %i.eg) ; 4 uses
  %i.fn = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = insertelement <2 x double> %i.fo, double %i.ej, i64 1
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fp, <2 x double> %i.fd)
  %i.fr = insertelement <2 x double> poison, double %i.fm, i64 0 ; 2 uses
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fu = insertelement <2 x double> %i.ft, double %i.fm, i64 0
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fu, <2 x double> %i.fq) ; 4 uses
  %i.fw = extractelement <2 x double> %i.fv, i64 1
  %i.fx = fmul double %i.fw, 2.000000e+00         ; 6 uses
  %i.fy = fneg double %i.fm                       ; 2 uses
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.fm, double %i.fl) ; 6 uses
  %i.ga = extractelement <2 x double> %i.fj, i64 1
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.eu, double %i.ga)
  %i.gc = fmul double %i.gb, 2.000000e+00         ; 7 uses
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.eu, double %i.et) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gh = extractelement <2 x double> %i.fv, i64 0 ; 4 uses
  %i.gi = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %i.gh, double noundef %i.fx, double noundef %i.fz, double noundef %i.gc, double noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %i.gg) ; 5 uses
  %i.gj = icmp sgt i32 %i.gi, 0                   ; 2 uses
  br i1 %i.gj, label %.preheader.preheader.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.gi to i64 ; 6 uses
  %i.gk = fmul double %i.gh, 4.000000e+00         ; 4 uses
  %i.gl = fmul double %i.fx, 3.000000e+00         ; 4 uses
  %i.gm = fmul double %i.fz, 2.000000e+00         ; 4 uses
  %min.iters.check = icmp eq i32 %i.gi, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat550 = shufflevector <2 x double> %broadcast.splatinsert549, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <2 x double> poison, double %i.gm, i64 0
  %broadcast.splat552 = shufflevector <2 x double> %broadcast.splatinsert551, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat554 = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat556 = shufflevector <2 x double> %broadcast.splatinsert555, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert557 = insertelement <2 x double> poison, double %i.fz, i64 0
  %broadcast.splat558 = shufflevector <2 x double> %broadcast.splatinsert557, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <2 x double> poison, double %i.gc, i64 0
  %broadcast.splat560 = shufflevector <2 x double> %broadcast.splatinsert559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <2 x double> poison, double %i.gd, i64 0
  %broadcast.splat562 = shufflevector <2 x double> %broadcast.splatinsert561, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gn, align 16, !tbaa !9 ; 8 uses
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat554, <2 x double> %wide.load, <2 x double> %broadcast.splat556)
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %wide.load, <2 x double> %broadcast.splat558)
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %wide.load, <2 x double> %broadcast.splat562)
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat550)
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %wide.load, <2 x double> %broadcast.splat552)
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.gv = fdiv <2 x double> %i.gr, %i.gu
  %i.gw = fsub <2 x double> %wide.load, %i.gv
  store <2 x double> %i.gw, ptr %i.gn, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %i.gy = insertelement <2 x double> poison, double %i.gk, i64 1
  %i.gz = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gl, i64 1
  %i.hb = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.gm, i64 1
  %i.hd = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.gc, i64 1
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader595, %._crit_edge.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %._crit_edge.i ], [ %indvars.iv.1.i.ph, %._crit_edge.i.preheader595 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1.i ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !9 ; 3 uses
  %i.hh = call double @llvm.fmuladd.f64(double %i.gh, double %i.hg, double %i.fx)
  %i.hi = insertelement <2 x double> %i.iq, double %i.hh, i64 0
  %i.hj = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hk, <2 x double> %i.is)
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hk, <2 x double> %i.iu)
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.hk, <2 x double> %i.iw) ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 0
  %i.hp = extractelement <2 x double> %i.hn, i64 1
  %i.hq = fdiv double %i.ho, %i.hp
  %i.hr = fsub double %i.hg, %i.hq
  store double %i.hr, ptr %i.hf, align 8, !tbaa !9
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i, !llvm.loop !64

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !9 ; 3 uses
  %i.hu = call double @llvm.fmuladd.f64(double %i.gh, double %i.ht, double %i.fx)
  %i.hv = insertelement <2 x double> %i.gy, double %i.hu, i64 0
  %i.hw = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hx, <2 x double> %i.ha)
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hx, <2 x double> %i.hc)
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.he) ; 2 uses
  %i.ib = extractelement <2 x double> %i.ia, i64 0
  %i.ic = extractelement <2 x double> %i.ia, i64 1
  %i.id = fdiv double %i.ib, %i.ic
  %i.ie = fsub double %i.ht, %i.id
  store double %i.ie, ptr %i.hs, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.preheader, label %scalar.ph, !llvm.loop !65

._crit_edge.i.preheader:                          ; preds = %scalar.ph, %middle.block
  %min.iters.check564 = icmp eq i32 %i.gi, 1
  br i1 %min.iters.check564, label %._crit_edge.i.preheader595, label %vector.ph565

vector.ph565:                                     ; preds = %._crit_edge.i.preheader
  %n.vec566 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splat568 = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert571 = insertelement <2 x double> poison, double %i.fz, i64 0
  %broadcast.splat572 = shufflevector <2 x double> %broadcast.splatinsert571, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %i.gc, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %i.gd, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.gk, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <2 x double> poison, double %i.gm, i64 0
  %broadcast.splat582 = shufflevector <2 x double> %broadcast.splatinsert581, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph565
  %index584 = phi i64 [ 0, %vector.ph565 ], [ %index.next586, %vector.body583 ] ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.if, align 16, !tbaa !9 ; 8 uses
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat568, <2 x double> %wide.load585, <2 x double> %broadcast.splat570)
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %wide.load585, <2 x double> %broadcast.splat572)
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %wide.load585, <2 x double> %broadcast.splat576)
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat578, <2 x double> %wide.load585, <2 x double> %broadcast.splat580)
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %wide.load585, <2 x double> %broadcast.splat582)
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.in = fdiv <2 x double> %i.ij, %i.im
  %i.io = fsub <2 x double> %wide.load585, %i.in
  store <2 x double> %i.io, ptr %i.if, align 16, !tbaa !9
  %index.next586 = add nuw i64 %index584, 2       ; 2 uses
  %i.ip = icmp eq i64 %index.next586, %n.vec566
  br i1 %i.ip, label %middle.block587, label %vector.body583, !llvm.loop !66

middle.block587:                                  ; preds = %vector.body583
  %cmp.n588 = icmp eq i64 %n.vec566, %wide.trip.count.i
  br i1 %cmp.n588, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i.preheader595

._crit_edge.i.preheader595:                       ; preds = %._crit_edge.i.preheader, %middle.block587
  %indvars.iv.1.i.ph = phi i64 [ 0, %._crit_edge.i.preheader ], [ %n.vec566, %middle.block587 ]
  %i.iq = insertelement <2 x double> poison, double %i.gk, i64 1
  %i.ir = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.gl, i64 1
  %i.it = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.gm, i64 1
  %i.iv = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.gc, i64 1
  br label %._crit_edge.i

_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit: ; preds = %._crit_edge.i, %middle.block587, %bb.a
  %i.ix = fneg <2 x double> %i.cp                 ; 2 uses
  %i.iy = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iz = fmul <2 x double> %i.iy, %i.ix
  %i.ja = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.jb, <2 x double> %i.iz) ; 2 uses
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %shift = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop593 = fmul <2 x double> %i.bq, %shift
  %i.je = extractelement <2 x double> %foldExtExtBinop593, i64 0
  %i.jf = extractelement <2 x double> %i.bq, i64 1
  %i.jg = extractelement <2 x double> %i.cp, i64 0
  %i.jh = call double @llvm.fmuladd.f64(double %i.jf, double %i.jg, double %i.je) ; 3 uses
  %i.ji = fdiv double %sqrt.i236, %i.dh           ; 2 uses
  %31 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jj = insertelement <2 x double> %31, double %i.q, i64 1
  %i.jk = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x double> %i.jj, %i.jl
  %32 = extractelement <2 x double> %9, i64 1
  %i.jn = fmul double %32, %i.ji
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !9 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.jt = load double, ptr %i.js, align 8, !tbaa !9 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !9
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.gj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %i.jy = fcmp ogt double %i.dh, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.gi to i64
  %i.jz = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kc = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = insertelement <2 x double> poison, double %i.k, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = fneg <2 x double> %i.jd
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> %i.jc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kn = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.kr = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ei, i64 1
  %i.ks = insertelement <2 x double> %i.fr, double %i.ex, i64 1
  %i.kt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jh, i64 0
  %i.ku = shufflevector <2 x double> %i.au, <2 x double> %i.az, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kv = insertelement <2 x double> poison, double %i.ew, i64 1
  %i.kw = insertelement <2 x double> %i.kq, double %i.bc, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.kx = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.kx, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !9 ; 7 uses
  %i.la = call noundef double @llvm.fabs.f64(double %i.kz)
  %i.lb = fcmp ogt double %i.la, 1.000000e+00
  br i1 %i.lb, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.lc = fneg double %i.kz
  %i.ld = insertelement <2 x double> %i.kv, double %i.lc, i64 0
  %i.le = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.lf, <2 x double> %i.kr) ; 2 uses
  %i.lh = extractelement <2 x double> %i.lg, i64 0
  %i.li = call double @sqrt(double noundef %i.lh) #17 ; 2 uses
  %i.lj = fneg double %i.li
  %i.lk = select i1 %i.jy, double %i.li, double %i.lj ; 6 uses
  %i.ll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.lf, <2 x double> %i.eq) ; 2 uses
  %i.lm = extractelement <2 x double> %i.ll, i64 1
  %i.ln = call double @llvm.fmuladd.f64(double %i.lm, double %i.kz, double %i.ep)
  %i.lo = fdiv double %i.lk, %i.ln                ; 2 uses
  %i.lp = extractelement <2 x double> %i.lg, i64 1
  %i.lq = fmul double %i.lp, %i.lo                ; 4 uses
  %i.lr = extractelement <2 x double> %i.ll, i64 0
  %i.ls = fmul double %i.lr, %i.lo                ; 3 uses
  %i.lt = fneg double %i.lk                       ; 2 uses
  %i.lu = fmul double %i.lk, %i.ls                ; 2 uses
  %i.lv = fmul double %i.lk, %i.lq                ; 2 uses
  %i.lw = fmul double %i.kz, %i.ls                ; 2 uses
  %i.lx = fmul <2 x double> %i.cp, %i.lf
  %i.ly = fmul double %i.jn, %i.lk
  %i.lz = sext i32 %.0234531 to i64               ; 3 uses
  %i.ma = getelementptr inbounds [24 x i8], ptr %4, i64 %i.lz ; 4 uses
  %i.mb = fmul double %i.cq, %i.lu
  %i.mc = fmul double %i.cq, %i.kz
  %i.md = call double @llvm.fmuladd.f64(double %i.br, double %i.lq, double %i.mb)
  %i.me = insertelement <2 x double> %i.iy, double %i.lw, i64 0
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.mc, i64 1
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.me, <2 x double> %i.mg) ; 2 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 1
  %i.mj = fmul double %i.cq, %i.lv
  %i.mk = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ml = fneg double %i.ls
  %i.mm = fmul double %i.kz, %i.lq                ; 2 uses
  %i.mn = call double @llvm.fmuladd.f64(double %i.jh, double %i.lt, double %i.mi) ; 2 uses
  %i.mo = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x double> %i.au, %i.mp
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.bf, <2 x double> %i.mq)
  %i.ms = insertelement <2 x double> poison, double %i.ml, i64 0 ; 2 uses
  %i.mt = insertelement <2 x double> %i.ms, double %i.mn, i64 1
  %i.mu = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.mj, i64 0
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.mt, <2 x double> %i.mu)
  %i.mw = insertelement <2 x double> %i.mk, double %i.jh, i64 0
  %i.mx = insertelement <2 x double> %i.u, double %i.mm, i64 0
  %i.my = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.mx, <2 x double> %i.mv) ; 3 uses
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.kw, <2 x double> %i.mr) ; 5 uses
  %i.nb = insertelement <2 x double> poison, double %i.lk, i64 0 ; 2 uses
  %i.nc = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nd = fmul <2 x double> %i.jm, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %i.nf = getelementptr inbounds [72 x i8], ptr %3, i64 %i.lz ; 7 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ni = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.nj = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x double> %i.cp, %i.nj
  %i.nl = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.nm, <2 x double> %i.nk)
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> zeroinitializer, <2 x double> %i.lx)
  %i.np = insertelement <2 x double> %i.nb, double %i.lt, i64 1
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> %i.np, <2 x double> %i.no) ; 3 uses
  %i.nr = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x double> %i.cp, %i.ns
  %i.nu = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nv = fmul <2 x double> %i.ku, %i.nu
  %33 = fmul <2 x double> %i.bg, %i.nq
  %34 = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x double> %i.ku, %34
  %35 = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.nx = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.nx, <2 x double> %i.nn) ; 3 uses
  %i.nz = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.nz, <2 x double> %i.nt)
  %i.ob = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.oc, <2 x double> %i.oa) ; 3 uses
  %37 = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %i.kb, <2 x double> %i.nv)
  %i.oe = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %38 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.kq, <2 x double> %i.od) ; 5 uses
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.kk, <2 x double> %33)
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %i.kj, <2 x double> %i.of) ; 5 uses
  %39 = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %i.kb, <2 x double> %i.nw)
  %i.oi = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %i.kq, <2 x double> %i.oh) ; 4 uses
  %i.ok = extractelement <2 x double> %i.oj, i64 0
  %i.ol = extractelement <2 x double> %38, i64 0
  %i.om = shufflevector <2 x double> %i.oj, <2 x double> %i.og, <2 x i32> <i32 0, i32 2>
  %i.on = fmul <2 x double> %i.kp, %i.om
  %i.oo = shufflevector <2 x double> %38, <2 x double> %i.og, <2 x i32> <i32 0, i32 3>
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.oo, <2 x double> %i.on)
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.na, <2 x double> %i.op)
  %i.or = extractelement <2 x double> %i.oj, i64 1 ; 2 uses
  %i.os = fmul double %i.i, %i.or
  %i.ot = insertelement <2 x double> %i.my, double %i.g, i64 1
  %i.ou = shufflevector <2 x double> %i.bi, <2 x double> %38, <2 x i32> <i32 0, i32 3>
  %i.ov = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ow = insertelement <2 x double> %i.ov, double %i.os, i64 1
  %i.ox = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> %i.ou, <2 x double> %i.ow) ; 3 uses
  %i.oy = extractelement <2 x double> %i.ox, i64 0 ; 2 uses
  %i.oz = extractelement <2 x double> %i.ox, i64 1
  %i.pa = call double @llvm.fmuladd.f64(double %i.k, double %i.oy, double %i.oz)
  %i.pb = fsub <2 x double> %i.nd, %i.oq
  store <2 x double> %i.pb, ptr %i.ma, align 8, !tbaa !9
  %i.pc = fsub double %i.ly, %i.pa
  store double %i.pc, ptr %i.ne, align 8, !tbaa !9
  store double %i.ol, ptr %i.nf, align 8, !tbaa !9
  store double %i.ok, ptr %i.nh, align 8, !tbaa !9
  %i.pd = shufflevector <2 x double> %i.og, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.pd, ptr %i.ng, align 8, !tbaa !9
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nf, i64 56
  store double %i.or, ptr %i.pe, align 8, !tbaa !9
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.pg = extractelement <2 x double> %i.na, i64 0
  store double %i.pg, ptr %i.pf, align 8, !tbaa !9
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nf, i64 40
  %i.pi = shufflevector <2 x double> %i.na, <2 x double> %38, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.pi, ptr %i.ph, align 8, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nf, i64 64
  store double %i.oy, ptr %i.pj, align 8, !tbaa !9
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.pl = fmul <2 x double> %i.kf, %i.oj
  %i.pm = load double, ptr %i.ma, align 8, !tbaa !9
  %i.pn = extractelement <2 x double> %i.og, i64 0
  %i.po = fmul double %i.jr, %i.pn
  %i.pp = extractelement <2 x double> %i.og, i64 1
  %i.pq = call double @llvm.fmuladd.f64(double %i.pp, double %i.jp, double %i.po)
  %i.pr = extractelement <2 x double> %i.na, i64 1
  %i.ps = call double @llvm.fmuladd.f64(double %i.pr, double %i.jt, double %i.pq)
  %i.pt = load double, ptr %i.pk, align 8, !tbaa !9
  %i.pu = fadd double %i.ps, %i.pt
  %i.pv = load double, ptr %i.ne, align 8, !tbaa !9
  %i.pw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %i.kd, <2 x double> %i.pl)
  %i.px = shufflevector <2 x double> %i.na, <2 x double> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.py = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.ka, <2 x double> %i.pw)
  %i.pz = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.pv, i64 1
  %i.qb = fadd <2 x double> %i.py, %i.qa          ; 2 uses
  %i.qc = insertelement <2 x double> %i.qb, double %i.pu, i64 1
  %i.qd = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qe = fdiv <2 x double> %i.qc, %i.qd          ; 2 uses
  %i.qf = extractelement <2 x double> %i.qe, i64 0
  %i.qg = fsub double %i.qf, %i.jv                ; 2 uses
  %i.qh = extractelement <2 x double> %i.qe, i64 1
  %i.qi = fsub double %i.qh, %i.jx                ; 2 uses
  %i.qj = fmul double %i.qi, %i.qi
  %i.qk = call double @llvm.fmuladd.f64(double %i.qg, double %i.qg, double %i.qj)
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lz
  store double %i.qk, ptr %i.ql, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.qm = add nsw i32 %.0234531, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.qm, %bb.e ], [ %.0234531, %bb.b ] ; 5 uses
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
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next539 ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !9 ; 2 uses
  %i.qp = fcmp ogt double %i.qo, %.pre
  br i1 %i.qp, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count542
  br i1 %exitcond543.not, label %.loopexit, label %.preheader, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv538
  store double %i.qo, ptr %i.qq, align 8, !tbaa !9
  store double %.pre, ptr %i.qn, align 8, !tbaa !9
  %i.qr = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv538 ; 7 uses
  %i.qs = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv.next539 ; 9 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !9
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qv = load <2 x double>, ptr %i.qr, align 8, !tbaa !9
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.ra = load <2 x double>, ptr %i.qw, align 8, !tbaa !9
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.rd = load <2 x double>, ptr %i.rb, align 8, !tbaa !9
  %i.re = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qs, i64 48
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qr, i64 56
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.ri = load <2 x double>, ptr %i.re, align 8, !tbaa !9
  %i.rj = load <4 x double>, ptr %i.qz, align 8, !tbaa !9
  store <2 x double> %i.rd, ptr %i.rc, align 8, !tbaa !9
  store <4 x double> %i.rj, ptr %i.qy, align 8, !tbaa !9
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qs, i64 64
  %i.rm = load double, ptr %i.rk, align 8, !tbaa !9
  %i.rn = load <2 x double>, ptr %i.rh, align 8, !tbaa !9
  store <2 x double> %i.ri, ptr %i.rf, align 8, !tbaa !9
  store <2 x double> %i.rn, ptr %i.rg, align 8, !tbaa !9
  %i.ro = load <2 x double>, ptr %i.qu, align 8, !tbaa !9
  store <2 x double> %i.qv, ptr %i.qs, align 8, !tbaa !9
  store <2 x double> %i.ra, ptr %i.qx, align 8, !tbaa !9
  %i.rp = insertelement <4 x double> poison, double %i.rm, i64 0
  %i.rq = insertelement <4 x double> %i.rp, double %i.qt, i64 1
  %i.rr = shufflevector <2 x double> %i.ro, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x double> %i.rq, <4 x double> %i.rr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.rs, ptr %i.rl, align 8, !tbaa !9
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv538 ; 2 uses
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next539 ; 4 uses
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !9
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rx = load <2 x double>, ptr %i.rt, align 8, !tbaa !9
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.sa = load double, ptr %i.ry, align 8, !tbaa !9
  %i.sb = load <2 x double>, ptr %i.rw, align 8, !tbaa !9
  store <2 x double> %i.rx, ptr %i.ru, align 8, !tbaa !9
  %i.sc = insertelement <4 x double> poison, double %i.sa, i64 0
  %i.sd = insertelement <4 x double> %i.sc, double %i.rv, i64 1
  %i.se = shufflevector <2 x double> %i.sb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x double> %i.sd, <4 x double> %i.se, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.sf, ptr %i.rz, align 8, !tbaa !9
  %i.sg = icmp sgt i64 %indvars.iv538, 1
  br i1 %i.sg, label %bb.g, label %.critedge, !llvm.loop !69

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
end_hunk_0
