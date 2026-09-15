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
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load double, ptr %i.s, align 8, !tbaa !9 ; 3 uses
  %i.u = load <2 x double>, ptr %1, align 8, !tbaa !9 ; 5 uses
  %i.v = load <2 x double>, ptr %i.m, align 8, !tbaa !9 ; 7 uses
  %i.w = load double, ptr %i.o, align 8, !tbaa !9 ; 3 uses
  %i.x = load <2 x double>, ptr %2, align 8, !tbaa !9 ; 3 uses
  %i.y = load <2 x double>, ptr %i.c, align 8, !tbaa !9 ; 3 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ab = fsub <2 x double> %i.z, %i.aa           ; 5 uses
  %i.ac = extractelement <2 x double> %i.x, i64 0
  %i.ad = fsub double %i.ac, %i.g
  %i.ae = load double, ptr %i.p, align 8, !tbaa !9 ; 2 uses
  %6 = insertelement <2 x double> poison, double %i.ae, i64 0
  %7 = insertelement <2 x double> %6, double %i.r, i64 1 ; 3 uses
  %8 = fneg <2 x double> %7                       ; 2 uses
  %i.af = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.l, align 8, !tbaa !9 ; 9 uses
  %i.ah = fneg double %i.af
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x double> %i.u, <2 x double> %i.ag, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ak = insertelement <2 x double> %i.v, double %i.w, i64 1 ; 2 uses
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.ak, %9
  %i.am = insertelement <2 x double> poison, double %i.t, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.an, <2 x double> %i.al) ; 2 uses
  %i.ap = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = fmul <2 x double> %i.ak, %i.ap
  %i.ar = insertelement <2 x double> %i.u, double %i.af, i64 1 ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.an, <2 x double> %i.aq) ; 2 uses
  %i.at = fneg <2 x double> %i.as                 ; 2 uses
  %i.au = fmul <2 x double> %i.ag, %i.ap
  %10 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %10, <2 x double> %i.au) ; 2 uses
  %i.aw = load double, ptr %i.e, align 8, !tbaa !9
  %i.ax = load double, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %i.ay = fsub double %i.ax, %i.aw
  %i.az = shufflevector <2 x double> %i.v, <2 x double> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ba = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.az, %i.bb
  %i.bd = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> %i.ag, double %i.w, i64 0
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.be, <2 x double> %i.bc) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.bf, %i.bf
  %i.bg = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bh = shufflevector <2 x double> %i.v, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.bi = fneg <2 x double> %i.ag
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2>
  %i.bk = fmul <2 x double> %i.bh, %i.bj
  %i.bl = shufflevector <2 x double> %i.ag, <2 x double> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.bm = insertelement <2 x double> %i.ab, double %i.w, i64 0
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bm, <2 x double> %i.bk) ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bg)
  %i.bq = insertelement <2 x double> %i.bf, double %i.ay, i64 0 ; 3 uses
  %i.br = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = insertelement <2 x double> %i.br, double %i.bp, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bs)
  %i.bu = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bt) ; 5 uses
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %i.ab, %i.bv          ; 10 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  %i.by = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.bz = fneg double %i.bx
  %i.ca = fneg double %i.by
  %i.cb = fdiv <2 x double> %i.bq, %i.bu          ; 9 uses
  %i.cc = fneg <2 x double> %i.bf
  %i.cd = shufflevector <2 x double> %i.bn, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ce = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fdiv <2 x double> %i.cd, %i.ce          ; 11 uses
  %i.cg = shufflevector <2 x double> %i.bw, <2 x double> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.ch = insertelement <2 x double> poison, double %i.ad, i64 0 ; 2 uses
  %i.ci = insertelement <2 x double> %i.ch, double %i.ae, i64 1
  %i.cj = shufflevector <2 x double> %i.bw, <2 x double> %i.cf, <2 x i32> <i32 1, i32 2>
  %i.ck = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cl = insertelement <2 x double> %i.y, double %i.ax, i64 1
  %i.cm = insertelement <2 x double> poison, double %i.i, i64 0 ; 2 uses
  %i.cn = insertelement <2 x double> %i.cm, double %i.k, i64 1
  %i.co = fsub <2 x double> %i.cl, %i.cn          ; 5 uses
  %i.cp = extractelement <2 x double> %i.co, i64 1
  %i.cq = fmul double %i.cp, %i.bz
  %i.cr = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.co, %i.cs
  %i.cu = insertelement <2 x double> %i.co, double %i.r, i64 1
  %i.cv = fmul <2 x double> %i.cu, %i.cg
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cj, <2 x double> %i.cv)
  %i.cx = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x double> %i.cx, double %i.t, i64 1
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cy, <2 x double> %i.cw) ; 4 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fneg double %i.da
  %i.dc = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <2 x double> %i.bw, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dd, <2 x double> %i.ct) ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 1 ; 3 uses
  %i.dg = fneg double %i.df
  %i.dh = extractelement <2 x double> %i.co, i64 0
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.ck, double %i.cq) ; 3 uses
  %i.dj = fmul double %i.df, %i.df
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double %i.dj)
  %i.dl = extractelement <2 x double> %i.de, i64 0 ; 3 uses
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %i.dk)
  %sqrt.i236 = tail call noundef double @llvm.sqrt.f64(double %i.dm) ; 7 uses
  %i.dn = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.di, i64 1
  %i.dp = insertelement <2 x double> poison, double %sqrt.i236, i64 0 ; 2 uses
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fdiv <2 x double> %i.do, %i.dq          ; 5 uses
  %i.ds = fdiv double %i.dl, %sqrt.i236           ; 2 uses
  %i.dt = fsub <2 x double> %i.cz, %i.bu
  %i.du = fmul <2 x double> %i.cz, %i.bu
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %i.dw = fneg double %i.dv
  %i.dx = fneg double %sqrt.i236
  %i.dy = fneg <2 x double> %i.cf                 ; 2 uses
  %i.dz = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.ea = fmul <2 x double> %i.ai, %i.dy
  %i.eb = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = shufflevector <2 x double> %i.cf, <2 x double> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ec, <2 x double> %i.ea) ; 5 uses
  %i.ee = extractelement <2 x double> %i.cz, i64 1 ; 4 uses
  %i.ef = fmul double %i.ee, %i.db                ; 3 uses
  %i.eg = fmul double %sqrt.i236, %i.ee           ; 3 uses
  %i.eh = shufflevector <2 x double> %i.cf, <2 x double> %i.ed, <2 x i32> <i32 0, i32 3>
  %i.ei = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ej = shufflevector <2 x double> %i.cb, <2 x double> %i.ed, <2 x i32> <i32 1, i32 2>
  %i.ek = shufflevector <2 x double> %i.v, <2 x double> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.el = shufflevector <2 x double> %i.dy, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  %i.em = fmul <2 x double> %i.ek, %i.el
  %i.en = shufflevector <2 x double> %i.u, <2 x double> %i.cf, <2 x i32> <i32 0, i32 2>
  %i.eo = shufflevector <2 x double> %i.cb, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.eo, <2 x double> %i.em) ; 3 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fneg double %i.eq                       ; 2 uses
  %i.es = shufflevector <2 x double> %i.cf, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  %i.et = shufflevector <2 x double> %i.at, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.eu = fmul <2 x double> %i.es, %i.et
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ao, <2 x double> %i.eu)
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.av, <2 x double> %i.ev) ; 2 uses
  %i.ex = extractelement <2 x double> %i.av, i64 1
  %i.ey = extractelement <2 x double> %i.ep, i64 1
  %i.ez = tail call noundef double @llvm.fmuladd.f64(double %i.dz, double %i.ex, double %i.ey)
  %i.fa = extractelement <2 x double> %i.du, i64 1 ; 2 uses
  %i.fb = fmul double %i.dv, %i.fa
  %i.fc = extractelement <2 x double> %i.ew, i64 1
  %i.fd = fmul double %i.fc, %i.dw                ; 2 uses
  %i.fe = fmul double %sqrt.i236, %i.fa           ; 2 uses
  %i.ff = fmul double %sqrt.i236, %i.ez           ; 2 uses
  %i.fg = insertelement <2 x double> %i.dp, double %i.dx, i64 1
  %i.fh = fmul <2 x double> %i.fg, %i.ew          ; 3 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0 ; 3 uses
  %i.fj = fneg double %i.ff
  %i.fk = fmul double %i.ef, %i.fj
  %i.fl = extractelement <2 x double> %i.fh, i64 1 ; 2 uses
  %i.fm = fmul double %i.fi, %i.fl
  %i.fn = fmul double %i.ef, %i.fl
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fd, double %i.fk) ; 6 uses
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.fd, double %i.fn) ; 4 uses
  %i.fq = insertelement <2 x double> %i.fh, double %i.ef, i64 1
  %i.fr = fneg <2 x double> %i.fq
  %i.fs = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x double> %i.ft, %i.fr          ; 5 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 1 ; 4 uses
  %i.fw = insertelement <2 x double> %i.fu, double %i.fp, i64 1 ; 2 uses
  %i.fx = fneg double %i.fo
  %i.fy = fmul double %i.fo, %i.fx
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fv, double %i.fy)
  %i.ga = extractelement <2 x double> %i.fu, i64 0 ; 3 uses
  %i.gb = fneg double %i.ga
  %i.gc = fmul double %i.fi, %i.fe                ; 4 uses
  %i.gd = fmul double %i.eg, %i.fe                ; 3 uses
  %i.ge = fmul double %i.gd, 2.000000e+00
  %i.gf = fneg double %i.gc
  %i.gg = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gi = insertelement <2 x double> %i.gh, double %i.fo, i64 1
  %i.gj = fmul <2 x double> %i.gh, %i.gi          ; 2 uses
  %i.gk = fmul double %i.fv, %i.ge
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fp, double %i.gk)
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.gl)
  %i.gn = fneg <2 x double> %i.gj
  %i.go = insertelement <2 x double> %i.gn, double %i.gm, i64 0
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fu, <2 x double> %i.go) ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 0
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gc, double %i.gq)
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.ff, double %i.fm) ; 4 uses
  %i.gt = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = insertelement <2 x double> %i.gu, double %i.fp, i64 1
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gv, <2 x double> %i.gj)
  %i.gx = insertelement <2 x double> poison, double %i.gs, i64 0 ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ha = insertelement <2 x double> %i.gz, double %i.gs, i64 0
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.ha, <2 x double> %i.gw) ; 4 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 1
  %i.hd = fmul double %i.hc, 2.000000e+00         ; 6 uses
  %i.he = fneg double %i.gs                       ; 2 uses
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.he, double %i.gs, double %i.gr) ; 6 uses
  %i.hg = extractelement <2 x double> %i.gp, i64 1
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.he, double %i.ga, double %i.hg)
  %i.hi = fmul double %i.hh, 2.000000e+00         ; 7 uses
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.ga, double %i.fz) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hn = extractelement <2 x double> %i.hb, i64 0 ; 4 uses
  %i.ho = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %i.hn, double noundef %i.hd, double noundef %i.hf, double noundef %i.hi, double noundef %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 5 uses
  %i.hp = icmp sgt i32 %i.ho, 0                   ; 2 uses
  br i1 %i.hp, label %.preheader.preheader.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.ho to i64 ; 6 uses
  %i.hq = fmul double %i.hn, 4.000000e+00         ; 4 uses
  %i.hr = fmul double %i.hd, 3.000000e+00         ; 4 uses
  %i.hs = fmul double %i.hf, 2.000000e+00         ; 4 uses
  %min.iters.check = icmp eq i32 %i.ho, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <2 x double> poison, double %i.hr, i64 0
  %broadcast.splat550 = shufflevector <2 x double> %broadcast.splatinsert549, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <2 x double> poison, double %i.hs, i64 0
  %broadcast.splat552 = shufflevector <2 x double> %broadcast.splatinsert551, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat554 = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat556 = shufflevector <2 x double> %broadcast.splatinsert555, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert557 = insertelement <2 x double> poison, double %i.hf, i64 0
  %broadcast.splat558 = shufflevector <2 x double> %broadcast.splatinsert557, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <2 x double> poison, double %i.hi, i64 0
  %broadcast.splat560 = shufflevector <2 x double> %broadcast.splatinsert559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <2 x double> poison, double %i.hj, i64 0
  %broadcast.splat562 = shufflevector <2 x double> %broadcast.splatinsert561, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ht, align 16, !tbaa !9 ; 8 uses
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat554, <2 x double> %wide.load, <2 x double> %broadcast.splat556)
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %wide.load, <2 x double> %broadcast.splat558)
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %wide.load, <2 x double> %broadcast.splat562)
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat550)
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %wide.load, <2 x double> %broadcast.splat552)
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.ib = fdiv <2 x double> %i.hx, %i.ia
  %i.ic = fsub <2 x double> %wide.load, %i.ib
  store <2 x double> %i.ic, ptr %i.ht, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %i.ie = insertelement <2 x double> poison, double %i.hq, i64 1
  %i.if = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.hr, i64 1
  %i.ih = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.hs, i64 1
  %i.ij = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.hi, i64 1
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader599, %._crit_edge.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %._crit_edge.i ], [ %indvars.iv.1.i.ph, %._crit_edge.i.preheader599 ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1.i ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !9 ; 3 uses
  %i.in = call double @llvm.fmuladd.f64(double %i.hn, double %i.im, double %i.hd)
  %i.io = insertelement <2 x double> %i.jw, double %i.in, i64 0
  %i.ip = insertelement <2 x double> poison, double %i.im, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.iq, <2 x double> %i.jy)
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.iq, <2 x double> %i.ka)
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.iq, <2 x double> %i.kc) ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  %i.iv = extractelement <2 x double> %i.it, i64 1
  %i.iw = fdiv double %i.iu, %i.iv
  %i.ix = fsub double %i.im, %i.iw
  store double %i.ix, ptr %i.il, align 8, !tbaa !9
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i, !llvm.loop !64

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !9 ; 3 uses
  %i.ja = call double @llvm.fmuladd.f64(double %i.hn, double %i.iz, double %i.hd)
  %i.jb = insertelement <2 x double> %i.ie, double %i.ja, i64 0
  %i.jc = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jd, <2 x double> %i.ig)
  %i.jf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jd, <2 x double> %i.ii)
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jd, <2 x double> %i.ik) ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = extractelement <2 x double> %i.jg, i64 1
  %i.jj = fdiv double %i.jh, %i.ji
  %i.jk = fsub double %i.iz, %i.jj
  store double %i.jk, ptr %i.iy, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.preheader, label %scalar.ph, !llvm.loop !65

