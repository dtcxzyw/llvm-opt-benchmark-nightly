Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/dqs?download=true
inline.NumInlined: 1311
inline.NumDeleted: 779
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.anon.34 = type { i8 }
%class.anon.35 = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Eigen::Quaternion<double>, std::allocator<Eigen::Quaternion<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<Eigen::Quaternion<double>, std::allocator<Eigen::Quaternion<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<Eigen::Quaternion<double>, std::allocator<Eigen::Quaternion<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Eigen::Quaternion<double>, std::allocator<Eigen::Quaternion<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.36 = type { ptr }
%"class.std::vector.37" = type { %"struct.std::_Vector_base.38" }
%"struct.std::_Vector_base.38" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.258" }
%"struct.std::_Head_base.258" = type { ptr }
%"class.Eigen::Matrix.18" = type { %"class.Eigen::PlainObjectBase.19" }
%"class.Eigen::PlainObjectBase.19" = type { %"class.Eigen::DenseStorage.26" }
%"class.Eigen::DenseStorage.26" = type { %"struct.Eigen::internal::plain_array.27" }
%"struct.Eigen::internal::plain_array.27" = type { [3 x double] }

$_ZN3igl3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS1_10QuaternionIdLi0EEENS1_17aligned_allocatorIS5_EENS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKSt6vectorIT1_T2_ERKSI_IT3_SaISO_EERNS1_15PlainObjectBaseIT4_EE = comdat any

$__clang_call_terminate = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_NS3_10QuaternionIdLi0EEENS3_17aligned_allocatorIS7_EENS4_IdLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNSB_IT0_EERKSt6vectorIT1_T2_ERKSK_IT3_SaISQ_EERNS3_15PlainObjectBaseIT4_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS1_IiSZ_EEbSC_S11_mEUlimE_S12_EEbSC_S11_RKSL_RKSM_m = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_NS8_10QuaternionIdLi0EEENS8_17aligned_allocatorISC_EENS9_IdLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKS_IT1_T2_ERKS_IT3_SaISU_EERNS8_15PlainObjectBaseIT4_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS13_EEbSH_S15_mEUlimE_S16_EEbSH_S15_RKSP_RKSQ_mEUliimE_RiS1F_RmEEERS0_DpOT_ = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_NS8_10QuaternionIdLi0EEENS8_17aligned_allocatorISC_EENS9_IdLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKS_IT1_T2_ERKS_IT3_SaISU_EERNS8_15PlainObjectBaseIT4_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS13_EEbSH_S15_mEUlimE_S16_EEbSH_S15_RKSP_RKSQ_mEUliimE_RiRKiRmEEERS0_DpOT_ = comdat any

$_ZNSt6vectorISt6threadSaIS0_EED2Ev = comdat any

