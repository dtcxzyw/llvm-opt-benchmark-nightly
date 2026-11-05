Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fisheye?download=true
inline.NumInlined: 2237
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.cv::TermCriteria" = type { i32, i32, double }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"struct.cv::internal::IntrinsicParams" = type { %"class.cv::Vec", %"class.cv::Vec", %"class.cv::Vec.0", double, %"class.std::vector" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [2 x double] }
%"class.cv::Vec.0" = type { %"class.cv::Matx.1" }
%"class.cv::Matx.1" = type { [4 x double] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Matx.5" = type { [9 x double] }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<cv::Vec<double, 3>, std::allocator<cv::Vec<double, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<double, 3>, std::allocator<cv::Vec<double, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<double, 3>, std::allocator<cv::Vec<double, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<double, 3>, std::allocator<cv::Vec<double, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.0" }
%"class.cv::Range" = type { i32, i32 }
%"class.cv::SVD" = type { %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat" }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<cv::Point_<double>, std::allocator<cv::Point_<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Point_<double>, std::allocator<cv::Point_<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Point_<double>, std::allocator<cv::Point_<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Point_<double>, std::allocator<cv::Point_<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.cv::Vec.21" = type { %"class.cv::Matx.22" }
%"class.cv::Matx.22" = type { [1 x double] }
%"class.cv::Vec.11" = type { %"class.cv::Matx.12" }
%"class.cv::Matx.12" = type { [3 x double] }
%"class.cv::Vec.14" = type { %"class.cv::Matx.15" }
%"class.cv::Matx.15" = type { [6 x double] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorIhSaIhEEaSERKS1_ = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv = comdat any

$_ZNK2cv4MatxIdLi3ELi1EE6copyToERKNS_12_OutputArrayE = comdat any

$_ZN2cv3SVDD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh = comdat any

$_ZZN2cv11_InputArrayC1INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

$_ZZN2cv11_InputArrayC1IhEERKSt6vectorIT_SaIS3_EEE15__cv_check__174 = comdat any

@_ZZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaEE30__cv_trace_location_extra_fn61 = internal global ptr null, align 8
@_ZZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaEE24__cv_trace_location_fn61 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaEE30__cv_trace_location_extra_fn61, ptr @.str, ptr @.str.1, i32 61, i32 1 }, align 8
@.str = private unnamed_addr constant [185 x i8] c"double cv::fisheye::calibrate(InputArrayOfArrays, InputArrayOfArrays, const Size &, InputOutputArray, InputOutputArray, OutputArrayOfArrays, OutputArrayOfArrays, int, cv::TermCriteria)\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/opencv/opencv/modules/calib/src/fisheye.cpp\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"!objectPoints.empty() && !imagePoints.empty() && objectPoints.total() == imagePoints.total()\00", align 1
@__func__._ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE = private unnamed_addr constant [10 x i8] c"calibrate\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"objectPoints.type() == CV_32FC3 || objectPoints.type() == CV_64FC3\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"imagePoints.type() == CV_32FC2 || imagePoints.type() == CV_64FC2\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"K.empty() || (K.size() == Size(3,3))\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"D.empty() || (D.total() == 4)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"rvecs.empty() || (rvecs.channels() == 3)\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"tvecs.empty() || (tvecs.channels() == 3)\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"(!K.empty() && !D.empty()) || !(flags & CALIB_USE_INTRINSIC_GUESS)\00", align 1
@_ZZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaEE31__cv_trace_location_extra_fn209 = internal global ptr null, align 8
@_ZZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaEE25__cv_trace_location_fn209 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaEE31__cv_trace_location_extra_fn209, ptr @.str.10, ptr @.str.1, i32 209, i32 1 }, align 8
@.str.10 = private unnamed_addr constant [261 x i8] c"double cv::fisheye::stereoCalibrate(InputArrayOfArrays, InputArrayOfArrays, InputArrayOfArrays, InputOutputArray, InputOutputArray, InputOutputArray, InputOutputArray, Size, OutputArray, OutputArray, OutputArrayOfArrays, OutputArrayOfArrays, int, TermCriteria)\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"!objectPoints.empty() && !imagePoints1.empty() && !imagePoints2.empty()\00", align 1
@__func__._ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE = private unnamed_addr constant [16 x i8] c"stereoCalibrate\00", align 1
@.str.12 = private unnamed_addr constant [93 x i8] c"objectPoints.total() == imagePoints1.total() || imagePoints1.total() == imagePoints2.total()\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"imagePoints1.type() == CV_32FC2 || imagePoints1.type() == CV_64FC2\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"imagePoints2.type() == CV_32FC2 || imagePoints2.type() == CV_64FC2\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"K1.empty() || (K1.size() == Size(3,3))\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"D1.empty() || (D1.total() == 4)\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"K2.empty() || (K2.size() == Size(3,3))\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"D2.empty() || (D2.total() == 4)\00", align 1
@.str.19 = private unnamed_addr constant [93 x i8] c"(!K1.empty() && !K2.empty() && !D1.empty() && !D2.empty()) || !(flags & CALIB_FIX_INTRINSIC)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"abs_max < threshold\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"a.type() == CV_64FC1\00", align 1
@__func__._ZN2cv8internal15IntrinsicParamsplERKNS_3MatE = private unnamed_addr constant [10 x i8] c"operator+\00", align 1
@__func__._ZN2cv8internal15IntrinsicParamsaSERKNS_3MatE = private unnamed_addr constant [10 x i8] c"operator=\00", align 1
@_ZZN2cv8internal13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_RKNS0_15IntrinsicParamsES6_E31__cv_trace_location_extra_fn561 = internal global ptr null, align 8
@_ZZN2cv8internal13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_RKNS0_15IntrinsicParamsES6_E25__cv_trace_location_fn561 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv8internal13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_RKNS0_15IntrinsicParamsES6_E31__cv_trace_location_extra_fn561, ptr @.str.22, ptr @.str.1, i32 561, i32 1 }, align 8
@.str.22 = private unnamed_addr constant [140 x i8] c"void cv::internal::projectPoints(cv::InputArray, cv::OutputArray, cv::InputArray, cv::InputArray, const IntrinsicParams &, cv::OutputArray)\00", align 1
@.str.23 = private unnamed_addr constant [94 x i8] c"!objectPoints.empty() && (objectPoints.type() == CV_32FC3 || objectPoints.type() == CV_64FC3)\00", align 1
@__func__._ZN2cv8internal13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_RKNS0_15IntrinsicParamsES6_ = private unnamed_addr constant [14 x i8] c"projectPoints\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"!objectPoints.empty() && objectPoints.type() == CV_64FC3\00", align 1
@__func__._ZN2cv8internal22ComputeExtrinsicRefineERKNS_3MatES3_RS1_S4_S4_iRKNS0_15IntrinsicParamsEd = private unnamed_addr constant [23 x i8] c"ComputeExtrinsicRefine\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"!imagePoints.empty() && imagePoints.type() == CV_64FC2\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"rvec.total() > 2 && tvec.total() > 2\00", align 1
@_ZZN2cv8internal17ComputeHomographyENS_3MatES1_E31__cv_trace_location_extra_fn616 = internal global ptr null, align 8
@_ZZN2cv8internal17ComputeHomographyENS_3MatES1_E25__cv_trace_location_fn616 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv8internal17ComputeHomographyENS_3MatES1_E31__cv_trace_location_extra_fn616, ptr @.str.27, ptr @.str.1, i32 616, i32 1 }, align 8
@.str.27 = private unnamed_addr constant [50 x i8] c"cv::Mat cv::internal::ComputeHomography(Mat, Mat)\00", align 1
@_ZZN2cv8internal15NormalizePixelsERKNS_3MatERKNS0_15IntrinsicParamsEE31__cv_trace_location_extra_fn717 = internal global ptr null, align 8
@_ZZN2cv8internal15NormalizePixelsERKNS_3MatERKNS0_15IntrinsicParamsEE25__cv_trace_location_fn717 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv8internal15NormalizePixelsERKNS_3MatERKNS0_15IntrinsicParamsEE31__cv_trace_location_extra_fn717, ptr @.str.28, ptr @.str.1, i32 717, i32 1 }, align 8
@.str.28 = private unnamed_addr constant [76 x i8] c"cv::Mat cv::internal::NormalizePixels(const Mat &, const IntrinsicParams &)\00", align 1
@__func__._ZN2cv8internal15NormalizePixelsERKNS_3MatERKNS0_15IntrinsicParamsE = private unnamed_addr constant [16 x i8] c"NormalizePixels\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"!_objectPoints.empty() && _objectPoints.type() == CV_64FC3\00", align 1
@__func__._ZN2cv8internal14InitExtrinsicsERKNS_3MatES3_RKNS0_15IntrinsicParamsERS1_S7_ = private unnamed_addr constant [15 x i8] c"InitExtrinsics\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"!_imagePoints.empty() && _imagePoints.type() == CV_64FC2\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"fabs(norm_u1) > 0\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"fabs(norm_u2) > 0\00", align 1
@__func__._ZN2cv8internal19CalibrateExtrinsicsERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsEidRKNS_17_InputOutputArrayES9_ = private unnamed_addr constant [20 x i8] c"CalibrateExtrinsics\00", align 1
@.str.33 = private unnamed_addr constant [91 x i8] c"!imagePoints.empty() && (imagePoints.type() == CV_32FC2 || imagePoints.type() == CV_64FC2)\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"omc.type() == CV_64FC3 || Tc.type() == CV_64FC3\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"CALIB_CHECK_COND - Ill-conditioned matrix for input array %d\00", align 1
@__func__._ZN2cv8internal16ComputeJacobiansERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsES3_S3_RKiRKdRNS_3MatESC_ = private unnamed_addr constant [17 x i8] c"ComputeJacobians\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"!omc.empty() && omc.type() == CV_64FC3\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"!Tc.empty() && Tc.type() == CV_64FC3\00", align 1
@.str.38 = private unnamed_addr constant [69 x i8] c"svd.w.at<double>(0) / svd.w.at<double>(svd.w.rows - 1) < thresh_cond\00", align 1
@__func__._ZN2cv8internal21EstimateUncertaintiesERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsES3_S3_RS4_RNS_3VecIdLi2EEEdiRd = private unnamed_addr constant [22 x i8] c"EstimateUncertainties\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"A.getMat().cols == B.getMat().rows\00", align 1
@__func__._ZN2cv8internal3dABERKNS_11_InputArrayES3_RKNS_12_OutputArrayES6_ = private unnamed_addr constant [4 x i8] c"dAB\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"A.type() == CV_64FC1 && B.type() == CV_64FC1\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"row.type() == CV_64FC1\00", align 1
@__func__._ZN2cv8internal6medianERKNS_3MatE = private unnamed_addr constant [7 x i8] c"median\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"!row.empty() && row.rows == 1\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"m.depth() == CV_64F && m.getMat().rows == 1\00", align 1
@__func__._ZN2cv8internal8median3dERKNS_11_InputArrayE = private unnamed_addr constant [9 x i8] c"median3d\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"src.channels() == 1\00", align 1
@__func__._ZN2cv12_GLOBAL__N_19subMatrixERKNS_3MatERS1_RKSt6vectorIhSaIhEES9_ = private unnamed_addr constant [10 x i8] c"subMatrix\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZZN2cv11_InputArrayC1INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr constant %"struct.cv::detail::CheckContext" { ptr @.str.47, ptr @.str.48, i32 174, i32 3, ptr @.str.49, ptr @.str.50, ptr @.str.51 }, comdat, align 8
@.str.47 = private unnamed_addr constant [82 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Vec<double, 3>]\00", align 1
@.str.48 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"idx < (size_t)(dims > 0 ? dims : 1)\00", align 1
@__func__._ZN2cv8MatShapeixEm = private unnamed_addr constant [11 x i8] c"operator[]\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZZN2cv11_InputArrayC1IhEERKSt6vectorIT_SaIS3_EEE15__cv_check__174 = linkonce_odr constant %"struct.cv::detail::CheckContext" { ptr @.str.54, ptr @.str.48, i32 174, i32 3, ptr @.str.49, ptr @.str.50, ptr @.str.51 }, comdat, align 8
@.str.54 = private unnamed_addr constant [77 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = unsigned char]\00", align 1
@.str.55 = private unnamed_addr constant [89 x i8] c"data && dims <= 2 && (rows == 1 || cols == 1) && rows + cols - 1 == n && channels() == 1\00", align 1
@__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv = private unnamed_addr constant [13 x i8] c"operator Vec\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

@_ZN2cv8internal15IntrinsicParamsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv8internal15IntrinsicParamsC2Ev
@_ZN2cv8internal15IntrinsicParamsC1ENS_3VecIdLi2EEES3_NS2_IdLi4EEEd = unnamed_addr alias void (ptr, ptr, ptr, ptr, double), ptr @_ZN2cv8internal15IntrinsicParamsC2ENS_3VecIdLi2EEES3_NS2_IdLi4EEEd

; Function Attrs: mustprogress uwtable
define noundef double @_ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, ptr nofree noundef readonly byval(%"class.cv::TermCriteria") align 8 captures(none) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator", align 1   ; 3 uses
  %30 = alloca %"struct.cv::internal::IntrinsicParams", align 8 ; 32 uses
  %31 = alloca %"struct.cv::internal::IntrinsicParams", align 8 ; 15 uses
  %32 = alloca %"struct.cv::internal::IntrinsicParams", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %33 = alloca %"class.cv::Vec", align 8          ; 5 uses
  %34 = alloca %"class.cv::Matx.5", align 8       ; 19 uses
  %35 = alloca %"class.cv::Vec.0", align 16       ; 7 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %39 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %40 = alloca %"class.std::vector.6", align 8    ; 19 uses
  %41 = alloca %"class.std::vector.6", align 8    ; 19 uses
  %42 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %43 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %44 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %45 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %46 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %51 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %52 = alloca %"struct.cv::internal::IntrinsicParams", align 8 ; 10 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %54 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %55 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %56 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %57 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %58 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %59 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %60 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %61 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %62 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %63 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %64 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %65 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %66 = alloca %"class.cv::Mat", align 8          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaEE24__cv_trace_location_fn61)
  %i.d = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.ai

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.d unwind label %bb.ai

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.f unwind label %bb.ai

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.g unwind label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 63) #19
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %14, align 8, !tbaa !14    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.n = load i64, ptr %i.l, align 8, !tbaa !15
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn237 = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.hp

