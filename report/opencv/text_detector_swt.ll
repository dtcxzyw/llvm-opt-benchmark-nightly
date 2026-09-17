Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/text_detector_swt?download=true
inline.NumInlined: 2496
inline.NumDeleted: 1038
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"struct.std::nothrow_t" = type { i8 }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.15" = type { i8 }
%"struct.cv::text::(anonymous namespace)::Direction" = type { float, float }
%"class.std::vector.99" = type { %"struct.std::_Vector_base.100" }
%"struct.std::_Vector_base.100" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::ChainedComponent, std::allocator<cv::text::(anonymous namespace)::ChainedComponent>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::ChainedComponent, std::allocator<cv::text::(anonymous namespace)::ChainedComponent>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::ChainedComponent, std::allocator<cv::text::(anonymous namespace)::ChainedComponent>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::ChainedComponent, std::allocator<cv::text::(anonymous namespace)::ChainedComponent>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.cv::text::(anonymous namespace)::ChainedComponent" = type <{ i32, i32, %"class.std::vector.49", float, %"struct.cv::text::(anonymous namespace)::Direction", i8, [3 x i8] }>
%"class.std::vector.49" = type { %"struct.std::_Vector_base.50" }
%"struct.std::_Vector_base.50" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::vector<cv::text::(anonymous namespace)::SWTPoint>, std::allocator<std::vector<cv::text::(anonymous namespace)::SWTPoint>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<cv::text::(anonymous namespace)::SWTPoint>, std::allocator<std::vector<cv::text::(anonymous namespace)::SWTPoint>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<cv::text::(anonymous namespace)::SWTPoint>, std::allocator<std::vector<cv::text::(anonymous namespace)::SWTPoint>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<cv::text::(anonymous namespace)::SWTPoint>, std::allocator<std::vector<cv::text::(anonymous namespace)::SWTPoint>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::Component, std::allocator<cv::text::(anonymous namespace)::Component>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::Component, std::allocator<cv::text::(anonymous namespace)::Component>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::Component, std::allocator<cv::text::(anonymous namespace)::Component>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::Component, std::allocator<cv::text::(anonymous namespace)::Component>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::unordered_map.30" = type { %"class.std::_Hashtable.31" }
%"class.std::_Hashtable.31" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::vector.44" = type { %"struct.std::_Vector_base.45" }
%"struct.std::_Vector_base.45" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.cv::text::(anonymous namespace)::SWTPoint" = type { i32, i32, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::Ray, std::allocator<cv::text::(anonymous namespace)::Ray>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::Ray, std::allocator<cv::text::(anonymous namespace)::Ray>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::Ray, std::allocator<cv::text::(anonymous namespace)::Ray>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::Ray, std::allocator<cv::text::(anonymous namespace)::Ray>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.cv::text::(anonymous namespace)::Component" = type { %"struct.cv::text::(anonymous namespace)::SWTPoint", %"struct.cv::text::(anonymous namespace)::SWTPoint", float, float, float, float, i32, i32, %"class.std::vector.18" }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::SWTPoint, std::allocator<cv::text::(anonymous namespace)::SWTPoint>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::SWTPoint, std::allocator<cv::text::(anonymous namespace)::SWTPoint>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::text::(anonymous namespace)::SWTPoint, std::allocator<cv::text::(anonymous namespace)::SWTPoint>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::text::(anonymous namespace)::SWTPoint, std::allocator<cv::text::(anonymous namespace)::SWTPoint>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev = comdat any

$_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev = comdat any

$_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZZN2cv11_InputArrayC1INS_5Rect_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

