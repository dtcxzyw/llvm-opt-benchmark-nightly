Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bfs_orient?download=true
inline.NumInlined: 739
inline.NumDeleted: 457
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.anon.24 = type { i8 }
%class.anon.25 = type { ptr }
%"class.Eigen::SparseMatrix" = type { %"class.Eigen::SparseCompressedBase", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase" = type { %"class.Eigen::SparseMatrixBase" }
%"class.Eigen::SparseMatrixBase" = type { i8 }
%"class.Eigen::internal::CompressedStorage" = type { ptr, ptr, i64, i64 }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64 }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.26 = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.80" }
%"struct.std::_Head_base.80" = type { ptr }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZN3igl10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIiLi0EiED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5Eigen8internal17CompressedStorageIiiED2Ev = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EERNSC_IT1_EEEUliE_EEbS8_RKSD_mEUlmE_ZNS1_IiSJ_EEbS8_SL_mEUlimE_SM_EEbS8_SL_RKSG_RKT2_m = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EERNSH_IT1_EEEUliE_EEbSD_RKSI_mEUlmE_ZNS6_IiSO_EEbSD_SQ_mEUlimE_SR_EEbSD_SQ_RKSL_RKT2_mEUliimE_RiS11_RmEEERS0_DpOT_ = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EERNSH_IT1_EEEUliE_EEbSD_RKSI_mEUlmE_ZNS6_IiSO_EEbSD_SQ_mEUlimE_SR_EEbSD_SQ_RKSL_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_ = comdat any

$_ZNSt6vectorISt6threadSaIS0_EED2Ev = comdat any

$_ZZN3igl10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EEENKUliE_clEi = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EERNSH_IT1_EEEUliE_EEbSD_RKSI_mEUlmE_ZNS6_IiSO_EEbSD_SQ_mEUlimE_SR_EEbSD_SQ_RKSL_RKT2_mEUliimE_RiS11_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEE6_M_runEv = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EERNSH_IT1_EEEUliE_EEbSD_RKSI_mEUlmE_ZNS6_IiSO_EEbSD_SQ_mEUlimE_SR_EEbSD_SQ_RKSL_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE = comdat any

@__const._ZN3igl10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE.ES = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 0, i32 1]], align 16
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE = linkonce_odr dso_local constant [340 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EERNSG_IT1_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS5_IiSN_EEbSC_SP_mEUlimE_SQ_EEbSC_SP_RKSK_RKT2_mEUliimE_iimEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.24, align 1             ; 4 uses
  %4 = alloca %class.anon.25, align 8             ; 4 uses
  %5 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  %i.a = alloca [3 x [2 x i32]], align 16         ; 5 uses
  %7 = alloca %class.anon, align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i8 0, ptr %5, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 -1, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  %i.e = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !19
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIiLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn.pn.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIiiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.h) #21
  br label %common.resume

_ZN5Eigen12SparseMatrixIiLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.e, align 4
  invoke void @_ZN3igl18orientable_patchesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiEC2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = load ptr, ptr %2, align 8, !tbaa !24     ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 12 uses
  %i.o = sdiv i64 %i.n, 8
  %i.p = shl nsw i64 %i.o, 3                      ; 3 uses
  %i.q = sdiv i64 %i.n, 4
  %i.r = shl nsw i64 %i.q, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.n, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load <4 x i32>, ptr %i.l, align 16, !tbaa !27 ; 3 uses
  %i.t = icmp sgt i64 %i.n, 7
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !27 ; 2 uses
  %i.w = icmp samesign ugt i64 %i.n, 15
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.v, %bb.f ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.s, %bb.f ], [ %i.ac, %.lr.ph.i.i.i.i ]
  %i.x = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.y = icmp sgt i64 %i.r, %i.p
  br i1 %i.y, label %bb.g, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i.a, %.lr.ph.i.i.i.i ], [ 8, %bb.f ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.s, %bb.f ]
  %i.z = phi <4 x i32> [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.v, %bb.f ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05779.i.i.i.i
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !27
  %i.ac = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.057.in78.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load <4 x i32>, ptr %i.ae, align 16, !tbaa !27
  %i.ag = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> %i.af) ; 2 uses
  %.057.i.i.i.i.a = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %8 = icmp slt i64 %.057.i.i.i.i.a, %i.p
  br i1 %8, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !28

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.ai = load <4 x i32>, ptr %i.ah, align 16, !tbaa !27
  %i.aj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.x, <4 x i32> %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i, %bb.e
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.s, %bb.e ], [ %i.aj, %bb.g ], [ %i.x, %._crit_edge.i.i.i.i ]
  %i.ak = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.al = icmp slt i64 %i.r, %i.n
  br i1 %i.al, label %.lr.ph84.i.i.i.i.preheader, label %.loopexit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.am = sub i64 %i.n, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = add i64 %i.r, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.l, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.as, %vector.body ]
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !30
  %wide.load52 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !30
  %i.ar = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.as = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi51, <4 x i32> %wide.load52) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ar, <4 x i32> %i.as)
  %i.au = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph84.i.i.i.i.preheader74