bb.m:                                             ; preds = %bb.g
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.n unwind label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.q = icmp eq i32 %i.p, 69
  br i1 %i.q, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.s = icmp eq i32 %i.r, 70
  br i1 %i.s, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 64) #19
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.u:                                             ; preds = %bb.r
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %16, align 8, !tbaa !14    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.u
  %i.y = load i64, ptr %i.w, align 8, !tbaa !15
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.t
  %.pn = phi { ptr, i32 } [ %i.t, %bb.t ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.u, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.hp

bb.v:                                             ; preds = %bb.p, %bb.n
  %i.aa = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.ab = icmp eq i32 %i.aa, 37
  br i1 %i.ab, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ac = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.ad = icmp eq i32 %i.ac, 38
  br i1 %i.ad, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 65) #19
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.ad:                                            ; preds = %bb.aa
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@_ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE:bb.a
  store double %i.ek, ptr %30, align 8
  %.sroa.5377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store double %i.em, ptr %.sroa.5377.0..sroa_idx, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ex = load <2 x double>, ptr %35, align 16
  %i.ey = select <2 x i1> %i.de, <2 x double> %i.ex, <2 x double> zeroinitializer
  store <2 x double> %i.ey, ptr %i.ew, align 8
  %.sroa.6372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.ez = load <2 x double>, ptr %i.er, align 16
  %i.fa = select <2 x i1> %i.do, <2 x double> %i.ez, <2 x double> zeroinitializer
  store <2 x double> %i.fa, ptr %.sroa.6372.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 64
  store double %i.eu, ptr %i.fb, align 8, !tbaa !33
  br label %bb.cw

bb.cl:                                            ; preds = %bb.by
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit342

bb.cm:                                            ; preds = %bb.bz
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit340

bb.cn:                                            ; preds = %bb.ca
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit338

bb.co:                                            ; preds = %bb.cw
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.cp:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cf
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn178.pn = phi { ptr, i32 } [ %i.fh, %bb.cq ], [ %i.fg, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.hl

bb.cs:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cj
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #18
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn181.pn = phi { ptr, i32 } [ %i.fj, %bb.ct ], [ %i.fi, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.hl

bb.cv:                                            ; preds = %bb.cb
  %i.fk = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.fl = load <2 x i32>, ptr %2, align 4, !tbaa !18 ; 3 uses
  %i.fm = extractelement <2 x i32> %i.fl, i64 0
  %i.fn = extractelement <2 x i32> %i.fl, i64 1
  %i.fo = call i32 @llvm.smax.i32(i32 %i.fm, i32 %i.fn)
  %i.fp = sitofp i32 %i.fo to double
  %i.fq = fmul nnan double %i.fp, 5.000000e-01    ; 2 uses
  %i.fr = sitofp <2 x i32> %i.fl to <2 x double>
  %i.fs = fmul nnan <2 x double> %i.fr, splat (double 5.000000e-01)
  %i.ft = fadd <2 x double> %i.fs, splat (double -5.000000e-01)
  store <2 x double> %i.ft, ptr %i.fk, align 8
  store double %i.fq, ptr %30, align 8
  %.sroa.5368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store double %i.fq, ptr %.sroa.5368.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %30, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, i8 0, i64 40, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ck
  %i.fv = getelementptr inbounds nuw i8, ptr %32, i64 72 ; 2 uses
  %i.fw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %bb.cx unwind label %bb.co     ; 0 uses

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  %i.fx = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cy unwind label %bb.df     ; 4 uses

bb.cy:                                            ; preds = %bb.cx
  %i.fy = icmp ugt i64 %i.fx, 384307168202282325
  br i1 %i.fy, label %bb.cz, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #19
          to label %.noexc282 unwind label %bb.df

.noexc282:                                        ; preds = %bb.cz
  unreachable

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.cy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %40, align 8
  br label %bb.da

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.fz = mul nuw nsw i64 %i.fx, 24               ; 3 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #21
          to label %.noexc283 unwind label %bb.df ; 4 uses

.noexc283:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ga, ptr %40, align 8, !tbaa !36
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fx
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ga, i8 0, i64 %i.fz, i1 false), !tbaa !20
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ga, i64 %i.fz
  br label %bb.da

bb.da:                                            ; preds = %.noexc283, %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.gb, %.noexc283 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc283 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.gd, align 8, !tbaa !37
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.gc, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.ge = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.db unwind label %bb.dg     ; 4 uses

bb.db:                                            ; preds = %bb.da
  %i.gf = icmp ugt i64 %i.ge, 384307168202282325
  br i1 %i.gf, label %bb.dc, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i284

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #19
          to label %.noexc291 unwind label %bb.dg

.noexc291:                                        ; preds = %bb.dc
  unreachable

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i284: ; preds = %bb.db
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %.not.i.i.i.i285 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i285, label %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i290, label %.lr.ph.preheader.i.i.i.i.i286

_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i290: ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i284
  store i64 0, ptr %41, align 8
  br label %bb.dd

.lr.ph.preheader.i.i.i.i.i286:                    ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i284
  %i.gg = mul nuw nsw i64 %i.ge, 24               ; 3 uses
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #21
          to label %.noexc292 unwind label %bb.dg ; 4 uses

.noexc292:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i286
  store ptr %i.gh, ptr %41, align 8, !tbaa !36
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %i.ge
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gh, i8 0, i64 %i.gg, i1 false), !tbaa !20
  %scevgep.i.i.i.i.i287 = getelementptr i8, ptr %i.gh, i64 %i.gg
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc292, %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i290
  %.sink.i288 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i290 ], [ %i.gi, %.noexc292 ]
  %.0.lcssa.i.i.i.i.i289 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit.thread.i290 ], [ %scevgep.i.i.i.i.i287, %.noexc292 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  store ptr %.sink.i288, ptr %i.gk, align 8, !tbaa !37
  store ptr %.0.lcssa.i.i.i.i.i289, ptr %i.gj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  %i.gl = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 0, ptr %i.gm, align 8
  store i32 -2096955322, ptr %42, align 8, !tbaa !24
  store ptr %40, ptr %i.gl, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  %i.gn = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 0, ptr %i.go, align 8
  store i32 -2096955322, ptr %43, align 8, !tbaa !24
  store ptr %41, ptr %i.gn, align 8, !tbaa !23
  invoke void @_ZN2cv8internal19CalibrateExtrinsicsERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsEidRKNS_17_InputOutputArrayES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %30, i32 noundef %.lobit, double noundef 1.000000e+06, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %46, i64 20
  %i.gt = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %47, i64 20
  %i.gw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %49, i64 20
  %i.gz = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.hc = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %52, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.hl = getelementptr inbounds nuw i8, ptr %31, i64 72 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %52, i64 72 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %31, i64 88 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %52, i64 88 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %54, i64 432
  %i.hq = getelementptr inbounds nuw i8, ptr %54, i64 224
  %i.hr = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %56, i64 16
  %.pre = load i32, ptr %8, align 8, !tbaa !40    ; 3 uses
  %.pre431 = load i32, ptr %i.gp, align 4
  %i.ia = icmp ne i32 %.pre, 1
  %i.ib = icmp ne i32 %.pre, 2
  %i.ic = icmp ne i32 %.pre, 3
  br label %bb.di

bb.df:                                            ; preds = %bb.cx, %.lr.ph.preheader.i.i.i.i.i, %bb.cz
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit336

bb.dg:                                            ; preds = %bb.da, %.lr.ph.preheader.i.i.i.i.i286, %bb.dc
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334

bb.dh:                                            ; preds = %bb.dd
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.hi

bb.di:                                            ; preds = %bb.de, %bb.ed
  %.0100409 = phi i32 [ 0, %bb.de ], [ %i.ii, %bb.ed ] ; 2 uses
  %.0101408 = phi double [ 1.000000e+00, %bb.de ], [ %i.ke, %bb.ed ]
  %.not190 = icmp slt i32 %.0100409, %.pre431     ; 2 uses
  %or.cond243 = select i1 %i.ia, i1 true, i1 %.not190
  br i1 %or.cond243, label %bb.dj, label %bb.eg

bb.dj:                                            ; preds = %bb.di
  %i.ig = load double, ptr %i.gq, align 8
  %i.ih = fcmp ugt double %.0101408, %i.ig        ; 2 uses
  %or.cond247 = select i1 %i.ib, i1 true, i1 %i.ih
  %or.cond250 = select i1 %i.ih, i1 %.not190, i1 false
  %or.cond382 = select i1 %i.ic, i1 true, i1 %or.cond250
  %or.cond = select i1 %or.cond247, i1 %or.cond382, i1 false
  br i1 %or.cond, label %bb.dk, label %bb.eg

bb.dk:                                            ; preds = %bb.dj
  %i.ii = add nuw nsw i32 %.0100409, 1            ; 3 uses
  %i.ij = uitofp nneg i32 %i.ii to double
  %i.ik = call double @pow(double noundef 6.000000e-01, double noundef %i.ij) #18
  %i.il = fsub double 1.000000e+00, %i.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %44) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %45) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  store i32 0, ptr %i.gr, align 8, !tbaa !41
  store i32 0, ptr %i.gs, align 4, !tbaa !42
  %i.im = load ptr, ptr %i.gc, align 8, !tbaa !38
  %i.in = load ptr, ptr %40, align 8, !tbaa !36
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = sdiv exact i64 %i.iq, 24                ; 2 uses
  %.not.i = icmp ugt i64 %i.ir, 2147483647
  br i1 %.not.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ir, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #19
          to label %.noexc294 unwind label %bb.dw

.noexc294:                                        ; preds = %bb.dl
  unreachable

bb.dm:                                            ; preds = %bb.dk
  store i32 -2130509754, ptr %46, align 8, !tbaa !24
  store ptr %40, ptr %i.gt, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  store i32 0, ptr %i.gu, align 8, !tbaa !41
  store i32 0, ptr %i.gv, align 4, !tbaa !42
  %i.is = load ptr, ptr %i.gj, align 8, !tbaa !38
  %i.it = load ptr, ptr %41, align 8, !tbaa !36
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = sdiv exact i64 %i.iw, 24                ; 2 uses
  %.not.i295 = icmp ugt i64 %i.ix, 2147483647
  br i1 %.not.i295, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ix, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #19
          to label %.noexc296 unwind label %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc296:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %bb.dm
  store i32 -2130509754, ptr %47, align 8, !tbaa !24
  store ptr %41, ptr %i.gw, align 8, !tbaa !23
  invoke void @_ZN2cv8internal16ComputeJacobiansERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsES3_S3_RKiRKdRNS_3MatESC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %30, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %45)
          to label %bb.dp unwind label %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %48) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  store i32 0, ptr %i.gx, align 8, !tbaa !41
  store i32 0, ptr %i.gy, align 4, !tbaa !42
  store i32 16842752, ptr %49, align 8, !tbaa !24
  store ptr %44, ptr %i.gz, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  store i32 0, ptr %i.ha, align 8, !tbaa !41
  store i32 0, ptr %i.hb, align 4, !tbaa !42
  store i32 16842752, ptr %50, align 8, !tbaa !24
  store ptr %45, ptr %i.hc, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  store i64 0, ptr %i.he, align 8
  store i32 33619968, ptr %51, align 8, !tbaa !24
  store ptr %48, ptr %i.hd, align 8, !tbaa !23
  %i.iy = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %51, i32 noundef 0)
          to label %bb.dq unwind label %bb.dy     ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %54, double noundef %i.il, ptr noundef nonnull align 8 dereferenceable(208) %48)
          to label %bb.dr unwind label %bb.dz

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %53) #18
  %i.iz = load ptr, ptr %54, align 8, !tbaa !52, !noalias !101 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !54
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(688) %54, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.dr
  invoke void @_ZN2cv8internal15IntrinsicParamsplERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::internal::IntrinsicParams") align 8 %52, ptr noundef nonnull align 8 dereferenceable(96) %30, ptr noundef nonnull align 8 dereferenceable(208) %53)
          to label %bb.ds unwind label %.body

bb.ds:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %31, ptr noundef nonnull align 8 dereferenceable(96) %52, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i64 32, i1 false)
  %i.jd = load double, ptr %i.hj, align 8, !tbaa !33
  store double %i.jd, ptr %i.hk, align 8, !tbaa !33
  %i.je = load ptr, ptr %i.hl, align 8, !tbaa !17 ; 3 uses
  %i.jf = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.jg = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !56
  store <2 x ptr> %i.jg, ptr %i.hl, align 8, !tbaa !56
  %i.jh = load ptr, ptr %i.ho, align 8, !tbaa !55
  store ptr %i.jh, ptr %i.hn, align 8, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq ptr %i.je, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit.thread, label %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit

_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit:     ; preds = %bb.ds
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = ptrtoint ptr %i.je to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jk) #20
  %.pr = load ptr, ptr %i.hm, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i298 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i298, label %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit
  %i.jl = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %.pr to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.jo) #20
  br label %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit.thread

