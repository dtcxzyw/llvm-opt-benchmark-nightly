Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/copy?download=true
inline.NumInlined: 329
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::UMat" = type { i32, i32, i32, i32, ptr, i32, ptr, i64, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"class.cv::NAryMatIterator" = type { ptr, ptr, ptr, i32, i64, i64, i32, i64 }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::AutoBuffer" = type { ptr, i64, [1032 x i8] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::AutoBuffer.11" = type { ptr, i64, [264 x i32] }
%"class.cv::Point_" = type { i32, i32 }
%"class.cv::AutoBuffer.0" = type { ptr, i64, [136 x double] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$_ZNK2cv8MatShapeclEv = comdat any

$_ZN2cv11checkScalarERKNS_3MatEiNS_11_InputArray8KindFlagES4_ = comdat any

$__clang_call_terminate = comdat any

@_ZZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPviiE30__cv_trace_location_extra_fn68 = internal global ptr null, align 8
@_ZZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPviiE24__cv_trace_location_fn68 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPviiE30__cv_trace_location_extra_fn68, ptr @.str, ptr @.str.1, i32 68, i32 1 }, align 8
@.str = private unnamed_addr constant [59 x i8] c"void cv::scalarToRawData(const Scalar &, void *, int, int)\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/opencv/opencv/modules/core/src/copy.cpp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cn <= 4\00", align 1
@__func__._ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii = private unnamed_addr constant [16 x i8] c"scalarToRawData\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cvtFn\00", align 1
@__func__._ZN2cv22convertAndUnrollScalarERKNS_3MatEiPhm = private unnamed_addr constant [23 x i8] c"convertAndUnrollScalar\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"scn == 1\00", align 1
@_ZN2cv11copyMaskTabE = hidden local_unnamed_addr global [33 x ptr] [ptr null, ptr @_ZN2cvL10copyMask8uEPKhmS1_mPhmNS_5Size_IiEEPv, ptr @_ZN2cvL11copyMask16uEPKhmS1_mPhmNS_5Size_IiEEPv, ptr @_ZN2cvL12copyMask8uC3EPKhmS1_mPhmNS_5Size_IiEEPv, ptr @_ZN2cvL11copyMask32sEPKhmS1_mPhmNS_5Size_IiEEPv, ptr null, ptr @_ZN2cvL13copyMask16uC3EPKhmS1_mPhmNS_5Size_IiEEPv, ptr null, ptr @_ZN2cvL13copyMask32sC2EPKhmS1_mPhmNS_5Size_IiEEPv, ptr null, ptr null, ptr null, ptr @_ZN2cvL13copyMask32sC3EPKhmS1_mPhmNS_5Size_IiEEPv, ptr null, ptr null, ptr null, ptr @_ZN2cvL13copyMask32sC4EPKhmS1_mPhmNS_5Size_IiEEPv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN2cvL13copyMask32sC6EPKhmS1_mPhmNS_5Size_IiEEPv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN2cvL13copyMask32sC8EPKhmS1_mPhmNS_5Size_IiEEPv], align 16
@_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayEE31__cv_trace_location_extra_fn443 = internal global ptr null, align 8
@_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayEE25__cv_trace_location_fn443 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayEE31__cv_trace_location_extra_fn443, ptr @.str.6, ptr @.str.1, i32 443, i32 1 }, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"void cv::Mat::copyTo(OutputArray) const\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"CV_MAT_CN(stype) == CV_MAT_CN(dtype)\00", align 1
@__func__._ZNK2cv3Mat6copyToERKNS_12_OutputArrayE = private unnamed_addr constant [7 x i8] c"copyTo\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"dst.u != NULL\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"dims >= 0 && dims < CV_MAX_DIM\00", align 1
@_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayEE15__cv_check__508 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.6, ptr @.str.1, i32 508, i32 5, ptr @.str.3, ptr @.str.10, ptr @.str.11 }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"sz.width\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayEE31__cv_trace_location_extra_fn578 = internal global ptr null, align 8
@_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayEE25__cv_trace_location_fn578 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayEE31__cv_trace_location_extra_fn578, ptr @.str.12, ptr @.str.1, i32 578, i32 1 }, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"void cv::Mat::copyTo(OutputArray, InputArray) const\00", align 1
@.str.13 = private unnamed_addr constant [103 x i8] c"(mask.depth() == CV_8U || mask.depth() == CV_8S || mask.depth() == CV_Bool) && (mcn == 1 || mcn == cn)\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"size() == mask.size()\00", align 1
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayEE31__cv_trace_location_extra_fn648 = internal global ptr null, align 8
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayEE25__cv_trace_location_fn648 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayEE31__cv_trace_location_extra_fn648, ptr @.str.16, ptr @.str.1, i32 648, i32 1 }, align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"void cv::Mat::copyAt(OutputArray) const\00", align 1
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayEE15__cv_check__651 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.16, ptr @.str.1, i32 651, i32 0, ptr @.str.17, ptr @.str.18, ptr @.str.3 }, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"dst must not be empty\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"!dst.empty()\00", align 1
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayEE15__cv_check__652 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.16, ptr @.str.1, i32 652, i32 1, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, align 8
@.str.19 = private unnamed_addr constant [37 x i8] c"Make the type of dst the same as src\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"type()\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"dst.type()\00", align 1
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayEE15__cv_check__653 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.16, ptr @.str.1, i32 653, i32 1, ptr @.str.22, ptr @.str.23, ptr @.str.24 }, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"Make the size of dst the same as src\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"size()\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"dst.size()\00", align 1
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayERKNS_11_InputArrayEE31__cv_trace_location_extra_fn658 = internal global ptr null, align 8
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayERKNS_11_InputArrayEE25__cv_trace_location_fn658 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayERKNS_11_InputArrayEE31__cv_trace_location_extra_fn658, ptr @.str.25, ptr @.str.1, i32 658, i32 1 }, align 8
@.str.25 = private unnamed_addr constant [52 x i8] c"void cv::Mat::copyAt(OutputArray, InputArray) const\00", align 1
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayERKNS_11_InputArrayEE15__cv_check__661 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.25, ptr @.str.1, i32 661, i32 0, ptr @.str.17, ptr @.str.18, ptr @.str.3 }, align 8
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayERKNS_11_InputArrayEE15__cv_check__662 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.25, ptr @.str.1, i32 662, i32 1, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, align 8
@_ZZNK2cv3Mat6copyAtERKNS_12_OutputArrayERKNS_11_InputArrayEE15__cv_check__663 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.25, ptr @.str.1, i32 663, i32 1, ptr @.str.22, ptr @.str.23, ptr @.str.24 }, align 8
@_ZZN2cv3MataSERKNS_7Scalar_IdEEE31__cv_trace_location_extra_fn692 = internal global ptr null, align 8
@_ZZN2cv3MataSERKNS_7Scalar_IdEEE25__cv_trace_location_fn692 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3MataSERKNS_7Scalar_IdEEE31__cv_trace_location_extra_fn692, ptr @.str.26, ptr @.str.1, i32 692, i32 1 }, align 8
@.str.26 = private unnamed_addr constant [40 x i8] c"Mat &cv::Mat::operator=(const Scalar &)\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"sz <= sizeof(scalar)\00", align 1
@__func__._ZN2cv3MataSERKNS_7Scalar_IdEE = private unnamed_addr constant [10 x i8] c"operator=\00", align 1
@_ZZN2cv3Mat5setToERKNS_11_InputArrayES3_E31__cv_trace_location_extra_fn802 = internal global ptr null, align 8
@_ZZN2cv3Mat5setToERKNS_11_InputArrayES3_E25__cv_trace_location_fn802 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3Mat5setToERKNS_11_InputArrayES3_E31__cv_trace_location_extra_fn802, ptr @.str.28, ptr @.str.1, i32 802, i32 1 }, align 8
@.str.28 = private unnamed_addr constant [44 x i8] c"Mat &cv::Mat::setTo(InputArray, InputArray)\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"checkScalar(value, type(), _value.kind(), _InputArray::MAT )\00", align 1
@__func__._ZN2cv3Mat5setToERKNS_11_InputArrayES3_ = private unnamed_addr constant [6 x i8] c"setTo\00", align 1
@.str.30 = private unnamed_addr constant [142 x i8] c"mask.empty() || ((mask.depth() == CV_8U || mask.depth() == CV_8S || mask.depth() == CV_Bool) && (mcn == 1 || mcn == cn) && size == mask.size)\00", align 1
@_ZZN2cv3Mat7setZeroEvE31__cv_trace_location_extra_fn851 = internal global ptr null, align 8
@_ZZN2cv3Mat7setZeroEvE25__cv_trace_location_fn851 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3Mat7setZeroEvE31__cv_trace_location_extra_fn851, ptr @.str.31, ptr @.str.1, i32 851, i32 1 }, align 8
@.str.31 = private unnamed_addr constant [24 x i8] c"Mat &cv::Mat::setZero()\00", align 1
@_ZZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayEE31__cv_trace_location_extra_fn900 = internal global ptr null, align 8
@_ZZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayEE25__cv_trace_location_fn900 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayEE31__cv_trace_location_extra_fn900, ptr @.str.32, ptr @.str.1, i32 900, i32 1 }, align 8
@.str.32 = private unnamed_addr constant [51 x i8] c"void cv::repeat(InputArray, int, int, OutputArray)\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"_src.getObj() != _dst.getObj()\00", align 1
@__func__._ZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayE = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"_src.dims() <= 2\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"ny > 0 && nx > 0\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"len > 0\00", align 1
@__func__._ZN2cv17borderInterpolateEiii = private unnamed_addr constant [18 x i8] c"borderInterpolate\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Unknown/unsupported border type\00", align 1
@_ZZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEEE32__cv_trace_location_extra_fn1228 = internal global ptr null, align 8
@_ZZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEEE26__cv_trace_location_fn1228 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEEE32__cv_trace_location_extra_fn1228, ptr @.str.38, ptr @.str.1, i32 1228, i32 1 }, align 8
@.str.38 = private unnamed_addr constant [90 x i8] c"void cv::copyMakeBorder(InputArray, OutputArray, int, int, int, int, int, const Scalar &)\00", align 1
@.str.39 = private unnamed_addr constant [71 x i8] c"top >= 0 && bottom >= 0 && left >= 0 && right >= 0 && _src.dims() <= 2\00", align 1
@__func__._ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE = private unnamed_addr constant [15 x i8] c"copyMakeBorder\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"value[0] == value[1] && value[0] == value[2] && value[0] == value[3]\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPviiE24__cv_trace_location_fn68)
  %i.a = lshr i32 %2, 5                           ; 21 uses
  %i.b = and i32 %i.a, 127                        ; 15 uses
  %i.c = add nuw nsw i32 %i.b, 1                  ; 52 uses
  %i.d = icmp samesign ult i32 %i.b, 4
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii, ptr noundef nonnull @.str.1, i32 noundef 71) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !13     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ce