@_ZN2cv4text12_GLOBAL__N_14BLUEE = internal unnamed_addr constant %"class.cv::Scalar_" { %"class.cv::Vec" { %"class.cv::Matx" { [4 x double] [double 2.550000e+02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00] } } }, align 8
@_ZN2cv4text12_GLOBAL__N_15GREENE = internal unnamed_addr constant %"class.cv::Scalar_" { %"class.cv::Vec" { %"class.cv::Matx" { [4 x double] [double 0.000000e+00, double 2.550000e+02, double 0.000000e+00, double 0.000000e+00] } } }, align 8
@_ZN2cv4text12_GLOBAL__N_13REDE = internal unnamed_addr constant %"class.cv::Scalar_" { %"class.cv::Vec" { %"class.cv::Matx" { [4 x double] [double 0.000000e+00, double 0.000000e+00, double 2.550000e+02, double 0.000000e+00] } } }, align 8
@_ZZN2cv4text13detectTextSWTERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EEbRKNS_12_OutputArrayESC_E15__cv_check__812 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str, ptr @.str.3, i32 812, i32 1, ptr @.str.4, ptr @.str.5, ptr @.str.6 }, align 8
@.str = private unnamed_addr constant [116 x i8] c"void cv::text::detectTextSWT(InputArray, std::vector<cv::Rect> &, bool, const _OutputArray &, const _OutputArray &)\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/text/src/text_detector_swt.cpp\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"input_.type()\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"CV_8UC3\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN2cv4text12_GLOBAL__N_117normalizeAndScaleERKNS_3MatERS2_E15__cv_check__236 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.11, ptr @.str.3, i32 236, i32 1, ptr @.str.4, ptr @.str.12, ptr @.str.13 }, align 8
@.str.11 = private unnamed_addr constant [76 x i8] c"void cv::text::(anonymous namespace)::normalizeAndScale(const Mat &, Mat &)\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"SWTImage.type()\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"CV_32FC1\00", align 1
@_ZZN2cv4text12_GLOBAL__N_117normalizeAndScaleERKNS_3MatERS2_E15__cv_check__237 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.11, ptr @.str.3, i32 237, i32 1, ptr @.str.4, ptr @.str.14, ptr @.str.15 }, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"output.type()\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CV_8UC1\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"!component.empty()\00", align 1
@__func__._ZN2cv4text12_GLOBAL__N_113getAttributesERKSt6vectorINS1_8SWTPointESaIS3_EERKNS_3MatE = private unnamed_addr constant [14 x i8] c"getAttributes\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"!compi.points.empty()\00", align 1
@__func__._ZN2cv4text12_GLOBAL__N_115findValidChainsERKNS_3MatES4_RKSt6vectorINS1_9ComponentESaIS6_EERKNS_12_OutputArrayERS5_INS_5Rect_IiEESaISF_EE = private unnamed_addr constant [16 x i8] c"findValidChains\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@_ZZN2cv11_InputArrayC1INS_5Rect_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr constant %"struct.cv::detail::CheckContext" { ptr @.str.22, ptr @.str.8, i32 174, i32 3, ptr @.str.23, ptr @.str.24, ptr @.str.25 }, comdat, align 8
@.str.22 = private unnamed_addr constant [78 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Rect_<int>]\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4text13detectTextSWTERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EEbRKNS_12_OutputArrayESC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 8 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %.sroa.2022.i.i = alloca <{ %"struct.cv::text::(anonymous namespace)::Direction", i8, [3 x i8] }>, align 8 ; 4 uses
  %.sroa.2012.i.i = alloca <{ %"struct.cv::text::(anonymous namespace)::Direction", i8, [3 x i8] }>, align 8 ; 4 uses
  %.sroa.16.i8.i.i = alloca <{ float, %"struct.cv::text::(anonymous namespace)::Direction", i8 }>, align 8 ; 4 uses
  %.sroa.20.i.i = alloca <{ %"struct.cv::text::(anonymous namespace)::Direction", i8, [3 x i8] }>, align 8 ; 4 uses
  %.sroa.16.i.i.i = alloca <{ float, %"struct.cv::text::(anonymous namespace)::Direction", i8 }>, align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %12 = alloca %"class.std::vector.99", align 8   ; 21 uses
  %13 = alloca %"struct.cv::text::(anonymous namespace)::ChainedComponent", align 8 ; 11 uses
  %14 = alloca %"class.std::vector.99", align 8   ; 12 uses
  %15 = alloca %"class.std::vector.99", align 8   ; 10 uses
  %16 = alloca %"class.std::vector.0", align 8    ; 13 uses
  %17 = alloca %"class.std::vector.5", align 8    ; 12 uses
  %18 = alloca %"class.std::vector.5", align 8    ; 6 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %24 = alloca %"class.std::stack", align 8       ; 21 uses
  %25 = alloca %"class.std::unordered_map", align 8 ; 23 uses
  %26 = alloca %"class.std::unordered_map.30", align 8 ; 14 uses
  %27 = alloca %"class.std::vector.44", align 8   ; 15 uses
  %28 = alloca %"struct.cv::text::(anonymous namespace)::SWTPoint", align 4 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %35 = alloca %"struct.cv::text::(anonymous namespace)::SWTPoint", align 4 ; 4 uses
  %36 = alloca %"struct.cv::text::(anonymous namespace)::SWTPoint", align 4 ; 4 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %38 = alloca %"class.cv::Scalar_", align 16     ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 18 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %45 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %46 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %47 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %51 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %53 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %54 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %55 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %56 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %57 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %59 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %60 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.std::vector", align 8      ; 14 uses
  %63 = alloca %"class.cv::Mat", align 8          ; 33 uses
  %64 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %65 = alloca %"class.std::vector.0", align 8    ; 20 uses
  %66 = alloca %"class.std::vector.5", align 8    ; 9 uses
  %67 = alloca %"class.std::vector.10", align 8   ; 15 uses
  %68 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.d = icmp eq i32 %i.c, 64
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.e, i32 noundef 64, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv4text13detectTextSWTERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EEbRKNS_12_OutputArrayESC_E15__cv_check__812) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.f = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !229
  %i.g = icmp eq i32 %i.f, 65536
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232, !noalias !229
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %i.i)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %41, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  %i.j = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !234
  store i32 16842752, ptr %43, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %41, ptr %i.l, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.m = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %44, align 8, !tbaa !235
  store ptr %42, ptr %i.m, align 8, !tbaa !232
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.g unwind label %bb.oz

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %45) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.o = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !233
  %i.p = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !234
  store i32 16842752, ptr %46, align 8, !tbaa !235
  %i.q = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %42, ptr %i.q, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  %i.r = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i64 0, ptr %i.s, align 8
  store i32 33619968, ptr %47, align 8, !tbaa !235
  store ptr %45, ptr %i.r, align 8, !tbaa !232
  invoke void @_ZN2cv5CannyERKNS_11_InputArrayERKNS_12_OutputArrayEddib(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, double noundef 1.750000e+02, double noundef 3.200000e+02, i32 noundef 3, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.pa

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %48) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.t = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %49, align 8, !tbaa !235
  store ptr %48, ptr %i.t, align 8, !tbaa !232
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(24) %49, i32 noundef 5, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.i unwind label %bb.pb

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %50) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %51) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  %i.v = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !233
  %i.w = getelementptr inbounds nuw i8, ptr %52, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !234
  store i32 16842752, ptr %52, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %48, ptr %i.x, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.y = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 33619968, ptr %53, align 8, !tbaa !235
  store ptr %48, ptr %i.y, align 8, !tbaa !232
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53, i64 21474836485, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 4, i32 noundef 0)
          to label %bb.j unwind label %bb.pc

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %54, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !234
  store i32 16842752, ptr %54, align 8, !tbaa !235
  %i.ac = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %48, ptr %i.ac, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 33619968, ptr %55, align 8, !tbaa !235
  store ptr %50, ptr %i.ad, align 8, !tbaa !232
  invoke void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, i32 noundef -1, i32 noundef 1, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.k unwind label %bb.pd

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  %i.af = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i32 0, ptr %i.af, align 8, !tbaa !233
  %i.ag = getelementptr inbounds nuw i8, ptr %56, i64 20
  store i32 0, ptr %i.ag, align 4, !tbaa !234
  store i32 16842752, ptr %56, align 8, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %48, ptr %i.ah, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 0, ptr %i.aj, align 8
end_hunk_0
begin_hunk_1_@_ZN2cv4text13detectTextSWTERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EEbRKNS_12_OutputArrayESC_:bb.a
  br i1 %i.bae, label %bb.id, label %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

bb.id:                                            ; preds = %.noexc495.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bac, ptr align 4 %.sroa.095.1283.i, i64 %i.azt, i1 false), !noalias !261
  br label %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.id, %.noexc495.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.1283.i, i64 noundef %i.azt) #24, !noalias !261
  %i.baf = getelementptr inbounds nuw [12 x i8], ptr %i.bac, i64 %i.baa
  br label %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE9push_backERKS3_.exit.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.0347274.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.bbo, %.lr.ph.split.i ] ; 3 uses
  %.sroa.15.0273.i = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader.new ], [ %i.bbn, %.lr.ph.split.i ]
  %i.bag = phi <2 x float> [ zeroinitializer, %.lr.ph.split.i.preheader.new ], [ %i.bbj, %.lr.ph.split.i ]
  %niter1572 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter1572.next.1, %.lr.ph.split.i ]
  %i.bah = getelementptr inbounds nuw [12 x i8], ptr %.val422.i, i64 %.0347274.i ; 2 uses
  %i.bai = load i32, ptr %i.bah, align 4, !tbaa !50, !noalias !261
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bah, i64 4
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !49, !noalias !261
  %i.bal = mul nsw i32 %i.bai, 3
  %i.bam = sext i32 %i.bak to i64
  %i.ban = mul i64 %i.awy, %i.bam
  %.sink.i.i144 = getelementptr inbounds nuw i8, ptr %i.awx, i64 %i.ban
  %i.bao = sext i32 %i.bal to i64
  %i.bap = getelementptr i8, ptr %.sink.i.i144, i64 %i.bao ; 2 uses
  %i.baq = load <2 x i8>, ptr %i.bap, align 1, !tbaa !35, !noalias !261
  %i.bar = uitofp <2 x i8> %i.baq to <2 x float>
  %i.bas = fadd <2 x float> %i.bag, %i.bar
  %i.bat = getelementptr i8, ptr %i.bap, i64 2
  %i.bau = load i8, ptr %i.bat, align 1, !tbaa !35, !noalias !261
  %i.bav = uitofp i8 %i.bau to float
  %i.baw = fadd float %.sroa.15.0273.i, %i.bav
  %i.bax = getelementptr inbounds nuw [12 x i8], ptr %.val422.i, i64 %.0347274.i ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 12
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !50, !noalias !261
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 16
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !49, !noalias !261
  %i.bbc = mul nsw i32 %i.baz, 3
  %i.bbd = sext i32 %i.bbb to i64
  %i.bbe = mul i64 %i.awy, %i.bbd
  %.sink.i.i144.1 = getelementptr inbounds nuw i8, ptr %i.awx, i64 %i.bbe
  %i.bbf = sext i32 %i.bbc to i64
  %i.bbg = getelementptr i8, ptr %.sink.i.i144.1, i64 %i.bbf ; 2 uses
  %i.bbh = load <2 x i8>, ptr %i.bbg, align 1, !tbaa !35, !noalias !261
  %i.bbi = uitofp <2 x i8> %i.bbh to <2 x float>
  %i.bbj = fadd <2 x float> %i.bas, %i.bbi        ; 3 uses
  %i.bbk = getelementptr i8, ptr %i.bbg, i64 2
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !35, !noalias !261
  %i.bbm = uitofp i8 %i.bbl to float
  %i.bbn = fadd float %i.baw, %i.bbm              ; 3 uses
  %i.bbo = add nuw i64 %.0347274.i, 2             ; 2 uses
  %niter1572.next.1 = add i64 %niter1572, 2       ; 2 uses
  %niter1572.ncmp.1 = icmp eq i64 %niter1572.next.1, %unroll_iter1571
  br i1 %niter1572.ncmp.1, label %._crit_edge.i146.loopexit1409.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !184