.lr.ph84.i.i.i.i.preheader74:                     ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph84.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ak, %.lr.ph84.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader74, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ay, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader74 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ax, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader74 ]
  %i.av = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05582.i.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !30
  %i.ax = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.aw) ; 2 uses
  %i.ay = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ay, %i.n
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph84.i.i.i.i, !llvm.loop !34

bb.i:                                             ; preds = %bb.d
  %i.az = load i32, ptr %i.l, align 4, !tbaa !30  ; 3 uses
  %i.ba = icmp sgt i64 %i.n, 1
  br i1 %i.ba, label %.lr.ph89.i.i.i.i.preheader, label %.loopexit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.bb = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check54 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check54, label %.lr.ph89.i.i.i.i.preheader71, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec56 = and i64 %i.bb, -8                    ; 3 uses
  %i.bc = or disjoint i64 %n.vec56, 1
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph55
  %index60 = phi i64 [ 0, %vector.ph55 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <4 x i32> [ %broadcast.splat58, %vector.ph55 ], [ %i.bg, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ %broadcast.splat58, %vector.ph55 ], [ %i.bh, %vector.body59 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index60 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %wide.load63 = load <4 x i32>, ptr %i.be, align 4, !tbaa !30
  %wide.load64 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !30
  %i.bg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi61, <4 x i32> %wide.load63) ; 2 uses
  %i.bh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi62, <4 x i32> %wide.load64) ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next65, %n.vec56
  br i1 %i.bi, label %middle.block66, label %vector.body59, !llvm.loop !35

middle.block66:                                   ; preds = %vector.body59
  %rdx.minmax67 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bh)
  %i.bj = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax67) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.bb, %n.vec56
  br i1 %cmp.n68, label %.loopexit, label %.lr.ph89.i.i.i.i.preheader71

.lr.ph89.i.i.i.i.preheader71:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block66
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bc, %middle.block66 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.az, %.lr.ph89.i.i.i.i.preheader ], [ %i.bj, %middle.block66 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader71, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bn, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader71 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bm, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader71 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.087.i.i.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bm = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bl) ; 2 uses
  %i.bn = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bn, %i.n
  br i1 %exitcond96.not.i.i.i.i, label %.loopexit, label %.lr.ph89.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block66, %bb.h, %bb.i
  %.3.i.i.i.i = phi i32 [ %i.bm, %.lr.ph89.i.i.i.i ], [ %i.az, %bb.i ], [ %i.ak, %bb.h ], [ %i.bj, %middle.block66 ], [ %i.au, %middle.block ], [ %i.ax, %.lr.ph84.i.i.i.i ]
  %i.bo = add nsw i32 %.3.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %sext = shl i64 %i.k, 32
  %i.bp = ashr exact i64 %sext, 32                ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bp, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.k

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !26
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bp, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.j
  %.pr.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !26
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.bs = phi i64 [ %i.bp, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %i.bt = icmp slt i64 %i.bs, 1
  br i1 %i.bt, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.bu = load ptr, ptr %6, align 8, !tbaa !24
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN3igl10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE.ES, i64 24, i1 false)
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.bw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiEC2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.l, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %1, ptr %7, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.bz, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.ca, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %i.cb, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.cc, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %7, ptr %4, align 8, !tbaa !46
  %i.cd = invoke noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_10bfs_orientIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EERNSC_IT1_EEEUliE_EEbS8_RKSD_mEUlmE_ZNS1_IiSJ_EEbS8_SL_mEUlimE_SM_EEbS8_SL_RKSG_RKT2_m(i32 noundef %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.p unwind label %bb.t       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ce = load ptr, ptr %6, align 8, !tbaa !24
  call void @free(ptr noundef %i.ce) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !19
end_hunk_0