bb.g:                                             ; preds = %bb.a
  %i.l = and i32 %2, 31
  switch i32 %i.l, label %bb.bx [
    i32 0, label %bb.h
    i32 1, label %bb.l
    i32 9, label %bb.p
    i32 2, label %bb.t
    i32 3, label %bb.x
    i32 7, label %bb.ab
    i32 8, label %bb.av
    i32 12, label %bb.az
    i32 4, label %bb.bd
    i32 5, label %bb.bh
    i32 10, label %bb.bl
    i32 11, label %bb.bp
    i32 6, label %bb.bt
  ]

bb.h:                                             ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 2 uses
  %i.m = load double, ptr %0, align 8, !tbaa !16
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.n)
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = call i32 @llvm.umin.i32(i32 %i.p, i32 255)
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %1, align 1, !tbaa !14
  %exitcond.not.i = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.s = icmp slt i32 %i.c, %3
  br i1 %i.s, label %iter.check520, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

iter.check520:                                    ; preds = %.preheader.i
  %i.t = zext nneg i32 %3 to i64
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !16
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.w)
  %i.y = call i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %i.z = call i32 @llvm.umin.i32(i32 %i.y, i32 255)
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !14
  %exitcond.not.i.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i.1, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !16
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ae)
  %i.ag = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = call i32 @llvm.umin.i32(i32 %i.ag, i32 255)
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !14
  %exitcond.not.i.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i.2, label %.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !16
  %i.am = insertelement <2 x double> poison, double %i.al, i64 0
  %i.an = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.am)
  %i.ao = call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ap = call i32 @llvm.umin.i32(i32 %i.ao, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !14
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %iter.check520, %.lr.ph.i
  %indvars.iv19.i = phi i64 [ %wide.trip.count.i, %iter.check520 ], [ %indvars.iv.next20.i, %.lr.ph.i ] ; 3 uses
  %i.as = sub nuw nsw i64 %indvars.iv19.i, %wide.trip.count.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv19.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !14
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next20.i, %i.t
  br i1 %i.aw, label %.lr.ph.i, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !61

bb.l:                                             ; preds = %bb.g
  %wide.trip.count.i65 = zext nneg i32 %i.c to i64 ; 2 uses
  %i.ax = load double, ptr %0, align 8, !tbaa !16
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ay)
  %i.ba = call i32 @llvm.smax.i32(i32 %i.az, i32 -128)
  %i.bb = call i32 @llvm.smin.i32(i32 %i.ba, i32 127)
  %i.bc = trunc nsw i32 %i.bb to i8
  store i8 %i.bc, ptr %1, align 1, !tbaa !14
  %exitcond.not.i69 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i69, label %.preheader.i71, label %bb.m

.preheader.i71:                                   ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.bd = icmp slt i32 %i.c, %3
  br i1 %i.bd, label %iter.check489, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

