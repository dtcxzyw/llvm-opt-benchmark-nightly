Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_decomp?download=true
inline.NumInlined: 716
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::Matx" = type { [9 x double] }
%"struct.cv::internal::Matx_FastInvOp" = type { i8 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::Matx.0" = type { [3 x double] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.3" = type { i8 }
%"class.cv::Vec" = type { %"class.cv::Matx.0" }
%"struct.cv::HomographyDecomposition::_CameraMotion" = type { %"class.cv::Matx", %"class.cv::Vec", %"class.cv::Vec" }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::HomographyDecomposition::_CameraMotion, std::allocator<cv::HomographyDecomposition::_CameraMotion>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::HomographyDecomposition::_CameraMotion, std::allocator<cv::HomographyDecomposition::_CameraMotion>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::HomographyDecomposition::_CameraMotion, std::allocator<cv::HomographyDecomposition::_CameraMotion>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::HomographyDecomposition::_CameraMotion, std::allocator<cv::HomographyDecomposition::_CameraMotion>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.16" }
%"class.cv::Vec.16" = type { %"class.cv::Matx.17" }
%"class.cv::Matx.17" = type { [4 x double] }

$_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi1EEEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv = comdat any

$_ZNSt12__shared_ptrIN2cv23HomographyDecomposition16HomographyDecompELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev = comdat any

$_ZN2cv23HomographyDecomposition16HomographyDecompD0Ev = comdat any

$_ZN2cv23HomographyDecomposition21HomographyDecompZhangD0Ev = comdat any

$_ZN2cv23HomographyDecomposition16HomographyDecompD2Ev = comdat any

$_ZN2cv23HomographyDecomposition21HomographyDecompInriaD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNK2cv8internal14Matx_FastInvOpIdLi3ELi3EEclERKNS_4MatxIdLi3ELi3EEERS4_i = comdat any

$_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

@.str = private unnamed_addr constant [32 x i8] c"W.total() > 2 && Vt.total() > 7\00", align 1
@__func__._ZN2cv23HomographyDecomposition21HomographyDecompZhang9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE = private unnamed_addr constant [10 x i8] c"decompose\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/opencv/opencv/modules/geometry/src/homography_decomp.cpp\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"H.cols == 3 && H.rows == 3\00", align 1
@__func__._ZN2cv22decomposeHomographyMatERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_S5_ = private unnamed_addr constant [23 x i8] c"decomposeHomographyMat\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"K.cols == 3 && K.rows == 3\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"_beforeRectifiedPoints.type() == CV_32FC2 && _afterRectifiedPoints.type() == CV_32FC2\00", align 1
@__func__._ZN2cv40filterHomographyDecompByVisibleRefpointsERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES2_ = private unnamed_addr constant [41 x i8] c"filterHomographyDecompByVisibleRefpoints\00", align 1
@.str.5 = private unnamed_addr constant [115 x i8] c"_pointsMask.empty() || _pointsMask.type() == CV_8U || _pointsMask.type() == CV_8S || _pointsMask.type() == CV_Bool\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"pointsMask.empty() || pointsMask.checkVector(1, CV_8U) == npoints\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"normals[i].total() == 3\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"rotnorm[i].total() == 3\00", align 1
@_ZTVN2cv23HomographyDecomposition16HomographyDecompE = hidden local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN2cv23HomographyDecomposition16HomographyDecompE, ptr @_ZN2cv23HomographyDecomposition16HomographyDecompD2Ev, ptr @_ZN2cv23HomographyDecomposition16HomographyDecompD0Ev, ptr @_ZN2cv23HomographyDecomposition16HomographyDecomp19decomposeHomographyERKNS_4MatxIdLi3ELi3EEES5_RSt6vectorINS0_13_CameraMotionESaIS7_EE, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN2cv23HomographyDecomposition16HomographyDecompE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv23HomographyDecomposition16HomographyDecompE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv23HomographyDecomposition16HomographyDecompE = hidden constant [49 x i8] c"N2cv23HomographyDecomposition16HomographyDecompE\00", align 1
@_ZTVN2cv23HomographyDecomposition21HomographyDecompZhangE = hidden local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN2cv23HomographyDecomposition21HomographyDecompZhangE, ptr @_ZN2cv23HomographyDecomposition16HomographyDecompD2Ev, ptr @_ZN2cv23HomographyDecomposition21HomographyDecompZhangD0Ev, ptr @_ZN2cv23HomographyDecomposition16HomographyDecomp19decomposeHomographyERKNS_4MatxIdLi3ELi3EEES5_RSt6vectorINS0_13_CameraMotionESaIS7_EE, ptr @_ZN2cv23HomographyDecomposition21HomographyDecompZhang9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE] }, align 8
@_ZTIN2cv23HomographyDecomposition21HomographyDecompZhangE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv23HomographyDecomposition21HomographyDecompZhangE, ptr @_ZTIN2cv23HomographyDecomposition16HomographyDecompE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv23HomographyDecomposition21HomographyDecompZhangE = hidden constant [54 x i8] c"N2cv23HomographyDecomposition21HomographyDecompZhangE\00", align 1
@_ZTVN2cv23HomographyDecomposition21HomographyDecompInriaE = hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN2cv23HomographyDecomposition21HomographyDecompInriaE, ptr @_ZN2cv23HomographyDecomposition16HomographyDecompD2Ev, ptr @_ZN2cv23HomographyDecomposition21HomographyDecompInriaD0Ev, ptr @_ZN2cv23HomographyDecomposition16HomographyDecomp19decomposeHomographyERKNS_4MatxIdLi3ELi3EEES5_RSt6vectorINS0_13_CameraMotionESaIS7_EE, ptr @_ZN2cv23HomographyDecomposition21HomographyDecompInria9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE] }, align 8
@_ZTIN2cv23HomographyDecomposition21HomographyDecompInriaE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv23HomographyDecomposition21HomographyDecompInriaE, ptr @_ZTIN2cv23HomographyDecomposition16HomographyDecompE }, align 8
@_ZTSN2cv23HomographyDecomposition21HomographyDecompInriaE = hidden constant [54 x i8] c"N2cv23HomographyDecomposition21HomographyDecompInriaE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"data && dims <= 2 && rows == m && cols == n && channels() == 1\00", align 1
@__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi1EEEv = private unnamed_addr constant [14 x i8] c"operator Matx\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [105 x i8] c"St15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition16HomographyDecomp9normalizeERKNS_4MatxIdLi3ELi3EEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Matx") align 8 captures(none) initializes((0, 72)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit:
  %4 = alloca %"class.cv::Matx", align 8          ; 6 uses
  %5 = alloca %"struct.cv::internal::Matx_FastInvOp", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !11, !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !66
  %i.a = call noundef zeroext i1 @_ZNK2cv8internal14Matx_FastInvOpIdLi3ELi3EEclERKNS_4MatxIdLi3ELi3EEERS4_i(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 0), !noalias !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !66
  %i.b = load <8 x double>, ptr %4, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.0 = select i1 %i.a, double %.sroa.12.0.copyload, double 0.000000e+00
  %i.c = select i1 %i.a, <8 x double> %i.b, <8 x double> zeroinitializer ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !66
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load <3 x double>, ptr %2, align 8, !tbaa !11, !noalias !68 ; 2 uses
  %i.k = load <2 x double>, ptr %2, align 8
  %i.l = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> zeroinitializer
  %i.m = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.l, <3 x double> %i.j, <3 x double> zeroinitializer)
  %i.n = load <3 x double>, ptr %i.d, align 8, !tbaa !11, !noalias !68 ; 2 uses
  %6 = load double, ptr %i.f, align 8, !tbaa !11, !noalias !68
  %i.o = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.p = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.o, <3 x double> %i.n, <3 x double> %i.m)
  %i.q = load <3 x double>, ptr %i.e, align 8, !tbaa !11, !noalias !68 ; 2 uses
  %7 = load double, ptr %i.g, align 8, !tbaa !11, !noalias !68
  %i.r = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.s = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.r, <3 x double> %i.q, <3 x double> %i.p) ; 6 uses
  %i.t = load <2 x double>, ptr %3, align 8, !tbaa !11, !noalias !67 ; 3 uses
  %i.u = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> zeroinitializer
  %i.v = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.t, <2 x double> zeroinitializer)
  %i.w = load <2 x double>, ptr %i.h, align 8, !tbaa !11, !noalias !67 ; 3 uses
  %i.x = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.y = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.w, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.i, align 8, !tbaa !11, !noalias !67 ; 3 uses
  %i.aa = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.z, <2 x double> %i.y)
  store <2 x double> %i.ab, ptr %0, align 8, !tbaa !11, !alias.scope !67
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11, !noalias !67 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11, !noalias !67 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11, !noalias !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.al = shufflevector <3 x double> %i.j, <3 x double> poison, <3 x i32> <i32 2, i32 poison, i32 0>
  %8 = shufflevector <2 x double> %i.k, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.am = shufflevector <3 x double> %i.al, <3 x double> %8, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.an = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ak, <3 x double> %i.am, <3 x double> zeroinitializer)
  %i.ao = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 4, i32 4, i32 4>
  %9 = insertelement <3 x double> poison, double %6, i64 0
  %10 = shufflevector <3 x double> %i.n, <3 x double> %9, <3 x i32> <i32 2, i32 3, i32 0> ; 2 uses
  %i.ap = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ao, <3 x double> %10, <3 x double> %i.an)
  %i.aq = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 5, i32 5, i32 5>
  %11 = insertelement <3 x double> poison, double %7, i64 0
  %12 = shufflevector <3 x double> %i.q, <3 x double> %11, <3 x i32> <i32 2, i32 3, i32 0> ; 2 uses
  %i.ar = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.aq, <3 x double> %12, <3 x double> %i.ap) ; 6 uses
  %i.as = shufflevector <3 x double> %i.ar, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.at = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.t, <2 x double> zeroinitializer)
  %i.au = shufflevector <3 x double> %i.ar, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.av = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.w, <2 x double> %i.at)
  %i.aw = shufflevector <3 x double> %i.ar, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.z, <2 x double> %i.av)
  store <2 x double> %i.ax, ptr %i.aj, align 8, !tbaa !11, !alias.scope !67
  %i.ay = shufflevector <3 x double> %i.s, <3 x double> %i.ar, <2 x i32> <i32 0, i32 5>
  %i.az = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ba, <2 x double> zeroinitializer)
  %i.bc = shufflevector <3 x double> %i.s, <3 x double> %i.ar, <2 x i32> <i32 1, i32 4>
  %i.bd = insertelement <2 x double> poison, double %i.af, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.be, <2 x double> %i.bb)
  %i.bg = shufflevector <3 x double> %i.s, <3 x double> %i.ar, <2 x i32> <i32 2, i32 3>
  %i.bh = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bi, <2 x double> %i.bf) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  store double %i.bk, ptr %i.ai, align 8, !tbaa !11, !alias.scope !67
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  store double %i.bm, ptr %i.bl, align 8, !tbaa !11, !alias.scope !67
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 6, i32 6, i32 6>
  %i.bp = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.bo, <3 x double> %i.am, <3 x double> zeroinitializer)
  %i.bq = shufflevector <8 x double> %i.c, <8 x double> poison, <3 x i32> <i32 7, i32 7, i32 7>
  %i.br = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.bq, <3 x double> %10, <3 x double> %i.bp)
  %i.bs = insertelement <3 x double> poison, double %.sroa.12.0, i64 0
  %i.bt = shufflevector <3 x double> %i.bs, <3 x double> poison, <3 x i32> zeroinitializer
  %i.bu = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.bt, <3 x double> %12, <3 x double> %i.br) ; 6 uses
  %i.bv = shufflevector <3 x double> %i.bu, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.t, <2 x double> zeroinitializer)
  %i.bx = shufflevector <3 x double> %i.bu, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.w, <2 x double> %i.bw)
  %i.bz = shufflevector <3 x double> %i.bu, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.z, <2 x double> %i.by)
  store <2 x double> %i.ca, ptr %i.bn, align 8, !tbaa !11, !alias.scope !67
  %i.cb = extractelement <3 x double> %i.bu, i64 2
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.ad, double 0.000000e+00)
  %i.cd = extractelement <3 x double> %i.bu, i64 1
  %i.ce = call double @llvm.fmuladd.f64(double %i.cd, double %i.af, double %i.cc)
  %i.cf = extractelement <3 x double> %i.bu, i64 0
  %i.cg = call double @llvm.fmuladd.f64(double %i.cf, double %i.ah, double %i.ce)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.cg, ptr %i.ch, align 8, !tbaa !11, !alias.scope !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition16HomographyDecomp11removeScaleEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 18 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !16
  store i64 12884901891, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !15
  store ptr %1, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %1, align 8, !tbaa !27
  %i.m = and i32 %i.l, 16384
  %i.n = icmp ne i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 1
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30
  %.fr = freeze i32 %i.ad                         ; 3 uses
  %i.ae = add i32 %.fr, 1
  %i.af = icmp ult i32 %i.ae, 3
  %i.ag = select i1 %i.af, i32 %.fr, i32 0        ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %.fr
  %i.ai = sub nsw i32 1, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29
  %i.an = sext i32 %i.ag to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = sext i32 %i.ai to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %i.t, %bb.e ], [ %i.ab, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = load double, ptr %.0.i, align 8, !tbaa !11
  %i.at = fdiv double 1.000000e+00, %i.as         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !11, !noalias !71
  %i.az = fmul double %i.at, %i.ay
  %i.ba = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !71
  %i.bb = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bd = fmul <2 x double> %i.bc, %i.ba
  store <2 x double> %i.bd, ptr %i.a, align 8
  %i.be = load <2 x double>, ptr %i.au, align 8, !tbaa !11, !noalias !71
  %i.bf = fmul <2 x double> %i.bc, %i.be
  store <2 x double> %i.bf, ptr %i.au, align 8
  %i.bg = load <2 x double>, ptr %i.av, align 8, !tbaa !11, !noalias !71
  %i.bh = fmul <2 x double> %i.bc, %i.bg
  store <2 x double> %i.bh, ptr %i.av, align 8
  %i.bi = load <2 x double>, ptr %i.aw, align 8, !tbaa !11, !noalias !71
  %i.bj = fmul <2 x double> %i.bc, %i.bi
  store <2 x double> %i.bj, ptr %i.aw, align 8
  store double %i.az, ptr %i.ax, align 8, !tbaa !31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.j:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.bk
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv23HomographyDecomposition16HomographyDecomp15isRotationValidERKNS_4MatxIdLi3ELi3EEEd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Matx", align 16         ; 7 uses
  %4 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.i = load <2 x double>, ptr %1, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.j = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.k = load <2 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.l = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.i, <2 x double> zeroinitializer)
  %i.n = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.j, <2 x double> %i.m)
  %i.p = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.k, <2 x double> %i.o) ; 2 uses
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !11, !alias.scope !77
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 1> ; 2 uses
  %i.t = insertelement <4 x double> %i.s, double 0.000000e+00, i64 1
  %i.u = insertelement <4 x double> %i.s, double -0.000000e+00, i64 1
  %i.v = insertelement <4 x double> poison, double %i.d, i64 0
  %i.w = shufflevector <4 x double> %i.v, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.x = shufflevector <4 x double> %i.w, <4 x double> %i.u, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.z = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.y, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.aa = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.t, <4 x double> %i.x, <4 x double> %i.z)
end_hunk_0