_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit.thread: ; preds = %bb.ds, %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit, %bb.dt
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hp) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hq) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hr) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  %i.jp = load double, ptr %31, align 8, !tbaa !20 ; 2 uses
  %i.jq = load double, ptr %i.hs, align 8, !tbaa !20 ; 2 uses
  %i.jr = load double, ptr %30, align 8, !tbaa !20
  %i.js = load double, ptr %i.ht, align 8, !tbaa !20
  %i.jt = fsub double %i.jp, %i.jr                ; 2 uses
  %i.ju = fsub double %i.jq, %i.js                ; 2 uses
  %67 = call double @llvm.fmuladd.f64(double %i.jt, double %i.jt, double 0.000000e+00)
  %i.jv = call double @llvm.fmuladd.f64(double %i.ju, double %i.ju, double %67)
  %68 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jv, i64 0
  %69 = load <2 x double>, ptr %i.hu, align 8, !tbaa !20
  %70 = load <2 x double>, ptr %i.hf, align 8, !tbaa !20 ; 3 uses
  %71 = fsub <2 x double> %70, %69                ; 2 uses
  %72 = insertelement <2 x double> %71, double %i.jp, i64 1 ; 2 uses
  %73 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %72, <2 x double> %68)
  %74 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jw = insertelement <2 x double> %74, double %i.jq, i64 1 ; 2 uses
  %75 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jw, <2 x double> %73) ; 2 uses
  %76 = extractelement <2 x double> %75, i64 1
  %i.jx = extractelement <2 x double> %70, i64 0  ; 2 uses
  %i.jy = call double @llvm.fmuladd.f64(double %i.jx, double %i.jx, double %76)
  %77 = extractelement <2 x double> %70, i64 1    ; 2 uses
  %i.jz = call double @llvm.fmuladd.f64(double %77, double %77, double %i.jy)
  %i.ka = insertelement <2 x double> %75, double %i.jz, i64 1
  %i.kb = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ka) ; 2 uses
  %i.kc = extractelement <2 x double> %i.kb, i64 0
  %i.kd = extractelement <2 x double> %i.kb, i64 1
  %i.ke = fdiv double %i.kc, %i.kd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %30, ptr noundef nonnull align 8 dereferenceable(96) %31, i64 72, i1 false)
  %i.kf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_ZN2cv8internal15IntrinsicParamsaSERKS1_.exit unwind label %bb.eb ; 0 uses

_ZN2cv8internal15IntrinsicParamsaSERKS1_.exit:    ; preds = %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit.thread
  br i1 %.not172, label %bb.ed, label %bb.du

bb.du:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsaSERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  store i64 0, ptr %i.hx, align 8
  store i32 -2096955322, ptr %55, align 8, !tbaa !24
  store ptr %40, ptr %i.hw, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  store i64 0, ptr %i.hz, align 8
  store i32 -2096955322, ptr %56, align 8, !tbaa !24
  store ptr %41, ptr %i.hy, align 8, !tbaa !23
  invoke void @_ZN2cv8internal19CalibrateExtrinsicsERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsEidRKNS_17_InputOutputArrayES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %30, i32 noundef %.lobit, double noundef 1.000000e+06, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %bb.dv unwind label %bb.ec

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  br label %bb.ed

bb.dw:                                            ; preds = %bb.dl
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.do, %bb.dn
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dw
  %.pn192.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp505, %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.kg, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %bb.ef

bb.dy:                                            ; preds = %bb.dp
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dq
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.body:                                            ; preds = %bb.dr, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %54) #18
  br label %bb.ea

bb.ea:                                            ; preds = %.body, %bb.dz
  %.pn199.pn = phi { ptr, i32 } [ %i.kj, %.body ], [ %i.ki, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  br label %bb.ee

bb.eb:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit.thread
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ec:                                            ; preds = %bb.du
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  br label %bb.ee

bb.ed:                                            ; preds = %bb.dv, %_ZN2cv8internal15IntrinsicParamsaSERKS1_.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  %.not384 = icmp eq i32 %i.ii, 2147483647
  br i1 %.not384, label %bb.eg, label %bb.di, !llvm.loop !97

bb.ee:                                            ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dy
  %.pn205.pn.pn = phi { ptr, i32 } [ %i.kl, %bb.ec ], [ %i.kk, %bb.eb ], [ %i.kh, %bb.dy ], [ %.pn199.pn, %bb.ea ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dx
  %.pn205.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn, %bb.ee ], [ %.pn192.pn, %bb.dx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %bb.hi

bb.eg:                                            ; preds = %bb.di, %bb.dj, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  %i.km = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i32 0, ptr %i.km, align 8, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %57, i64 20
  store i32 0, ptr %i.kn, align 4, !tbaa !42
  %i.ko = load ptr, ptr %i.gc, align 8, !tbaa !38
  %i.kp = load ptr, ptr %40, align 8, !tbaa !36
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 24                ; 2 uses
  %.not.i300 = icmp ugt i64 %i.kt, 2147483647
  br i1 %.not.i300, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.kt, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #19
          to label %.noexc301 unwind label %bb.eu

.noexc301:                                        ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.eg
  store i32 -2130509754, ptr %57, align 8, !tbaa !24
  %i.ku = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr %40, ptr %i.ku, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  %i.kv = getelementptr inbounds nuw i8, ptr %58, i64 16
  store i32 0, ptr %i.kv, align 8, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %58, i64 20
  store i32 0, ptr %i.kw, align 4, !tbaa !42
  %i.kx = load ptr, ptr %i.gj, align 8, !tbaa !38
  %i.ky = load ptr, ptr %41, align 8, !tbaa !36
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = sdiv exact i64 %i.lb, 24                ; 2 uses
  %.not.i303 = icmp ugt i64 %i.lc, 2147483647
  br i1 %.not.i303, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.lc, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #19
          to label %.noexc304 unwind label %bb.ev

.noexc304:                                        ; preds = %bb.ej
  unreachable

bb.ek:                                            ; preds = %bb.ei
  store i32 -2130509754, ptr %58, align 8, !tbaa !24
  %i.ld = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %41, ptr %i.ld, align 8, !tbaa !23
  invoke void @_ZN2cv8internal21EstimateUncertaintiesERKNS_11_InputArrayES3_RKNS0_15IntrinsicParamsES3_S3_RS4_RNS_3VecIdLi2EEEdiRd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %30, ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(96) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, double noundef 1.000000e+06, i32 noundef %.lobit, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.el unwind label %bb.ev

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  %i.le = load double, ptr %30, align 8, !tbaa !20 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !33
  %i.lh = fmul double %i.le, %i.lg
  %i.li = load double, ptr %i.hu, align 8, !tbaa !20
  %i.lj = load double, ptr %i.ht, align 8, !tbaa !20
  %i.lk = load double, ptr %i.hv, align 8, !tbaa !20
  store double %i.le, ptr %34, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store double %i.lh, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 16
  store double %i.li, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 24
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 32
  store double %i.lj, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 40
  store double %i.lk, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !15
  %i.ll = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.em:                                            ; preds = %bb.el
  br i1 %i.ll, label %bb.en, label %bb.ez

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #18
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %59, align 16, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i32 153, ptr %i.lm, align 16, !tbaa !58
  %i.ln = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %59, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ln, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.lo, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc306 unwind label %bb.ex

.noexc306:                                        ; preds = %bb.en
  %i.lp = getelementptr inbounds nuw i8, ptr %59, i64 128
end_hunk_1
begin_hunk_2_@_ZN2cv7fisheye9calibrateERKNS_11_InputArrayES3_RKNS_5Size_IiEERKNS_17_InputOutputArrayESA_RKNS_12_OutputArrayESD_iNS_12TermCriteriaE:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  br label %bb.gn

bb.gi:                                            ; preds = %bb.gb
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gg, %bb.gf, %bb.gd
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #18
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.pn217 = phi { ptr, i32 } [ %i.ot, %bb.gk ], [ %i.os, %bb.gj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #18
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gi
  %.pn217.pn = phi { ptr, i32 } [ %.pn217, %bb.gl ], [ %i.or, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  br label %.loopexit.split-lp

bb.gn:                                            ; preds = %bb.gh, %bb.ga
  %i.ou = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.go:                                            ; preds = %bb.gn
  br i1 %i.ou, label %bb.gp, label %.loopexit

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #18
  store i32 1124024390, ptr %66, align 8, !tbaa !60
  %i.ov = getelementptr inbounds nuw i8, ptr %66, i64 4
  store i32 1, ptr %i.ov, align 4, !tbaa !61
  %i.ow = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 1, ptr %i.ow, align 8, !tbaa !62
  %i.ox = getelementptr inbounds nuw i8, ptr %66, i64 12 ; 2 uses
  %i.oy = load ptr, ptr %i.gj, align 8, !tbaa !38
  %i.oz = load ptr, ptr %41, align 8, !tbaa !36
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = sdiv exact i64 %i.pc, 24
  %i.pe = trunc i64 %i.pd to i32
  store i32 %i.pe, ptr %i.ox, align 4, !tbaa !63
  %i.pf = getelementptr inbounds nuw i8, ptr %66, i64 16
  store i32 153, ptr %i.pf, align 8, !tbaa !58
  %i.pg = getelementptr inbounds nuw i8, ptr %66, i64 24 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %66, i64 40
  %i.pj = getelementptr inbounds nuw i8, ptr %66, i64 48
  %i.pk = getelementptr inbounds nuw i8, ptr %66, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pg, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.pk, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc322 unwind label %bb.gw

.noexc322:                                        ; preds = %bb.gp
  %i.pl = getelementptr inbounds nuw i8, ptr %66, i64 128
  %i.pm = getelementptr inbounds nuw i8, ptr %66, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pm, i8 0, i64 72, i1 false), !tbaa !64
  %i.pn = load i32, ptr %i.ox, align 4, !tbaa !63 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %66, i64 84
  store i32 %i.pn, ptr %i.po, align 4, !tbaa !18
  store i64 24, ptr %i.pl, align 8, !tbaa !64
  %i.pp = load ptr, ptr %41, align 8, !tbaa !65   ; 5 uses
  %i.pq = load ptr, ptr %i.gj, align 8, !tbaa !65 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit323, label %bb.gq

bb.gq:                                            ; preds = %.noexc322
  store ptr %i.pp, ptr %i.pg, align 8, !tbaa !59
  store ptr %i.pp, ptr %i.ph, align 8, !tbaa !66
  %i.ps = sext i32 %i.pn to i64
  %i.pt = mul nsw i64 %i.ps, 24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pt ; 2 uses
  store ptr %i.pu, ptr %i.pi, align 8, !tbaa !67
  store ptr %i.pu, ptr %i.pj, align 8, !tbaa !68
  br label %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit323

_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit323: ; preds = %bb.gq, %.noexc322
  %i.pv = ptrtoint ptr %i.pq to i64
  %i.pw = ptrtoint ptr %i.pp to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = sdiv exact i64 %i.px, 24
  %i.pz = trunc i64 %i.py to i32
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %65, ptr noundef nonnull align 8 dereferenceable(208) %66, i32 noundef 3, i32 noundef %i.pz)
          to label %bb.gr unwind label %bb.gx

bb.gr:                                            ; preds = %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit323
  %i.qa = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.gs unwind label %bb.gy

bb.gs:                                            ; preds = %bb.gr
  br i1 %i.qa, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.qb = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.gu unwind label %bb.gy

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.qc = phi i32 [ 70, %bb.gs ], [ %i.qb, %bb.gt ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %65, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.qc, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.gv unwind label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18
  br label %.loopexit

bb.gw:                                            ; preds = %bb.gp
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gx:                                            ; preds = %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit323
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gu, %bb.gt, %bb.gr
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #18
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.pn220 = phi { ptr, i32 } [ %i.qf, %bb.gy ], [ %i.qe, %bb.gx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #18
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gw
  %.pn220.pn = phi { ptr, i32 } [ %.pn220, %bb.gz ], [ %i.qd, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit320, %bb.ft, %bb.go, %bb.gv
  %i.qg = load double, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.qh = load ptr, ptr %41, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit, label %bb.hb

bb.hb:                                            ; preds = %.loopexit
  %i.qi = load ptr, ptr %i.gk, align 8, !tbaa !37
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qh to i64
  %i.ql = sub i64 %i.qj, %i.qk
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.ql) #20
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit:   ; preds = %.loopexit, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  %i.qm = load ptr, ptr %40, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i324 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit325, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit
  %i.qn = load ptr, ptr %i.gd, align 8, !tbaa !37
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = ptrtoint ptr %i.qm to i64
  %i.qq = sub i64 %i.qo, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qq) #20
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit325

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit325: ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.qr = load ptr, ptr %i.fv, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i326 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i.i326, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit327, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit325
  %i.qs = getelementptr inbounds nuw i8, ptr %32, i64 88
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !55
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv
  call void @_ZdlPvm(ptr noundef nonnull %i.qr, i64 noundef %i.qw) #20
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit327

_ZN2cv8internal15IntrinsicParamsD2Ev.exit327:     ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit325, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.qx = load ptr, ptr %i.hl, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i328 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.i.i328, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit329, label %bb.he

bb.he:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit327
  %i.qy = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qx to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef %i.rb) #20
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit329

_ZN2cv8internal15IntrinsicParamsD2Ev.exit329:     ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit327, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  %i.rc = load ptr, ptr %i.cl, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i330 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i330, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit331, label %bb.hf

bb.hf:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit329
  %i.rd = getelementptr inbounds nuw i8, ptr %30, i64 88
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !55
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #20
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit331

_ZN2cv8internal15IntrinsicParamsD2Ev.exit331:     ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit329, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ri = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !71
  %.not.i332 = icmp eq i32 %i.rj, 0
  br i1 %.not.i332, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.hg

bb.hg:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit331
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %13)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0
  call void @__clang_call_terminate(ptr %i.rl) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit331, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret double %i.qg

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fy, %bb.fx, %bb.ha, %bb.gm, %.body312, %.body308, %bb.ew
  %.pn223.pn.pn = phi { ptr, i32 } [ %.pn210.pn, %bb.ew ], [ %.pn220.pn, %bb.ha ], [ %i.nh, %bb.fy ], [ %.pn217.pn, %bb.gm ], [ %.pn215, %.body312 ], [ %.pn213, %.body308 ], [ %i.ng, %bb.fx ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.hi

bb.hi:                                            ; preds = %.loopexit.split-lp, %bb.ef, %bb.dh
  %.pn223.pn.pn.pn = phi { ptr, i32 } [ %.pn223.pn.pn, %.loopexit.split-lp ], [ %.pn205.pn.pn.pn, %bb.ef ], [ %i.if, %bb.dh ] ; 2 uses
  %i.rm = load ptr, ptr %41, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i333 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i333, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.rn = load ptr, ptr %i.gk, align 8, !tbaa !37
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rm to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rq) #20
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334: ; preds = %bb.hj, %bb.hi, %bb.dg
  %.pn223.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn223.pn.pn.pn, %bb.hj ], [ %i.ie, %bb.dg ], [ %.pn223.pn.pn.pn, %bb.hi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  %i.rr = load ptr, ptr %40, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i335 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i335, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit336, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334
  %i.rs = load ptr, ptr %i.gd, align 8, !tbaa !37
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rr to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef %i.rv) #20
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit336

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit336: ; preds = %bb.hk, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334, %bb.df
  %.pn223.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn223.pn.pn.pn.pn, %bb.hk ], [ %i.id, %bb.df ], [ %.pn223.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit334 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.hl

bb.hl:                                            ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit336, %bb.cu, %bb.cr, %bb.co
  %.pn223.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn223.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit336 ], [ %i.ff, %bb.co ], [ %.pn178.pn, %bb.cr ], [ %.pn181.pn, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.rw = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i337 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i.i337, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit338, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ry = getelementptr inbounds nuw i8, ptr %32, i64 88
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !55
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = ptrtoint ptr %i.rx to i64
  %i.sc = sub i64 %i.sa, %i.sb
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sc) #20
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit338