iter.check489:                                    ; preds = %.preheader.i71
  %i.be = zext nneg i32 %3 to i64
  br label %.lr.ph.i73

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !16
  %i.bh = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bi = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bh)
  %i.bj = call i32 @llvm.smax.i32(i32 %i.bi, i32 -128)
  %i.bk = call i32 @llvm.smin.i32(i32 %i.bj, i32 127)
  %i.bl = trunc nsw i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !14
  %exitcond.not.i69.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i69.1, label %.preheader.i71, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bp)
  %i.br = call i32 @llvm.smax.i32(i32 %i.bq, i32 -128)
  %i.bs = call i32 @llvm.smin.i32(i32 %i.br, i32 127)
  %i.bt = trunc nsw i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !14
  %exitcond.not.i69.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i69.2, label %.preheader.i71, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !16
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bx)
  %i.bz = call i32 @llvm.smax.i32(i32 %i.by, i32 -128)
  %i.ca = call i32 @llvm.smin.i32(i32 %i.bz, i32 127)
  %i.cb = trunc nsw i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !14
  br label %.preheader.i71

.lr.ph.i73:                                       ; preds = %iter.check489, %.lr.ph.i73
  %indvars.iv19.i74 = phi i64 [ %wide.trip.count.i65, %iter.check489 ], [ %indvars.iv.next20.i75, %.lr.ph.i73 ] ; 3 uses
  %i.cd = sub nuw nsw i64 %indvars.iv19.i74, %wide.trip.count.i65
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv19.i74
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !14
  %indvars.iv.next20.i75 = add nuw nsw i64 %indvars.iv19.i74, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next20.i75, %i.be
  br i1 %i.ch, label %.lr.ph.i73, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !62

bb.p:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii:bb.a
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit.i.3

_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit.i.3: ; preds = %bb.au, %bb.at, %bb.as
  %i.ma = phi i16 [ %i.lx, %bb.at ], [ %i.lu, %bb.as ], [ %i.lz, %bb.au ]
  %i.mb = bitcast float %i.lk to i32
  %i.mc = lshr i32 %i.mb, 16
  %i.md = trunc nuw i32 %i.mc to i16
  %i.me = and i16 %i.md, -32768
  %i.mf = or i16 %i.ma, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !20
  br label %.preheader.i115

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.preheader, %.lr.ph.i117
  %indvars.iv19.i118 = phi i64 [ %indvars.iv.next20.i119, %.lr.ph.i117 ], [ %indvars.iv19.i118.ph, %.lr.ph.i117.preheader ] ; 3 uses
  %i.mh = sub nuw nsw i64 %indvars.iv19.i118, %wide.trip.count.i109
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv19.i118
  %i.mk = load i16, ptr %i.mi, align 2, !tbaa !20
  store i16 %i.mk, ptr %i.mj, align 2, !tbaa !20
  %indvars.iv.next20.i119 = add nuw nsw i64 %indvars.iv19.i118, 1 ; 2 uses
  %i.ml = icmp samesign ult i64 %indvars.iv.next20.i119, %i.hx
  br i1 %i.ml, label %.lr.ph.i117, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !72

bb.av:                                            ; preds = %bb.g
  %wide.trip.count.i120 = zext nneg i32 %i.c to i64 ; 8 uses
  %i.mm = load double, ptr %0, align 8, !tbaa !16
  %i.mn = fptrunc double %i.mm to float           ; 2 uses
  %i.mo = bitcast float %i.mn to i32
  %i.mp = call float @llvm.fabs.f32(float %i.mn)
  %i.mq = bitcast float %i.mp to i32
  %i.mr = icmp samesign ult i32 %i.mq, 2139062272
  %i.ms = select i1 %i.mr, i32 32768, i32 0
  %i.mt = add i32 %i.ms, %i.mo
  %i.mu = lshr i32 %i.mt, 16
  %i.mv = trunc nuw i32 %i.mu to i16
  store i16 %i.mv, ptr %1, align 2, !tbaa !20
  %exitcond.not.i124 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i124, label %.preheader.i126, label %bb.aw

.preheader.i126:                                  ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.mw = icmp slt i32 %i.c, %3
  br i1 %i.mw, label %iter.check, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

iter.check:                                       ; preds = %.preheader.i126
  %i.mx = zext nneg i32 %3 to i64                 ; 2 uses
  %i.my = and i32 %i.a, 127
  %i.mz = zext nneg i32 %i.my to i64              ; 2 uses
  %i.na = add nuw nsw i64 %i.mz, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.na, i64 %i.mx)
  %i.nb = xor i64 %i.mz, -1
  %i.nc = add nsw i64 %umax, %i.nb                ; 7 uses
  %min.iters.check329 = icmp ult i64 %i.nc, 4
  br i1 %min.iters.check329, label %.lr.ph.i128.preheader, label %vector.memcheck326

vector.memcheck326:                               ; preds = %iter.check
  %i.nd = shl nuw nsw i32 %i.a, 1
  %i.ne = and i32 %i.nd, 254
  %i.nf = or disjoint i32 %i.ne, 1
  %diff.check327 = icmp samesign ult i32 %i.nf, 31
  br i1 %diff.check327, label %.lr.ph.i128.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck326
  %min.iters.check330 = icmp ult i64 %i.nc, 16
  br i1 %min.iters.check330, label %vec.epilog.ph, label %vector.ph331

vector.ph331:                                     ; preds = %vector.main.loop.iter.check
  %i.ng = and i64 %i.nc, 12
  %n.vec332 = and i64 %i.nc, -16                  ; 4 uses
  %i.nh = or disjoint i64 %n.vec332, %wide.trip.count.i120
  br label %vector.body333

vector.body333:                                   ; preds = %vector.ph331, %vector.body333
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next337, %vector.body333 ] ; 2 uses
  %i.ni = or disjoint i64 %index334, %wide.trip.count.i120 ; 2 uses
  %i.nj = sub nuw nsw i64 %i.ni, %wide.trip.count.i120
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ni ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load335 = load <8 x i16>, ptr %i.nk, align 2, !tbaa !20
  %wide.load336 = load <8 x i16>, ptr %i.nm, align 2, !tbaa !20
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <8 x i16> %wide.load335, ptr %i.nl, align 2, !tbaa !20
  store <8 x i16> %wide.load336, ptr %i.nn, align 2, !tbaa !20
  %index.next337 = add nuw i64 %index334, 16      ; 2 uses
  %i.no = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.no, label %middle.block338, label %vector.body333, !llvm.loop !73

