Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/digits_svm?download=true
inline.NumInlined: 987
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
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
%"class.cv::Moments" = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.5" = type { i8 }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.cv::Ptr.9" = type { %"class.std::shared_ptr.10" }
%"class.std::shared_ptr.10" = type { %"class.std::__shared_ptr.11" }
%"class.std::__shared_ptr.11" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZNSt6vectorIdSaIdEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZZN2cv11_InputArrayC1IdEERKSt6vectorIT_SaIS3_EEE15__cv_check__174 = comdat any

$_ZZN2cv11_InputArrayC1IiEERKSt6vectorIT_SaIS3_EEE15__cv_check__174 = comdat any

@.str = private unnamed_addr constant [11 x i8] c"digits.png\00", align 1
@DIGITS_FN = hidden local_unnamed_addr global ptr @.str, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"preprocessing...\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"training KNearest...\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"KNearest test\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"training SVM...\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Saving SVM as \22digits_svm.yml\22...\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"digits_svm.yml\00", align 1
@.str.9 = private unnamed_addr constant [677 x i8] c"\0ASVM and KNearest digit recognition.\0A\0ASample loads a dataset of handwritten digits from 'digits.png'.\0AThen it trains a SVM and KNearest classifiers on it and evaluates\0Atheir accuracy.\0A\0AFollowing preprocessing is applied to the dataset:\0A - Moment-based image deskew (see deskew())\0A - Digit images are split into 4 10x10 cells and 16-bin\0A   histogram of oriented gradients is computed for each\0A   cell\0A - Transform histograms to space with Hellinger metric (see [1] (RootSIFT))\0A\0A\0A[1] R. Arandjelovic, A. Zisserman\0A    \22Three things everyone should know to improve object retrieval\22\0A    http://www.robots.ox.ac.uk/~vgg/publications/2012/Arandjelovic12/arandjelovic12.pdf\0A\0AUsage:\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Loading \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZZN2cv11_InputArrayC1IdEERKSt6vectorIT_SaIS3_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.18, ptr @.str.15, i32 174, i32 3, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, comdat, align 8
@.str.18 = private unnamed_addr constant [70 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = double]\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"error: %.2f %%\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"confusion matrix:\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZN2cv11_InputArrayC1IiEERKSt6vectorIT_SaIS3_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.26, ptr @.str.15, i32 174, i32 3, ptr @.str.19, ptr @.str.20, ptr @.str.21 }, comdat, align 8
@.str.26 = private unnamed_addr constant [67 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = int]\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Moments", align 8       ; 6 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = alloca [2 x [3 x float]], align 16       ; 9 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %27 = alloca [4 x %"class.cv::Mat"], align 16   ; 11 uses
  %28 = alloca %"class.cv::Rect_", align 16       ; 6 uses
  %29 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %30 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %31 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %32 = alloca [4 x %"class.cv::Mat"], align 16   ; 11 uses
  %33 = alloca %"class.cv::Rect_", align 16       ; 6 uses
  %34 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %35 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %36 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %37 = alloca %"class.std::vector.20", align 8   ; 14 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 9 uses
  %39 = alloca %"class.std::vector.0", align 8    ; 14 uses
  %40 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %41 = alloca %"class.std::vector", align 8      ; 15 uses
  %42 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %44 = alloca %"class.cv::Rect_", align 4        ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %48 = alloca %"class.std::vector", align 8      ; 22 uses
  %49 = alloca %"class.std::vector.0", align 8    ; 16 uses
  %50 = alloca %"class.std::vector", align 8      ; 18 uses
  %51 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %52 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %54 = alloca %"class.std::vector", align 8      ; 15 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %57 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %58 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %59 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %60 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %61 = alloca %"class.std::vector.0", align 8    ; 17 uses
  %62 = alloca %"class.std::vector.0", align 8    ; 10 uses
  %63 = alloca %"struct.cv::Ptr", align 8         ; 9 uses
  %64 = alloca %"struct.cv::Ptr.9", align 8       ; 9 uses
  %65 = alloca %"class.std::vector.13", align 8   ; 12 uses
  %66 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %67 = alloca %"struct.cv::Ptr", align 8         ; 6 uses
  %68 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %69 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %70 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %71 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %74 = alloca %"struct.cv::Ptr.9", align 8       ; 6 uses
  %75 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %76 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %77 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %78 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %80 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 676) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !128    ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !129
  %i.l = or i32 %i.k, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %i.l)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #17
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.e, i64 noundef %i.m) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c, %bb.b
  %i.o = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !39
  %.not.i1.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i1.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 67
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.t)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.t, i8 noundef signext 10), !inline_history !101
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i8 [ %i.x, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr @DIGITS_FN, align 8, !tbaa !128 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 13 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 7 uses
  store ptr %i.ah, ptr %46, align 8, !tbaa !42
  %i.ai = icmp eq ptr %i.ae, null
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #18
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ae) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !43
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc22.i unwind label %bb.v ; 2 uses

.noexc22.i:                                       ; preds = %.noexc.i.i
  store ptr %i.al, ptr %46, align 8, !tbaa !45
  %i.am = load i64, ptr %i.c, align 8, !tbaa !43
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc22.i, %bb.h
  %i.an = phi ptr [ %i.al, %.noexc22.i ], [ %i.ah, %bb.h ] ; 2 uses
  switch i64 %i.aj, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !40
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !40
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull readonly align 1 %i.ae, i64 %i.aj, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !46
  %i.ar = load ptr, ptr %46, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  invoke void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %46, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %46, align 8, !tbaa !45   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !40
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ay = load ptr, ptr %45, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.x ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.11, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33 ; 6 uses
  %.not.i.i.i41.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i41.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i78

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i
  invoke void @_ZSt16__throw_bad_castv() #18
          to label %.noexc42.i unwind label %bb.x