._crit_edge.i.preheader:                          ; preds = %scalar.ph, %middle.block
  %min.iters.check564 = icmp eq i32 %i.ho, 1
  br i1 %min.iters.check564, label %._crit_edge.i.preheader599, label %vector.ph565

vector.ph565:                                     ; preds = %._crit_edge.i.preheader
  %n.vec566 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splat568 = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert571 = insertelement <2 x double> poison, double %i.hf, i64 0
  %broadcast.splat572 = shufflevector <2 x double> %broadcast.splatinsert571, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %i.hi, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %i.hj, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.hq, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.hr, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <2 x double> poison, double %i.hs, i64 0
  %broadcast.splat582 = shufflevector <2 x double> %broadcast.splatinsert581, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph565
  %index584 = phi i64 [ 0, %vector.ph565 ], [ %index.next586, %vector.body583 ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.jl, align 16, !tbaa !9 ; 8 uses
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat568, <2 x double> %wide.load585, <2 x double> %broadcast.splat570)
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %wide.load585, <2 x double> %broadcast.splat572)
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %wide.load585, <2 x double> %broadcast.splat576)
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat578, <2 x double> %wide.load585, <2 x double> %broadcast.splat580)
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %wide.load585, <2 x double> %broadcast.splat582)
  %i.js = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.jt = fdiv <2 x double> %i.jp, %i.js
  %i.ju = fsub <2 x double> %wide.load585, %i.jt
  store <2 x double> %i.ju, ptr %i.jl, align 16, !tbaa !9
  %index.next586 = add nuw i64 %index584, 2       ; 2 uses
  %i.jv = icmp eq i64 %index.next586, %n.vec566
  br i1 %i.jv, label %middle.block587, label %vector.body583, !llvm.loop !66