_ZN2cv8internal15IntrinsicParamsD2Ev.exit338:     ; preds = %bb.hm, %bb.hl, %bb.cn
  %.pn223.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.cn ], [ %.pn223.pn.pn.pn.pn.pn.pn, %bb.hl ], [ %.pn223.pn.pn.pn.pn.pn.pn, %bb.hm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.sd = getelementptr inbounds nuw i8, ptr %31, i64 72
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i339 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i.i339, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit340, label %bb.hn

bb.hn:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit338
  %i.sf = getelementptr inbounds nuw i8, ptr %31, i64 88
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !55
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = ptrtoint ptr %i.se to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef %i.sj) #20
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit340

_ZN2cv8internal15IntrinsicParamsD2Ev.exit340:     ; preds = %bb.hn, %_ZN2cv8internal15IntrinsicParamsD2Ev.exit338, %bb.cm
  %.pn223.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.cm ], [ %.pn223.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN2cv8internal15IntrinsicParamsD2Ev.exit338 ], [ %.pn223.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  %i.sk = getelementptr inbounds nuw i8, ptr %30, i64 72
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i341 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i341, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit342, label %bb.ho

bb.ho:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit340
  %i.sm = getelementptr inbounds nuw i8, ptr %30, i64 88
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !55
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.sq) #20
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit342

_ZN2cv8internal15IntrinsicParamsD2Ev.exit342:     ; preds = %bb.ho, %_ZN2cv8internal15IntrinsicParamsD2Ev.exit340, %bb.cl
  %.pn223.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.cl ], [ %.pn223.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN2cv8internal15IntrinsicParamsD2Ev.exit340 ], [ %.pn223.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.hp

bb.hp:                                            ; preds = %_ZN2cv8internal15IntrinsicParamsD2Ev.exit342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn237.pn = phi { ptr, i32 } [ %.pn237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.pn223.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN2cv8internal15IntrinsicParamsD2Ev.exit342 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %.pn161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %i.ao, %bb.ai ], [ %.pn155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  resume { ptr, i32 } %.pn237.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !102
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !64
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  %i.g = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.g, ptr %i.b, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.i, ptr %i.h, align 1, !tbaa !15
end_hunk_2
begin_hunk_3_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a
  %i.qs = getelementptr inbounds nuw i8, ptr %267, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %276, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %276, i64 24
  %i.qv = getelementptr inbounds nuw i8, ptr %276, i64 72
  %i.qw = getelementptr inbounds nuw i8, ptr %276, i64 128
  %i.qx = getelementptr inbounds nuw i8, ptr %155, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %155, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %277, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %277, i64 24
  %i.rb = getelementptr inbounds nuw i8, ptr %277, i64 72
  %i.rc = getelementptr inbounds nuw i8, ptr %277, i64 128
  %i.rd = getelementptr inbounds nuw i8, ptr %153, i64 8
  %i.re = getelementptr inbounds nuw i8, ptr %153, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %278, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %278, i64 20
  %i.rh = getelementptr inbounds nuw i8, ptr %278, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %279, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %279, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %280, i64 16
  %i.rl = getelementptr inbounds nuw i8, ptr %280, i64 20
  %i.rm = getelementptr inbounds nuw i8, ptr %280, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %281, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %281, i64 20
  %i.rp = getelementptr inbounds nuw i8, ptr %281, i64 8
  %i.rq = getelementptr inbounds nuw i8, ptr %282, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %282, i64 16
  %i.rs = shl nsw i32 %i.dg, 1                    ; 20 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %284, i64 432
  %i.ru = getelementptr inbounds nuw i8, ptr %284, i64 224
  %i.rv = getelementptr inbounds nuw i8, ptr %284, i64 16
  %i.rw = getelementptr inbounds nuw i8, ptr %150, i64 4
  %i.rx = getelementptr inbounds nuw i8, ptr %287, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %287, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %149, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %147, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %144, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %290, i64 8
  %i.sd = getelementptr inbounds nuw i8, ptr %290, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %143, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %141, i64 4
  %i.sg = getelementptr inbounds nuw i8, ptr %138, i64 4
  %i.sh = getelementptr inbounds nuw i8, ptr %294, i64 8
  %i.si = getelementptr inbounds nuw i8, ptr %294, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %137, i64 4
  %i.sk = getelementptr inbounds nuw i8, ptr %135, i64 4
  %i.sl = getelementptr inbounds nuw i8, ptr %132, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %298, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %298, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %131, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %129, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %126, i64 4
  %i.sr = getelementptr inbounds nuw i8, ptr %302, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %302, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %125, i64 4
  %i.su = getelementptr inbounds nuw i8, ptr %123, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %120, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %306, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %306, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %119, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %117, i64 4
  %i.ta = getelementptr inbounds nuw i8, ptr %114, i64 4
  %i.tb = getelementptr inbounds nuw i8, ptr %310, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %310, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %313, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %313, i64 20
  %i.tf = getelementptr inbounds nuw i8, ptr %313, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %314, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %314, i64 20
  %i.ti = getelementptr inbounds nuw i8, ptr %314, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %315, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %315, i64 8
  %i.tl = getelementptr inbounds nuw i8, ptr %316, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %316, i64 8
  %i.tn = getelementptr inbounds nuw i8, ptr %317, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %317, i64 24
  %i.tp = getelementptr inbounds nuw i8, ptr %317, i64 72
  %i.tq = getelementptr inbounds nuw i8, ptr %317, i64 128
  %i.tr = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %318, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %318, i64 24
  %i.tv = getelementptr inbounds nuw i8, ptr %318, i64 72
  %i.tw = getelementptr inbounds nuw i8, ptr %318, i64 128
  %i.tx = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.ty = getelementptr inbounds nuw i8, ptr %111, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %319, i64 16
  %i.ua = getelementptr inbounds nuw i8, ptr %319, i64 20
  %i.ub = getelementptr inbounds nuw i8, ptr %319, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %320, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %320, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %321, i64 16
  %i.uf = getelementptr inbounds nuw i8, ptr %321, i64 20
  %i.ug = getelementptr inbounds nuw i8, ptr %321, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %322, i64 16
  %i.ui = getelementptr inbounds nuw i8, ptr %322, i64 20
  %i.uj = getelementptr inbounds nuw i8, ptr %322, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %323, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %323, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %324, i64 432
  %i.un = getelementptr inbounds nuw i8, ptr %324, i64 224
  %i.uo = getelementptr inbounds nuw i8, ptr %324, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %108, i64 4
  %i.uq = getelementptr inbounds nuw i8, ptr %327, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %327, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %107, i64 4
  %i.ut = getelementptr inbounds nuw i8, ptr %105, i64 4
  %i.uu = getelementptr inbounds nuw i8, ptr %330, i64 432
  %i.uv = getelementptr inbounds nuw i8, ptr %330, i64 224
  %i.uw = getelementptr inbounds nuw i8, ptr %330, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %333, i64 432
  %i.uy = getelementptr inbounds nuw i8, ptr %333, i64 224
  %i.uz = getelementptr inbounds nuw i8, ptr %333, i64 16
  %i.va = getelementptr inbounds nuw i8, ptr %331, i64 432
  %i.vb = getelementptr inbounds nuw i8, ptr %331, i64 224
  %i.vc = getelementptr inbounds nuw i8, ptr %331, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %103, i64 4
  %i.ve = getelementptr inbounds nuw i8, ptr %101, i64 4
  %i.vf = getelementptr inbounds nuw i8, ptr %336, i64 432
  %i.vg = getelementptr inbounds nuw i8, ptr %336, i64 224
  %i.vh = getelementptr inbounds nuw i8, ptr %336, i64 16
  %i.vi = getelementptr inbounds nuw i8, ptr %339, i64 432
  %i.vj = getelementptr inbounds nuw i8, ptr %339, i64 224
  %i.vk = getelementptr inbounds nuw i8, ptr %339, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %337, i64 432
  %i.vm = getelementptr inbounds nuw i8, ptr %337, i64 224
  %i.vn = getelementptr inbounds nuw i8, ptr %337, i64 16
  %i.vo = getelementptr inbounds nuw i8, ptr %99, i64 4
  %i.vp = getelementptr inbounds nuw i8, ptr %97, i64 4
  %i.vq = getelementptr inbounds nuw i8, ptr %342, i64 432
  %i.vr = getelementptr inbounds nuw i8, ptr %342, i64 224
  %i.vs = getelementptr inbounds nuw i8, ptr %342, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %345, i64 432
  %i.vu = getelementptr inbounds nuw i8, ptr %345, i64 224
  %i.vv = getelementptr inbounds nuw i8, ptr %345, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %343, i64 432
  %i.vx = getelementptr inbounds nuw i8, ptr %343, i64 224
  %i.vy = getelementptr inbounds nuw i8, ptr %343, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %95, i64 4
  %i.wa = getelementptr inbounds nuw i8, ptr %93, i64 4
  %i.wb = getelementptr inbounds nuw i8, ptr %348, i64 432
  %i.wc = getelementptr inbounds nuw i8, ptr %348, i64 224
  %i.wd = getelementptr inbounds nuw i8, ptr %348, i64 16
  %i.we = getelementptr inbounds nuw i8, ptr %351, i64 432
  %i.wf = getelementptr inbounds nuw i8, ptr %351, i64 224
  %i.wg = getelementptr inbounds nuw i8, ptr %351, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %349, i64 432
  %i.wi = getelementptr inbounds nuw i8, ptr %349, i64 224
  %i.wj = getelementptr inbounds nuw i8, ptr %349, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %91, i64 4
  %i.wl = getelementptr inbounds nuw i8, ptr %88, i64 4
  %i.wm = getelementptr inbounds nuw i8, ptr %353, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %353, i64 16
  %i.wo = getelementptr inbounds nuw i8, ptr %87, i64 4
  %i.wp = getelementptr inbounds nuw i8, ptr %84, i64 4
  %i.wq = getelementptr inbounds nuw i8, ptr %356, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %356, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %83, i64 4
  %i.wt = getelementptr inbounds nuw i8, ptr %80, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %359, i64 8
  %i.wv = getelementptr inbounds nuw i8, ptr %359, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %79, i64 4
  %i.wx = getelementptr inbounds nuw i8, ptr %76, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %362, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %362, i64 16
  %i.xa = getelementptr inbounds nuw i8, ptr %75, i64 4
  %i.xb = getelementptr inbounds nuw i8, ptr %73, i64 4
  %i.xc = getelementptr inbounds nuw i8, ptr %70, i64 4
  %i.xd = getelementptr inbounds nuw i8, ptr %366, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %366, i64 16
  %i.xf = getelementptr inbounds nuw i8, ptr %69, i64 4
  %i.xg = getelementptr inbounds nuw i8, ptr %67, i64 4
  %i.xh = getelementptr inbounds nuw i8, ptr %64, i64 4
  %i.xi = getelementptr inbounds nuw i8, ptr %370, i64 8
  %i.xj = getelementptr inbounds nuw i8, ptr %370, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.xl = getelementptr inbounds nuw i8, ptr %61, i64 4
  %i.xm = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.xn = getelementptr inbounds nuw i8, ptr %374, i64 8
  %i.xo = getelementptr inbounds nuw i8, ptr %374, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %57, i64 4
  %i.xq = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.xr = getelementptr inbounds nuw i8, ptr %52, i64 4
  %i.xs = getelementptr inbounds nuw i8, ptr %378, i64 8
  %i.xt = getelementptr inbounds nuw i8, ptr %378, i64 16
  %i.xu = icmp sgt i32 %i.dg, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %256, i64 4
  %i.xw = getelementptr inbounds nuw i8, ptr %256, i64 84
  %i.xx = getelementptr inbounds nuw i8, ptr %256, i64 88
  %i.xy = getelementptr inbounds nuw i8, ptr %256, i64 12
  %i.xz = getelementptr inbounds nuw i8, ptr %256, i64 24
  %i.ya = getelementptr inbounds nuw i8, ptr %256, i64 128
  %i.yb = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %383, i64 8
  %i.yd = getelementptr inbounds nuw i8, ptr %383, i64 16
  %i.ye = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.yf = getelementptr inbounds nuw i8, ptr %385, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %385, i64 16
  %i.yh = getelementptr inbounds nuw i8, ptr %249, i64 8 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %249, i64 16 ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %247, i64 8 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %247, i64 16 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %251, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %387, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %387, i64 16 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %388, i64 16
  %i.yp = getelementptr inbounds nuw i8, ptr %388, i64 20
  %i.yq = getelementptr inbounds nuw i8, ptr %388, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %389, i64 16
  %i.ys = getelementptr inbounds nuw i8, ptr %389, i64 20
  %i.yt = getelementptr inbounds nuw i8, ptr %389, i64 8
  %i.yu = getelementptr inbounds nuw i8, ptr %397, i64 8
  %i.yv = getelementptr inbounds nuw i8, ptr %397, i64 16
  %i.yw = getelementptr inbounds nuw i8, ptr %395, i64 432
  %i.yx = getelementptr inbounds nuw i8, ptr %395, i64 224
  %i.yy = getelementptr inbounds nuw i8, ptr %395, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %396, i64 432
  %i.za = getelementptr inbounds nuw i8, ptr %396, i64 224
  %i.zb = getelementptr inbounds nuw i8, ptr %396, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %392, i64 432
  %i.zd = getelementptr inbounds nuw i8, ptr %392, i64 224
  %i.ze = getelementptr inbounds nuw i8, ptr %392, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %393, i64 432
  %i.zg = getelementptr inbounds nuw i8, ptr %393, i64 224
  %i.zh = getelementptr inbounds nuw i8, ptr %393, i64 16
  %i.zi = getelementptr inbounds nuw i8, ptr %46, i64 4
  %i.zj = getelementptr inbounds nuw i8, ptr %398, i64 16
  %i.zk = getelementptr inbounds nuw i8, ptr %398, i64 32
  %i.zl = getelementptr inbounds nuw i8, ptr %398, i64 64
  %i.zm = getelementptr inbounds nuw i8, ptr %398, i64 72 ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %187, i64 88 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %398, i64 88 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.zq = getelementptr inbounds nuw i8, ptr %400, i64 16
  %i.zr = getelementptr inbounds nuw i8, ptr %400, i64 32
  %i.zs = getelementptr inbounds nuw i8, ptr %400, i64 64
  %i.zt = getelementptr inbounds nuw i8, ptr %400, i64 72 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %188, i64 88 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %400, i64 88 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.zx = getelementptr inbounds nuw i8, ptr %402, i64 16
  %i.zy = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.zz = getelementptr inbounds nuw i8, ptr %404, i64 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %409, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %409, i64 24
  %i.aac = getelementptr inbounds nuw i8, ptr %409, i64 72
  %i.aad = getelementptr inbounds nuw i8, ptr %409, i64 128
  %i.aae = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.aag = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.aah = getelementptr inbounds nuw i8, ptr %407, i64 24
  %i.aai = getelementptr inbounds nuw i8, ptr %407, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %407, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %407, i64 12
  %i.aal = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.aam = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aan = getelementptr inbounds nuw i8, ptr %406, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %408, i64 432
  %i.aap = getelementptr inbounds nuw i8, ptr %408, i64 224
  %i.aaq = getelementptr inbounds nuw i8, ptr %408, i64 16
  %i.aar = getelementptr inbounds nuw i8, ptr %414, i64 16
  %i.aas = getelementptr inbounds nuw i8, ptr %414, i64 24
  %i.aat = getelementptr inbounds nuw i8, ptr %414, i64 72
  %i.aau = getelementptr inbounds nuw i8, ptr %414, i64 128
  %i.aav = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.aax = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.aay = getelementptr inbounds nuw i8, ptr %412, i64 24
  %i.aaz = getelementptr inbounds nuw i8, ptr %412, i64 4
  %i.aba = getelementptr inbounds nuw i8, ptr %412, i64 8
  %i.abb = getelementptr inbounds nuw i8, ptr %412, i64 12
  %i.abc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.abd = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.abe = getelementptr inbounds nuw i8, ptr %411, i64 16
  %i.abf = getelementptr inbounds nuw i8, ptr %413, i64 432
  %i.abg = getelementptr inbounds nuw i8, ptr %413, i64 224
  %i.abh = getelementptr inbounds nuw i8, ptr %413, i64 16
  %smax = call i32 @llvm.smax.i32(i32 %i.ps, i32 1) ; 3 uses
  %wide.trip.count1606 = and i64 %i.dh, 2147483647
  %wide.trip.count1595 = zext nneg i32 %smax to i64 ; 3 uses
  %wide.trip.count1611 = and i64 %i.dh, 2147483647
  %xtraiter = and i64 %wide.trip.count1595, 1
  %i.abi = icmp eq i32 %smax, 1
  %unroll_iter = and i64 %wide.trip.count1595, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1919 = trunc i32 %smax to i1
  br label %bb.ic

bb.ic:                                            ; preds = %.lr.ph1501, %._crit_edge1495
  %.not6041500 = phi i1 [ %.not6041496, %.lr.ph1501 ], [ %.not604, %._crit_edge1495 ]
  %i.abj = phi i32 [ %i.qm, %.lr.ph1501 ], [ %i.asc, %._crit_edge1495 ] ; 2 uses
  %.02811499 = phi i32 [ 0, %.lr.ph1501 ], [ %i.asb, %._crit_edge1495 ]
  %.05351498 = phi double [ 1.000000e+00, %.lr.ph1501 ], [ %i.asa, %._crit_edge1495 ]
  %i.abk = icmp ne i32 %i.abj, 2
  %i.abl = load double, ptr %i.qp, align 8
  %i.abm = fcmp ugt double %.05351498, %i.abl     ; 2 uses
  %or.cond893 = select i1 %i.abk, i1 true, i1 %i.abm
  br i1 %or.cond893, label %bb.id, label %._crit_edge1502

bb.id:                                            ; preds = %bb.ic
  %i.abn = icmp ne i32 %i.abj, 3
  %or.cond896 = select i1 %i.abm, i1 %.not6041500, i1 false
  %or.cond1387 = select i1 %i.abn, i1 true, i1 %or.cond896
  br i1 %or.cond1387, label %bb.ik, label %._crit_edge1502

._crit_edge1502:                                  ; preds = %._crit_edge1495, %bb.ic, %bb.id, %_ZNK2cv7MatExprcvNS_3MatEEv.exit1005
  %i.abo = getelementptr inbounds nuw i8, ptr %253, i64 24
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !59
  br label %bb.yh

bb.ie:                                            ; preds = %._crit_edge
  %i.abq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #18
  br label %bb.ade

bb.if:                                            ; preds = %bb.hy
  %i.abr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #18
  br label %bb.add

bb.ig:                                            ; preds = %bb.hz
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ih:                                            ; preds = %.body1001, %bb.ig
  %.pn600 = phi { ptr, i32 } [ %i.pz, %.body1001 ], [ %i.abs, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #18
  br label %bb.adc

bb.ii:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

bb.ij:                                            ; preds = %.body1003, %bb.ii
  %.pn602 = phi { ptr, i32 } [ %i.qh, %.body1003 ], [ %i.abt, %bb.ii ]
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #18
  br label %bb.adb

bb.ik:                                            ; preds = %bb.id
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %251, i32 noundef %i.pt, i32 noundef %i.pu, i32 noundef 6)
          to label %bb.il unwind label %.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %253, i32 noundef %i.pt, i32 noundef 1, i32 noundef 6)
          to label %bb.im unwind label %.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.im:                                            ; preds = %bb.il
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %255, i32 noundef %i.ps, i32 noundef %i.pu, i32 noundef 6)
          to label %bb.in unwind label %.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.in:                                            ; preds = %bb.im
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %256, i32 noundef %i.ps, i32 noundef 1, i32 noundef 6)
          to label %bb.io unwind label %.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %257) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %258) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %258) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %259) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %259) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %260) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %260) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %261) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %261) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %262) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %262) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %263) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %263) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %264) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %264) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %265) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %265) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %266) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %266) #18
  br i1 %i.mb, label %.lr.ph1490, label %._crit_edge1491