.noexc42.i:                                       ; preds = %bb.m
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !39
  %.not.i1.i.i.i79 = icmp eq i8 %i.bk, 0
  br i1 %.not.i1.i.i.i79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i78
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 67
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i78
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bi)
          to label %.noexc43.i unwind label %bb.x
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.df, %bb.dj
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.acx, %bb.dj ], [ %.pn15.i, %bb.df ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #17
  br label %bb.ia

_ZL14preprocess_hogRKSt6vectorIN2cv3MatESaIS1_EERS1_.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit180.i, %bb.bg
  %i.acy = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !53
  %i.ada = sitofp i32 %i.acz to double
  %i.adb = fmul nnan double %i.ada, 9.000000e-01
  %i.adc = fptosi double %i.adb to i32            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %53) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #17
  %i.add = load ptr, ptr %50, align 8, !tbaa !87
  %i.ade = sext i32 %i.adc to i64                 ; 3 uses
  %i.adf = getelementptr inbounds [208 x i8], ptr %i.add, i64 %i.ade
  %i.adg = load ptr, ptr %i.lp, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr %i.adf, ptr %i.adg)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEET_S9_RKS2_.exit unwind label %bb.dk

bb.dk:                                            ; preds = %_ZL14preprocess_hogRKSt6vectorIN2cv3MatESaIS1_EERS1_.exit
  %i.adh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adi = load ptr, ptr %54, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %i.adi, null
  br i1 %.not.i.i.i118, label %.body119, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.adj = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !63
  %i.adl = ptrtoint ptr %i.adk to i64
  %i.adm = ptrtoint ptr %i.adi to i64
  %i.adn = sub i64 %i.adl, %i.adm
  call void @_ZdlPvm(ptr noundef nonnull %i.adi, i64 noundef %i.adn) #19
  br label %.body119

_ZNSt6vectorIN2cv3MatESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEET_S9_RKS2_.exit: ; preds = %_ZL14preprocess_hogRKSt6vectorIN2cv3MatESaIS1_EERS1_.exit
  invoke fastcc void @_ZL6mosaiciRKSt6vectorIN2cv3MatESaIS1_EERS1_(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(208) %53)
          to label %._crit_edge.i.i unwind label %bb.hg

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEET_S9_RKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  %i.ado = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  store ptr %i.ado, ptr %55, align 8, !tbaa !42
  store i64 8387236464277284212, ptr %i.ado, align 8
  %i.adp = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 8, ptr %i.adp, align 8, !tbaa !46
  %i.adq = getelementptr inbounds nuw i8, ptr %55, i64 24
  store i8 0, ptr %i.adq, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #17
  %i.adr = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i32 0, ptr %i.adr, align 8, !tbaa !73
  %i.ads = getelementptr inbounds nuw i8, ptr %56, i64 20
  store i32 0, ptr %i.ads, align 4, !tbaa !74
  store i32 16842752, ptr %56, align 8, !tbaa !71
  %i.adt = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %53, ptr %i.adt, align 8, !tbaa !72
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %bb.dm unwind label %bb.hh

bb.dm:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  %i.adu = load ptr, ptr %55, align 8, !tbaa !45  ; 2 uses
  %i.adv = icmp eq ptr %i.adu, %i.ado
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dm
  %i.adw = load i64, ptr %i.ado, align 8, !tbaa !40
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adu, i64 noundef %i.adx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #17
  %i.ady = getelementptr inbounds nuw i8, ptr %52, i64 12 ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !54
  store i32 0, ptr %58, align 4, !tbaa !61
  %i.aea = getelementptr inbounds nuw i8, ptr %58, i64 4
  store i32 0, ptr %i.aea, align 4, !tbaa !62
  %i.aeb = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i32 %i.adz, ptr %i.aeb, align 4, !tbaa !88
  %i.aec = getelementptr inbounds nuw i8, ptr %58, i64 12
  store i32 %i.adc, ptr %i.aec, align 4, !tbaa !89
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %57, ptr noundef nonnull align 8 dereferenceable(208) %52, ptr noundef nonnull align 4 dereferenceable(16) %58)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.hi

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #17
  %i.aed = load i32, ptr %i.ady, align 4, !tbaa !54
  %i.aee = load i32, ptr %i.acy, align 8, !tbaa !53
  %i.aef = sub nsw i32 %i.aee, %i.adc
  store i32 0, ptr %60, align 4, !tbaa !61
  %i.aeg = getelementptr inbounds nuw i8, ptr %60, i64 4
  store i32 %i.adc, ptr %i.aeg, align 4, !tbaa !62
  %i.aeh = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %i.aed, ptr %i.aeh, align 4, !tbaa !88
  %i.aei = getelementptr inbounds nuw i8, ptr %60, i64 12
  store i32 %i.aef, ptr %i.aei, align 4, !tbaa !89
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %59, ptr noundef nonnull align 8 dereferenceable(208) %52, ptr noundef nonnull align 4 dereferenceable(16) %60)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit125 unwind label %bb.hj

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit125:            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #17
  %i.aej = load ptr, ptr %49, align 8, !tbaa !138 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.ade, 2                   ; 6 uses
  %i.aek = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.aek, label %bb.dn, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i126

bb.dn:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit125
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
          to label %.noexc.i128 unwind label %bb.dq

.noexc.i128:                                      ; preds = %bb.dn
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i126: ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit125
  %.not.i.i.i127 = icmp eq i32 %i.adc, 0
  br i1 %.not.i.i.i127, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i126
  %i.ael = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr %i.ael, ptr %i.aem, align 8, !tbaa !66
  br label %bb.dr

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i126
  %i.aen = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #20
          to label %.noexc5.i unwind label %bb.dq ; 4 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.aen, ptr %61, align 8, !tbaa !68
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %.idx ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr %i.aeo, ptr %i.aep, align 8, !tbaa !66
  %i.aeq = icmp samesign ugt i64 %.idx, 4
  br i1 %i.aeq, label %bb.do, label %bb.dp, !prof !139