middle.block338:                                  ; preds = %vector.body333
  %cmp.n339 = icmp eq i64 %i.nc, %n.vec332
  br i1 %cmp.n339, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block338
  %min.epilog.iters.check = icmp eq i64 %i.ng, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i128.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec332, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec341 = and i64 %i.nc, -4                   ; 3 uses
  %i.np = add nsw i64 %n.vec341, %wide.trip.count.i120
  %invariant.gep549 = getelementptr [2 x i8], ptr %1, i64 %wide.trip.count.i120
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index342 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next344, %vec.epilog.vector.body ] ; 3 uses
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index342
  %gep550 = getelementptr [2 x i8], ptr %invariant.gep549, i64 %index342
  %wide.load343 = load <4 x i16>, ptr %i.nq, align 2, !tbaa !20
  store <4 x i16> %wide.load343, ptr %gep550, align 2, !tbaa !20
  %index.next344 = add nuw i64 %index342, 4       ; 2 uses
  %i.nr = icmp eq i64 %index.next344, %n.vec341
  br i1 %i.nr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n345 = icmp eq i64 %i.nc, %n.vec341
  br i1 %cmp.n345, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %iter.check, %vector.memcheck326, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv19.i129.ph = phi i64 [ %wide.trip.count.i120, %iter.check ], [ %wide.trip.count.i120, %vector.memcheck326 ], [ %i.nh, %vec.epilog.iter.check ], [ %i.np, %vec.epilog.middle.block ]
  br label %.lr.ph.i128

bb.aw:                                            ; preds = %bb.av
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !16
  %i.nu = fptrunc double %i.nt to float           ; 2 uses
  %i.nv = bitcast float %i.nu to i32
  %i.nw = call float @llvm.fabs.f32(float %i.nu)
  %i.nx = bitcast float %i.nw to i32
  %i.ny = icmp samesign ult i32 %i.nx, 2139062272
  %i.nz = select i1 %i.ny, i32 32768, i32 0
  %i.oa = add i32 %i.nz, %i.nv
  %i.ob = lshr i32 %i.oa, 16
  %i.oc = trunc nuw i32 %i.ob to i16
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !20
  %exitcond.not.i124.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i124.1, label %.preheader.i126, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.of = load double, ptr %i.oe, align 8, !tbaa !16
  %i.og = fptrunc double %i.of to float           ; 2 uses
  %i.oh = bitcast float %i.og to i32
  %i.oi = call float @llvm.fabs.f32(float %i.og)
  %i.oj = bitcast float %i.oi to i32
  %i.ok = icmp samesign ult i32 %i.oj, 2139062272
  %i.ol = select i1 %i.ok, i32 32768, i32 0
  %i.om = add i32 %i.ol, %i.oh
  %i.on = lshr i32 %i.om, 16
  %i.oo = trunc nuw i32 %i.on to i16
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.oo, ptr %i.op, align 2, !tbaa !20
  %exitcond.not.i124.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i124.2, label %.preheader.i126, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.or = load double, ptr %i.oq, align 8, !tbaa !16
  %i.os = fptrunc double %i.or to float           ; 2 uses
  %i.ot = bitcast float %i.os to i32
  %i.ou = call float @llvm.fabs.f32(float %i.os)
  %i.ov = bitcast float %i.ou to i32
  %i.ow = icmp samesign ult i32 %i.ov, 2139062272
  %i.ox = select i1 %i.ow, i32 32768, i32 0
  %i.oy = add i32 %i.ox, %i.ot
  %i.oz = lshr i32 %i.oy, 16
  %i.pa = trunc nuw i32 %i.oz to i16
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !20
  br label %.preheader.i126

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %indvars.iv19.i129 = phi i64 [ %indvars.iv.next20.i130, %.lr.ph.i128 ], [ %indvars.iv19.i129.ph, %.lr.ph.i128.preheader ] ; 3 uses
  %i.pc = sub nuw nsw i64 %indvars.iv19.i129, %wide.trip.count.i120
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.pc
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv19.i129
  %i.pf = load i16, ptr %i.pd, align 2, !tbaa !20
  store i16 %i.pf, ptr %i.pe, align 2, !tbaa !20
  %indvars.iv.next20.i130 = add nuw nsw i64 %indvars.iv19.i129, 1 ; 2 uses
  %i.pg = icmp samesign ult i64 %indvars.iv.next20.i130, %i.mx
  br i1 %i.pg, label %.lr.ph.i128, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !75

bb.az:                                            ; preds = %bb.g
  %wide.trip.count.i131 = zext nneg i32 %i.c to i64 ; 6 uses
  %i.ph = load double, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.pi = fcmp olt double %i.ph, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.pi, double 0.000000e+00, double %i.ph
  %i.pj = call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.pk = fptoui double %i.pj to i32
  store i32 %i.pk, ptr %1, align 4, !tbaa !22
  %exitcond.not.i135 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i135, label %.preheader.i137, label %bb.ba

.preheader.i137:                                  ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.pl = icmp slt i32 %i.c, %3
  br i1 %i.pl, label %.lr.ph.preheader.i138, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

.lr.ph.preheader.i138:                            ; preds = %.preheader.i137
  %i.pm = zext nneg i32 %3 to i64                 ; 2 uses
  %i.pn = and i32 %i.a, 127
  %i.po = zext nneg i32 %i.pn to i64              ; 2 uses
  %i.pp = add nuw nsw i64 %i.po, 2
  %i.pq = call i64 @llvm.umax.i64(i64 %i.pp, i64 %i.pm)
  %i.pr = xor i64 %i.po, -1
  %i.ps = add nsw i64 %i.pq, %i.pr                ; 3 uses
  %min.iters.check315 = icmp ult i64 %i.ps, 12
  br i1 %min.iters.check315, label %.lr.ph.i139.preheader, label %vector.memcheck312

vector.memcheck312:                               ; preds = %.lr.ph.preheader.i138
  %9 = shl nuw nsw i32 %i.a, 2
  %10 = and i32 %9, 508
  %11 = or disjoint i32 %10, 3
  %diff.check313 = icmp samesign ult i32 %11, 31
  br i1 %diff.check313, label %.lr.ph.i139.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %vector.memcheck312
  %n.vec317 = and i64 %i.ps, -8                   ; 3 uses
  %i.pt = or disjoint i64 %n.vec317, %wide.trip.count.i131
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body318 ] ; 2 uses
  %i.pu = or disjoint i64 %index319, %wide.trip.count.i131 ; 2 uses
  %i.pv = sub nuw nsw i64 %i.pu, %wide.trip.count.i131
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pv ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load320 = load <4 x i32>, ptr %i.pw, align 4, !tbaa !22
  %wide.load321 = load <4 x i32>, ptr %i.px, align 4, !tbaa !22
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pu ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store <4 x i32> %wide.load320, ptr %i.py, align 4, !tbaa !22
  store <4 x i32> %wide.load321, ptr %i.pz, align 4, !tbaa !22
  %index.next322 = add nuw i64 %index319, 8       ; 2 uses
  %i.qa = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.qa, label %middle.block323, label %vector.body318, !llvm.loop !76

middle.block323:                                  ; preds = %vector.body318
  %cmp.n324 = icmp eq i64 %i.ps, %n.vec317
  br i1 %cmp.n324, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i139.preheader