middle.block587:                                  ; preds = %vector.body583
  %cmp.n588 = icmp eq i64 %n.vec566, %wide.trip.count.i
  br i1 %cmp.n588, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i.preheader599

._crit_edge.i.preheader599:                       ; preds = %._crit_edge.i.preheader, %middle.block587
  %indvars.iv.1.i.ph = phi i64 [ 0, %._crit_edge.i.preheader ], [ %n.vec566, %middle.block587 ]
  %i.jw = insertelement <2 x double> poison, double %i.hq, i64 1
  %i.jx = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.hr, i64 1
  %i.jz = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.hs, i64 1
  %i.kb = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.hi, i64 1
  br label %._crit_edge.i

_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit: ; preds = %._crit_edge.i, %middle.block587, %bb.a
  %i.kd = fneg <2 x double> %i.dr                 ; 2 uses
  %shift596 = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop597 = fmul <2 x double> %i.bw, %shift596
  %i.ke = extractelement <2 x double> %foldExtExtBinop597, i64 0
  %i.kf = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kg = fmul <2 x double> %i.kf, %i.kd
  %i.kh = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.ki, <2 x double> %i.kg) ; 2 uses
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kl = extractelement <2 x double> %i.dr, i64 0
  %i.km = call double @llvm.fmuladd.f64(double %i.by, double %i.kl, double %i.ke) ; 3 uses
  %i.kn = fdiv double %sqrt.i236, %i.ee           ; 2 uses
  %i.ko = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = fmul <2 x double> %7, %i.kp
  %i.kr = fmul double %i.t, %i.kn
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !9 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !9 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !9 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lb = load double, ptr %i.la, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.hp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %i.lc = fcmp ogt double %i.ee, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.ho to i64
  %i.ld = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = shufflevector <2 x double> %i.u, <2 x double> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lg = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = extractelement <2 x double> %i.v, i64 0
  %i.ll = insertelement <2 x double> poison, double %i.k, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = insertelement <2 x double> poison, double %i.er, i64 0
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fneg <2 x double> %i.kk
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> %i.kj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ls = insertelement <2 x double> poison, double %i.g, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = extractelement <2 x double> %i.ed, i64 0
  %i.lw = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lx = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fo, i64 1
  %i.ly = insertelement <2 x double> %i.gx, double %i.gd, i64 1
  %i.lz = shufflevector <2 x double> %i.cf, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ma = insertelement <2 x double> poison, double %i.gc, i64 1
  %i.mb = insertelement <2 x double> %i.lw, double %i.er, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.mc = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.mc, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.me = load double, ptr %i.md, align 8, !tbaa !9 ; 7 uses
  %i.mf = call noundef double @llvm.fabs.f64(double %i.me)
  %i.mg = fcmp ogt double %i.mf, 1.000000e+00
  br i1 %i.mg, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.mh = fneg double %i.me
  %i.mi = insertelement <2 x double> %i.ma, double %i.mh, i64 0
  %i.mj = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.mk, <2 x double> %i.lx) ; 2 uses
  %i.mm = extractelement <2 x double> %i.ml, i64 0
  %i.mn = call double @sqrt(double noundef %i.mm) #17 ; 2 uses
  %i.mo = fneg double %i.mn
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.mk, <2 x double> %i.fw) ; 2 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 1
  %i.mr = call double @llvm.fmuladd.f64(double %i.mq, double %i.me, double %i.fv)
  %i.ms = select i1 %i.lc, double %i.mn, double %i.mo ; 4 uses
  %i.mt = fdiv double %i.ms, %i.mr
  %i.mu = fneg double %i.ms                       ; 2 uses
  %i.mv = fmul <2 x double> %i.dr, %i.mk
  %i.mw = fmul double %i.kr, %i.ms
  %i.mx = sext i32 %.0234531 to i64               ; 3 uses
  %i.my = getelementptr inbounds [24 x i8], ptr %4, i64 %i.mx ; 4 uses
  %i.mz = fmul double %i.ds, %i.me
  %i.na = call double @llvm.fmuladd.f64(double %i.ck, double 0.000000e+00, double %i.mz)
  %i.nb = shufflevector <2 x double> %i.mp, <2 x double> %i.ml, <2 x i32> <i32 0, i32 3>
  %i.nc = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = fmul <2 x double> %i.nb, %i.nd          ; 5 uses
  %i.nf = extractelement <2 x double> %i.ne, i64 0 ; 2 uses
  %i.ng = fneg double %i.nf                       ; 2 uses
  %i.nh = insertelement <2 x double> poison, double %i.ms, i64 0 ; 2 uses
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nj = fmul <2 x double> %i.ni, %i.ne          ; 3 uses
  %i.nk = fmul double %i.me, %i.nf                ; 2 uses
  %i.nl = extractelement <2 x double> %i.ne, i64 1
  %i.nm = fmul double %i.me, %i.nl                ; 2 uses
  %i.nn = fmul <2 x double> %i.ki, %i.nj
  %i.no = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.np = insertelement <2 x double> %i.no, double %i.ng, i64 1
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.np, <2 x double> %i.nn) ; 2 uses
  %i.nr = call double @llvm.fmuladd.f64(double %i.km, double %i.mu, double %i.na) ; 2 uses
  %i.ns = extractelement <2 x double> %i.nq, i64 0
  %i.nt = call double @llvm.fmuladd.f64(double %i.km, double %i.nk, double %i.ns) ; 2 uses
  %i.nu = extractelement <2 x double> %i.nq, i64 1
  %i.nv = call double @llvm.fmuladd.f64(double %i.km, double %i.nm, double %i.nu) ; 2 uses
  %i.nw = fmul double %i.dz, %i.nr
  %i.nx = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x double> %i.cf, %i.ny
  %i.oa = call double @llvm.fmuladd.f64(double %i.nt, double %i.lk, double %i.nw)
  %i.ob = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.aj, <2 x double> %i.nz)
  %i.oe = call double @llvm.fmuladd.f64(double %i.nv, double %i.lv, double %i.oa) ; 3 uses
  %i.of = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.og = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.mb, <2 x double> %i.od) ; 5 uses
  %i.oi = fmul <2 x double> %i.kq, %i.ni
  %i.oj = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds [72 x i8], ptr %3, i64 %i.mx ; 7 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.on = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oo = fmul <2 x double> %i.dr, %i.on
  %i.op = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oq = fmul <2 x double> %i.dr, %i.op
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> zeroinitializer, <2 x double> %i.mv)
  %i.os = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.os, <2 x double> %i.oo)
  %i.ou = insertelement <2 x double> %i.nh, double %i.mu, i64 1
  %i.ov = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.ou, <2 x double> %i.or) ; 3 uses
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ox = fmul <2 x double> %i.lz, %i.ow
  %i.oy = fmul <2 x double> %i.eb, %i.ov
  %i.oz = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = fmul <2 x double> %i.lz, %i.oz
  %i.pb = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.pc, <2 x double> %i.oq)
  %i.pe = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.pf, <2 x double> %i.ot) ; 3 uses
  %i.ph = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.pi, <2 x double> %i.pd) ; 3 uses
  %i.pk = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.lf, <2 x double> %i.ox)
  %i.pm = shufflevector <2 x double> %i.pj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pm, <2 x double> %i.ei, <2 x double> %i.pl) ; 5 uses
  %i.po = extractelement <2 x double> %i.pn, i64 0
  %i.pp = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.lf, <2 x double> %i.pa)
  %i.pr = shufflevector <2 x double> %i.pj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ps = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> %i.ei, <2 x double> %i.pq) ; 4 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 0
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pg, <2 x double> %i.lp, <2 x double> %i.oy)
  %i.pv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.lo, <2 x double> %i.pu) ; 5 uses
  %i.pw = shufflevector <2 x double> %i.ps, <2 x double> %i.pv, <2 x i32> <i32 0, i32 2>
  %i.px = fmul <2 x double> %i.lu, %i.pw
  %i.py = shufflevector <2 x double> %i.pn, <2 x double> %i.pv, <2 x i32> <i32 0, i32 3>
  %i.pz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.py, <2 x double> %i.px)
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.oh, <2 x double> %i.pz)
  %i.qb = extractelement <2 x double> %i.ps, i64 1 ; 2 uses
  %i.qc = fmul double %i.i, %i.qb
  %i.qd = extractelement <2 x double> %i.pn, i64 1
  %i.qe = call double @llvm.fmuladd.f64(double %i.g, double %i.qd, double %i.qc)
  %i.qf = call double @llvm.fmuladd.f64(double %i.k, double %i.oe, double %i.qe)
  %i.qg = fsub <2 x double> %i.oi, %i.qa
  store <2 x double> %i.qg, ptr %i.my, align 8, !tbaa !9
  %i.qh = fsub double %i.mw, %i.qf
  store double %i.qh, ptr %i.oj, align 8, !tbaa !9
  store double %i.po, ptr %i.ok, align 8, !tbaa !9
  store double %i.pt, ptr %i.om, align 8, !tbaa !9
  %i.qi = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qi, ptr %i.ol, align 8, !tbaa !9
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ok, i64 56
  store double %i.qb, ptr %i.qj, align 8, !tbaa !9
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.ql = extractelement <2 x double> %i.oh, i64 0
  store double %i.ql, ptr %i.qk, align 8, !tbaa !9
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  %i.qn = shufflevector <2 x double> %i.oh, <2 x double> %i.pn, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.qn, ptr %i.qm, align 8, !tbaa !9
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store double %i.oe, ptr %i.qo, align 8, !tbaa !9
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.qp = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.qq = fmul <2 x double> %i.lj, %i.ps
  %i.qr = load double, ptr %i.my, align 8, !tbaa !9
  %i.qs = extractelement <2 x double> %i.pv, i64 0
  %i.qt = fmul double %i.kv, %i.qs
  %i.qu = extractelement <2 x double> %i.pv, i64 1
  %i.qv = call double @llvm.fmuladd.f64(double %i.qu, double %i.kt, double %i.qt)
  %i.qw = extractelement <2 x double> %i.oh, i64 1
  %i.qx = call double @llvm.fmuladd.f64(double %i.qw, double %i.kx, double %i.qv)
  %i.qy = load double, ptr %i.qp, align 8, !tbaa !9
  %i.qz = fadd double %i.qx, %i.qy
  %i.ra = load double, ptr %i.oj, align 8, !tbaa !9
  %i.rb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.lh, <2 x double> %i.qq)
end_hunk_0