_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ia
  %.sroa.30.2.i = phi ptr [ %i.baf, %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.30.1281.i, %bb.ia ] ; 8 uses
  %.pn131.i = phi ptr [ %i.bad, %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.23.1282.i, %bb.ia ]
  %.sroa.095.2.i = phi ptr [ %i.bac, %_ZNSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.095.1283.i, %bb.ia ] ; 10 uses
  %.sroa.23.2.i = getelementptr inbounds nuw i8, ptr %.pn131.i, i64 12
  %i.bbp = add nuw i64 %.0342284.i, 1             ; 2 uses
  %exitcond420.not.i = icmp eq i64 %i.bbp, %i.avy
  br i1 %exitcond420.not.i, label %._crit_edge286.i, label %bb.hu, !llvm.loop !185

.loopexit174.i:                                   ; preds = %_ZNKSt6vectorIN2cv4text12_GLOBAL__N_114ChannelAverageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit176.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

.loopexit.split-lp175.i:                          ; preds = %bb.ic
  %lpad.loopexit.split-lp177.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

.loopexit167.i:                                   ; preds = %bb.jb, %.split.i
  %exitcond423.not.i = icmp eq i64 %i.bix, %i.avy
  br i1 %exitcond423.not.i, label %._crit_edge296.i, label %.split.i, !llvm.loop !186

._crit_edge296.i:                                 ; preds = %.loopexit167.i
  %.val451.pre.i = load ptr, ptr %12, align 8, !tbaa !114, !noalias !261 ; 21 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %.val454.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !114, !noalias !261 ; 10 uses
  %.not.i.i.i149 = icmp eq ptr %.val451.pre.i, %.val454.pre.i
  br i1 %.not.i.i.i149, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEEPFbRKS5_SC_EEvT_SF_T0_.exit.i, label %bb.ie

bb.ie:                                            ; preds = %._crit_edge296.i
  %i.bbq = ptrtoint ptr %.val454.pre.i to i64
  %i.bbr = ptrtoint ptr %.val451.pre.i to i64     ; 2 uses
  %i.bbs = sub i64 %i.bbq, %i.bbr                 ; 2 uses
  %i.bbt = sdiv exact i64 %i.bbs, 48
  %i.bbu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bbt, i1 true)
  %i.bbv = shl nuw nsw i64 %i.bbu, 1
  %i.bbw = xor i64 %i.bbv, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_T1_(ptr %.val451.pre.i, ptr %.val454.pre.i, i64 noundef %i.bbw, ptr nonnull @_ZN2cv4text12_GLOBAL__N_113chainSortDistERKNS1_16ChainedComponentES4_)
          to label %.noexc500.i unwind label %bb.jc, !noalias !261

.noexc500.i:                                      ; preds = %bb.ie
  %i.bbx = icmp sgt i64 %i.bbs, 768
  br i1 %i.bbx, label %bb.if, label %.preheader.i.i.i

bb.if:                                            ; preds = %.noexc500.i
  %i.bby = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 8 ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 24 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 32 ; 2 uses
  br label %bb.ig

bb.ig:                                            ; preds = %bb.il, %bb.if
  %.sroa.023.031.i13.idx.i.i = phi i64 [ 48, %bb.if ], [ %.sroa.023.031.i13.add.i.i, %bb.il ] ; 3 uses
  %.pn30.i14.i.i = phi ptr [ %.val451.pre.i, %bb.if ], [ %.sroa.023.031.i13.ptr.i.i, %bb.il ] ; 4 uses
  %.sroa.023.031.i13.ptr.i.i = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 %.sroa.023.031.i13.idx.i.i ; 12 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i13.ptr.i.i, i64 32
  %i.bcc = load float, ptr %i.bcb, align 8, !tbaa !121, !noalias !261 ; 4 uses
  %i.bcd = load float, ptr %i.bca, align 8, !tbaa !121, !noalias !261
  %i.bce = fcmp olt float %i.bcc, %i.bcd
  br i1 %i.bce, label %.lr.ph.preheader.i.i.i.i.i.i20.i.i, label %bb.ij

.lr.ph.preheader.i.i.i.i.i.i20.i.i:               ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i8.i.i)
  %i.bcf = load i64, ptr %.sroa.023.031.i13.ptr.i.i, align 8, !noalias !261
  %i.bcg = getelementptr inbounds nuw i8, ptr %.pn30.i14.i.i, i64 56 ; 2 uses
  %i.bch = load <2 x ptr>, ptr %i.bcg, align 8, !tbaa !93, !noalias !261
  %i.bci = getelementptr inbounds nuw i8, ptr %.pn30.i14.i.i, i64 72
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !107, !noalias !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcg, i8 0, i64 24, i1 false), !noalias !261
  %i.bck = getelementptr inbounds nuw i8, ptr %.pn30.i14.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.16.i8.i.i, ptr noundef nonnull align 8 dereferenceable(13) %i.bck, i64 13, i1 false), !noalias !261
  %i.bcl = getelementptr inbounds nuw i8, ptr %.pn30.i14.i.i, i64 96
  %i.bcm = udiv exact i64 %.sroa.023.031.i13.idx.i.i, 48
  br label %.lr.ph.i.i.i.i.i.i21.i.i

.lr.ph.i.i.i.i.i.i21.i.i:                         ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i, %.lr.ph.preheader.i.i.i.i.i.i20.i.i
  %.010.i.i.i.i.i.i22.i.i = phi i64 [ %i.bdd, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i ], [ %i.bcm, %.lr.ph.preheader.i.i.i.i.i.i20.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i23.i.i = phi ptr [ %i.bco, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i ], [ %i.bcl, %.lr.ph.preheader.i.i.i.i.i.i20.i.i ] ; 4 uses
  %.078.i.i.i.i.i.i24.i.i = phi ptr [ %i.bcn, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i ], [ %.sroa.023.031.i13.ptr.i.i, %.lr.ph.preheader.i.i.i.i.i.i20.i.i ] ; 4 uses
  %i.bcn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i24.i.i, i64 -48 ; 2 uses
  %i.bco = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i23.i.i, i64 -48 ; 2 uses
  %i.bcp = load i64, ptr %i.bcn, align 8, !noalias !261
  store i64 %i.bcp, ptr %i.bco, align 8, !noalias !261
  %i.bcq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i23.i.i, i64 -40 ; 2 uses
  %i.bcr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i24.i.i, i64 -40 ; 2 uses
  %i.bcs = load ptr, ptr %i.bcq, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i23.i.i, i64 -24 ; 2 uses
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !107, !noalias !261
  %i.bcv = load <2 x ptr>, ptr %i.bcr, align 8, !tbaa !93, !noalias !261
  store <2 x ptr> %i.bcv, ptr %i.bcq, align 8, !tbaa !93, !noalias !261
  %i.bcw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i24.i.i, i64 -24
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !107, !noalias !261
  store ptr %i.bcx, ptr %i.bct, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i.i.i.i.i.i25.i.i = icmp eq ptr %i.bcs, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcr, i8 0, i64 24, i1 false), !noalias !261
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i25.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.i.i.i.i.i.i21.i.i
  %i.bcy = ptrtoint ptr %i.bcu to i64
  %i.bcz = ptrtoint ptr %i.bcs to i64
  %i.bda = sub i64 %i.bcy, %i.bcz
  call void @_ZdlPvm(ptr noundef nonnull %i.bcs, i64 noundef %i.bda) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i: ; preds = %bb.ih, %.lr.ph.i.i.i.i.i.i21.i.i
  %i.bdb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i23.i.i, i64 -16
  %i.bdc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i24.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bdb, ptr noundef nonnull align 8 dereferenceable(13) %i.bdc, i64 13, i1 false), !noalias !261
  %i.bdd = add nsw i64 %.010.i.i.i.i.i.i22.i.i, -1
  %i.bde = icmp sgt i64 %.010.i.i.i.i.i.i22.i.i, 1
  br i1 %i.bde, label %.lr.ph.i.i.i.i.i.i21.i.i, label %.loopexit.i17.i.i, !llvm.loop !4