.lr.ph.i139.preheader:                            ; preds = %vector.memcheck312, %.lr.ph.preheader.i138, %middle.block323
  %indvars.iv19.i140.ph = phi i64 [ %wide.trip.count.i131, %vector.memcheck312 ], [ %wide.trip.count.i131, %.lr.ph.preheader.i138 ], [ %i.pt, %middle.block323 ]
  br label %.lr.ph.i139

bb.ba:                                            ; preds = %bb.az
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !16 ; 2 uses
  %i.qd = fcmp olt double %i.qc, 0.000000e+00
  %.sroa.speculated.i.i.1 = select i1 %i.qd, double 0.000000e+00, double %i.qc
  %i.qe = call double @llvm.round.f64(double %.sroa.speculated.i.i.1)
  %i.qf = fptoui double %i.qe to i32
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !22
  %exitcond.not.i135.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i135.1, label %.preheader.i137, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !16 ; 2 uses
  %i.qj = fcmp olt double %i.qi, 0.000000e+00
  %.sroa.speculated.i.i.2 = select i1 %i.qj, double 0.000000e+00, double %i.qi
  %i.qk = call double @llvm.round.f64(double %.sroa.speculated.i.i.2)
  %i.ql = fptoui double %i.qk to i32
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ql, ptr %i.qm, align 4, !tbaa !22
  %exitcond.not.i135.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i135.2, label %.preheader.i137, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !16 ; 2 uses
  %i.qp = fcmp olt double %i.qo, 0.000000e+00
  %.sroa.speculated.i.i.3 = select i1 %i.qp, double 0.000000e+00, double %i.qo
  %i.qq = call double @llvm.round.f64(double %.sroa.speculated.i.i.3)
  %i.qr = fptoui double %i.qq to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !22
  br label %.preheader.i137

.lr.ph.i139:                                      ; preds = %.lr.ph.i139.preheader, %.lr.ph.i139
  %indvars.iv19.i140 = phi i64 [ %indvars.iv.next20.i141, %.lr.ph.i139 ], [ %indvars.iv19.i140.ph, %.lr.ph.i139.preheader ] ; 3 uses
  %i.qt = sub nuw nsw i64 %indvars.iv19.i140, %wide.trip.count.i131
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !22
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv19.i140
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !22
  %indvars.iv.next20.i141 = add nuw nsw i64 %indvars.iv19.i140, 1 ; 2 uses
  %i.qx = icmp samesign ult i64 %indvars.iv.next20.i141, %i.pm
  br i1 %i.qx, label %.lr.ph.i139, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !77

bb.bd:                                            ; preds = %bb.g
  %wide.trip.count.i142 = zext nneg i32 %i.c to i64 ; 6 uses
  %i.qy = load double, ptr %0, align 8, !tbaa !16
  %i.qz = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.ra = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.qz)
  store i32 %i.ra, ptr %1, align 4, !tbaa !22
  %exitcond.not.i146 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i146, label %.preheader.i148, label %bb.be

.preheader.i148:                                  ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %i.rb = icmp slt i32 %i.c, %3
  br i1 %i.rb, label %.lr.ph.preheader.i149, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

.lr.ph.preheader.i149:                            ; preds = %.preheader.i148
  %i.rc = zext nneg i32 %3 to i64                 ; 2 uses
  %i.rd = and i32 %i.a, 127
  %i.re = zext nneg i32 %i.rd to i64              ; 2 uses
  %i.rf = add nuw nsw i64 %i.re, 2
  %i.rg = call i64 @llvm.umax.i64(i64 %i.rf, i64 %i.rc)
  %i.rh = xor i64 %i.re, -1
  %i.ri = add nsw i64 %i.rg, %i.rh                ; 3 uses
  %min.iters.check301 = icmp ult i64 %i.ri, 12
  br i1 %min.iters.check301, label %.lr.ph.i150.preheader, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.preheader.i149
  %12 = shl nuw nsw i32 %i.a, 2
  %13 = and i32 %12, 508
  %14 = or disjoint i32 %13, 3
  %diff.check299 = icmp samesign ult i32 %14, 31
  br i1 %diff.check299, label %.lr.ph.i150.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %vector.memcheck298
  %n.vec303 = and i64 %i.ri, -8                   ; 3 uses
  %i.rj = or disjoint i64 %n.vec303, %wide.trip.count.i142
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next308, %vector.body304 ] ; 2 uses
  %i.rk = or disjoint i64 %index305, %wide.trip.count.i142 ; 2 uses
  %i.rl = sub nuw nsw i64 %i.rk, %wide.trip.count.i142
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rl ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %wide.load306 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !22
  %wide.load307 = load <4 x i32>, ptr %i.rn, align 4, !tbaa !22
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rk ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store <4 x i32> %wide.load306, ptr %i.ro, align 4, !tbaa !22
  store <4 x i32> %wide.load307, ptr %i.rp, align 4, !tbaa !22
  %index.next308 = add nuw i64 %index305, 8       ; 2 uses
  %i.rq = icmp eq i64 %index.next308, %n.vec303
  br i1 %i.rq, label %middle.block309, label %vector.body304, !llvm.loop !78

middle.block309:                                  ; preds = %vector.body304
  %cmp.n310 = icmp eq i64 %i.ri, %n.vec303
  br i1 %cmp.n310, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i150.preheader

.lr.ph.i150.preheader:                            ; preds = %vector.memcheck298, %.lr.ph.preheader.i149, %middle.block309
  %indvars.iv19.i151.ph = phi i64 [ %wide.trip.count.i142, %vector.memcheck298 ], [ %wide.trip.count.i142, %.lr.ph.preheader.i149 ], [ %i.rj, %middle.block309 ]
  br label %.lr.ph.i150

bb.be:                                            ; preds = %bb.bd
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !16
  %i.rt = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.ru = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !22
  %exitcond.not.i146.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i146.1, label %.preheader.i148, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !16
  %i.ry = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.rz = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ry)
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !22
  %exitcond.not.i146.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i146.2, label %.preheader.i148, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !16
  %i.sd = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.se = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.sd)
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !22
  br label %.preheader.i148

.lr.ph.i150:                                      ; preds = %.lr.ph.i150.preheader, %.lr.ph.i150
  %indvars.iv19.i151 = phi i64 [ %indvars.iv.next20.i152, %.lr.ph.i150 ], [ %indvars.iv19.i151.ph, %.lr.ph.i150.preheader ] ; 3 uses
  %i.sg = sub nuw nsw i64 %indvars.iv19.i151, %wide.trip.count.i142
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !22
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv19.i151
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !22
  %indvars.iv.next20.i152 = add nuw nsw i64 %indvars.iv19.i151, 1 ; 2 uses
  %i.sk = icmp samesign ult i64 %indvars.iv.next20.i152, %i.rc
  br i1 %i.sk, label %.lr.ph.i150, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !79

