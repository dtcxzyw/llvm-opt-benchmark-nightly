Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/introduction_to_pca?download=true
inline.NumInlined: 292
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::PCA" = type { %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat" }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::CommandLineParser" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN2cv3PCAD2Ev = comdat any

$_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

@.str = private unnamed_addr constant [39 x i8] c"{@input | pca_test1.jpg | input image}\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"This program demonstrates how to use OpenCV PCA to extract the orientation of an object.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@input\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Problem loading image!!!\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.8, ptr @.str.9, i32 174, i32 3, ptr @.str.10, ptr @.str.11, ptr @.str.12 }, comdat, align 8
@.str.8 = private unnamed_addr constant [79 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Point_<int>]\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z8drawAxisRN2cv3MatENS_6Point_IiEES3_NS_7Scalar_IdEEf(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dead_on_return %3, float noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %.sroa.1052.0.extract.shift = lshr i64 %1, 32
  %.sroa.019.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.10.0.extract.shift = lshr i64 %2, 32
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i32 ; 2 uses
  %i.a = sitofp i32 %.sroa.10.0.extract.trunc to double
  %i.b = sitofp i32 %.sroa.019.0.extract.trunc to double
  %i.c = fpext float %4 to double
  %i.d = fneg double %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = trunc i64 %1 to i32
  %8 = bitcast i64 %1 to <2 x i32>
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.1052.0.extract.trunc = trunc nuw i64 %.sroa.1052.0.extract.shift to i32
  %i.j = sitofp <2 x i32> %9 to <2 x double>      ; 3 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = fsub double %i.k, %i.a
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = fsub double %i.m, %i.b
  %i.o = tail call double @atan2(double noundef %i.l, double noundef %i.n) #16 ; 4 uses
  %i.p = sub nsw i32 %.sroa.1052.0.extract.trunc, %.sroa.10.0.extract.trunc
  %i.q = sitofp i32 %i.p to double                ; 2 uses
  %i.r = sub nsw i32 %i.i, %.sroa.019.0.extract.trunc ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.r
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = tail call nnan double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.t)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.u)
  %i.v = tail call double @cos(double noundef %i.o) #16
  %i.w = fmul double %sqrt, %i.d
  %i.x = tail call double @sin(double noundef %i.o) #16
  %i.y = insertelement <2 x double> poison, double %i.w, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.v, i64 1
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ab, <2 x double> %i.j)
  %i.ad = fptosi <2 x double> %i.ac to <2 x i32>  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i64 0, ptr %i.f, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !13
  store ptr %0, ptr %i.e, align 8, !tbaa !14
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %.sroa.10.0.insert.ext34 = zext i32 %i.ae to i64
  %.sroa.10.0.insert.shift35 = shl nuw i64 %.sroa.10.0.insert.ext34, 32
  %i.af = extractelement <2 x i32> %i.ad, i64 1
  %.sroa.019.0.insert.ext27 = zext i32 %i.af to i64
  %.sroa.019.0.insert.insert29 = or disjoint i64 %.sroa.10.0.insert.shift35, %.sroa.019.0.insert.ext27 ; 3 uses
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %1, i64 %.sroa.019.0.insert.insert29, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 16, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ag = fadd double %i.o, f0x3FE921FB54442D18   ; 2 uses
  %i.ah = call double @cos(double noundef %i.ag) #16
  %i.ai = sitofp <2 x i32> %i.ad to <2 x double>  ; 2 uses
  %i.aj = call double @sin(double noundef %i.ag) #16
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ah, i64 1
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> splat (double 9.000000e+00), <2 x double> %i.ai)
  %i.an = fptosi <2 x double> %i.am to <2 x i32>  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !13
  store ptr %0, ptr %i.g, align 8, !tbaa !14
  %i.ao = extractelement <2 x i32> %i.an, i64 0
  %i.ap = zext i32 %i.ao to i64
  %.sroa.1052.0.insert.shift54 = shl nuw i64 %i.ap, 32
  %i.aq = extractelement <2 x i32> %i.an, i64 1
  %i.ar = zext i32 %i.aq to i64
  %.sroa.042.0.insert.insert48 = or disjoint i64 %.sroa.1052.0.insert.shift54, %i.ar
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.042.0.insert.insert48, i64 %.sroa.019.0.insert.insert29, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 16, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.as = fadd double %i.o, f0xBFE921FB54442D18   ; 2 uses
  %i.at = call double @cos(double noundef %i.as) #16
  %i.au = call double @sin(double noundef %i.as) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.aw, align 8
  store i32 50397184, ptr %7, align 8, !tbaa !13
  store ptr %0, ptr %i.av, align 8, !tbaa !14
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.at, i64 1
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> splat (double 9.000000e+00), <2 x double> %i.ai)
  %i.ba = fptosi <2 x double> %i.az to <2 x i32>  ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ba, i64 0
  %i.bc = zext i32 %i.bb to i64
  %.sroa.1052.0.insert.shift = shl nuw i64 %i.bc, 32
  %i.bd = extractelement <2 x i32> %i.ba, i64 1
  %i.be = zext i32 %i.bd to i64
  %.sroa.042.0.insert.insert = or disjoint i64 %.sroa.1052.0.insert.shift, %i.be
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %.sroa.042.0.insert.insert, i64 %.sroa.019.0.insert.insert29, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 16, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef double @_Z14getOrientationRKSt6vectorIN2cv6Point_IiEESaIS2_EERNS0_3MatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %3 = alloca %"class.cv::PCA", align 8           ; 19 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %8 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  %9 = alloca %"class.cv::Scalar_", align 16      ; 3 uses
  %10 = alloca %"class.cv::Scalar_", align 16     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.h, i32 noundef 2, i32 noundef 6)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38   ; 5 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39
  %.fr164 = freeze i32 %i.n
  %i.o = icmp slt i32 %.fr164, 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i32 %i.j, 1
  br i1 %i.s, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.t = zext nneg i32 %i.j to i64
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load <2 x i32>, ptr %i.v, align 4, !tbaa !41
  %i.x = sitofp <2 x i32> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %i.q, align 8, !tbaa !21
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.z = load i64, ptr %i.r, align 8
  %i.aa = mul i64 %i.z, %indvars.iv
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  %i.ab = load <2 x i32>, ptr %i.y, align 4, !tbaa !41
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  store double %i.ad, ptr %.sink.i, align 8, !tbaa !21
  %i.ae = load i64, ptr %i.r, align 8
  %i.af = mul i64 %i.ae, %indvars.iv
  %.sink.i70 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink.i70, i64 8
  %i.ah = extractelement <2 x double> %i.ac, i64 1
  store double %i.ah, ptr %i.ag, align 8, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.aj = load i64, ptr %i.r, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv.next
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ak
  %i.al = load <2 x i32>, ptr %i.ai, align 4, !tbaa !41
  %i.am = sitofp <2 x i32> %i.al to <2 x double>  ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  store double %i.an, ptr %.sink.i.1, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.r, align 8
  %i.ap = mul i64 %i.ao, %indvars.iv.next
  %.sink.i70.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink.i70.1, i64 8
  %i.ar = extractelement <2 x double> %i.am, i64 1
  store double %i.ar, ptr %i.aq, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod190 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil.init
  %i.at = load i64, ptr %i.r, align 8
  %i.au = mul i64 %i.at, %indvars.iv.epil.init
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.au
end_hunk_0