bb.do:                                            ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aen, ptr align 4 %i.aej, i64 %.idx, i1 false)
  br label %bb.dr

bb.dp:                                            ; preds = %.noexc5.i
  %i.aer = load i32, ptr %i.aej, align 4, !tbaa !67
  store i32 %i.aer, ptr %i.aen, align 4, !tbaa !67
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.dn
  %i.aes = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aet = load ptr, ptr %61, align 8, !tbaa !68  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.aet, null
  br i1 %.not.i.i6.i, label %.body129, label %.body129.sink.split

bb.dr:                                            ; preds = %bb.dp, %bb.do, %.thread.i.i
  %i.aeu = phi ptr [ %i.aeo, %bb.do ], [ %i.ael, %.thread.i.i ], [ %i.aeo, %bb.dp ]
  %i.aev = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  store ptr %i.aeu, ptr %i.aev, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #17
  %i.aew = load ptr, ptr %49, align 8, !tbaa !138
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aew, i64 %i.ade ; 4 uses
  %i.aey = load ptr, ptr %i.ag, align 8, !tbaa !138 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  %i.aez = ptrtoint ptr %i.aey to i64
  %i.afa = ptrtoint ptr %i.aex to i64
  %i.afb = sub i64 %i.aez, %i.afa                 ; 7 uses
  %i.afc = icmp ugt i64 %i.afb, 9223372036854775804
  br i1 %i.afc, label %bb.ds, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i131

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
          to label %.noexc.i138 unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135

.noexc.i138:                                      ; preds = %bb.ds
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i131: ; preds = %bb.dr
  %.not.i.i.i132 = icmp eq ptr %i.aey, %i.aex
  br i1 %.not.i.i.i132, label %.thread.i.i137, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i133

.thread.i.i137:                                   ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i131
  %i.afd = getelementptr inbounds nuw i8, ptr null, i64 %i.afb ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %62, i64 16
  store ptr %i.afd, ptr %i.afe, align 8, !tbaa !66
  br label %bb.dw

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i133: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i131
  %i.aff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afb) #20
          to label %.noexc5.i136 unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135 ; 7 uses

.noexc5.i136:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i133
  store ptr %i.aff, ptr %62, align 8, !tbaa !68
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afb ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %62, i64 16
  store ptr %i.afg, ptr %i.afh, align 8, !tbaa !66
  %i.afi = icmp samesign ugt i64 %i.afb, 4
  br i1 %i.afi, label %bb.dt, label %bb.du, !prof !139

bb.dt:                                            ; preds = %.noexc5.i136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aff, ptr align 4 %i.aex, i64 %i.afb, i1 false)
  br label %bb.dw

bb.du:                                            ; preds = %.noexc5.i136
  %i.afj = icmp eq i64 %i.afb, 4
  br i1 %i.afj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.afk = load i32, ptr %i.aex, align 4, !tbaa !67
  store i32 %i.afk, ptr %i.aff, align 4, !tbaa !67
  br label %bb.dw

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135:        ; preds = %bb.ds, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i133
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %.body139

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %.thread.i.i137
  %82 = phi ptr [ %i.aff, %bb.dt ], [ %i.aff, %bb.du ], [ %i.aff, %bb.dv ], [ null, %.thread.i.i137 ] ; 6 uses
  %i.afm = phi ptr [ %i.afg, %bb.dt ], [ %i.afg, %bb.du ], [ %i.afg, %bb.dv ], [ %i.afd, %.thread.i.i137 ] ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %i.afm, ptr %i.afn, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %66) #17
  %i.afo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.hk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %bb.dw
  %i.afp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.afq = getelementptr i8, ptr %i.afp, i64 -24
  %i.afr = load i64, ptr %i.afq, align 8
  %i.afs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 240
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !33 ; 6 uses
  %.not.i.i.i278 = icmp eq ptr %i.afu, null
  br i1 %.not.i.i.i278, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i279

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i279: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 56
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !39
  %.not.i1.i.i280 = icmp eq i8 %i.afw, 0
  br i1 %.not.i1.i.i280, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i279
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 67
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i281

bb.dy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i279
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.afu)
          to label %.noexc284 unwind label %bb.hk

.noexc284:                                        ; preds = %bb.dy
  %i.afz = load ptr, ptr %i.afu, align 8, !tbaa !16
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 48
  %i.agb = load ptr, ptr %i.aga, align 8
  %i.agc = invoke noundef signext i8 %i.agb(ptr noundef nonnull align 8 dereferenceable(570) %i.afu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i281 unwind label %bb.hk, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i281: ; preds = %.noexc284, %bb.dx
  %.0.i.i.i282 = phi i8 [ %i.afy, %bb.dx ], [ %i.agc, %.noexc284 ]
  %i.agd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i282)
          to label %.noexc286 unwind label %bb.hk

.noexc286:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i281
  %i.age = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agd)
          to label %_ZNSolsEPFRSoS_E.exit145 unwind label %bb.hk ; 0 uses

_ZNSolsEPFRSoS_E.exit145:                         ; preds = %.noexc286
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  invoke void @_ZN2cv2ml8KNearest6createEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %67)
          to label %bb.dz unwind label %bb.hl