.loopexit.i17.i.i:                                ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i26.i.i
  store i64 %i.bcf, ptr %.val451.pre.i, align 8, !noalias !261
  %i.bdf = load ptr, ptr %i.bby, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bdg = load ptr, ptr %i.bbz, align 8, !tbaa !107, !noalias !261
  store <2 x ptr> %i.bch, ptr %i.bby, align 8, !tbaa !93, !noalias !261
  store ptr %i.bcj, ptr %i.bbz, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i18.i.i = icmp eq ptr %i.bdf, null
  br i1 %.not.i.i.i.i.i.i.i18.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i19.i.i, label %bb.ii

bb.ii:                                            ; preds = %.loopexit.i17.i.i
  %i.bdh = ptrtoint ptr %i.bdg to i64
  %i.bdi = ptrtoint ptr %i.bdf to i64
  %i.bdj = sub i64 %i.bdh, %i.bdi
  call void @_ZdlPvm(ptr noundef nonnull %i.bdf, i64 noundef %i.bdj) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i19.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i19.i.i: ; preds = %bb.ii, %.loopexit.i17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bca, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.16.i8.i.i, i64 13, i1 false), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i8.i.i)
  br label %bb.il

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2022.i.i)
  %i.bdk = load i64, ptr %.sroa.023.031.i13.ptr.i.i, align 8, !noalias !261
  %i.bdl = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i13.ptr.i.i, i64 8 ; 3 uses
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !98, !noalias !261 ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i13.ptr.i.i, i64 16 ; 2 uses
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !97, !noalias !261 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i13.ptr.i.i, i64 24 ; 2 uses
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !107, !noalias !261 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bdl, i8 0, i64 24, i1 false), !noalias !261
  %.sroa.2022.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i13.ptr.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.2022.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.2022.32..sroa_idx.i.i, i64 9, i1 false), !noalias !261
  %i.bdr = getelementptr inbounds i8, ptr %.sroa.023.031.i13.ptr.i.i, i64 -16
  %i.bds = load float, ptr %i.bdr, align 8, !tbaa !121, !noalias !261
  %i.bdt = fcmp olt float %i.bcc, %i.bds
  br i1 %i.bdt, label %.lr.ph32.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.thread.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.thread.i.i: ; preds = %bb.ij
  store ptr %i.bdm, ptr %i.bdl, align 8, !tbaa !98, !noalias !261
  store ptr %i.bdo, ptr %i.bdn, align 8, !tbaa !97, !noalias !261
  store ptr %i.bdq, ptr %i.bdp, align 8, !tbaa !107, !noalias !261
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit59.i.i

.lr.ph32.i.i:                                     ; preds = %bb.ij, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i58.i.i
  %.sroa.015.0.i4430.i.i = phi ptr [ %.sroa.0.0.i4531.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i58.i.i ], [ %.sroa.023.031.i13.ptr.i.i, %bb.ij ] ; 11 uses
  %.sroa.0.0.i4531.i.i = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -48 ; 5 uses
  %i.bdu = load i64, ptr %.sroa.0.0.i4531.i.i, align 8, !noalias !261
  store i64 %i.bdu, ptr %.sroa.015.0.i4430.i.i, align 8, !noalias !261
  %i.bdv = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i4430.i.i, i64 8 ; 2 uses
  %i.bdw = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -40 ; 4 uses
  %i.bdx = load ptr, ptr %i.bdv, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i4430.i.i, i64 24 ; 2 uses
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !107, !noalias !261
  %i.bea = load <2 x ptr>, ptr %i.bdw, align 8, !tbaa !93, !noalias !261
  store <2 x ptr> %i.bea, ptr %i.bdv, align 8, !tbaa !93, !noalias !261
  %i.beb = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -24
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !107, !noalias !261
  store ptr %i.bec, ptr %i.bdy, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i57.i.i = icmp eq ptr %i.bdx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bdw, i8 0, i64 24, i1 false), !noalias !261
  br i1 %.not.i.i.i.i.i.i.i57.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i58.i.i, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph32.i.i
  %i.bed = ptrtoint ptr %i.bdz to i64
  %i.bee = ptrtoint ptr %i.bdx to i64
  %i.bef = sub i64 %i.bed, %i.bee
  call void @_ZdlPvm(ptr noundef nonnull %i.bdx, i64 noundef %i.bef) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i58.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i58.i.i: ; preds = %bb.ik, %.lr.ph32.i.i
  %i.beg = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i4430.i.i, i64 32
  %i.beh = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.beg, ptr noundef nonnull align 8 dereferenceable(13) %i.beh, i64 13, i1 false), !noalias !261
  %i.bei = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -64
  %i.bej = load float, ptr %i.bei, align 8, !tbaa !121, !noalias !261
  %i.bek = fcmp olt float %i.bcc, %i.bej
  br i1 %i.bek, label %.lr.ph32.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.i.i, !llvm.loop !5

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.i.i: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i58.i.i
  %i.bel = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -32
  %i.bem = getelementptr inbounds i8, ptr %.sroa.015.0.i4430.i.i, i64 -24 ; 2 uses
  %.pre43.i.i = load ptr, ptr %i.bdw, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %.pre45.i.i = load ptr, ptr %i.bem, align 8, !tbaa !107, !noalias !261
  store i64 %i.bdk, ptr %.sroa.0.0.i4531.i.i, align 8, !noalias !261
  store ptr %i.bdm, ptr %i.bdw, align 8, !tbaa !98, !noalias !261
  store ptr %i.bdo, ptr %i.bel, align 8, !tbaa !97, !noalias !261
  store ptr %i.bdq, ptr %i.bem, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i9.i51.i.i = icmp eq ptr %.pre43.i.i, null
  br i1 %.not.i.i.i.i.i.i9.i51.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit59.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i52.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i52.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.i.i
  %i.ben = ptrtoint ptr %.pre45.i.i to i64
  %i.beo = ptrtoint ptr %.pre43.i.i to i64
  %i.bep = sub i64 %i.ben, %i.beo
  call void @_ZdlPvm(ptr noundef nonnull %.pre43.i.i, i64 noundef %i.bep) #24, !noalias !261
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit59.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit59.i.i: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i52.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.thread.i.i
  %.sroa.0.0.i4531.lcssa.sink.i.i = phi ptr [ %.sroa.0.0.i4531.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i52.i.i ], [ %.sroa.023.031.i13.ptr.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.thread.i.i ], [ %.sroa.0.0.i4531.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i50._crit_edge.i.i ] ; 2 uses
  %.sroa.2022.32..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4531.lcssa.sink.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.2022.32..sroa_idx23.i.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.2022.i.i, i64 9, i1 false), !noalias !261
  %i.beq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4531.lcssa.sink.i.i, i64 32
  store float %i.bcc, ptr %i.beq, align 8, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2022.i.i)
  br label %bb.il

