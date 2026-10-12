Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sample_face_swapping?download=true
inline.NumInlined: 910
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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
%"class.cv::Subdiv2D" = type { %"class.std::vector", %"class.std::vector.0", i32, i32, i8, i32, %"class.cv::Point_", %"class.cv::Point_" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Subdiv2D::Vertex, std::allocator<cv::Subdiv2D::Vertex>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Subdiv2D::Vertex, std::allocator<cv::Subdiv2D::Vertex>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Subdiv2D::Vertex, std::allocator<cv::Subdiv2D::Vertex>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Subdiv2D::Vertex, std::allocator<cv::Subdiv2D::Vertex>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<cv::Subdiv2D::QuadEdge, std::allocator<cv::Subdiv2D::QuadEdge>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Subdiv2D::QuadEdge, std::allocator<cv::Subdiv2D::QuadEdge>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Subdiv2D::QuadEdge, std::allocator<cv::Subdiv2D::QuadEdge>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Subdiv2D::QuadEdge, std::allocator<cv::Subdiv2D::QuadEdge>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Point_" = type { float, float }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<cv::Vec<float, 6>, std::allocator<cv::Vec<float, 6>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<float, 6>, std::allocator<cv::Vec<float, 6>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<float, 6>, std::allocator<cv::Vec<float, 6>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<float, 6>, std::allocator<cv::Vec<float, 6>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.33" = type { i8 }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.26" = type { %"struct.std::_Vector_base.27" }
%"struct.std::_Vector_base.27" = type { %"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Point_<int>, std::allocator<cv::Point_<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.31" }
%"class.cv::Vec.31" = type { %"class.cv::Matx.32" }
%"class.cv::Matx.32" = type { [4 x double] }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::CommandLineParser" = type { ptr }
%"class.cv::CascadeClassifier" = type { %"struct.cv::Ptr" }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.cv::face::FacemarkKazemi::Params" = type { i64, i64, i64, float, i64, i64, float, i64, %"class.std::__cxx11::basic_string" }
%"struct.cv::Ptr.36" = type { %"class.std::shared_ptr.37" }
%"class.std::shared_ptr.37" = type { %"class.std::__shared_ptr.38" }
%"class.std::__shared_ptr.38" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector.40" = type { %"struct.std::_Vector_base.41" }
%"struct.std::_Vector_base.41" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.45" = type { %"struct.std::_Vector_base.46" }
%"struct.std::_Vector_base.46" = type { %"struct.std::_Vector_base<std::vector<cv::Point_<float>>, std::allocator<std::vector<cv::Point_<float>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<cv::Point_<float>>, std::allocator<std::vector<cv::Point_<float>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<cv::Point_<float>>, std::allocator<std::vector<cv::Point_<float>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<cv::Point_<float>>, std::allocator<std::vector<cv::Point_<float>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN2cv8Subdiv2DD2Ev = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN2cv4face14FacemarkKazemiELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

$_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

$_ZZN2cv11_InputArrayC1INS_5Rect_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

@.str = private unnamed_addr constant [497 x i8] c"{ help h usage ? |      | give the following arguments in following format }{ image1 i1      |      | (required) path to the first image file in which you want to apply swapping }{ image2 i2      |      | (required) path to the second image file in which you want to apply face swapping }{ model m        |      | (required) path to the file containing model to be loaded for face landmark detection}{ face_cascade f |      | Path to the face cascade xml file which you want to use as a detector}\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"TIP: Use absolute paths to avoid any problems with the software!\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"image1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"image2\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" not found\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Model file name not found.\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"face_cascade\00", align 1
@.str.9 = private unnamed_addr constant [77 x i8] c"The name of the cascade classifier to be loaded to detect faces is not found\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"Loaded model\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Face_Swapped\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.18, ptr @.str.13, i32 174, i32 3, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, comdat, align 8
@.str.18 = private unnamed_addr constant [81 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Point_<float>]\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1
@_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.22, ptr @.str.13, i32 174, i32 3, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, comdat, align 8
@.str.22 = private unnamed_addr constant [79 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Point_<int>]\00", align 1
@_ZZN2cv11_InputArrayC1INS_5Rect_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.23, ptr @.str.13, i32 174, i32 3, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, comdat, align 8
@.str.23 = private unnamed_addr constant [78 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Rect_<int>]\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z19divideIntoTrianglesN2cv5Rect_IiEERSt6vectorINS_6Point_IfEESaIS4_EERS2_IS2_IiSaIiEESaIS9_EE(i64 %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Subdiv2D", align 8      ; 11 uses
  %5 = alloca %"class.std::vector.10", align 8    ; 12 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 14 uses
  %.sroa.096.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.499.0.extract.shift = lshr i64 %0, 32
  %.sroa.499.0.extract.trunc = trunc nuw i64 %.sroa.499.0.extract.shift to i32 ; 4 uses
  %.sroa.7102.8.extract.trunc = trunc i64 %1 to i32
  %.sroa.11105.8.extract.shift = lshr i64 %1, 32
  %.sroa.11105.8.extract.trunc = trunc nuw i64 %.sroa.11105.8.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv8Subdiv2DC1ENS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 %0, i64 %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %.not139 = icmp eq ptr %i.a, %i.c
  br i1 %.not139, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv8Subdiv2D15getTriangleListERSt6vectorINS_3VecIfLi6EEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %7 unwind label %11

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.093.0140 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.014.0.copyload = load <2 x float>, ptr %.sroa.093.0140, align 4, !tbaa !17
  %i.d = invoke noundef i32 @_ZN2cv8Subdiv2D6insertENS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(80) %4, <2 x float> %.sroa.014.0.copyload)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.093.0140, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !15
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

bb.c:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

7:                                                ; preds = %._crit_edge
  %8 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.d unwind label %bb.i       ; 8 uses

bb.d:                                             ; preds = %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.h = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #21
          to label %bb.e unwind label %bb.j       ; 5 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %6, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !22
  store i32 0, ptr %i.h, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i64 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.o = load ptr, ptr %5, align 8, !tbaa !110    ; 2 uses
  %.not149 = icmp eq ptr %i.n, %i.o
  br i1 %.not149, label %._crit_edge148.thread, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.e
  %.sroa_idx75 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = add nsw i32 %.sroa.7102.8.extract.trunc, %.sroa.096.0.extract.trunc ; 3 uses
  %i.q = add nsw i32 %.sroa.11105.8.extract.trunc, %.sroa.499.0.extract.trunc ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.k

._crit_edge148:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %.pre = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %._crit_edge148.thread

._crit_edge148.thread:                            ; preds = %bb.e, %._crit_edge148
  %i.t = phi ptr [ %.pre, %._crit_edge148 ], [ %i.h, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge148, %._crit_edge148.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef 24) #22
  %i.y = load ptr, ptr %5, align 8, !tbaa !110    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #22
  br label %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #22
  br label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit
  %i.al = load ptr, ptr %4, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv8Subdiv2DD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZN2cv8Subdiv2DD2Ev.exit

_ZN2cv8Subdiv2DD2Ev.exit:                         ; preds = %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

11:                                               ; preds = %._crit_edge
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %7
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.j:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit63

bb.k:                                             ; preds = %.lr.ph147, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.at = phi ptr [ %i.o, %.lr.ph147 ], [ %i.ef, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit ]
  %.023145 = phi i64 [ 0, %.lr.ph147 ], [ %i.ed, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.023145 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %13 = load <4 x i32>, ptr %i.au, align 4, !tbaa !17 ; 2 uses
  %14 = load <2 x i32>, ptr %i.av, align 4, !tbaa !17
  store <4 x i32> %13, ptr %8, align 4, !tbaa !17
  store <2 x i32> %14, ptr %10, align 4, !tbaa !17
  %i.aw = bitcast <4 x i32> %13 to <4 x float>
  %i.ax = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.aw) ; 2 uses
  %15 = load <4 x float>, ptr %.sroa_idx75, align 4
  %i.ay = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %15) ; 2 uses
  %.not.i = icmp sge i32 %i.ax, %.sroa.096.0.extract.trunc
  %i.az = icmp slt i32 %i.ax, %i.p
  %or.cond.not123.not126 = select i1 %.not.i, i1 %i.az, i1 false
  %.not8.i = icmp sge i32 %i.ay, %.sroa.499.0.extract.trunc
  %or.cond109.not124 = select i1 %or.cond.not123.not126, i1 %.not8.i, i1 false
  %i.ba = icmp slt i32 %i.ay, %i.q
  %or.cond111 = select i1 %or.cond109.not124, i1 %i.ba, i1 false
  br i1 %or.cond111, label %bb.l, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.k
  %16 = load <4 x float>, ptr %9, align 4         ; 5 uses
  %i.bb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %16) ; 2 uses
  %17 = load <4 x float>, ptr %8, align 4         ; 5 uses
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %18) ; 2 uses
  %.not.i47 = icmp sge i32 %i.bb, %.sroa.096.0.extract.trunc
  %i.bd = icmp slt i32 %i.bb, %i.p
  %or.cond113.not128.not131 = select i1 %.not.i47, i1 %i.bd, i1 false
  %.not8.i48 = icmp sge i32 %i.bc, %.sroa.499.0.extract.trunc
  %or.cond114.not129 = select i1 %or.cond113.not128.not131, i1 %.not8.i48, i1 false
  %i.be = icmp slt i32 %i.bc, %i.q
  %or.cond116 = select i1 %or.cond114.not129, i1 %i.be, i1 false
  %19 = extractelement <4 x float> %16, i64 2
  %20 = extractelement <4 x float> %16, i64 3
  %21 = extractelement <4 x float> %17, i64 0
  %22 = extractelement <4 x float> %17, i64 1
  %23 = extractelement <4 x float> %17, i64 2
  %24 = extractelement <4 x float> %17, i64 3
  br i1 %or.cond116, label %bb.m, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.l
  %25 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bf = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %25) ; 2 uses
  %26 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %26) ; 2 uses
  %.not.i54 = icmp sge i32 %i.bf, %.sroa.096.0.extract.trunc
  %i.bh = icmp slt i32 %i.bf, %i.p
  %or.cond118.not133.not136 = select i1 %.not.i54, i1 %i.bh, i1 false
  %.not8.i55 = icmp sge i32 %i.bg, %.sroa.499.0.extract.trunc
  %or.cond119.not134 = select i1 %or.cond118.not133.not136, i1 %.not8.i55, i1 false
  %i.bi = icmp slt i32 %i.bg, %i.q
  %or.cond121 = select i1 %or.cond119.not134, i1 %i.bi, i1 false
  br i1 %or.cond121, label %.preheader137, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