$_ZZN3igl3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS1_10QuaternionIdLi0EEENS1_17aligned_allocatorIS5_EENS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKSt6vectorIT1_T2_ERKSI_IT3_SaISO_EERNS1_15PlainObjectBaseIT4_EEENKUliE_clEi = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_NS8_10QuaternionIdLi0EEENS8_17aligned_allocatorISC_EENS9_IdLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKS_IT1_T2_ERKS_IT3_SaISU_EERNS8_15PlainObjectBaseIT4_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS13_EEbSH_S15_mEUlimE_S16_EEbSH_S15_RKSP_RKSQ_mEUliimE_RiS1F_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEE6_M_runEv = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_NS8_10QuaternionIdLi0EEENS8_17aligned_allocatorISC_EENS9_IdLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKS_IT1_T2_ERKS_IT3_SaISU_EERNS8_15PlainObjectBaseIT4_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS13_EEbSH_S15_mEUlimE_S16_EEbSH_S15_RKSP_RKSQ_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE = linkonce_odr dso_local constant [427 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_NS7_10QuaternionIdLi0EEENS7_17aligned_allocatorISB_EENS8_IdLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKSt6vectorIT1_T2_ERKSO_IT3_SaISU_EERNS7_15PlainObjectBaseIT4_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiS13_EEbSG_S15_mEUlimE_S16_EEbSG_S15_RKSP_RKSQ_mEUliimE_iimEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS1_10QuaternionIdLi0EEENS1_17aligned_allocatorIS5_EENS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKSt6vectorIT1_T2_ERKSI_IT3_SaISO_EERNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.34, align 1             ; 4 uses
  %6 = alloca %class.anon.35, align 8             ; 4 uses
  %7 = alloca %"class.std::vector", align 8       ; 9 uses
  %8 = alloca %class.anon, align 8                ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp ugt i64 %i.p, 9223372036854775776
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNSt15__new_allocatorIN5Eigen10QuaternionIdLi0EEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN5Eigen10QuaternionIdLi0EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN5Eigen10QuaternionIdLi0EEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.s = phi ptr [ null, %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.r, %_ZNSt15__new_allocatorIN5Eigen10QuaternionIdLi0EEEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !66
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.s, i64 %i.p
  store ptr %scevgep.i.i.i.i.i, ptr %i.t, align 8, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 7 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.z = load ptr, ptr %2, align 8, !tbaa !23     ; 5 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !70    ; 5 uses
  %min.iters.check = icmp eq i64 %i.x, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ab = shl i64 %i.x, 5                         ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = mul i64 %i.x, 24
  %i.ae = getelementptr i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.z, i64 %i.ab
  %bound0 = icmp ult ptr %i.s, %i.ae
  %bound1 = icmp ult ptr %i.aa, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %i.s, %i.af
  %bound178 = icmp ult ptr %i.z, %i.ac
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 9223372036854775806      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ag = or disjoint i64 %index, 1               ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ag ; 4 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ag ; 3 uses
  %i.al = load double, ptr %i.aj, align 8, !tbaa !27, !alias.scope !71
  %i.am = load double, ptr %i.ak, align 8, !tbaa !27, !alias.scope !71
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1 ; 3 uses
  %i.ap = load double, ptr %i.ah, align 8, !tbaa !27, !alias.scope !72
  %i.aq = load double, ptr %i.ai, align 8, !tbaa !27, !alias.scope !72
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load double, ptr %i.at, align 8, !tbaa !27, !alias.scope !71
  %i.aw = load double, ptr %i.au, align 8, !tbaa !27, !alias.scope !71
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bb = load double, ptr %i.az, align 8, !tbaa !27, !alias.scope !72
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !27, !alias.scope !72
  %i.bd = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !27, !alias.scope !71
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !27, !alias.scope !71
  %i.bj = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !27, !alias.scope !72
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !27, !alias.scope !72
  %i.bp = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bo, i64 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %index
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !27, !alias.scope !72
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !27, !alias.scope !72
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1 ; 3 uses
  %i.by = fneg <2 x double> %i.bk
  %i.bz = fneg <2 x double> %i.ao
  %i.ca = fneg <2 x double> %i.as
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cc = shufflevector <2 x double> %i.be, <2 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = shufflevector <2 x double> %i.ao, <2 x double> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ce = shufflevector <2 x double> %i.bx, <2 x double> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = shufflevector <2 x double> %i.bq, <2 x double> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = fmul <4 x double> %9, %i.cf
  %i.ch = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cd, <4 x double> %i.ce, <4 x double> %i.cg)
  %i.ci = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cb, <4 x double> %i.cc, <4 x double> %i.ch)
  %10 = shufflevector <2 x double> %i.bk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cj = shufflevector <2 x double> %i.bx, <2 x double> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ck = shufflevector <2 x double> %i.be, <2 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cl = shufflevector <2 x double> %i.ca, <2 x double> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = fmul <4 x double> %12, %i.cl
  %i.cn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %11, <4 x double> %i.ck, <4 x double> %i.cm)
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %10, <4 x double> %i.cj, <4 x double> %i.cn)
  %i.cp = shufflevector <4 x double> %i.ci, <4 x double> %i.co, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %interleaved.vec = fmul <8 x double> %i.cp, <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double -5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double -5.000000e-01>
  store <8 x double> %interleaved.vec, ptr %i.br, align 8, !tbaa !27, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !17
  %i.cs = trunc i64 %i.cr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %1, ptr %8, align 8, !tbaa !75
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.ct, align 8, !tbaa !76
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %i.cu, align 8, !tbaa !77
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %i.cv, align 8, !tbaa !75
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.cw, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %8, ptr %6, align 8, !tbaa !35
  %i.cx = invoke noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_3dqsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_NS3_10QuaternionIdLi0EEENS3_17aligned_allocatorIS7_EENS4_IdLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNSB_IT0_EERKSt6vectorIT1_T2_ERKSK_IT3_SaISQ_EERNS3_15PlainObjectBaseIT4_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS1_IiSZ_EEbSC_S11_mEUlimE_S12_EEbSC_S11_RKSL_RKSM_m(i32 noundef %i.cs, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef 1000)
          to label %bb.e unwind label %bb.g       ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv ; 6 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv ; 6 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !27
  %i.db = load double, ptr %i.cy, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 4 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !27
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = fmul double %i.dd, %i.df
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.da, double %i.db, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dj, double %i.dn)
  %i.dp = fmul double %i.do, -5.000000e-01
  store double %i.dp, ptr %i.dl, align 8, !tbaa !27
  %i.dq = load double, ptr %i.cz, align 8, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 3 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !27
  %i.dt = load double, ptr %i.dc, align 8, !tbaa !27
  %i.du = load double, ptr %i.di, align 8, !tbaa !27
  %i.dv = load double, ptr %i.dg, align 8, !tbaa !27
  %i.dw = load double, ptr %i.de, align 8, !tbaa !27
  %i.dx = fneg double %i.dv
  %i.dy = fmul double %i.dt, %i.du
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %i.dy)
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dz)
  %i.eb = fmul double %i.ea, 5.000000e-01
  store double %i.eb, ptr %i.dk, align 8, !tbaa !27
  %i.ec = load double, ptr %i.cz, align 8, !tbaa !27
  %i.ed = load double, ptr %i.di, align 8, !tbaa !27
  %i.ee = fneg double %i.ec
  %i.ef = load double, ptr %i.dc, align 8, !tbaa !27
  %i.eg = load double, ptr %i.dr, align 8, !tbaa !27
  %i.eh = fmul double %i.ef, %i.eg
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ed, double %i.eh)
  %i.ej = load double, ptr %i.dg, align 8, !tbaa !27
  %i.ek = load double, ptr %i.cy, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.ei)
  %i.en = fmul double %i.em, 5.000000e-01
  store double %i.en, ptr %i.el, align 8, !tbaa !27
  %i.eo = load double, ptr %i.cz, align 8, !tbaa !27
  %i.ep = load double, ptr %i.de, align 8, !tbaa !27
  %i.eq = load double, ptr %i.dc, align 8, !tbaa !27
  %i.er = load double, ptr %i.cy, align 8, !tbaa !27
  %i.es = load double, ptr %i.dg, align 8, !tbaa !27
  %i.et = load double, ptr %i.dr, align 8, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.ev = fneg double %i.er
  %i.ew = fmul double %i.eq, %i.ev
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.ep, double %i.ew)
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.ex)
  %i.ez = fmul double %i.ey, 5.000000e-01
  store double %i.ez, ptr %i.eu, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !64

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.fa = load ptr, ptr %7, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fb = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #23
  br label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

bb.g:                                             ; preds = %._crit_edge
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.fg = load ptr, ptr %7, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EED2Ev.exit64, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fh = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #23
  br label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EED2Ev.exit64

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEESaIS2_EED2Ev.exit64: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %i.ff
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.f) #20
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
end_hunk_0