bb.dz:                                            ; preds = %_ZNSolsEPFRSoS_E.exit145
  %i.agf = load ptr, ptr %67, align 8, !tbaa !142
  store ptr %i.agf, ptr %63, align 8, !tbaa !142
  %i.agg = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 5 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i146 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i.i146, label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 8 ; 3 uses
  %i.agk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i147 = icmp eq i8 %i.agk, 0
  br i1 %.not.i.i.i.i.i147, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.ea
  %i.agl = load i32, ptr %i.agj, align 4, !tbaa !67
  %i.agm = add nsw i32 %i.agl, 1
  store i32 %i.agm, ptr %i.agj, align 4, !tbaa !67
  br label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.ea
  %i.agn = atomicrmw volatile add ptr %i.agj, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.agg, align 8, !tbaa !92 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ago = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.agp = load atomic i64, ptr %i.ago acquire, align 8 ; 2 uses
  %i.agq = icmp eq i64 %i.agp, 4294967297
  %i.agr = trunc i64 %i.agp to i32                ; 2 uses
  br i1 %i.agq, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.ago, align 8, !tbaa !94
  %i.ags = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.ags, align 4, !tbaa !95
  %i.agt = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agv = load ptr, ptr %i.agu, align 8
  call void %i.agv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #17, !inline_history !122
  %i.agw = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 24
  %i.agy = load ptr, ptr %i.agx, align 8
  call void %i.agy(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #17, !inline_history !122
  br label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit

bb.ed:                                            ; preds = %bb.eb
  %i.agz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i.i = icmp eq i8 %i.agz, 0
  br i1 %.not.i9.i.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aha = add nsw i32 %i.agr, -1
  store i32 %i.aha, ptr %i.ago, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.ahb = atomicrmw volatile add ptr %i.ago, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ef, %bb.ee
  %.0.i.i.i.i.i.i148 = phi i32 [ %i.agr, %bb.ee ], [ %i.ahb, %bb.ef ]
  %i.ahc = icmp eq i32 %.0.i.i.i.i.i.i148, 1
  br i1 %i.ahc, label %bb.eg, label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit, !prof !96

bb.eg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #17
  br label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit

_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit:        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.eg, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store ptr %i.agi, ptr %i.agg, align 8, !tbaa !92
  %.pr = load ptr, ptr %i.agh, align 8, !tbaa !92 ; 8 uses
  %.not.i.i149 = icmp eq ptr %.pr, null
  br i1 %.not.i.i149, label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit
  %i.ahd = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ahe = load atomic i64, ptr %i.ahd acquire, align 8 ; 2 uses
  %i.ahf = icmp eq i64 %i.ahe, 4294967297
  %i.ahg = trunc i64 %i.ahe to i32                ; 2 uses
  br i1 %i.ahf, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i32 0, ptr %i.ahd, align 8, !tbaa !94
  %i.ahh = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ahh, align 4, !tbaa !95
  %i.ahi = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %i.ahk = load ptr, ptr %i.ahj, align 8
  call void %i.ahk(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #17, !inline_history !123
  %i.ahl = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 24
  %i.ahn = load ptr, ptr %i.ahm, align 8
  call void %i.ahn(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #17, !inline_history !123
  br label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit.thread

bb.ej:                                            ; preds = %bb.eh
  %i.aho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i150 = icmp eq i8 %i.aho, 0
  br i1 %.not.i.i.i150, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ahp = add nsw i32 %i.ahg, -1
  store i32 %i.ahp, ptr %i.ahd, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.ahq = atomicrmw volatile add ptr %i.ahd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.el, %bb.ek
  %.0.i.i.i.i151 = phi i32 [ %i.ahg, %bb.ek ], [ %i.ahq, %bb.el ]
  %i.ahr = icmp eq i32 %.0.i.i.i.i151, 1
  br i1 %i.ahr, label %bb.em, label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit.thread, !prof !96

bb.em:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #17
  br label %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit.thread

_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit.thread: ; preds = %bb.dz, %bb.em, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ei, %_ZN2cv3PtrINS_2ml8KNearestEEaSERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  %i.ahs = load ptr, ptr %63, align 8, !tbaa !142 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  %i.aht = getelementptr inbounds nuw i8, ptr %68, i64 16
  store i32 0, ptr %i.aht, align 8, !tbaa !73
  %i.ahu = getelementptr inbounds nuw i8, ptr %68, i64 20
  store i32 0, ptr %i.ahu, align 4, !tbaa !74
  store i32 16842752, ptr %68, align 8, !tbaa !71
  %i.ahv = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %57, ptr %i.ahv, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #17
  %i.ahw = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i32 0, ptr %i.ahw, align 8, !tbaa !73
  %i.ahx = getelementptr inbounds nuw i8, ptr %69, i64 20
  store i32 0, ptr %i.ahx, align 4, !tbaa !74
  %i.ahy = load ptr, ptr %i.aev, align 8, !tbaa !65
  %i.ahz = load ptr, ptr %61, align 8, !tbaa !68
  %i.aia = ptrtoint ptr %i.ahy to i64
  %i.aib = ptrtoint ptr %i.ahz to i64
end_hunk_1
begin_hunk_2_@main:bb.a
_ZNSolsEPFRSoS_E.exit196:                         ; preds = %.noexc308
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #17
  %i.aoo = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 6 uses
  store ptr %i.aoo, ptr %81, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aoo, ptr noundef nonnull align 1 dereferenceable(14) @.str.8, i64 14, i1 false)
  %i.aop = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 14, ptr %i.aop, align 8, !tbaa !46
  %i.aoq = getelementptr inbounds nuw i8, ptr %81, i64 30
  store i8 0, ptr %i.aoq, align 2, !tbaa !40
  %i.aor = load ptr, ptr %i.amb, align 8, !tbaa !16
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 48
  %i.aot = load ptr, ptr %i.aos, align 8
  invoke void %i.aot(ptr noundef nonnull align 8 dereferenceable(8) %i.amb, ptr noundef nonnull align 8 dereferenceable(32) %81)
          to label %bb.ge unwind label %bb.ht

bb.ge:                                            ; preds = %_ZNSolsEPFRSoS_E.exit196
  %i.aou = load ptr, ptr %81, align 8, !tbaa !45  ; 2 uses
  %i.aov = icmp eq ptr %i.aou, %i.aoo
  br i1 %i.aov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.ge
  %i.aow = load i64, ptr %i.aoo, align 8, !tbaa !40
  %i.aox = add i64 %i.aow, 1
  call void @_ZdlPvm(ptr noundef %i.aou, i64 noundef %i.aox) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #17
  store ptr null, ptr %64, align 8, !tbaa !147
  %i.aoy = load ptr, ptr %i.akm, align 8, !tbaa !92 ; 8 uses
  store ptr null, ptr %i.akm, align 8, !tbaa !92
  %.not.i.i.i.i204 = icmp eq ptr %i.aoy, null
  br i1 %.not.i.i.i.i204, label %_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8 ; 4 uses
  %i.apa = load atomic i64, ptr %i.aoz acquire, align 8 ; 2 uses
  %i.apb = icmp eq i64 %i.apa, 4294967297
  %i.apc = trunc i64 %i.apa to i32                ; 2 uses
  br i1 %i.apb, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  store i32 0, ptr %i.aoz, align 8, !tbaa !94
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoy, i64 12
  store i32 0, ptr %i.apd, align 4, !tbaa !95
  %i.ape = load ptr, ptr %i.aoy, align 8, !tbaa !16
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %i.apg = load ptr, ptr %i.apf, align 8
  call void %i.apg(ptr noundef nonnull align 8 dereferenceable(16) %i.aoy) #17, !inline_history !127
  %i.aph = load ptr, ptr %i.aoy, align 8, !tbaa !16
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 24
  %i.apj = load ptr, ptr %i.api, align 8
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(16) %i.aoy) #17, !inline_history !127
  br label %_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit

bb.gh:                                            ; preds = %bb.gf
  %i.apk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i205 = icmp eq i8 %i.apk, 0
  br i1 %.not.i.i.i.i.i205, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.apl = add nsw i32 %i.apc, -1
  store i32 %i.apl, ptr %i.aoz, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i206

bb.gj:                                            ; preds = %bb.gh
  %i.apm = atomicrmw volatile add ptr %i.aoz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i206

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i206: ; preds = %bb.gj, %bb.gi
  %.0.i.i.i.i.i.i207 = phi i32 [ %i.apc, %bb.gi ], [ %i.apm, %bb.gj ]
  %i.apn = icmp eq i32 %.0.i.i.i.i.i.i207, 1
  br i1 %i.apn, label %bb.gk, label %_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit, !prof !96

bb.gk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i206
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aoy) #17
  br label %_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit

_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %bb.gg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i206, %bb.gk
  %i.apo = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.gl unwind label %bb.hk     ; 0 uses

bb.gl:                                            ; preds = %_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  %i.app = load ptr, ptr %65, align 8, !tbaa !99  ; 3 uses
  %.not.i.i.i208 = icmp eq ptr %i.app, null
  br i1 %.not.i.i.i208, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.apq = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !148
  %i.aps = ptrtoint ptr %i.apr to i64
  %i.apt = ptrtoint ptr %i.app to i64
  %i.apu = sub i64 %i.aps, %i.apt
  call void @_ZdlPvm(ptr noundef nonnull %i.app, i64 noundef %i.apu) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.gl, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  %i.apv = load ptr, ptr %i.akm, align 8, !tbaa !92 ; 8 uses
  %.not.i.i209 = icmp eq ptr %i.apv, null
  br i1 %.not.i.i209, label %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8 ; 4 uses
  %i.apx = load atomic i64, ptr %i.apw acquire, align 8 ; 2 uses
  %i.apy = icmp eq i64 %i.apx, 4294967297
  %i.apz = trunc i64 %i.apx to i32                ; 2 uses
  br i1 %i.apy, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 0, ptr %i.apw, align 8, !tbaa !94
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apv, i64 12
  store i32 0, ptr %i.aqa, align 4, !tbaa !95
  %i.aqb = load ptr, ptr %i.apv, align 8, !tbaa !16
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8
  call void %i.aqd(ptr noundef nonnull align 8 dereferenceable(16) %i.apv) #17, !inline_history !126
  %i.aqe = load ptr, ptr %i.apv, align 8, !tbaa !16
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 24
  %i.aqg = load ptr, ptr %i.aqf, align 8
  call void %i.aqg(ptr noundef nonnull align 8 dereferenceable(16) %i.apv) #17, !inline_history !126
  br label %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213

bb.gp:                                            ; preds = %bb.gn
  %i.aqh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i210 = icmp eq i8 %i.aqh, 0
  br i1 %.not.i.i.i210, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aqi = add nsw i32 %i.apz, -1
  store i32 %i.aqi, ptr %i.apw, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211

bb.gr:                                            ; preds = %bb.gp
  %i.aqj = atomicrmw volatile add ptr %i.apw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211: ; preds = %bb.gr, %bb.gq
  %.0.i.i.i.i212 = phi i32 [ %i.apz, %bb.gq ], [ %i.aqj, %bb.gr ]
  %i.aqk = icmp eq i32 %.0.i.i.i.i212, 1
  br i1 %i.aqk, label %bb.gs, label %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213, !prof !96

bb.gs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apv) #17
  br label %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213