bb.bh:                                            ; preds = %bb.g
  %wide.trip.count.i153 = zext nneg i32 %i.c to i64 ; 6 uses
  %i.sl = load double, ptr %0, align 8, !tbaa !16
  %i.sm = fptrunc double %i.sl to float
  store float %i.sm, ptr %1, align 4, !tbaa !94
  %exitcond.not.i157 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i157, label %.preheader.i159, label %bb.bi

.preheader.i159:                                  ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.sn = icmp slt i32 %i.c, %3
  br i1 %i.sn, label %.lr.ph.preheader.i160, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

.lr.ph.preheader.i160:                            ; preds = %.preheader.i159
  %i.so = zext nneg i32 %3 to i64                 ; 2 uses
  %i.sp = and i32 %i.a, 127
  %i.sq = zext nneg i32 %i.sp to i64              ; 2 uses
  %i.sr = add nuw nsw i64 %i.sq, 2
  %i.ss = call i64 @llvm.umax.i64(i64 %i.sr, i64 %i.so)
  %i.st = xor i64 %i.sq, -1
  %i.su = add nsw i64 %i.ss, %i.st                ; 3 uses
  %min.iters.check287 = icmp ult i64 %i.su, 12
  br i1 %min.iters.check287, label %.lr.ph.i161.preheader, label %vector.memcheck284

vector.memcheck284:                               ; preds = %.lr.ph.preheader.i160
  %15 = shl nuw nsw i32 %i.a, 2
  %16 = and i32 %15, 508
  %17 = or disjoint i32 %16, 3
  %diff.check285 = icmp samesign ult i32 %17, 31
  br i1 %diff.check285, label %.lr.ph.i161.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck284
  %n.vec289 = and i64 %i.su, -8                   ; 3 uses
  %i.sv = or disjoint i64 %n.vec289, %wide.trip.count.i153
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next294, %vector.body290 ] ; 2 uses
  %i.sw = or disjoint i64 %index291, %wide.trip.count.i153 ; 2 uses
  %i.sx = sub nuw nsw i64 %i.sw, %wide.trip.count.i153
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sx ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load292 = load <4 x float>, ptr %i.sy, align 4, !tbaa !94
  %wide.load293 = load <4 x float>, ptr %i.sz, align 4, !tbaa !94
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sw ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store <4 x float> %wide.load292, ptr %i.ta, align 4, !tbaa !94
  store <4 x float> %wide.load293, ptr %i.tb, align 4, !tbaa !94
  %index.next294 = add nuw i64 %index291, 8       ; 2 uses
  %i.tc = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.tc, label %middle.block295, label %vector.body290, !llvm.loop !80

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %i.su, %n.vec289
  br i1 %cmp.n296, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %vector.memcheck284, %.lr.ph.preheader.i160, %middle.block295
  %indvars.iv19.i162.ph = phi i64 [ %wide.trip.count.i153, %vector.memcheck284 ], [ %wide.trip.count.i153, %.lr.ph.preheader.i160 ], [ %i.sv, %middle.block295 ]
  br label %.lr.ph.i161

bb.bi:                                            ; preds = %bb.bh
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.te = load double, ptr %i.td, align 8, !tbaa !16
  %i.tf = fptrunc double %i.te to float
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.tf, ptr %i.tg, align 4, !tbaa !94
  %exitcond.not.i157.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i157.1, label %.preheader.i159, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ti = load double, ptr %i.th, align 8, !tbaa !16
  %i.tj = fptrunc double %i.ti to float
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.tj, ptr %i.tk, align 4, !tbaa !94
  %exitcond.not.i157.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i157.2, label %.preheader.i159, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !16
  %i.tn = fptrunc double %i.tm to float
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.tn, ptr %i.to, align 4, !tbaa !94
  br label %.preheader.i159

.lr.ph.i161:                                      ; preds = %.lr.ph.i161.preheader, %.lr.ph.i161
  %indvars.iv19.i162 = phi i64 [ %indvars.iv.next20.i163, %.lr.ph.i161 ], [ %indvars.iv19.i162.ph, %.lr.ph.i161.preheader ] ; 3 uses
  %i.tp = sub nuw nsw i64 %indvars.iv19.i162, %wide.trip.count.i153
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tp
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !94
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv19.i162
  store float %i.tr, ptr %i.ts, align 4, !tbaa !94
  %indvars.iv.next20.i163 = add nuw nsw i64 %indvars.iv19.i162, 1 ; 2 uses
  %i.tt = icmp samesign ult i64 %indvars.iv.next20.i163, %i.so
  br i1 %i.tt, label %.lr.ph.i161, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !81

bb.bl:                                            ; preds = %bb.g
  %wide.trip.count.i164 = zext nneg i32 %i.c to i64 ; 5 uses
  %i.tu = load double, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.tv = fcmp olt double %i.tu, 0.000000e+00
  %.sroa.speculated.i.i167 = select i1 %i.tv, double 0.000000e+00, double %i.tu
  %i.tw = call double @llvm.round.f64(double %.sroa.speculated.i.i167)
  %i.tx = fptosi double %i.tw to i64
  store i64 %i.tx, ptr %1, align 8, !tbaa !23
  %exitcond.not.i169 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i169, label %.preheader.i171, label %bb.bm

.preheader.i171:                                  ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %i.ty = icmp slt i32 %i.c, %3
  br i1 %i.ty, label %.lr.ph.preheader.i172, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

.lr.ph.preheader.i172:                            ; preds = %.preheader.i171
  %i.tz = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ua = and i32 %i.a, 127
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = add nuw nsw i64 %i.ub, 2
  %i.ud = call i64 @llvm.umax.i64(i64 %i.uc, i64 %i.tz)
  %i.ue = xor i64 %i.ub, -1
  %i.uf = add nsw i64 %i.ud, %i.ue                ; 3 uses
  %min.iters.check273 = icmp ult i64 %i.uf, 10
  br i1 %min.iters.check273, label %.lr.ph.i173.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.lr.ph.preheader.i172
  %18 = shl nuw nsw i32 %i.a, 3
  %19 = and i32 %18, 1016
  %20 = or disjoint i32 %19, 7
  %diff.check271 = icmp samesign ult i32 %20, 31
  br i1 %diff.check271, label %.lr.ph.i173.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck270
  %n.vec275 = and i64 %i.uf, -4                   ; 3 uses
  %i.ug = add nsw i64 %n.vec275, %wide.trip.count.i164
  %invariant.gep547 = getelementptr [8 x i8], ptr %1, i64 %wide.trip.count.i164
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next280, %vector.body276 ] ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index277 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %wide.load278 = load <2 x i64>, ptr %i.uh, align 8, !tbaa !23
  %wide.load279 = load <2 x i64>, ptr %i.ui, align 8, !tbaa !23
  %gep548 = getelementptr [8 x i8], ptr %invariant.gep547, i64 %index277 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %gep548, i64 16
  store <2 x i64> %wide.load278, ptr %gep548, align 8, !tbaa !23
  store <2 x i64> %wide.load279, ptr %i.uj, align 8, !tbaa !23
  %index.next280 = add nuw i64 %index277, 4       ; 2 uses
  %i.uk = icmp eq i64 %index.next280, %n.vec275
  br i1 %i.uk, label %middle.block281, label %vector.body276, !llvm.loop !82