bb.il:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit59.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i19.i.i
  %.sroa.023.031.i13.add.i.i = add nuw nsw i64 %.sroa.023.031.i13.idx.i.i, 48 ; 2 uses
  %.not.i16.i.i = icmp eq i64 %.sroa.023.031.i13.add.i.i, 768
  br i1 %.not.i16.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_.exit27.i.i, label %bb.ig, !llvm.loop !6

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_.exit27.i.i: ; preds = %bb.il
  %i.ber = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 768 ; 2 uses
  %.not7.i.i.i.i.i193 = icmp eq ptr %i.ber, %.val454.pre.i
  br i1 %.not7.i.i.i.i.i193, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEEPFbRKS5_SC_EEvT_SF_T0_.exit.i, label %.lr.ph.i.i.i.i.i194

.lr.ph.i.i.i.i.i194:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_.exit27.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit.i.i
  %.sroa.0.08.i.i.i.i.i195 = phi ptr [ %i.bga, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit.i.i ], [ %i.ber, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_T0_.exit27.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i.i)
  %i.bes = load i64, ptr %.sroa.0.08.i.i.i.i.i195, align 8, !noalias !261
  %i.bet = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 8 ; 3 uses
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !98, !noalias !261 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 16 ; 2 uses
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !97, !noalias !261 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 24 ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !107, !noalias !261 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bet, i8 0, i64 24, i1 false), !noalias !261
  %i.bez = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 32
  %.sroa.16.32.copyload.i.i = load float, ptr %i.bez, align 8, !noalias !261 ; 3 uses
  %.sroa.20.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.20.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.20.32..sroa_idx.i.i, i64 9, i1 false), !noalias !261
  %i.bfa = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 -16
  %i.bfb = load float, ptr %i.bfa, align 8, !tbaa !121, !noalias !261
  %i.bfc = fcmp olt float %.sroa.16.32.copyload.i.i, %i.bfb
  br i1 %i.bfc, label %.lr.ph37.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.thread.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i194
  store ptr %i.beu, ptr %i.bet, align 8, !tbaa !98, !noalias !261
  store ptr %i.bew, ptr %i.bev, align 8, !tbaa !97, !noalias !261
  store ptr %i.bey, ptr %i.bex, align 8, !tbaa !107, !noalias !261
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit.i.i

.lr.ph37.i.i:                                     ; preds = %.lr.ph.i.i.i.i.i194, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i
  %.sroa.015.0.i35.i.i = phi ptr [ %.sroa.0.0.i36.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i ], [ %.sroa.0.08.i.i.i.i.i195, %.lr.ph.i.i.i.i.i194 ] ; 11 uses
  %.sroa.0.0.i36.i.i = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -48 ; 5 uses
  %i.bfd = load i64, ptr %.sroa.0.0.i36.i.i, align 8, !noalias !261
  store i64 %i.bfd, ptr %.sroa.015.0.i35.i.i, align 8, !noalias !261
  %i.bfe = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i35.i.i, i64 8 ; 2 uses
  %i.bff = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -40 ; 4 uses
  %i.bfg = load ptr, ptr %i.bfe, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i35.i.i, i64 24 ; 2 uses
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !107, !noalias !261
  %i.bfj = load <2 x ptr>, ptr %i.bff, align 8, !tbaa !93, !noalias !261
  store <2 x ptr> %i.bfj, ptr %i.bfe, align 8, !tbaa !93, !noalias !261
  %i.bfk = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -24
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !107, !noalias !261
  store ptr %i.bfl, ptr %i.bfh, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i7.i.i = icmp eq ptr %i.bfg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bff, i8 0, i64 24, i1 false), !noalias !261
  br i1 %.not.i.i.i.i.i.i.i7.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i, label %bb.im

bb.im:                                            ; preds = %.lr.ph37.i.i
  %i.bfm = ptrtoint ptr %i.bfi to i64
  %i.bfn = ptrtoint ptr %i.bfg to i64
  %i.bfo = sub i64 %i.bfm, %i.bfn
  call void @_ZdlPvm(ptr noundef nonnull %i.bfg, i64 noundef %i.bfo) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i: ; preds = %bb.im, %.lr.ph37.i.i
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i35.i.i, i64 32
  %i.bfq = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bfp, ptr noundef nonnull align 8 dereferenceable(13) %i.bfq, i64 13, i1 false), !noalias !261
  %i.bfr = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -64
  %i.bfs = load float, ptr %i.bfr, align 8, !tbaa !121, !noalias !261
  %i.bft = fcmp olt float %.sroa.16.32.copyload.i.i, %i.bfs
  br i1 %i.bft, label %.lr.ph37.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.i.i, !llvm.loop !5

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.i.i: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i
  %i.bfu = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -32
  %i.bfv = getelementptr inbounds i8, ptr %.sroa.015.0.i35.i.i, i64 -24 ; 2 uses
  %.pre47.i.i = load ptr, ptr %i.bff, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %.pre49.i.i = load ptr, ptr %i.bfv, align 8, !tbaa !107, !noalias !261
  store i64 %i.bes, ptr %.sroa.0.0.i36.i.i, align 8, !noalias !261
  store ptr %i.beu, ptr %i.bff, align 8, !tbaa !98, !noalias !261
  store ptr %i.bew, ptr %i.bfu, align 8, !tbaa !97, !noalias !261
  store ptr %i.bey, ptr %i.bfv, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i9.i.i.i = icmp eq ptr %.pre47.i.i, null
  br i1 %.not.i.i.i.i.i.i9.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.i.i
  %i.bfw = ptrtoint ptr %.pre49.i.i to i64
  %i.bfx = ptrtoint ptr %.pre47.i.i to i64
  %i.bfy = sub i64 %i.bfw, %i.bfx
  call void @_ZdlPvm(ptr noundef nonnull %.pre47.i.i, i64 noundef %i.bfy) #24, !noalias !261
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit.i.i: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.thread.i.i
  %.sroa.0.0.i36.lcssa.sink.i.i = phi ptr [ %.sroa.0.0.i36.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i.i.i ], [ %.sroa.0.08.i.i.i.i.i195, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.thread.i.i ], [ %.sroa.0.0.i36.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i._crit_edge.i.i ] ; 2 uses
  %.sroa.20.32..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa.sink.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.20.32..sroa_idx3.i.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.20.i.i, i64 9, i1 false), !noalias !261
  %i.bfz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa.sink.i.i, i64 32
  store float %.sroa.16.32.copyload.i.i, ptr %i.bfz, align 8, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i)
  %i.bga = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i195, i64 48 ; 2 uses
  %.not.i.i.i.i.i196 = icmp eq ptr %i.bga, %.val454.pre.i
  br i1 %.not.i.i.i.i.i196, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEEPFbRKS5_SC_EEvT_SF_T0_.exit.i, label %.lr.ph.i.i.i.i.i194, !llvm.loop !187