_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.go, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  %i.aql = load ptr, ptr %i.agg, align 8, !tbaa !92 ; 8 uses
  %.not.i.i214 = icmp eq ptr %i.aql, null
  br i1 %.not.i.i214, label %_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8 ; 4 uses
  %i.aqn = load atomic i64, ptr %i.aqm acquire, align 8 ; 2 uses
  %i.aqo = icmp eq i64 %i.aqn, 4294967297
  %i.aqp = trunc i64 %i.aqn to i32                ; 2 uses
  br i1 %i.aqo, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  store i32 0, ptr %i.aqm, align 8, !tbaa !94
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aql, i64 12
  store i32 0, ptr %i.aqq, align 4, !tbaa !95
  %i.aqr = load ptr, ptr %i.aql, align 8, !tbaa !16
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %i.aqt = load ptr, ptr %i.aqs, align 8
  call void %i.aqt(ptr noundef nonnull align 8 dereferenceable(16) %i.aql) #17, !inline_history !123
  %i.aqu = load ptr, ptr %i.aql, align 8, !tbaa !16
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24
  %i.aqw = load ptr, ptr %i.aqv, align 8
  call void %i.aqw(ptr noundef nonnull align 8 dereferenceable(16) %i.aql) #17, !inline_history !123
  br label %_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218

bb.gv:                                            ; preds = %bb.gt
  %i.aqx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i215 = icmp eq i8 %i.aqx, 0
  br i1 %.not.i.i.i215, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aqy = add nsw i32 %i.aqp, -1
  store i32 %i.aqy, ptr %i.aqm, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216

bb.gx:                                            ; preds = %bb.gv
  %i.aqz = atomicrmw volatile add ptr %i.aqm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216: ; preds = %bb.gx, %bb.gw
  %.0.i.i.i.i217 = phi i32 [ %i.aqp, %bb.gw ], [ %i.aqz, %bb.gx ]
  %i.ara = icmp eq i32 %.0.i.i.i.i217, 1
  br i1 %i.ara, label %bb.gy, label %_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, !prof !96

bb.gy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aql) #17
  br label %_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218

_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218: ; preds = %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit213, %bb.gu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %.not.i.i.i219 = icmp eq ptr %82, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.gz

bb.gz:                                            ; preds = %_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218
  %i.arb = ptrtoint ptr %i.afm to i64
  %i.arc = ptrtoint ptr %82 to i64
  %i.ard = sub i64 %i.arb, %i.arc
  call void @_ZdlPvm(ptr noundef nonnull %82, i64 noundef %i.ard) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  %i.are = load ptr, ptr %61, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i221 = icmp eq ptr %i.are, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIiSaIiEED2Ev.exit223, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.arf = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !66
  %i.arh = ptrtoint ptr %i.arg to i64
  %i.ari = ptrtoint ptr %i.are to i64
  %i.arj = sub i64 %i.arh, %i.ari
  call void @_ZdlPvm(ptr noundef nonnull %i.are, i64 noundef %i.arj) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