middle.block281:                                  ; preds = %vector.body276
  %cmp.n282 = icmp eq i64 %i.uf, %n.vec275
  br i1 %cmp.n282, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i173.preheader

.lr.ph.i173.preheader:                            ; preds = %vector.memcheck270, %.lr.ph.preheader.i172, %middle.block281
  %indvars.iv19.i174.ph = phi i64 [ %wide.trip.count.i164, %vector.memcheck270 ], [ %wide.trip.count.i164, %.lr.ph.preheader.i172 ], [ %i.ug, %middle.block281 ]
  br label %.lr.ph.i173

bb.bm:                                            ; preds = %bb.bl
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.um = load double, ptr %i.ul, align 8, !tbaa !16 ; 2 uses
  %i.un = fcmp olt double %i.um, 0.000000e+00
  %.sroa.speculated.i.i167.1 = select i1 %i.un, double 0.000000e+00, double %i.um
  %i.uo = call double @llvm.round.f64(double %.sroa.speculated.i.i167.1)
  %i.up = fptosi double %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.up, ptr %i.uq, align 8, !tbaa !23
  %exitcond.not.i169.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i169.1, label %.preheader.i171, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.us = load double, ptr %i.ur, align 8, !tbaa !16 ; 2 uses
  %i.ut = fcmp olt double %i.us, 0.000000e+00
  %.sroa.speculated.i.i167.2 = select i1 %i.ut, double 0.000000e+00, double %i.us
  %i.uu = call double @llvm.round.f64(double %.sroa.speculated.i.i167.2)
  %i.uv = fptosi double %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.uv, ptr %i.uw, align 8, !tbaa !23
  %exitcond.not.i169.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i169.2, label %.preheader.i171, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !16 ; 2 uses
  %i.uz = fcmp olt double %i.uy, 0.000000e+00
  %.sroa.speculated.i.i167.3 = select i1 %i.uz, double 0.000000e+00, double %i.uy
  %i.va = call double @llvm.round.f64(double %.sroa.speculated.i.i167.3)
  %i.vb = fptosi double %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.vb, ptr %i.vc, align 8, !tbaa !23
  br label %.preheader.i171

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.preheader, %.lr.ph.i173
  %indvars.iv19.i174 = phi i64 [ %indvars.iv.next20.i175, %.lr.ph.i173 ], [ %indvars.iv19.i174.ph, %.lr.ph.i173.preheader ] ; 3 uses
  %i.vd = sub nuw nsw i64 %indvars.iv19.i174, %wide.trip.count.i164
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.vd
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !23
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv19.i174
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !23
  %indvars.iv.next20.i175 = add nuw nsw i64 %indvars.iv19.i174, 1 ; 2 uses
  %i.vh = icmp samesign ult i64 %indvars.iv.next20.i175, %i.tz
  br i1 %i.vh, label %.lr.ph.i173, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !83

bb.bp:                                            ; preds = %bb.g
  %wide.trip.count.i176 = zext nneg i32 %i.c to i64 ; 5 uses
  %i.vi = load double, ptr %0, align 8, !tbaa !16
  %i.vj = call double @llvm.round.f64(double %i.vi)
  %i.vk = fptosi double %i.vj to i64
  store i64 %i.vk, ptr %1, align 8, !tbaa !23
  %exitcond.not.i180 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i180, label %.preheader.i182, label %bb.bq

.preheader.i182:                                  ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp
  %i.vl = icmp slt i32 %i.c, %3
  br i1 %i.vl, label %.lr.ph.preheader.i183, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

.lr.ph.preheader.i183:                            ; preds = %.preheader.i182
  %i.vm = zext nneg i32 %3 to i64                 ; 2 uses
  %i.vn = and i32 %i.a, 127
  %i.vo = zext nneg i32 %i.vn to i64              ; 2 uses
  %i.vp = add nuw nsw i64 %i.vo, 2
  %i.vq = call i64 @llvm.umax.i64(i64 %i.vp, i64 %i.vm)
  %i.vr = xor i64 %i.vo, -1
  %i.vs = add nsw i64 %i.vq, %i.vr                ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.vs, 10
  br i1 %min.iters.check259, label %.lr.ph.i184.preheader, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph.preheader.i183
  %21 = shl nuw nsw i32 %i.a, 3
  %22 = and i32 %21, 1016
  %23 = or disjoint i32 %22, 7
  %diff.check257 = icmp samesign ult i32 %23, 31
  br i1 %diff.check257, label %.lr.ph.i184.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck256
  %n.vec261 = and i64 %i.vs, -4                   ; 3 uses
  %i.vt = add nsw i64 %n.vec261, %wide.trip.count.i176
  %invariant.gep545 = getelementptr [8 x i8], ptr %1, i64 %wide.trip.count.i176
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body262 ] ; 3 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index263 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %wide.load264 = load <2 x i64>, ptr %i.vu, align 8, !tbaa !23
  %wide.load265 = load <2 x i64>, ptr %i.vv, align 8, !tbaa !23
  %gep546 = getelementptr [8 x i8], ptr %invariant.gep545, i64 %index263 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %gep546, i64 16
  store <2 x i64> %wide.load264, ptr %gep546, align 8, !tbaa !23
  store <2 x i64> %wide.load265, ptr %i.vw, align 8, !tbaa !23
  %index.next266 = add nuw i64 %index263, 4       ; 2 uses
  %i.vx = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.vx, label %middle.block267, label %vector.body262, !llvm.loop !84

middle.block267:                                  ; preds = %vector.body262
  %cmp.n268 = icmp eq i64 %i.vs, %n.vec261
  br i1 %cmp.n268, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i184.preheader

.lr.ph.i184.preheader:                            ; preds = %vector.memcheck256, %.lr.ph.preheader.i183, %middle.block267
  %indvars.iv19.i185.ph = phi i64 [ %wide.trip.count.i176, %vector.memcheck256 ], [ %wide.trip.count.i176, %.lr.ph.preheader.i183 ], [ %i.vt, %middle.block267 ]
  br label %.lr.ph.i184