.preheader.i.i.i:                                 ; preds = %.noexc500.i
  %.sroa.023.028.i.i.i = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 48 ; 2 uses
  %.not29.i.i.i = icmp eq ptr %.sroa.023.028.i.i.i, %.val454.pre.i
  br i1 %.not29.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEEPFbRKS5_SC_EEvT_SF_T0_.exit.i, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %.preheader.i.i.i
  %i.bgb = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 8 ; 2 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 24 ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %.val451.pre.i, i64 32 ; 2 uses
  br label %bb.in

bb.in:                                            ; preds = %bb.it, %.lr.ph.i.i.i150
  %.sroa.023.031.i.i.i = phi ptr [ %.sroa.023.028.i.i.i, %.lr.ph.i.i.i150 ], [ %.sroa.023.0.i.i.i, %bb.it ] ; 14 uses
  %.pn30.i.i.i = phi ptr [ %.val451.pre.i, %.lr.ph.i.i.i150 ], [ %.sroa.023.031.i.i.i, %bb.it ] ; 4 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i.i.i, i64 32
  %i.bgf = load float, ptr %i.bge, align 8, !tbaa !121, !noalias !261 ; 4 uses
  %i.bgg = load float, ptr %i.bgd, align 8, !tbaa !121, !noalias !261
  %i.bgh = fcmp olt float %i.bgf, %i.bgg
  br i1 %i.bgh, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i)
  %i.bgi = load i64, ptr %.sroa.023.031.i.i.i, align 8, !noalias !261
  %i.bgj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i, i64 56 ; 2 uses
  %i.bgk = load <2 x ptr>, ptr %i.bgj, align 8, !tbaa !93, !noalias !261
  %i.bgl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i, i64 72
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !107, !noalias !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgj, i8 0, i64 24, i1 false), !noalias !261
  %i.bgn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.16.i.i.i, ptr noundef nonnull align 8 dereferenceable(13) %i.bgn, i64 13, i1 false), !noalias !261
  %i.bgo = ptrtoint ptr %.sroa.023.031.i.i.i to i64
  %i.bgp = sub i64 %i.bgo, %i.bbr                 ; 2 uses
  %i.bgq = icmp sgt i64 %i.bgp, 0
  br i1 %i.bgq, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i192

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.io
  %i.bgr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i, i64 96
  %i.bgs = udiv exact i64 %i.bgp, 48
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.bhj, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i ], [ %i.bgs, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.bgu, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i ], [ %i.bgr, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.bgt, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.023.031.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bgt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.bgu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.bgv = load i64, ptr %i.bgt, align 8, !noalias !261
  store i64 %i.bgv, ptr %i.bgu, align 8, !noalias !261
  %i.bgw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bgx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bgy = load ptr, ptr %i.bgw, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bgz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !107, !noalias !261
  %i.bhb = load <2 x ptr>, ptr %i.bgx, align 8, !tbaa !93, !noalias !261
  store <2 x ptr> %i.bhb, ptr %i.bgw, align 8, !tbaa !93, !noalias !261
  %i.bhc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -24
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !107, !noalias !261
  store ptr %i.bhd, ptr %i.bgz, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bgy, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgx, i8 0, i64 24, i1 false), !noalias !261
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i, label %bb.ip

bb.ip:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bhe = ptrtoint ptr %i.bha to i64
  %i.bhf = ptrtoint ptr %i.bgy to i64
  %i.bhg = sub i64 %i.bhe, %i.bhf
  call void @_ZdlPvm(ptr noundef nonnull %i.bgy, i64 noundef %i.bhg) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ip, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bhh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -16
  %i.bhi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bhh, ptr noundef nonnull align 8 dereferenceable(13) %i.bhi, i64 13, i1 false), !noalias !261
  %i.bhj = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.bhk = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.bhk, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i192, !llvm.loop !4

.loopexit.i.i.i192:                               ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i.i.i.i, %bb.io
  store i64 %i.bgi, ptr %.val451.pre.i, align 8, !noalias !261
  %i.bhl = load ptr, ptr %i.bgb, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bhm = load ptr, ptr %i.bgc, align 8, !tbaa !107, !noalias !261
  store <2 x ptr> %i.bgk, ptr %i.bgb, align 8, !tbaa !93, !noalias !261
  store ptr %i.bgm, ptr %i.bgc, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bhl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %.loopexit.i.i.i192
  %i.bhn = ptrtoint ptr %i.bhm to i64
  %i.bho = ptrtoint ptr %i.bhl to i64
  %i.bhp = sub i64 %i.bhn, %i.bho
  call void @_ZdlPvm(ptr noundef nonnull %i.bhl, i64 noundef %i.bhp) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i.i.i: ; preds = %bb.iq, %.loopexit.i.i.i192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bgd, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.16.i.i.i, i64 13, i1 false), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  br label %bb.it

bb.ir:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2012.i.i)
  %i.bhq = load i64, ptr %.sroa.023.031.i.i.i, align 8, !noalias !261
  %i.bhr = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i.i.i, i64 8 ; 3 uses
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !98, !noalias !261 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i.i.i, i64 16 ; 2 uses
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !97, !noalias !261 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i.i.i, i64 24 ; 2 uses
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !107, !noalias !261 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhr, i8 0, i64 24, i1 false), !noalias !261
  %.sroa.2012.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.2012.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.2012.32..sroa_idx.i.i, i64 9, i1 false), !noalias !261
  %i.bhx = getelementptr inbounds i8, ptr %.sroa.023.031.i.i.i, i64 -16
  %i.bhy = load float, ptr %i.bhx, align 8, !tbaa !121, !noalias !261
  %i.bhz = fcmp olt float %i.bgf, %i.bhy
  br i1 %i.bhz, label %.lr.ph.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.thread.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.thread.i.i: ; preds = %bb.ir
  store ptr %i.bhs, ptr %i.bhr, align 8, !tbaa !98, !noalias !261
  store ptr %i.bhu, ptr %i.bht, align 8, !tbaa !97, !noalias !261
  store ptr %i.bhw, ptr %i.bhv, align 8, !tbaa !107, !noalias !261
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit43.i.i

.lr.ph.i.i:                                       ; preds = %bb.ir, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i42.i.i
  %.sroa.015.0.i2827.i.i = phi ptr [ %.sroa.0.0.i2928.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i42.i.i ], [ %.sroa.023.031.i.i.i, %bb.ir ] ; 11 uses
  %.sroa.0.0.i2928.i.i = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -48 ; 5 uses
  %i.bia = load i64, ptr %.sroa.0.0.i2928.i.i, align 8, !noalias !261
  store i64 %i.bia, ptr %.sroa.015.0.i2827.i.i, align 8, !noalias !261
  %i.bib = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2827.i.i, i64 8 ; 2 uses
  %i.bic = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -40 ; 4 uses
  %i.bid = load ptr, ptr %i.bib, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2827.i.i, i64 24 ; 2 uses
  %i.bif = load ptr, ptr %i.bie, align 8, !tbaa !107, !noalias !261
  %i.big = load <2 x ptr>, ptr %i.bic, align 8, !tbaa !93, !noalias !261
  store <2 x ptr> %i.big, ptr %i.bib, align 8, !tbaa !93, !noalias !261
  %i.bih = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -24
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !107, !noalias !261
  store ptr %i.bii, ptr %i.bie, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i.i41.i.i = icmp eq ptr %i.bid, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bic, i8 0, i64 24, i1 false), !noalias !261
  br i1 %.not.i.i.i.i.i.i.i41.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i42.i.i, label %bb.is