.lr.ph1490:                                       ; preds = %bb.io, %bb.to
  %indvars.iv1603 = phi i64 [ %indvars.iv.next1604, %bb.to ], [ 0, %bb.io ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %267) #18
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %267, i32 noundef %i.ps, i32 noundef %i.pu, i32 noundef 6)
          to label %bb.ip unwind label %bb.mk

bb.ip:                                            ; preds = %.lr.ph1490
  %i.abu = load ptr, ptr %267, align 8, !tbaa !52 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !54
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 24
  %i.abx = load ptr, ptr %i.abw, align 8
  invoke void %i.abx(ptr noundef nonnull align 8 dereferenceable(8) %i.abu, ptr noundef nonnull align 8 dereferenceable(688) %267, ptr noundef nonnull align 8 dereferenceable(208) %255, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit1007 unwind label %bb.ml, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit1007:             ; preds = %bb.ip
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qq) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qr) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qs) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %268) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %269) #18
end_hunk_3
begin_hunk_4_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a
  %.pn778 = phi { ptr, i32 } [ %i.aka, %bb.tj ], [ %i.akb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151 ], [ %i.akb, %bb.tk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %381) #18
  br label %bb.tv

._crit_edge1487.thread:                           ; preds = %bb.mj, %._crit_edge1487
  call void @llvm.lifetime.start.p0(ptr nonnull %383) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %384) #18
  %indvars.iv1603.tr = trunc nuw i64 %indvars.iv1603 to i32
  %i.akh = shl nuw i32 %indvars.iv1603.tr, 2
  %i.aki = mul nsw i32 %i.akh, %i.dg              ; 2 uses
  %indvars.iv.next1604 = add nuw nsw i64 %indvars.iv1603, 1 ; 3 uses
  %indvars.iv.next1604.tr = trunc nuw i64 %indvars.iv.next1604 to i32
  %i.akj = shl nuw i32 %indvars.iv.next1604.tr, 2
  %i.akk = mul nsw i32 %i.akj, %i.dg              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18, !noalias !428
  store i32 %i.aki, ptr %50, align 4, !tbaa !76, !noalias !428
  store i32 %i.akk, ptr %i.yb, align 4, !tbaa !77, !noalias !428
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18, !noalias !428
  store i64 9223372034707292160, ptr %51, align 8, !noalias !428
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %384, ptr noundef nonnull align 8 dereferenceable(208) %251, ptr noundef nonnull align 4 dereferenceable(8) %50, ptr noundef nonnull align 4 dereferenceable(8) %51)
          to label %bb.tl unwind label %bb.tp

bb.tl:                                            ; preds = %._crit_edge1487.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18, !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18, !noalias !428
  store i64 0, ptr %i.yd, align 8
  store i32 -1040121856, ptr %383, align 8, !tbaa !24
  store ptr %384, ptr %i.yc, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %255, ptr noundef nonnull align 8 dereferenceable(24) %383)
          to label %bb.tm unwind label %bb.tq

bb.tm:                                            ; preds = %bb.tl
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %384) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %385) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %386) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18, !noalias !429
  store i32 %i.aki, ptr %48, align 4, !tbaa !76, !noalias !429
  store i32 %i.akk, ptr %i.ye, align 4, !tbaa !77, !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18, !noalias !429
  store i64 9223372034707292160, ptr %49, align 8, !noalias !429
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %386, ptr noundef nonnull align 8 dereferenceable(208) %253, ptr noundef nonnull align 4 dereferenceable(8) %48, ptr noundef nonnull align 4 dereferenceable(8) %49)
          to label %bb.tn unwind label %bb.ts

bb.tn:                                            ; preds = %bb.tm
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18, !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18, !noalias !429
  store i64 0, ptr %i.yg, align 8
  store i32 -1040121856, ptr %385, align 8, !tbaa !24
  store ptr %386, ptr %i.yf, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %256, ptr noundef nonnull align 8 dereferenceable(24) %385)
          to label %bb.to unwind label %bb.tt

bb.to:                                            ; preds = %bb.tn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %386) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %347) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %341) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %335) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %329) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %283) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %277) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %276) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %275) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %274) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %272) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %270) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %268) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #18
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1604, %wide.trip.count1606
  br i1 %exitcond1607.not, label %._crit_edge1491, label %.lr.ph1490, !llvm.loop !338

bb.tp:                                            ; preds = %._crit_edge1487.thread
  %i.akl = landingpad { ptr, i32 }
          cleanup
  br label %bb.tr

bb.tq:                                            ; preds = %bb.tl
  %i.akm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %384) #18
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  %.pn780.pn = phi { ptr, i32 } [ %i.akm, %bb.tq ], [ %i.akl, %bb.tp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #18
  br label %bb.tv

bb.ts:                                            ; preds = %bb.tm
  %i.akn = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.tt:                                            ; preds = %bb.tn
  %i.ako = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %386) #18
  br label %bb.tu

bb.tu:                                            ; preds = %bb.tt, %bb.ts
  %.pn783.pn = phi { ptr, i32 } [ %i.ako, %bb.tt ], [ %i.akn, %bb.ts ]
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #18
  br label %bb.tv

bb.tv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, %bb.tr, %bb.tu, %bb.sx, %bb.sq, %bb.sj, %bb.sc, %bb.rv, %bb.rq, %bb.rl, %bb.rg
  %.pn786.pn = phi { ptr, i32 } [ %.pn742.pn.pn, %bb.rg ], [ %.pn773.pn.pn.pn, %bb.sx ], [ %.pn768.pn.pn.pn, %bb.sq ], [ %.pn763.pn.pn.pn, %bb.sj ], [ %.pn758.pn.pn.pn, %bb.sc ], [ %.pn754.pn.pn, %bb.rv ], [ %.pn750.pn.pn, %bb.rq ], [ %.pn746.pn.pn, %bb.rl ], [ %.pn778, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153 ], [ %.pn783.pn, %bb.tu ], [ %.pn780.pn, %bb.tr ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %347) #18
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.rb
  %.pn786.pn.pn = phi { ptr, i32 } [ %.pn786.pn, %bb.tv ], [ %.pn736.pn.pn.pn.pn, %bb.rb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %341) #18
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.qr
  %.pn786.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn, %bb.tw ], [ %.pn730.pn.pn.pn.pn, %bb.qr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %335) #18
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.qh
  %.pn786.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn, %bb.tx ], [ %.pn724.pn.pn.pn.pn, %bb.qh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %329) #18
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.px
  %.pn786.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn, %bb.ty ], [ %.pn718.pn.pn.pn.pn, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #18
  br label %bb.ua

bb.ua:                                            ; preds = %bb.tz, %bb.pn, %bb.pk, %bb.pd, %.body1073, %.body1068, %bb.oy, %bb.ox, %bb.oq, %bb.oj, %bb.oc, %bb.nv, %bb.no, %bb.nh
  %.pn786.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn, %bb.tz ], [ %.pn715.pn, %bb.pn ], [ %.pn711.pn.pn, %bb.pk ], [ %i.agt, %bb.pd ], [ %.pn703, %.body1073 ], [ %.pn701, %.body1068 ], [ %i.ago, %bb.oy ], [ %.pn691.pn.pn.pn, %bb.ox ], [ %.pn686.pn.pn.pn, %bb.oq ], [ %.pn681.pn.pn.pn, %bb.oj ], [ %.pn676.pn.pn.pn, %bb.oc ], [ %.pn671.pn.pn.pn, %bb.nv ], [ %.pn666.pn.pn.pn, %bb.no ], [ %.pn663.pn, %bb.nh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %283) #18
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.ne
  %.pn786.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn, %bb.ua ], [ %.pn659.pn.pn, %bb.ne ]
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #18
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.my
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn, %bb.ub ], [ %i.afk, %bb.my ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %277) #18
  br label %.body1024