_ZNSt6vectorIiSaIiEED2Ev.exit223:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %57) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  %i.ark = load ptr, ptr %54, align 8, !tbaa !57  ; 3 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ark, %i.arm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit223, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.arn, %.lr.ph.i.i.i ], [ %i.ark, %_ZNSt6vectorIiSaIiEED2Ev.exit223 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #17
  %i.arn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.arn, %i.arm
  br i1 %.not.i.i.i224, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %54, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit223
  %i.aro = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ark, %_ZNSt6vectorIiSaIiEED2Ev.exit223 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aro, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.hb

bb.hb:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.arp = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !63
  %i.arr = ptrtoint ptr %i.arq to i64
  %i.ars = ptrtoint ptr %i.aro to i64
  %i.art = sub i64 %i.arr, %i.ars
  call void @_ZdlPvm(ptr noundef nonnull %i.aro, i64 noundef %i.art) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #17
  %i.aru = load ptr, ptr %50, align 8, !tbaa !57  ; 3 uses
  %i.arv = load ptr, ptr %i.lp, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i226 = icmp eq ptr %i.aru, %i.arv
  br i1 %.not4.i.i.i226, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i232, label %.lr.ph.i.i.i227

.lr.ph.i.i.i227:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i227
  %.05.i.i.i228 = phi ptr [ %i.arw, %.lr.ph.i.i.i227 ], [ %i.aru, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i228) #17
  %i.arw = getelementptr inbounds nuw i8, ptr %.05.i.i.i228, i64 208 ; 2 uses
  %.not.i.i.i229 = icmp eq ptr %i.arw, %i.arv
  br i1 %.not.i.i.i229, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i230, label %.lr.ph.i.i.i227, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i230: ; preds = %.lr.ph.i.i.i227
  %.pr.i231 = load ptr, ptr %50, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i232

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i232: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i230, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.arx = phi ptr [ %.pr.i231, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i230 ], [ %i.aru, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i233 = icmp eq ptr %i.arx, null
  br i1 %.not.i.i1.i233, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235, label %bb.hc

bb.hc:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i232
  %i.ary = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !63
  %i.asa = ptrtoint ptr %i.arz to i64
  %i.asb = ptrtoint ptr %i.arx to i64
  %i.asc = sub i64 %i.asa, %i.asb
  call void @_ZdlPvm(ptr noundef nonnull %i.arx, i64 noundef %i.asc) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i232, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #17
  %i.asd = load ptr, ptr %49, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i236 = icmp eq ptr %i.asd, null
  br i1 %.not.i.i.i236, label %_ZNSt6vectorIiSaIiEED2Ev.exit238, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235
  %i.ase = load ptr, ptr %i.dh, align 8, !tbaa !66
  %i.asf = ptrtoint ptr %i.ase to i64
  %i.asg = ptrtoint ptr %i.asd to i64
  %i.ash = sub i64 %i.asf, %i.asg
  call void @_ZdlPvm(ptr noundef nonnull %i.asd, i64 noundef %i.ash) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit238

_ZNSt6vectorIiSaIiEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  %i.asi = load ptr, ptr %48, align 8, !tbaa !57  ; 3 uses
  %i.asj = load ptr, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i239 = icmp eq ptr %i.asi, %i.asj
  br i1 %.not4.i.i.i239, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i245, label %.lr.ph.i.i.i240

.lr.ph.i.i.i240:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit238, %.lr.ph.i.i.i240
  %.05.i.i.i241 = phi ptr [ %i.ask, %.lr.ph.i.i.i240 ], [ %i.asi, %_ZNSt6vectorIiSaIiEED2Ev.exit238 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i241) #17
  %i.ask = getelementptr inbounds nuw i8, ptr %.05.i.i.i241, i64 208 ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %i.ask, %i.asj
  br i1 %.not.i.i.i242, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i243, label %.lr.ph.i.i.i240, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i243: ; preds = %.lr.ph.i.i.i240
  %.pr.i244 = load ptr, ptr %48, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i245

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i245: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i243, %_ZNSt6vectorIiSaIiEED2Ev.exit238
  %i.asl = phi ptr [ %.pr.i244, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i243 ], [ %i.asi, %_ZNSt6vectorIiSaIiEED2Ev.exit238 ] ; 3 uses
  %.not.i.i1.i246 = icmp eq ptr %i.asl, null
  br i1 %.not.i.i1.i246, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit248, label %bb.he

bb.he:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i245
  %i.asm = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !63
  %i.aso = ptrtoint ptr %i.asn to i64
  %i.asp = ptrtoint ptr %i.asl to i64
  %i.asq = sub i64 %i.aso, %i.asp
  call void @_ZdlPvm(ptr noundef nonnull %i.asl, i64 noundef %i.asq) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit248

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit248:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i245, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  ret i32 0

bb.hf:                                            ; preds = %._crit_edge
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %.body108

bb.hg:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEET_S9_RKS2_.exit
  %i.ass = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hh:                                            ; preds = %._crit_edge.i.i
  %i.ast = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  %i.asu = load ptr, ptr %55, align 8, !tbaa !45  ; 2 uses
  %i.asv = icmp eq ptr %i.asu, %i.ado
  br i1 %i.asv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.hh
  %i.asw = load i64, ptr %i.ado, align 8, !tbaa !40
  %i.asx = add i64 %i.asw, 1
  call void @_ZdlPvm(ptr noundef %i.asu, i64 noundef %i.asx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  br label %bb.hz

bb.hi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.asy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  br label %bb.hy

bb.hj:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.asz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  br label %bb.hx

bb.hk:                                            ; preds = %.invoke, %.noexc308, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i303, %.noexc306, %bb.gd, %.noexc297, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i292, %.noexc295, %bb.fb, %.noexc286, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i281, %.noexc284, %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZN2cv3PtrINS_2ml8KNearestEE7releaseEv.exit, %bb.dw, %_ZN2cv3PtrINS_2ml3SVMEE7releaseEv.exit, %bb.ga, %bb.fv, %bb.fu, %bb.ft, %_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.es
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hl:                                            ; preds = %_ZNSolsEPFRSoS_E.exit145
  %i.atb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  br label %bb.hu

bb.hm:                                            ; preds = %bb.en, %bb.eo
  %i.atc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  br label %bb.hu

bb.hn:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  %i.atd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  br label %bb.hu

bb.ho:                                            ; preds = %._crit_edge.i.i154
  %i.ate = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #17
  %i.atf = load ptr, ptr %72, align 8, !tbaa !45  ; 2 uses
  %i.atg = icmp eq ptr %i.atf, %i.aiu
  br i1 %i.atg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.ho
  %i.ath = load i64, ptr %i.aiu, align 8, !tbaa !40
  %i.ati = add i64 %i.ath, 1
  call void @_ZdlPvm(ptr noundef %i.atf, i64 noundef %i.ati) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  br label %bb.hu

bb.hp:                                            ; preds = %_ZNSolsEPFRSoS_E.exit168
  %i.atj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  br label %bb.hu

bb.hq:                                            ; preds = %bb.fx, %bb.fy
  %i.atk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #17
  br label %bb.hu

bb.hr:                                            ; preds = %bb.fz
  %i.atl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #17
  br label %bb.hu

bb.hs:                                            ; preds = %._crit_edge.i.i186
  %i.atm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  %i.atn = load ptr, ptr %79, align 8, !tbaa !45  ; 2 uses
  %i.ato = icmp eq ptr %i.atn, %i.ann
  br i1 %i.ato, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.hs
  %i.atp = load i64, ptr %i.ann, align 8, !tbaa !40
  %i.atq = add i64 %i.atp, 1
  call void @_ZdlPvm(ptr noundef %i.atn, i64 noundef %i.atq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #17
  br label %bb.hu

bb.ht:                                            ; preds = %_ZNSolsEPFRSoS_E.exit196
  %i.atr = landingpad { ptr, i32 }
          cleanup
  %i.ats = load ptr, ptr %81, align 8, !tbaa !45  ; 2 uses
  %i.att = icmp eq ptr %i.ats, %i.aoo
  br i1 %i.att, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.ht
  %i.atu = load i64, ptr %i.aoo, align 8, !tbaa !40
  %i.atv = add i64 %i.atu, 1
  call void @_ZdlPvm(ptr noundef %i.ats, i64 noundef %i.atv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #17
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %bb.hr, %bb.hq, %bb.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %.pn65 = phi { ptr, i32 } [ %i.ata, %bb.hk ], [ %i.atr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %i.atm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %i.atl, %bb.hr ], [ %i.atk, %bb.hq ], [ %i.atj, %bb.hp ], [ %i.ate, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.atd, %bb.hn ], [ %i.atc, %bb.hm ], [ %i.atb, %bb.hl ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  %i.atw = load ptr, ptr %65, align 8, !tbaa !99  ; 3 uses
  %.not.i.i.i261 = icmp eq ptr %i.atw, null
  br i1 %.not.i.i.i261, label %_ZNSt6vectorIfSaIfEED2Ev.exit262, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.atx = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !148
  %i.atz = ptrtoint ptr %i.aty to i64
  %i.aua = ptrtoint ptr %i.atw to i64
  %i.aub = sub i64 %i.atz, %i.aua
  call void @_ZdlPvm(ptr noundef nonnull %i.atw, i64 noundef %i.aub) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit262

_ZNSt6vectorIfSaIfEED2Ev.exit262:                 ; preds = %bb.hu, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  call void @_ZNSt12__shared_ptrIN2cv2ml3SVMELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @_ZNSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %.not.i.i.i263 = icmp eq ptr %82, null
  br i1 %.not.i.i.i263, label %.body139, label %bb.hw

bb.hw:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit262
  %i.auc = ptrtoint ptr %i.afm to i64
  %i.aud = ptrtoint ptr %82 to i64
  %i.aue = sub i64 %i.auc, %i.aud
  call void @_ZdlPvm(ptr noundef nonnull %82, i64 noundef %i.aue) #19
  br label %.body139

.body139:                                         ; preds = %bb.hw, %_ZNSt6vectorIfSaIfEED2Ev.exit262, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135
  %.pn65.pn = phi { ptr, i32 } [ %i.afl, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135 ], [ %.pn65, %bb.hw ], [ %.pn65, %_ZNSt6vectorIfSaIfEED2Ev.exit262 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  %i.auf = load ptr, ptr %61, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.auf, null
  br i1 %.not.i.i.i266, label %.body129, label %.body129.sink.split

.body129.sink.split:                              ; preds = %.body139, %bb.dq
  %.sink518 = phi ptr [ %i.aet, %bb.dq ], [ %i.auf, %.body139 ] ; 2 uses
  %.pn65.pn.pn.ph = phi { ptr, i32 } [ %i.aes, %bb.dq ], [ %.pn65.pn, %.body139 ]
  %i.aug = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !66
  %i.aui = ptrtoint ptr %i.auh to i64
  %i.auj = ptrtoint ptr %.sink518 to i64
  %i.auk = sub i64 %i.aui, %i.auj
  call void @_ZdlPvm(ptr noundef nonnull %.sink518, i64 noundef %i.auk) #19
  br label %.body129

.body129:                                         ; preds = %.body129.sink.split, %.body139, %bb.dq
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.aes, %bb.dq ], [ %.pn65.pn, %.body139 ], [ %.pn65.pn.pn.ph, %.body129.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #17
  br label %bb.hx

bb.hx:                                            ; preds = %.body129, %bb.hj
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %.body129 ], [ %i.asz, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %57) #17
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hi
  %.pn65.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn, %bb.hx ], [ %i.asy, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.hg
  %.pn65.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn, %bb.hy ], [ %i.ast, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %i.ass, %bb.hg ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %54) #17
  br label %.body119

.body119:                                         ; preds = %bb.dl, %bb.dk, %bb.hz
  %.pn65.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn, %bb.hz ], [ %i.adh, %bb.dk ], [ %i.adh, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #17
  br label %.body108

.body108:                                         ; preds = %bb.hf, %bb.cw, %bb.bh, %.body119
  %.pn65.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn.pn, %.body119 ], [ %i.asr, %bb.hf ], [ %.pn147.pn.pn.pn.pn.i, %bb.cw ], [ %i.nu, %bb.bh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #17
  br label %bb.ia

bb.ia:                                            ; preds = %.body108, %.body113
  %.pn74 = phi { ptr, i32 } [ %eh.lpad-body114, %.body113 ], [ %.pn65.pn.pn.pn.pn.pn.pn.pn, %.body108 ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %50) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #17
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, %_ZNSt6vectorIiSaIiEED2Ev.exit53.i, %bb.cx, %bb.ia
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %bb.ia ], [ %.pn16.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i ], [ %i.aby, %bb.cx ], [ %.pn28.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit53.i ]
  %i.aul = load ptr, ptr %49, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i269 = icmp eq ptr %i.aul, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorIiSaIiEED2Ev.exit271, label %bb.ib

bb.ib:                                            ; preds = %.body
  %i.aum = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !66
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = ptrtoint ptr %i.aul to i64
  %i.auq = sub i64 %i.auo, %i.aup
  call void @_ZdlPvm(ptr noundef nonnull %i.aul, i64 noundef %i.auq) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit271

_ZNSt6vectorIiSaIiEED2Ev.exit271:                 ; preds = %.body, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  resume { ptr, i32 } %.pn74.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL6mosaiciRKSt6vectorIN2cv3MatESaIS1_EERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 208
  %i.i = uitofp i64 %i.h to double
  %i.j = fdiv double %i.i, 2.500000e+01
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptosi double %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.n = load i32, ptr %i.c, align 8, !tbaa !150
  %i.o = and i32 %i.n, 4095
  %.sroa.2.0.insert.ext = zext nneg i32 %i.m to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 500
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %.sroa.0.0.insert.insert, i32 noundef %i.o)
  %i.p = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.r = load ptr, ptr %0, align 8, !tbaa !57
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.y = trunc i64 %.024 to i32                   ; 2 uses
  %i.z = srem i32 %i.y, 25
  %i.aa = mul nsw i32 %i.z, 20
  %i.ab = sdiv i32 %i.y, 25
  %i.ac = mul nsw i32 %i.ab, 20
  store i32 %i.aa, ptr %4, align 4, !tbaa !61
  store i32 %i.ac, ptr %i.s, align 4, !tbaa !62
  store i32 20, ptr %i.t, align 4, !tbaa !88
  store i32 20, ptr %i.u, align 4, !tbaa !89
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ad = load ptr, ptr %0, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.ad, i64 %.024
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 0, ptr %i.w, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !71
  store ptr %3, ptr %i.v, align 8, !tbaa !72
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.af = add nuw i64 %.024, 1                    ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.ah = load ptr, ptr %0, align 8, !tbaa !57
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 208
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %bb.e, label %.loopexit, !llvm.loop !149

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.a
end_hunk_2