bb.is:                                            ; preds = %.lr.ph.i.i
  %i.bij = ptrtoint ptr %i.bif to i64
  %i.bik = ptrtoint ptr %i.bid to i64
  %i.bil = sub i64 %i.bij, %i.bik
  call void @_ZdlPvm(ptr noundef nonnull %i.bid, i64 noundef %i.bil) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i42.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i42.i.i: ; preds = %bb.is, %.lr.ph.i.i
  %i.bim = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2827.i.i, i64 32
  %i.bin = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bim, ptr noundef nonnull align 8 dereferenceable(13) %i.bin, i64 13, i1 false), !noalias !261
  %i.bio = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -64
  %i.bip = load float, ptr %i.bio, align 8, !tbaa !121, !noalias !261
  %i.biq = fcmp olt float %i.bgf, %i.bip
  br i1 %i.biq, label %.lr.ph.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.i.i, !llvm.loop !5

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.i.i: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i42.i.i
  %i.bir = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -32
  %i.bis = getelementptr inbounds i8, ptr %.sroa.015.0.i2827.i.i, i64 -24 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.bic, align 8, !tbaa !98, !noalias !261 ; 3 uses
  %.pre41.i.i = load ptr, ptr %i.bis, align 8, !tbaa !107, !noalias !261
  store i64 %i.bhq, ptr %.sroa.0.0.i2928.i.i, align 8, !noalias !261
  store ptr %i.bhs, ptr %i.bic, align 8, !tbaa !98, !noalias !261
  store ptr %i.bhu, ptr %i.bir, align 8, !tbaa !97, !noalias !261
  store ptr %i.bhw, ptr %i.bis, align 8, !tbaa !107, !noalias !261
  %.not.i.i.i.i.i.i9.i35.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i.i9.i35.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit43.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i36.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i36.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.i.i
  %i.bit = ptrtoint ptr %.pre41.i.i to i64
  %i.biu = ptrtoint ptr %.pre.i.i to i64
  %i.biv = sub i64 %i.bit, %i.biu
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i, i64 noundef %i.biv) #24, !noalias !261
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit43.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit43.i.i: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i36.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.thread.i.i
  %.sroa.0.0.i2928.lcssa.sink.i.i = phi ptr [ %.sroa.0.0.i2928.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit10.i36.i.i ], [ %.sroa.023.031.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.thread.i.i ], [ %.sroa.0.0.i2928.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN2cv4text12_GLOBAL__N_116ChainedComponentES7_EEclIS5_NS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i34._crit_edge.i.i ] ; 2 uses
  %.sroa.2012.32..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2928.lcssa.sink.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.2012.32..sroa_idx13.i.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.2012.i.i, i64 9, i1 false), !noalias !261
  %i.biw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2928.lcssa.sink.i.i, i64 32
  store float %i.bgf, ptr %i.biw, align 8, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2012.i.i)
  br label %bb.it

bb.it:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEEvT_T0_.exit43.i.i, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i.i.i
  %.sroa.023.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.031.i.i.i, i64 48 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %.sroa.023.0.i.i.i, %.val454.pre.i
  br i1 %.not.i5.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEEPFbRKS5_SC_EEvT_SF_T0_.exit.i.loopexit509, label %bb.in, !llvm.loop !6

.split.i:                                         ; preds = %.loopexit167.i, %._crit_edge286.i
  %.0348295.i = phi i64 [ 0, %._crit_edge286.i ], [ %i.bix, %.loopexit167.i ] ; 4 uses
  %i.bix = add nuw nsw i64 %.0348295.i, 1         ; 4 uses
  %i.biy = icmp ult i64 %i.bix, %i.avy
  br i1 %i.biy, label %.lr.ph293.i, label %.loopexit167.i

.lr.ph293.i:                                      ; preds = %.split.i
  %i.biz = getelementptr inbounds nuw [72 x i8], ptr %.val75, i64 %.0348295.i ; 5 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 32
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.biz, i64 44 ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.biz, i64 24 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.biz, i64 28
  %i.bje = getelementptr inbounds nuw [12 x i8], ptr %.sroa.095.2.i, i64 %.0348295.i ; 3 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 4
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.biz, i64 40 ; 2 uses
  %i.bji = trunc i64 %.0348295.i to i32           ; 2 uses
  br label %bb.iu

bb.iu:                                            ; preds = %bb.jb, %.lr.ph293.i
  %.0349292.i = phi i64 [ %i.bix, %.lr.ph293.i ], [ %i.bmm, %bb.jb ] ; 4 uses
  %i.bjj = getelementptr inbounds nuw [72 x i8], ptr %.val75, i64 %.0349292.i ; 5 uses
  %i.bjk = load float, ptr %i.bja, align 8, !tbaa !126, !noalias !261 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjj, i64 32
  %i.bjm = load float, ptr %i.bjl, align 8, !tbaa !126, !noalias !261 ; 2 uses
  %i.bjn = insertelement <2 x float> poison, float %i.bjk, i64 0
  %i.bjo = insertelement <2 x float> %i.bjn, float %i.bjm, i64 1
  %i.bjp = insertelement <2 x float> poison, float %i.bjm, i64 0
  %i.bjq = insertelement <2 x float> %i.bjp, float %i.bjk, i64 1
  %i.bjr = fdiv <2 x float> %i.bjo, %i.bjq
  %i.bjs = fcmp ole <2 x float> %i.bjr, splat (float 2.000000e+00)
  %i.bjt = bitcast <2 x i1> %i.bjs to i2
  %or.cond394.i = icmp eq i2 %i.bjt, 0
  br i1 %or.cond394.i, label %bb.jb, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bju = load i32, ptr %i.bjb, align 4, !tbaa !262, !noalias !261 ; 3 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjj, i64 44 ; 2 uses
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !262, !noalias !261 ; 3 uses
  %i.bjx = sdiv i32 %i.bju, %i.bjw
  %i.bjy = icmp slt i32 %i.bjx, 3
  br i1 %i.bjy, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.bjz = sdiv i32 %i.bjw, %i.bju
  %i.bka = icmp slt i32 %i.bjz, 3
  br i1 %i.bka, label %bb.ix, label %bb.jb

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.bkb = load float, ptr %i.bjc, align 8, !tbaa !127, !noalias !261
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjj, i64 24 ; 2 uses
  %i.bkd = load float, ptr %i.bkc, align 8, !tbaa !127, !noalias !261
  %i.bke = fsub float %i.bkb, %i.bkd              ; 2 uses
  %i.bkf = load float, ptr %i.bjd, align 4, !tbaa !128, !noalias !261
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjj, i64 28
  %i.bkh = load float, ptr %i.bkg, align 4, !tbaa !128, !noalias !261
  %i.bki = fsub float %i.bkf, %i.bkh              ; 2 uses
  %i.bkj = fmul float %i.bki, %i.bki
  %i.bkk = call float @llvm.fmuladd.f32(float %i.bke, float %i.bke, float %i.bkj) ; 2 uses
  %i.bkl = load float, ptr %i.bje, align 4, !tbaa !264, !noalias !261
  %i.bkm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.095.2.i, i64 %.0349292.i ; 3 uses
  %i.bkn = load float, ptr %i.bkm, align 4, !tbaa !264, !noalias !261
  %i.bko = fsub float %i.bkl, %i.bkn              ; 2 uses
  %i.bkp = load float, ptr %i.bjf, align 4, !tbaa !265, !noalias !261
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkm, i64 4
  %i.bkr = load float, ptr %i.bkq, align 4, !tbaa !265, !noalias !261
  %i.bks = fsub float %i.bkp, %i.bkr              ; 2 uses
  %i.bkt = fmul float %i.bks, %i.bks
  %i.bku = call float @llvm.fmuladd.f32(float %i.bko, float %i.bko, float %i.bkt)
  %i.bkv = load float, ptr %i.bjg, align 4, !tbaa !266, !noalias !261
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkm, i64 8
  %i.bkx = load float, ptr %i.bkw, align 4, !tbaa !266, !noalias !261
  %i.bky = fsub float %i.bkv, %i.bkx              ; 2 uses
  %i.bkz = call float @llvm.fmuladd.f32(float %i.bky, float %i.bky, float %i.bku)
  %i.bla = load i32, ptr %i.bjh, align 8, !tbaa !45, !noalias !261
  %i.blb = icmp slt i32 %i.bju, %i.bla
  %..i.i = select i1 %i.blb, ptr %i.bjb, ptr %i.bjh
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bjj, i64 40 ; 2 uses
  %i.bld = load i32, ptr %i.blc, align 8, !tbaa !45, !noalias !261
  %i.ble = icmp slt i32 %i.bjw, %i.bld
  %..i501.i = select i1 %i.ble, ptr %i.bjv, ptr %i.blc
  %i.blf = load i32, ptr %..i.i, align 4, !tbaa !45, !noalias !261
  %i.blg = load i32, ptr %..i501.i, align 4, !tbaa !45, !noalias !261
  %i.blh = call i32 @llvm.smax.i32(i32 %i.blf, i32 %i.blg)
  %i.bli = sitofp i32 %i.blh to float             ; 2 uses
  %i.blj = fmul nnan float %i.bli, 9.000000e+00
  %i.blk = fmul float %i.blj, %i.bli
  %i.bll = fcmp olt float %i.bkk, %i.blk
  %i.blm = fcmp olt float %i.bkz, 1.600000e+03
  %or.cond.i197 = select i1 %i.bll, i1 %i.blm, i1 false
  br i1 %or.cond.i197, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.jb

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !261
  store i32 %i.bji, ptr %13, align 8, !tbaa !267, !noalias !261
  %i.bln = trunc i64 %.0349292.i to i32           ; 2 uses
  store i32 %i.bln, ptr %i.awi, align 4, !tbaa !268, !noalias !261
  %i.blo = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #25
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i511.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread.i, !noalias !261 ; 5 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i511.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  store i32 %i.bji, ptr %i.blo, align 4, !tbaa !45, !noalias !261
  %i.blp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i unwind label %bb.iz, !noalias !261 ; 7 uses

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i511.i
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 4
  store i32 %i.bln, ptr %i.blq, align 4, !tbaa !45, !noalias !261
  %i.blr = load i32, ptr %i.blo, align 4, !noalias !261
  store i32 %i.blr, ptr %i.blp, align 4, !noalias !261
  call void @_ZdlPvm(ptr noundef nonnull %i.blo, i64 noundef 4) #24, !noalias !261
  %i.bls = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %bb.iy unwind label %.loopexit168.i, !noalias !261 ; 5 uses