.body1024:                                        ; preds = %bb.mx, %bb.iv, %bb.uc
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn, %bb.uc ], [ %i.afj, %bb.mx ], [ %i.ach, %bb.iv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %276) #18
  br label %.body1019

.body1019:                                        ; preds = %bb.mw, %bb.it, %.body1024
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body1024 ], [ %i.afi, %bb.mw ], [ %i.ace, %bb.it ]
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %275) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %274) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %272) #18
  br label %bb.ud

bb.ud:                                            ; preds = %.body1019, %bb.mv
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body1019 ], [ %.pn651, %bb.mv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %270) #18
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.ms
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ud ], [ %.pn649, %bb.ms ]
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %268) #18
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.mp
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ue ], [ %.pn647, %bb.mp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #18
  br label %bb.yg

._crit_edge1491:                                  ; preds = %bb.to, %bb.io
  %i.akp = load double, ptr %249, align 16, !tbaa !20
  %i.akq = load double, ptr %i.yh, align 8, !tbaa !20
  %i.akr = load double, ptr %i.yi, align 16, !tbaa !20
  %i.aks = load double, ptr %247, align 16, !tbaa !20
  %430 = load <2 x double>, ptr %i.yj, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %387) #18
  %i.akt = load i32, ptr %i.yl, align 8, !tbaa !62 ; 3 uses
  %i.aku = sext i32 %i.akt to i64                 ; 3 uses
  %i.akv = icmp slt i32 %i.akt, 0
  br i1 %i.akv, label %bb.ug, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i1158

bb.ug:                                            ; preds = %._crit_edge1491
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #19
          to label %.noexc1162 unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1162:                                       ; preds = %bb.ug
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i1158: ; preds = %._crit_edge1491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %387, i8 0, i64 24, i1 false)
  %.not.i.i.i.i1159 = icmp eq i32 %i.akt, 0
  br i1 %.not.i.i.i.i1159, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i1161, label %bb.uh

bb.uh:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i1158
  %i.akw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aku) #21
          to label %.noexc1163 unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc1163:                                       ; preds = %bb.uh
  store ptr %i.akw, ptr %387, align 8, !tbaa !17
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.aku ; 2 uses
  store ptr %i.akx, ptr %i.yn, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.akw, i8 1, i64 %i.aku, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i1161

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i1161: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i1158, %.noexc1163
  %.0.i.i.i.i.i.i.i1160 = phi ptr [ %i.akx, %.noexc1163 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i1158 ]
  store ptr %.0.i.i.i.i.i.i.i1160, ptr %i.ym, align 8, !tbaa !72
  invoke fastcc void @_ZN2cv12_GLOBAL__N_19subMatrixERKNS_3MatERS1_RKSt6vectorIhSaIhEES9_(ptr noundef nonnull align 8 dereferenceable(208) %251, ptr noundef nonnull align 8 dereferenceable(208) %251, ptr noundef nonnull align 8 dereferenceable(24) %221, ptr noundef nonnull align 8 dereferenceable(24) %387)
          to label %bb.ui unwind label %bb.vb

bb.ui:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i1161
  %i.aky = load ptr, ptr %387, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.akz = load ptr, ptr %i.yn, align 8, !tbaa !55
  %i.ala = ptrtoint ptr %i.akz to i64
  %i.alb = ptrtoint ptr %i.aky to i64
  %i.alc = sub i64 %i.ala, %i.alb
  call void @_ZdlPvm(ptr noundef nonnull %i.aky, i64 noundef %i.alc) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.ui, %bb.uj
  call void @llvm.lifetime.end.p0(ptr nonnull %387) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %388) #18
  store i32 0, ptr %i.yo, align 8, !tbaa !41
  store i32 0, ptr %i.yp, align 4, !tbaa !42
  %i.ald = load ptr, ptr %i.lh, align 8, !tbaa !72
  %i.ale = load ptr, ptr %i.iy, align 8, !tbaa !17
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = ptrtoint ptr %i.ale to i64
  %i.alh = sub i64 %i.alf, %i.alg                 ; 2 uses
  %.not.i = icmp ugt i64 %i.alh, 2147483647
  br i1 %.not.i, label %bb.uk, label %bb.ul

bb.uk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.alh, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1IhEERKSt6vectorIT_SaIS3_EEE15__cv_check__174) #19
          to label %.noexc1165 unwind label %.loopexit.split-lp1404.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1165:                                       ; preds = %bb.uk
  unreachable

bb.ul:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  store i32 -2130509824, ptr %388, align 8, !tbaa !24
  store ptr %i.iy, ptr %i.yq, align 8, !tbaa !23
  %i.ali = invoke noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %388)
          to label %bb.um unwind label %.loopexit.split-lp1404.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.um:                                            ; preds = %bb.ul
  call void @llvm.lifetime.end.p0(ptr nonnull %388) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %389) #18
  store i32 0, ptr %i.yr, align 8, !tbaa !41
  store i32 0, ptr %i.ys, align 4, !tbaa !42
  %i.alj = load ptr, ptr %i.lp, align 8, !tbaa !72
  %i.alk = load ptr, ptr %i.ka, align 8, !tbaa !17
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = ptrtoint ptr %i.alk to i64
  %i.aln = sub i64 %i.all, %i.alm                 ; 2 uses
  %.not.i1166 = icmp ugt i64 %i.aln, 2147483647
  br i1 %.not.i1166, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.aln, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1IhEERKSt6vectorIT_SaIS3_EEE15__cv_check__174) #19
          to label %.noexc1167 unwind label %.loopexit.split-lp1409.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1167:                                       ; preds = %bb.un
  unreachable

bb.uo:                                            ; preds = %bb.um
  store i32 -2130509824, ptr %389, align 8, !tbaa !24
  store ptr %i.ka, ptr %i.yt, align 8, !tbaa !23
  %i.alo = invoke noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %389)
          to label %bb.up unwind label %.loopexit.split-lp1409.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.up:                                            ; preds = %bb.uo
  call void @llvm.lifetime.end.p0(ptr nonnull %389) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %390) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %390) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %391) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %392) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %393) #18
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %393, ptr noundef nonnull align 8 dereferenceable(208) %251)
          to label %bb.uq unwind label %bb.vd

bb.uq:                                            ; preds = %bb.up
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %392, ptr noundef nonnull align 8 dereferenceable(688) %393, ptr noundef nonnull align 8 dereferenceable(208) %251)
          to label %bb.ur unwind label %bb.ve

bb.ur:                                            ; preds = %bb.uq
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %391, ptr noundef nonnull align 8 dereferenceable(688) %392)
          to label %bb.us unwind label %bb.vf

bb.us:                                            ; preds = %bb.ur
  call void @llvm.lifetime.start.p0(ptr nonnull %394) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %395) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %396) #18
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %396, ptr noundef nonnull align 8 dereferenceable(208) %251)
          to label %bb.ut unwind label %bb.vg

bb.ut:                                            ; preds = %bb.us
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %395, ptr noundef nonnull align 8 dereferenceable(688) %396, ptr noundef nonnull align 8 dereferenceable(208) %253)
          to label %bb.uu unwind label %bb.vh

bb.uu:                                            ; preds = %bb.ut
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %394, ptr noundef nonnull align 8 dereferenceable(688) %395)
          to label %bb.uv unwind label %bb.vi

bb.uv:                                            ; preds = %bb.uu
  call void @llvm.lifetime.start.p0(ptr nonnull %397) #18
  store i64 0, ptr %i.yv, align 8
  store i32 33619968, ptr %397, align 8, !tbaa !24
  store ptr %390, ptr %i.yu, align 8, !tbaa !23
  %i.alp = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %391, ptr noundef nonnull align 8 dereferenceable(24) %394, ptr noundef nonnull align 8 dereferenceable(24) %397, i32 noundef 0)
          to label %bb.uw unwind label %bb.vj     ; 0 uses

bb.uw:                                            ; preds = %bb.uv
  call void @llvm.lifetime.end.p0(ptr nonnull %397) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.yw) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.yx) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.yy) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.yz) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.za) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.zb) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %396) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %395) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %394) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.zc) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.zd) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ze) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.zf) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.zg) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.zh) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %393) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %392) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %391) #18
  %i.alq = icmp sgt i32 %i.ali, 0
  br i1 %i.alq, label %bb.ux, label %bb.vt

bb.ux:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %398) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %399) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18, !noalias !430
  store i32 0, ptr %46, align 4, !tbaa !76, !noalias !430
  store i32 %i.ali, ptr %i.zi, align 4, !tbaa !77, !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18, !noalias !430
  store i64 9223372034707292160, ptr %47, align 8, !noalias !430
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %399, ptr noundef nonnull align 8 dereferenceable(208) %390, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47)
          to label %bb.uy unwind label %bb.vq

bb.uy:                                            ; preds = %bb.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18, !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18, !noalias !430
  invoke void @_ZN2cv8internal15IntrinsicParamsplERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::internal::IntrinsicParams") align 8 %398, ptr noundef nonnull align 8 dereferenceable(96) %187, ptr noundef nonnull align 8 dereferenceable(208) %399)
          to label %bb.uz unwind label %bb.vr

bb.uz:                                            ; preds = %bb.uy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %187, ptr noundef nonnull align 8 dereferenceable(96) %398, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.zj, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %i.zk, i64 32, i1 false)
  %i.alr = load double, ptr %i.zl, align 8, !tbaa !33
  store double %i.alr, ptr %i.hw, align 8, !tbaa !33
  %i.als = load ptr, ptr %i.iy, align 8, !tbaa !17 ; 3 uses
  %i.alt = load ptr, ptr %i.zn, align 8, !tbaa !55
  %i.alu = load <2 x ptr>, ptr %i.zm, align 8, !tbaa !56
  store <2 x ptr> %i.alu, ptr %i.iy, align 8, !tbaa !56
  %i.alv = load ptr, ptr %i.zo, align 8, !tbaa !55
  store ptr %i.alv, ptr %i.zn, align 8, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq ptr %i.als, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zm, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit, label %_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit

_ZN2cv8internal15IntrinsicParamsaSEOS1_.exit:     ; preds = %bb.uz
  %i.alw = ptrtoint ptr %i.alt to i64
  %i.alx = ptrtoint ptr %i.als to i64
end_hunk_4
begin_hunk_5_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a
  %or.cond15.i1217 = select i1 %or.cond13.i1216, i1 %i.aqf, i1 false
  br i1 %or.cond15.i1217, label %bb.xi, label %bb.xj

bb.xi:                                            ; preds = %bb.xh
  %i.aqg = load i32, ptr %412, align 8, !tbaa !60, !noalias !441 ; 2 uses
  %i.aqh = and i32 %i.aqg, 4064
  %i.aqi = icmp eq i32 %i.aqh, 0
  br i1 %i.aqi, label %bb.xo, label %bb.xj

bb.xj:                                            ; preds = %bb.xi, %bb.xh, %_ZNK2cv7MatExprcvNS_3MatEEv.exit1208
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !441
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.xk unwind label %bb.xm, !noalias !441

bb.xk:                                            ; preds = %bb.xj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv, ptr noundef nonnull @.str.48, i32 noundef 1301) #19
          to label %bb.xl unwind label %bb.xn, !noalias !441

bb.xl:                                            ; preds = %bb.xk
  unreachable

bb.xm:                                            ; preds = %bb.xj
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1211

bb.xn:                                            ; preds = %bb.xk
  %i.aqk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aql = load ptr, ptr %24, align 8, !tbaa !14, !noalias !441 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.aqn = icmp eq ptr %i.aql, %i.aqm
  br i1 %i.aqn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1214: ; preds = %bb.xn
  %i.aqo = load i64, ptr %i.aqm, align 8, !tbaa !15, !noalias !441
  %i.aqp = add i64 %i.aqo, 1
  call void @_ZdlPvm(ptr noundef %i.aql, i64 noundef %i.aqp) #20, !noalias !441
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1211: ; preds = %bb.xn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1214, %bb.xm
  %.pn.i1212 = phi { ptr, i32 } [ %i.aqj, %bb.xm ], [ %i.aqk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1214 ], [ %i.aqk, %bb.xn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !441
  br label %.body1206

bb.xo:                                            ; preds = %bb.xi
  %i.aqq = and i32 %i.aqg, 16415
  %or.cond17.i1218 = icmp eq i32 %i.aqq, 16390
  br i1 %or.cond17.i1218, label %bb.xp, label %bb.xq

bb.xp:                                            ; preds = %bb.xo
  %i.aqr = load <2 x double>, ptr %i.apx, align 8, !tbaa !20, !noalias !441
  store <2 x double> %i.aqr, ptr %411, align 16, !tbaa !20, !alias.scope !441
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apx, i64 16
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !20, !noalias !441
  store double %i.aqt, ptr %i.abe, align 16, !tbaa !20, !alias.scope !441
  br label %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit1222

bb.xq:                                            ; preds = %bb.xo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %411, i8 0, i64 24, i1 false), !tbaa !20, !alias.scope !441
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18, !noalias !441
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef %i.aqa, i32 noundef %i.aqc, i32 noundef 6, ptr noundef nonnull align 8 %411, i64 noundef 0)
          to label %.noexc1219 unwind label %bb.yc