bb.bq:                                            ; preds = %bb.bp
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !16
  %i.wa = call double @llvm.round.f64(double %i.vz)
  %i.wb = fptosi double %i.wa to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.wb, ptr %i.wc, align 8, !tbaa !23
  %exitcond.not.i180.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i180.1, label %.preheader.i182, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.we = load double, ptr %i.wd, align 8, !tbaa !16
  %i.wf = call double @llvm.round.f64(double %i.we)
  %i.wg = fptosi double %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.wg, ptr %i.wh, align 8, !tbaa !23
  %exitcond.not.i180.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i180.2, label %.preheader.i182, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !16
  %i.wk = call double @llvm.round.f64(double %i.wj)
  %i.wl = fptosi double %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.wl, ptr %i.wm, align 8, !tbaa !23
  br label %.preheader.i182

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.preheader, %.lr.ph.i184
  %indvars.iv19.i185 = phi i64 [ %indvars.iv.next20.i186, %.lr.ph.i184 ], [ %indvars.iv19.i185.ph, %.lr.ph.i184.preheader ] ; 3 uses
  %i.wn = sub nuw nsw i64 %indvars.iv19.i185, %wide.trip.count.i176
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.wn
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !23
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv19.i185
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !23
  %indvars.iv.next20.i186 = add nuw nsw i64 %indvars.iv19.i185, 1 ; 2 uses
  %i.wr = icmp samesign ult i64 %indvars.iv.next20.i186, %i.vm
  br i1 %i.wr, label %.lr.ph.i184, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !85

bb.bt:                                            ; preds = %bb.g
  %wide.trip.count.i187 = zext nneg i32 %i.c to i64 ; 5 uses
  %i.ws = load double, ptr %0, align 8, !tbaa !16
  store double %i.ws, ptr %1, align 8, !tbaa !16
  %exitcond.not.i191 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i191, label %.preheader.i193, label %bb.bu

.preheader.i193:                                  ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %i.wt = icmp slt i32 %i.c, %3
  br i1 %i.wt, label %.lr.ph.preheader.i194, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit

.lr.ph.preheader.i194:                            ; preds = %.preheader.i193
  %i.wu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.wv = and i32 %i.a, 127
  %i.ww = zext nneg i32 %i.wv to i64              ; 2 uses
  %i.wx = add nuw nsw i64 %i.ww, 2
  %i.wy = call i64 @llvm.umax.i64(i64 %i.wx, i64 %i.wu)
  %i.wz = xor i64 %i.ww, -1
  %i.xa = add nsw i64 %i.wy, %i.wz                ; 3 uses
  %min.iters.check = icmp ult i64 %i.xa, 10
  br i1 %min.iters.check, label %.lr.ph.i195.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i194
  %24 = shl nuw nsw i32 %i.a, 3
  %25 = and i32 %24, 1016
  %26 = or disjoint i32 %25, 7
  %diff.check = icmp samesign ult i32 %26, 31
  br i1 %diff.check, label %.lr.ph.i195.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.xa, -4                      ; 3 uses
  %i.xb = add nsw i64 %n.vec, %wide.trip.count.i187
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %wide.trip.count.i187
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %wide.load = load <2 x double>, ptr %i.xc, align 8, !tbaa !16
  %wide.load255 = load <2 x double>, ptr %i.xd, align 8, !tbaa !16
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %wide.load, ptr %gep, align 8, !tbaa !16
  store <2 x double> %wide.load255, ptr %i.xe, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xf = icmp eq i64 %index.next, %n.vec
  br i1 %i.xf, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.xa, %n.vec
  br i1 %cmp.n, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, label %.lr.ph.i195.preheader

.lr.ph.i195.preheader:                            ; preds = %vector.memcheck, %.lr.ph.preheader.i194, %middle.block
  %indvars.iv19.i196.ph = phi i64 [ %wide.trip.count.i187, %vector.memcheck ], [ %wide.trip.count.i187, %.lr.ph.preheader.i194 ], [ %i.xb, %middle.block ]
  br label %.lr.ph.i195

bb.bu:                                            ; preds = %bb.bt
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !16
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.xh, ptr %i.xi, align 8, !tbaa !16
  %exitcond.not.i191.1 = icmp eq i32 %i.c, 2
  br i1 %exitcond.not.i191.1, label %.preheader.i193, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !16
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.xk, ptr %i.xl, align 8, !tbaa !16
  %exitcond.not.i191.2 = icmp eq i32 %i.c, 3
  br i1 %exitcond.not.i191.2, label %.preheader.i193, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !16
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.xn, ptr %i.xo, align 8, !tbaa !16
  br label %.preheader.i193

.lr.ph.i195:                                      ; preds = %.lr.ph.i195.preheader, %.lr.ph.i195
  %indvars.iv19.i196 = phi i64 [ %indvars.iv.next20.i197, %.lr.ph.i195 ], [ %indvars.iv19.i196.ph, %.lr.ph.i195.preheader ] ; 3 uses
  %i.xp = sub nuw nsw i64 %indvars.iv19.i196, %wide.trip.count.i187
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.xp
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !16
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv19.i196
  store double %i.xr, ptr %i.xs, align 8, !tbaa !16
  %indvars.iv.next20.i197 = add nuw nsw i64 %indvars.iv19.i196, 1 ; 2 uses
  %i.xt = icmp samesign ult i64 %indvars.iv.next20.i197, %i.wu
  br i1 %i.xt, label %.lr.ph.i195, label %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, !llvm.loop !87

bb.bx:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii, ptr noundef nonnull @.str.1, i32 noundef 114) #20
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.cb:                                            ; preds = %bb.by
  %i.xv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xw = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.xy = icmp eq ptr %i.xw, %i.xx
  br i1 %i.xy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.cb
  %i.xz = load i64, ptr %i.xx, align 8, !tbaa !14
  %i.ya = add i64 %i.xz, 1
  call void @_ZdlPvm(ptr noundef %i.xw, i64 noundef %i.ya) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.ca
  %.pn62 = phi { ptr, i32 } [ %i.xu, %bb.ca ], [ %i.xv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %i.xv, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ce

_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit: ; preds = %.lr.ph.i195, %.lr.ph.i184, %.lr.ph.i173, %.lr.ph.i161, %.lr.ph.i150, %.lr.ph.i139, %.lr.ph.i128, %.lr.ph.i117, %.lr.ph.i106, %.lr.ph.i95, %.lr.ph.i84, %.lr.ph.i73, %.lr.ph.i, %middle.block, %middle.block267, %middle.block281, %middle.block295, %middle.block309, %middle.block323, %middle.block338, %vec.epilog.middle.block, %middle.block361, %vec.epilog.middle.block375, %middle.block392, %vec.epilog.middle.block406, %middle.block423, %vec.epilog.middle.block437, %.preheader.i193, %.preheader.i182, %.preheader.i171, %.preheader.i159, %.preheader.i148, %.preheader.i137, %.preheader.i126, %.preheader.i115, %.preheader.i104, %.preheader.i93, %.preheader.i82, %.preheader.i71, %.preheader.i
  %i.yb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.yc, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.yd = landingpad { ptr, i32 }
          catch ptr null
  %i.ye = extractvalue { ptr, i32 } %i.yd, 0
  call void @__clang_call_terminate(ptr %i.ye) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cvL16scalarToRawData_IhEEvRKNS_7Scalar_IdEEPT_ii.exit, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn62.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !95
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !23
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.g = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !96
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