bb.iy:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %i.blt = load i64, ptr %i.blp, align 4, !noalias !261
  store i64 %i.blt, ptr %i.bls, align 4, !noalias !261
  store ptr %i.bls, ptr %i.awh, align 8, !tbaa !98, !noalias !261
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bls, i64 8 ; 2 uses
  store ptr %i.blu, ptr %i.awj, align 8, !tbaa !107, !noalias !261
  store ptr %i.blu, ptr %i.awk, align 8, !tbaa !97, !noalias !261
  store float %i.bkk, ptr %i.awl, align 8, !tbaa !121, !noalias !261
  %i.blv = load <2 x float>, ptr %i.bjc, align 8, !tbaa !44, !noalias !261
  %i.blw = load <2 x float>, ptr %i.bkc, align 8, !tbaa !44, !noalias !261
  %i.blx = fsub <2 x float> %i.blv, %i.blw        ; 4 uses
  %foldExtExtBinop1366 = fmul <2 x float> %i.blx, %i.blx
  %i.bly = extractelement <2 x float> %foldExtExtBinop1366, i64 1
  %i.blz = extractelement <2 x float> %i.blx, i64 0 ; 2 uses
  %i.bma = call float @llvm.fmuladd.f32(float %i.blz, float %i.blz, float %i.bly)
  %sqrt.i198 = call float @llvm.sqrt.f32(float %i.bma)
  %i.bmb = insertelement <2 x float> poison, float %sqrt.i198, i64 0
  %i.bmc = shufflevector <2 x float> %i.bmb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmd = fdiv <2 x float> %i.blx, %i.bmc
  store <2 x float> %i.bmd, ptr %i.awm, align 4, !tbaa !44, !noalias !261
  invoke fastcc void @_ZNSt6vectorIN2cv4text12_GLOBAL__N_116ChainedComponentESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(45) %13)
          to label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i unwind label %bb.ja, !noalias !261

_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i: ; preds = %bb.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.blp, i64 noundef 8) #24, !noalias !261
  call void @_ZdlPvm(ptr noundef nonnull %i.bls, i64 noundef 8) #24, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !261
  br label %bb.jb

bb.iz:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i511.i
  %i.bme = landingpad { ptr, i32 }
          cleanup
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blo, i64 4
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread618.i

.loopexit168.i:                                   ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %lpad.loopexit170.i = landingpad { ptr, i32 }
          cleanup
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blp, i64 8
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread618.i

_ZNSt6vectorIiSaIiEED2Ev.exit528.thread.i:        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bmh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit530.i

_ZNSt6vectorIiSaIiEED2Ev.exit528.thread618.i:     ; preds = %.loopexit168.i, %bb.iz
  %.sroa.20.2.ph.ph.i = phi ptr [ %i.bmf, %bb.iz ], [ %i.bmg, %.loopexit168.i ]
  %.sroa.072.2.ph.ph.i = phi ptr [ %i.blo, %bb.iz ], [ %i.blp, %.loopexit168.i ] ; 2 uses
  %.pn384.ph.ph.i = phi { ptr, i32 } [ %i.bme, %bb.iz ], [ %lpad.loopexit170.i, %.loopexit168.i ]
  %i.bmi = ptrtoint ptr %.sroa.20.2.ph.ph.i to i64
  %i.bmj = ptrtoint ptr %.sroa.072.2.ph.ph.i to i64
  %i.bmk = sub i64 %i.bmi, %i.bmj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.2.ph.ph.i, i64 noundef %i.bmk) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit530.i

bb.ja:                                            ; preds = %bb.iy
  %i.bml = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.blp, i64 noundef 8) #24, !noalias !261
  call void @_ZdlPvm(ptr noundef nonnull %i.bls, i64 noundef 8) #24, !noalias !261
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit530.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit530.i: ; preds = %bb.ja, %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread618.i, %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread.i
  %.pn384116617.i = phi { ptr, i32 } [ %i.bmh, %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread.i ], [ %.pn384.ph.ph.i, %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread618.i ], [ %i.bml, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !261
  br label %_ZNSt6vectorIN2cv4text12_GLOBAL__N_116ChainedComponentESaIS3_EED2Ev.exit598.i

bb.jb:                                            ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentD2Ev.exit.i, %bb.ix, %bb.iw, %bb.iu
  %i.bmm = add nuw nsw i64 %.0349292.i, 1         ; 2 uses
  %exitcond421.not.i = icmp eq i64 %i.bmm, %i.avy
  br i1 %exitcond421.not.i, label %.loopexit167.i, label %bb.iu, !llvm.loop !188

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEEPFbRKS5_SC_EEvT_SF_T0_.exit.i.loopexit509: ; preds = %bb.it
  %.val479.pre.i.pre = load ptr, ptr %12, align 8, !tbaa !130, !noalias !261
  %.val480.pre.i.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !131, !noalias !261
end_hunk_1