.noexc1219:                                       ; preds = %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18, !noalias !441
  store i64 0, ptr %i.abd, align 8, !noalias !441
  store i32 33619968, ptr %27, align 8, !tbaa !24, !noalias !441
  store ptr %26, ptr %i.abc, align 8, !tbaa !23, !noalias !441
  %i.aqu = load i32, ptr %26, align 8, !tbaa !60, !noalias !441
  %i.aqv = and i32 %i.aqu, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %412, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef %i.aqv, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.xr unwind label %bb.xs

bb.xr:                                            ; preds = %.noexc1219
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18, !noalias !441
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18, !noalias !441
  br label %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit1222

bb.xs:                                            ; preds = %.noexc1219
  %i.aqw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18, !noalias !441
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18, !noalias !441
  br label %.body1206

_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit1222: ; preds = %bb.xr, %bb.xp
  %i.aqx = load ptr, ptr %204, align 8, !tbaa !36
  %i.aqy = getelementptr inbounds nuw [24 x i8], ptr %i.aqx, i64 %indvars.iv1608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqy, ptr noundef nonnull align 16 dereferenceable(24) %411, i64 24, i1 false)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %412) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abf) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abg) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abh) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %415) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %415) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %414) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %414) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %413) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %412) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %411) #18
  %indvars.iv.next1609 = add nuw nsw i64 %indvars.iv1608, 1 ; 2 uses
  %exitcond1612.not = icmp eq i64 %indvars.iv.next1609, %wide.trip.count1611
  br i1 %exitcond1612.not, label %._crit_edge1495, label %bb.wm, !llvm.loop !363

bb.xt:                                            ; preds = %.noexc1184, %bb.wm
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  br label %.body1186

bb.xu:                                            ; preds = %bb.wo
  %i.ara = landingpad { ptr, i32 }
          cleanup
  br label %bb.xy

bb.xv:                                            ; preds = %bb.wp
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %bb.xx

bb.xw:                                            ; preds = %bb.wq, %bb.xa
  %i.arc = landingpad { ptr, i32 }
          cleanup
  br label %.body1191

.body1191:                                        ; preds = %bb.xw, %bb.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn630 = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.arc, %bb.xw ], [ %i.apm, %bb.xc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %407) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %408) #18
  br label %bb.xx

bb.xx:                                            ; preds = %.body1191, %bb.xv
  %.pn630.pn = phi { ptr, i32 } [ %.pn630, %.body1191 ], [ %i.arb, %bb.xv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %410) #18
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xu
  %.pn630.pn.pn = phi { ptr, i32 } [ %.pn630.pn, %bb.xx ], [ %i.ara, %bb.xu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %410) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %409) #18
  br label %.body1186

.body1186:                                        ; preds = %bb.xt, %bb.wn, %bb.xy
  %.pn630.pn.pn.pn = phi { ptr, i32 } [ %.pn630.pn.pn, %bb.xy ], [ %i.aqz, %bb.xt ], [ %i.aoe, %bb.wn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %409) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %408) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %407) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %406) #18
  br label %bb.yf

bb.xz:                                            ; preds = %.noexc1199, %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit
  %i.ard = landingpad { ptr, i32 }
          cleanup
  br label %.body1201

bb.ya:                                            ; preds = %bb.xe
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %bb.ye

bb.yb:                                            ; preds = %bb.xf
  %i.arf = landingpad { ptr, i32 }
          cleanup
  br label %bb.yd

bb.yc:                                            ; preds = %bb.xg, %bb.xq
  %i.arg = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

.body1206:                                        ; preds = %bb.yc, %bb.xs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1211
  %.pn635 = phi { ptr, i32 } [ %.pn.i1212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1211 ], [ %i.arg, %bb.yc ], [ %i.aqw, %bb.xs ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %412) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %413) #18
  br label %bb.yd

bb.yd:                                            ; preds = %.body1206, %bb.yb
  %.pn635.pn = phi { ptr, i32 } [ %.pn635, %.body1206 ], [ %i.arf, %bb.yb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %415) #18
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.ya
  %.pn635.pn.pn = phi { ptr, i32 } [ %.pn635.pn, %bb.yd ], [ %i.are, %bb.ya ]
  call void @llvm.lifetime.end.p0(ptr nonnull %415) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %414) #18
  br label %.body1201

.body1201:                                        ; preds = %bb.xz, %bb.xd, %bb.ye
  %.pn635.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn, %bb.ye ], [ %i.ard, %bb.xz ], [ %i.apr, %bb.xd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %414) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %413) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %412) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %411) #18
  br label %bb.yf

._crit_edge1495:                                  ; preds = %_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv.exit1222, %bb.wf
  %i.arh = load double, ptr %249, align 16, !tbaa !20 ; 2 uses
  %i.ari = load double, ptr %i.yh, align 8, !tbaa !20 ; 2 uses
  %i.arj = load double, ptr %i.yi, align 16, !tbaa !20 ; 3 uses
  %431 = fsub double %i.arh, %i.akp               ; 2 uses
  %i.ark = fsub double %i.ari, %i.akq             ; 2 uses
  %i.arl = fsub double %i.arj, %i.akr             ; 2 uses
  %432 = call double @llvm.fmuladd.f64(double %431, double %431, double 0.000000e+00)
  %i.arm = call double @llvm.fmuladd.f64(double %i.ark, double %i.ark, double %432)
  %i.arn = call double @llvm.fmuladd.f64(double %i.arl, double %i.arl, double %i.arm)
  %433 = load double, ptr %247, align 16, !tbaa !20 ; 3 uses
  %434 = fsub double %433, %i.aks                 ; 2 uses
  %435 = load <2 x double>, ptr %i.yj, align 8, !tbaa !20 ; 3 uses
  %436 = fsub <2 x double> %435, %430             ; 2 uses
  %437 = shufflevector <2 x double> %436, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %438 = insertelement <2 x double> %437, double %i.ari, i64 1 ; 2 uses
  %i.aro = call double @llvm.fmuladd.f64(double %434, double %434, double %i.arn)
  %439 = insertelement <2 x double> %436, double %i.arh, i64 1 ; 2 uses
  %i.arp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aro, i64 0
  %440 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %439, <2 x double> %439, <2 x double> %i.arp)
  %i.arq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %438, <2 x double> %438, <2 x double> %440) ; 2 uses
  %i.arr = extractelement <2 x double> %i.arq, i64 1
  %i.ars = call double @llvm.fmuladd.f64(double %i.arj, double %i.arj, double %i.arr)
  %i.art = call double @llvm.fmuladd.f64(double %433, double %433, double %i.ars)
  %441 = extractelement <2 x double> %435, i64 0  ; 2 uses
  %i.aru = call double @llvm.fmuladd.f64(double %441, double %441, double %i.art)
  %442 = extractelement <2 x double> %435, i64 1  ; 2 uses
  %i.arv = call double @llvm.fmuladd.f64(double %442, double %442, double %i.aru)
  %i.arw = insertelement <2 x double> %i.arq, double %i.arv, i64 1
  %i.arx = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.arw) ; 2 uses
  %i.ary = extractelement <2 x double> %i.arx, i64 0
  %i.arz = extractelement <2 x double> %i.arx, i64 1
  %i.asa = fdiv double %i.ary, %i.arz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %390) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %390) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %266) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %265) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %264) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %263) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %262) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %261) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %261) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %260) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %260) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %259) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %258) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %258) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %257) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #18
  %i.asb = add nuw nsw i32 %.02811499, 1          ; 2 uses
  %i.asc = load i32, ptr %13, align 8, !tbaa !40  ; 2 uses
  %i.asd = icmp ne i32 %i.asc, 1
  %i.ase = load i32, ptr %i.ql, align 4
  %.not604 = icmp slt i32 %i.asb, %i.ase          ; 2 uses
  %or.cond889 = select i1 %i.asd, i1 true, i1 %.not604
  br i1 %or.cond889, label %bb.ic, label %._crit_edge1502, !llvm.loop !364

bb.yf:                                            ; preds = %.body1186, %.body1201, %bb.wl, %bb.wi, %bb.wa, %bb.vs, %bb.vp
  %.pn635.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn612.pn.pn.pn.pn.pn.pn, %bb.vp ], [ %.pn630.pn.pn.pn, %.body1186 ], [ %.pn626, %bb.wl ], [ %.pn624, %bb.wi ], [ %.pn622, %bb.wa ], [ %.pn620, %bb.vs ], [ %.pn635.pn.pn.pn, %.body1201 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %390) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %390) #18
  br label %bb.yg

bb.yg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit1173, %.loopexit.split-lp1409.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.yf, %.loopexit.split-lp1404.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mm, %bb.uf
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn645, %bb.mm ], [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.uf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1409.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn606, %_ZNSt6vectorIhSaIhEED2Ev.exit1173 ], [ %lpad.loopexit.split-lp1851, %.loopexit.split-lp1404.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn635.pn.pn.pn.pn.pn, %bb.yf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %266) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %265) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %264) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %263) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %262) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %261) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %261) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %260) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %260) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %259) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %258) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %258) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %257) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #18
  br label %.loopexit.split-lp1391.loopexit.split-lp

bb.yh:                                            ; preds = %bb.yk, %._crit_edge1502
  %.0276 = phi double [ 0.000000e+00, %._crit_edge1502 ], [ %i.asp, %bb.yk ] ; 2 uses
  %.0275 = phi i64 [ 0, %._crit_edge1502 ], [ %i.asq, %bb.yk ] ; 3 uses
  %i.asf = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %253)
          to label %bb.yi unwind label %.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yi:                                            ; preds = %bb.yh
  %i.asg = lshr i64 %i.asf, 1
  %i.ash = icmp samesign ult i64 %.0275, %i.asg
  br i1 %i.ash, label %bb.yk, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.asi = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %253)
          to label %bb.yl unwind label %.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1391.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.yh, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.yj
  %lpad.loopexit.split-lp1845 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1391.loopexit.split-lp

bb.yk:                                            ; preds = %bb.yi
  %i.asj = getelementptr inbounds nuw [16 x i8], ptr %i.abp, i64 %.0275 ; 2 uses
  %i.ask = load double, ptr %i.asj, align 8, !tbaa !20 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  %i.asm = load double, ptr %i.asl, align 8, !tbaa !20 ; 2 uses
  %i.asn = fmul double %i.asm, %i.asm
  %i.aso = call double @llvm.fmuladd.f64(double %i.ask, double %i.ask, double %i.asn)
  %i.asp = fadd double %.0276, %i.aso
  %i.asq = add nuw nsw i64 %.0275, 1
  br label %bb.yh, !llvm.loop !365

bb.yl:                                            ; preds = %bb.yj
  %i.asr = uitofp i64 %i.asi to double
  %i.ass = fmul nnan double %i.asr, 5.000000e-01
  %i.ast = fdiv double %.0276, %i.ass
  %i.asu = call double @sqrt(double noundef %i.ast) #18
  %i.asv = load double, ptr %187, align 8, !tbaa !20 ; 2 uses
  %i.asw = load double, ptr %i.hw, align 8, !tbaa !33
  %i.asx = fmul double %i.asv, %i.asw
  %i.asy = load double, ptr %i.hs, align 8, !tbaa !20
  %i.asz = load double, ptr %.sroa.51366.0..sroa_idx, align 8, !tbaa !20
  %i.ata = load double, ptr %.sroa.51364.0..sroa_idx, align 8, !tbaa !20
  store double %i.asv, ptr %191, align 8
  store double %i.asx, ptr %i.hp, align 8
  store double %i.asy, ptr %i.hk, align 8
  %.sroa.61303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %191, i64 24
  store double 0.000000e+00, ptr %.sroa.61303.0..sroa_idx, align 8
  store double %i.asz, ptr %i.hi, align 8
  store double %i.ata, ptr %i.hm, align 8
  %.sroa.91306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %191, i64 48
  %.sroa.111308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %191, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91306.0..sroa_idx, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.111308.0..sroa_idx, align 8, !tbaa !15
  %i.atb = load double, ptr %188, align 8, !tbaa !20 ; 2 uses
  %i.atc = load double, ptr %i.im, align 8, !tbaa !33
  %i.atd = fmul double %i.atb, %i.atc
  %i.ate = load double, ptr %i.ii, align 8, !tbaa !20
  %i.atf = load double, ptr %.sroa.51357.0..sroa_idx, align 8, !tbaa !20
  %i.atg = load double, ptr %.sroa.51355.0..sroa_idx, align 8, !tbaa !20
  store double %i.atb, ptr %192, align 8
  store double %i.atd, ptr %i.if, align 8
  store double %i.ate, ptr %i.ia, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %192, i64 24
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  store double %i.atf, ptr %i.hy, align 8
  store double %i.atg, ptr %i.ic, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %192, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %192, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %416) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %416) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %417) #18
  %i.ath = getelementptr inbounds nuw i8, ptr %417, i64 16
  store i32 -1056833530, ptr %417, align 8, !tbaa !24
  %i.ati = getelementptr inbounds nuw i8, ptr %417, i64 8
  store ptr %247, ptr %i.ati, align 8, !tbaa !23
  store i64 12884901889, ptr %i.ath, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %418) #18
  %i.atj = getelementptr inbounds nuw i8, ptr %418, i64 8
  %i.atk = getelementptr inbounds nuw i8, ptr %418, i64 16
  store i64 0, ptr %i.atk, align 8
  store i32 33619968, ptr %418, align 8, !tbaa !24
  store ptr %416, ptr %i.atj, align 8, !tbaa !23
  %i.atl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ym unwind label %bb.yw

bb.ym:                                            ; preds = %bb.yl
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %417, ptr noundef nonnull align 8 dereferenceable(24) %418, ptr noundef nonnull align 8 dereferenceable(24) %i.atl)
          to label %bb.yn unwind label %bb.yw