.preheader137:                                    ; preds = %bb.m
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !35    ; 5 uses
  %.not150 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not150, label %.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader137
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3                 ; 3 uses
  %i.bp = load ptr, ptr %6, align 8
  br label %bb.ac

.split:                                           ; preds = %bb.ab, %.preheader137
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !38  ; 6 uses
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !39
  %.not.i57 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i57, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.split
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !24  ; 2 uses
  %i.bt = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i.i.i.i, label %.noexc58, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = icmp ugt i64 %i.bw, 9223372036854775804
  br i1 %i.bx, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !40

.noexc.i.i.i:                                     ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #21
          to label %.noexc58 unwind label %.loopexit

.noexc58:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.n
  %i.bz = phi ptr [ null, %bb.n ], [ %i.by, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !22
  %i.cd = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp sgt i64 %i.ch, 4
  br i1 %i.ci, label %bb.p, label %bb.q, !prof !42

bb.p:                                             ; preds = %.noexc58
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.q:                                             ; preds = %.noexc58
  %i.cj = icmp eq i64 %i.ch, 4
  br i1 %i.cj, label %bb.r, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %i.cd, align 4, !tbaa !23
  store i32 %i.ck, ptr %i.bz, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.r, %bb.q, %bb.p
  %i.cl = getelementptr inbounds i8, ptr %i.bz, i64 %i.ch
  store ptr %i.cl, ptr %i.ca, align 8, !tbaa !24
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.cn, ptr %i.r, align 8, !tbaa !38
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.s:                                             ; preds = %.split
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit63, label %bb.ag

._crit_edge143:                                   ; preds = %bb.af
  %i.cp = load ptr, ptr %6, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %._crit_edge143
  %.0141.1 = phi i64 [ 0, %._crit_edge143 ], [ %i.dc, %bb.x ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0141.1 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !44
  %i.ct = fsub float %23, %i.cs
  %i.cu = call noundef float @llvm.fabs.f32(float %i.ct)
  %i.cv = fcmp olt float %i.cu, 1.000000e+00
  br i1 %i.cv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !45
  %i.cy = fsub float %24, %i.cx
  %i.cz = call noundef float @llvm.fabs.f32(float %i.cy)
  %i.da = fcmp olt float %i.cz, 1.000000e+00
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = trunc i64 %.0141.1 to i32
  store i32 %i.db, ptr %i.cq, align 4, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dc = add nuw i64 %.0141.1, 1                 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.dc, %i.bo
  br i1 %exitcond.1.not, label %._crit_edge143.1, label %bb.u, !llvm.loop !105

._crit_edge143.1:                                 ; preds = %bb.x
  %i.dd = load ptr, ptr %6, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %._crit_edge143.1
  %.0141.2 = phi i64 [ 0, %._crit_edge143.1 ], [ %i.dq, %bb.ab ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0141.2 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !44
  %i.dh = fsub float %19, %i.dg
  %i.di = call noundef float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp olt float %i.di, 1.000000e+00
  br i1 %i.dj, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !45
  %i.dm = fsub float %20, %i.dl
  %i.dn = call noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = fcmp olt float %i.dn, 1.000000e+00
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = trunc i64 %.0141.2 to i32
  store i32 %i.dp, ptr %i.de, align 4, !tbaa !23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.dq = add nuw i64 %.0141.2, 1                 ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.dq, %i.bo
  br i1 %exitcond.2.not, label %.split, label %bb.y, !llvm.loop !105

bb.ac:                                            ; preds = %.preheader.preheader, %bb.af
  %.0141 = phi i64 [ 0, %.preheader.preheader ], [ %i.ec, %bb.af ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0141 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !44
  %i.dt = fsub float %21, %i.ds
  %i.du = call noundef float @llvm.fabs.f32(float %i.dt)
  %i.dv = fcmp olt float %i.du, 1.000000e+00
  br i1 %i.dv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !45
  %i.dy = fsub float %22, %i.dx
  %i.dz = call noundef float @llvm.fabs.f32(float %i.dy)
  %i.ea = fcmp olt float %i.dz, 1.000000e+00
  br i1 %i.ea, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eb = trunc i64 %.0141 to i32
  store i32 %i.eb, ptr %i.bp, align 4, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ec = add nuw i64 %.0141, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %i.bo
  br i1 %exitcond.not, label %._crit_edge143, label %bb.ac, !llvm.loop !105

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %bb.s
  %i.ed = add nuw i64 %.023145, 1                 ; 2 uses
  %i.ee = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.ef = load ptr, ptr %5, align 8, !tbaa !110   ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 24
  %i.ek = icmp ult i64 %i.ed, %i.ej
  br i1 %i.ek, label %bb.k, label %._crit_edge148, !llvm.loop !106

bb.ag:                                            ; preds = %bb.t
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.co to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.eo) #22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit63

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit63:  ; preds = %bb.ag, %bb.t, %bb.j
  %.pn34.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %lpad.phi, %bb.t ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef 24) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit63, %11
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %12, %11 ], [ %.pn34.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit63 ], [ %i.ar, %bb.i ]
  %i.ep = load ptr, ptr %5, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit65, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !111
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #22
  br label %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit65

_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit65: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit65, %bb.c
  %.pn39 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn34.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIfLi6EEESaIS2_EED2Ev.exit65 ]
  call void @_ZN2cv8Subdiv2DD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv8Subdiv2DC1ENS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(80), i64, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN2cv8Subdiv2D6insertENS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(80), <2 x float>) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK2cv8Subdiv2D15getTriangleListERSt6vectorINS_3VecIfLi6EEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8Subdiv2DD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #22
  br label %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z12warpTriangleRN2cv3MatES1_RSt6vectorINS_6Point_IfEESaIS4_EES7_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.33", align 1 ; 3 uses
  %6 = alloca %"class.cv::Rect_", align 8         ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::Rect_", align 8         ; 12 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %10 = alloca %"class.std::vector.5", align 8    ; 12 uses
  %11 = alloca %"class.std::vector.5", align 8    ; 12 uses
  %12 = alloca %"class.std::vector.26", align 8   ; 12 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %36 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %37 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %40 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = load ptr, ptr %2, align 8, !tbaa !35
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.not.i = icmp ugt i64 %i.i, 2147483647
  br i1 %.not.i, label %bb.b, label %_ZN2cv11_InputArrayC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.i, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
  unreachable

_ZN2cv11_InputArrayC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EE.exit: ; preds = %bb.a
  store i32 -2130509787, ptr %7, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !51
  %i.k = call { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  store i64 %i.l, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = load ptr, ptr %3, align 8, !tbaa !35
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i100 = icmp ugt i64 %i.w, 2147483647
  br i1 %.not.i100, label %bb.c, label %_ZN2cv11_InputArrayC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EE.exit101

bb.c:                                             ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EE.exit
  call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.w, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
  unreachable

_ZN2cv11_InputArrayC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EE.exit101: ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EE.exit
  store i32 -2130509787, ptr %9, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !51
  %i.y = call { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %9) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  store i64 %i.z, ptr %8, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ab = extractvalue { i64, i64 } %i.y, 1
  store i64 %i.ab, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !128
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !129
end_hunk_0