bb.yn:                                            ; preds = %bb.ym
  call void @llvm.lifetime.end.p0(ptr nonnull %418) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %417) #18
  %i.atm = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.yo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yo:                                            ; preds = %bb.yn
  br i1 %i.atm, label %bb.yp, label %bb.yz

bb.yp:                                            ; preds = %bb.yo
  call void @llvm.lifetime.start.p0(ptr nonnull %419) #18
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %419, align 16, !tbaa !18
  %i.atn = getelementptr inbounds nuw i8, ptr %419, i64 16
  store i32 153, ptr %i.atn, align 16, !tbaa !58
  %i.ato = getelementptr inbounds nuw i8, ptr %419, i64 24
  %i.atp = getelementptr inbounds nuw i8, ptr %419, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ato, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.atp, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc1223 unwind label %bb.yx

.noexc1223:                                       ; preds = %bb.yp
  %i.atq = getelementptr inbounds nuw i8, ptr %419, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.atq, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %191, i64 noundef 0)
          to label %.noexc1224 unwind label %bb.yx

.noexc1224:                                       ; preds = %.noexc1223
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.atr = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ats = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ats, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !24
  store ptr %419, ptr %i.atr, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.yr unwind label %bb.yq

bb.yq:                                            ; preds = %.noexc1224
  %i.att = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.body1225
end_hunk_5
begin_hunk_6_@_ZN2cv8internal22ComputeExtrinsicRefineERKNS_3MatES3_RS1_S4_S4_iRKNS0_15IntrinsicParamsEd:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  store i32 0, ptr %i.ga, align 8, !tbaa !41
  store i32 0, ptr %i.gb, align 4, !tbaa !42
  store i32 16842752, ptr %34, align 8, !tbaa !24
  store ptr %4, ptr %i.gc, align 8, !tbaa !23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %33) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.gd) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ge) #18
  %i.io = invoke noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, i32 noundef 2)
          to label %_ZN2cv3SVDC2ERKNS_11_InputArrayEi.exit unwind label %.body121 ; 0 uses

.body121:                                         ; preds = %bb.aw
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ge) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gd) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.ck

_ZN2cv3SVDC2ERKNS_11_InputArrayEi.exit:           ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %i.iq = load i32, ptr %i.gf, align 4, !tbaa !61
  %i.ir = icmp slt i32 %i.iq, 2
  br i1 %i.ir, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZN2cv3SVDC2ERKNS_11_InputArrayEi.exit
  %i.is = load i32, ptr %i.gd, align 8, !tbaa !60
  %i.it = and i32 %i.is, 16384
  %i.iu = icmp ne i32 %i.it, 0
  %i.iv = load i32, ptr %i.gg, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  %or.cond.i123 = select i1 %i.iu, i1 true, i1 %i.iw
  br i1 %or.cond.i123, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ix = load i32, ptr %i.gh, align 8, !tbaa !18
  %i.iy = icmp eq i32 %i.ix, 1
  %i.iz = load ptr, ptr %i.gi, align 8, !tbaa !59 ; 3 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !20 ; 2 uses
  br i1 %i.iy, label %bb.bb, label %bb.bc

bb.az:                                            ; preds = %_ZN2cv3SVDC2ERKNS_11_InputArrayEi.exit
  %i.jb = load ptr, ptr %i.gi, align 8, !tbaa !59 ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  br label %_ZN2cv3Mat2atIdEERT_i.exit128

bb.ba:                                            ; preds = %bb.ax
  %i.je = load ptr, ptr %i.gi, align 8, !tbaa !59 ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  br label %_ZN2cv3Mat2atIdEERT_i.exit128

bb.bb:                                            ; preds = %bb.ay
  %i.jh = load i64, ptr %i.gk, align 8, !tbaa !64
  %i.ji = mul i64 %i.jh, 5
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ji
  br label %_ZN2cv3Mat2atIdEERT_i.exit128

bb.bc:                                            ; preds = %bb.ay
  %i.jk = load i32, ptr %i.gj, align 4, !tbaa !63 ; 3 uses
  %i.jl = sdiv i32 5, %i.jk                       ; 2 uses
  %i.jm = mul nsw i32 %i.jl, %i.jk                ; 0 uses
  %.recomposed197 = srem i32 5, %i.jk
  %i.jn = load i64, ptr %i.gk, align 8, !tbaa !64
  %i.jo = sext i32 %i.jl to i64
  %i.jp = mul i64 %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jp
  %i.jr = sext i32 %.recomposed197 to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jr
  br label %_ZN2cv3Mat2atIdEERT_i.exit128

_ZN2cv3Mat2atIdEERT_i.exit128:                    ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.jt = phi double [ %i.jc, %bb.az ], [ %i.jf, %bb.ba ], [ %i.ja, %bb.bb ], [ %i.ja, %bb.bc ]
  %.0.i127 = phi ptr [ %i.jd, %bb.az ], [ %i.jg, %bb.ba ], [ %i.jj, %bb.bb ], [ %i.js, %bb.bc ]
  %i.ju = load double, ptr %.0.i127, align 8, !tbaa !20
  %i.jv = fdiv double %i.jt, %i.ju
  %i.jw = fcmp ogt double %i.jv, %7
  br i1 %i.jw, label %bb.ci, label %bb.bq

bb.bd:                                            ; preds = %bb.ao
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.cn

bb.be:                                            ; preds = %bb.ap
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bf:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IdEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.bf
  %.pn68 = phi { ptr, i32 } [ %i.il, %.body ], [ %i.jz, %bb.bf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.bg ], [ %i.jy, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.cm

bb.bi:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.as
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn71 = phi { ptr, i32 } [ %i.kb, %bb.bj ], [ %i.ka, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.cl

bb.bl:                                            ; preds = %bb.at
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bm:                                            ; preds = %bb.au
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.av
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #18
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn73 = phi { ptr, i32 } [ %i.ke, %bb.bn ], [ %i.kd, %bb.bm ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %bb.bo ], [ %i.kc, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.cl

bb.bq:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %35, i8 0, i64 48, i1 false), !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  store i32 0, ptr %i.gl, align 8, !tbaa !41
  store i32 0, ptr %i.gm, align 4, !tbaa !42
  store i32 16842752, ptr %36, align 8, !tbaa !24
  store ptr %4, ptr %i.gn, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.kf = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %27)
          to label %bb.br unwind label %bb.ca

bb.br:                                            ; preds = %bb.bq
  %i.kg = trunc i64 %i.kf to i32
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %38, ptr noundef nonnull align 8 dereferenceable(208) %27, i32 noundef 1, i32 noundef %i.kg)
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.go, align 8, !tbaa !41
  store i32 0, ptr %i.gp, align 4, !tbaa !42
  store i32 16842752, ptr %37, align 8, !tbaa !24
  store ptr %38, ptr %i.gq, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  store i32 -1040056314, ptr %39, align 8, !tbaa !24
  store ptr %35, ptr %i.gr, align 8, !tbaa !23
  store i64 25769803777, ptr %i.gs, align 8, !tbaa !18
  %i.kh = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %39, i32 noundef 17)
          to label %bb.bt unwind label %bb.cb     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.ki = load <2 x double>, ptr %i.gt, align 16, !tbaa !20, !noalias !505 ; 3 uses
  %i.kj = fadd <2 x double> %i.hq, %i.ki          ; 3 uses
  %i.kk = load <2 x double>, ptr %i.gu, align 16, !tbaa !20, !noalias !505 ; 3 uses
  %i.kl = fadd <2 x double> %i.hr, %i.kk          ; 4 uses
  %i.km = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.kn = extractelement <2 x double> %i.ki, i64 1 ; 2 uses
  %i.ko = extractelement <2 x double> %i.kj, i64 0 ; 3 uses
  %i.kp = extractelement <2 x double> %i.kj, i64 1 ; 3 uses
  %i.kq = extractelement <2 x double> %i.kl, i64 0 ; 2 uses
  %i.kr = extractelement <2 x double> %i.kl, i64 1 ; 2 uses
  %i.ks = add nsw i32 %.0177, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.kt = load <2 x double>, ptr %35, align 16, !tbaa !20, !noalias !505 ; 3 uses
  %i.ku = fadd <2 x double> %i.hs, %i.kt          ; 4 uses
  %i.kv = extractelement <2 x double> %i.kt, i64 0 ; 2 uses
  %44 = extractelement <2 x double> %i.kt, i64 1  ; 2 uses
  %45 = call double @llvm.fmuladd.f64(double %i.kv, double %i.kv, double 0.000000e+00)
  %46 = call double @llvm.fmuladd.f64(double %44, double %44, double %45)
  %i.kw = call double @llvm.fmuladd.f64(double %i.km, double %i.km, double %46)
  %i.kx = call double @llvm.fmuladd.f64(double %i.kn, double %i.kn, double %i.kw)
  %47 = shufflevector <2 x double> %i.kk, <2 x double> %i.ku, <2 x i32> <i32 0, i32 2> ; 2 uses
  %48 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.kx, i64 0
  %49 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %47, <2 x double> %47, <2 x double> %48)
  %50 = shufflevector <2 x double> %i.kk, <2 x double> %i.ku, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %50, <2 x double> %49) ; 2 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 1
  %i.la = call double @llvm.fmuladd.f64(double %i.ko, double %i.ko, double %i.kz)
  %i.lb = call double @llvm.fmuladd.f64(double %i.kp, double %i.kp, double %i.la)
  %i.lc = call double @llvm.fmuladd.f64(double %i.kq, double %i.kq, double %i.lb)
  %i.ld = call double @llvm.fmuladd.f64(double %i.kr, double %i.kr, double %i.lc)
  %i.le = insertelement <2 x double> %i.ky, double %i.ld, i64 1
  %i.lf = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.le) ; 2 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 0
  %i.lh = extractelement <2 x double> %i.lf, i64 1
  %i.li = fdiv double %i.lg, %i.lh
  store <2 x double> %i.ku, ptr %41, align 16, !tbaa !20
  store double %i.ko, ptr %i.gv, align 16, !tbaa !20
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %40, align 16, !tbaa !18
  store i32 153, ptr %i.gw, align 16, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gx, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.gy, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc129 unwind label %bb.cd

.noexc129:                                        ; preds = %bb.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.gz, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %41, i64 noundef 0)
          to label %.noexc130 unwind label %bb.cd

.noexc130:                                        ; preds = %.noexc129
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i64 0, ptr %i.hb, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !24
  store ptr %40, ptr %i.ha, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %.noexc130
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body131

bb.bv:                                            ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.lk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %40)
          to label %bb.bw unwind label %bb.ce     ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  store double %i.kp, ptr %43, align 8, !tbaa !20
  store <2 x double> %i.kl, ptr %i.hc, align 8, !tbaa !20
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %42, align 16, !tbaa !18
  store i32 153, ptr %i.hd, align 16, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.he, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.hf, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc133 unwind label %bb.cf

.noexc133:                                        ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.hg, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef 0)
          to label %.noexc134 unwind label %bb.cf

.noexc134:                                        ; preds = %.noexc133
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i64 0, ptr %i.hi, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !24
  store ptr %42, ptr %i.hh, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %.noexc134
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body135

bb.by:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.lm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %42)
          to label %bb.bz unwind label %bb.cg     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.ln = fcmp ogt double %i.li, 1.000000e-10
  br label %bb.ci

bb.ca:                                            ; preds = %bb.br, %bb.bq
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bs
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #18
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.lp, %bb.cb ], [ %i.lo, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.ch

bb.cd:                                            ; preds = %.noexc129, %bb.bt
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.ce:                                            ; preds = %bb.bv
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #18
  br label %.body131

.body131:                                         ; preds = %bb.cd, %bb.bu, %bb.ce
  %.pn83 = phi { ptr, i32 } [ %i.lr, %bb.ce ], [ %i.lq, %bb.cd ], [ %i.lj, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.ch

bb.cf:                                            ; preds = %.noexc133, %bb.bw
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %.body135

bb.cg:                                            ; preds = %bb.by
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #18
  br label %.body135

.body135:                                         ; preds = %bb.cf, %bb.bx, %bb.cg
  %.pn85 = phi { ptr, i32 } [ %i.lt, %bb.cg ], [ %i.ls, %bb.cf ], [ %i.ll, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.ch

bb.ch:                                            ; preds = %.body131, %.body135, %bb.cc
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn83, %.body131 ], [ %.pn78.pn.pn, %bb.cc ], [ %.pn85, %.body135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @_ZN2cv3SVDD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %33) #18
  br label %bb.ck

bb.ci:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit128, %bb.bz
  %.130 = phi i1 [ false, %_ZN2cv3Mat2atIdEERT_i.exit128 ], [ %i.ln, %bb.bz ]
  %.1 = phi i32 [ %.0177, %_ZN2cv3Mat2atIdEERT_i.exit128 ], [ %i.ks, %bb.bz ] ; 2 uses
  %i.lu = phi <2 x double> [ %i.hq, %_ZN2cv3Mat2atIdEERT_i.exit128 ], [ %i.kj, %bb.bz ]
  %i.lv = phi <2 x double> [ %i.hr, %_ZN2cv3Mat2atIdEERT_i.exit128 ], [ %i.kl, %bb.bz ]
  %i.lw = phi <2 x double> [ %i.hs, %_ZN2cv3Mat2atIdEERT_i.exit128 ], [ %i.ku, %bb.bz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ge) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gd) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.lx = load ptr, ptr %20, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ly = load ptr, ptr %i.hj, align 8, !tbaa !88
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mb) #20
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit:    ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.mc = icmp slt i32 %.1, %5
  %i.md = select i1 %.130, i1 %i.mc, i1 false
  br i1 %i.md, label %bb.ao, label %._crit_edge, !llvm.loop !502

bb.ck:                                            ; preds = %bb.ch, %.body121
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.ch ], [ %i.ip, %.body121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bp, %bb.bk
  %.pn85.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn, %bb.ck ], [ %.pn73.pn, %bb.bp ], [ %.pn71, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.bh
end_hunk_6
