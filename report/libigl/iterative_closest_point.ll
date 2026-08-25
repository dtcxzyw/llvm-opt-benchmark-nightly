Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/iterative_closest_point?download=true
inline.NumInlined: 1501
inline.NumDeleted: 931
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.Eigen::internal::all_t" = type { i8 }
%"class.igl::AABB" = type <{ ptr, ptr, ptr, %"class.Eigen::AlignedBox", i32, [4 x i8] }>
%"class.Eigen::AlignedBox" = type { %"class.Eigen::Matrix", %"class.Eigen::Matrix" }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }
%"class.Eigen::Matrix.15" = type { %"class.Eigen::PlainObjectBase.16" }
%"class.Eigen::PlainObjectBase.16" = type { %"class.Eigen::DenseStorage.17" }
%"class.Eigen::DenseStorage.17" = type { ptr, i64, i64 }
%"struct.Eigen::internal::evaluator.284" = type { %"struct.Eigen::internal::binary_evaluator.285" }
%"struct.Eigen::internal::binary_evaluator.285" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, 1, 3>, Eigen::Matrix<double, 3, 3>>, const Eigen::Matrix<double, 1, 3>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, 1, 3>, Eigen::Matrix<double, 3, 3>>, const Eigen::Matrix<double, 1, 3>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.288", %"struct.Eigen::internal::evaluator.291" }
%"struct.Eigen::internal::evaluator.288" = type { %"struct.Eigen::internal::evaluator.289" }
%"struct.Eigen::internal::evaluator.289" = type { %"struct.Eigen::internal::product_evaluator.290" }
%"struct.Eigen::internal::product_evaluator.290" = type { %"struct.Eigen::internal::evaluator.143", %"class.Eigen::Matrix.44" }
%"struct.Eigen::internal::evaluator.143" = type { %"struct.Eigen::internal::evaluator.144" }
%"struct.Eigen::internal::evaluator.144" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data" }
%"class.Eigen::internal::plainobjectbase_evaluator_data" = type { ptr }
%"class.Eigen::Matrix.44" = type { %"class.Eigen::PlainObjectBase.27" }
%"class.Eigen::PlainObjectBase.27" = type { %"class.Eigen::DenseStorage.34" }
%"class.Eigen::DenseStorage.34" = type { %"struct.Eigen::internal::plain_array.35" }
%"struct.Eigen::internal::plain_array.35" = type { [3 x double] }
%"struct.Eigen::internal::evaluator.291" = type { %"struct.Eigen::internal::evaluator.143" }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Matrix.45" = type { %"class.Eigen::PlainObjectBase.46" }
%"class.Eigen::PlainObjectBase.46" = type { %"class.Eigen::DenseStorage.53" }
%"class.Eigen::DenseStorage.53" = type { ptr, i64 }
%"class.Eigen::Matrix.54" = type { %"class.Eigen::PlainObjectBase.55" }
%"class.Eigen::PlainObjectBase.55" = type { %"class.Eigen::DenseStorage.62" }
%"class.Eigen::DenseStorage.62" = type { ptr, i64 }
%"class.Eigen::CwiseBinaryOp" = type <{ %"class.Eigen::Product", %"class.Eigen::Replicate", [8 x i8] }>
%"class.Eigen::Product" = type { ptr, ptr }
%"class.Eigen::Replicate" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic.75", [8 x i8] }>
%"class.Eigen::internal::variable_if_dynamic.75" = type { i64 }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.Eigen::Matrix.76" = type { %"class.Eigen::PlainObjectBase.77" }
%"class.Eigen::PlainObjectBase.77" = type { %"class.Eigen::DenseStorage.84" }
%"class.Eigen::DenseStorage.84" = type { ptr, i64 }
%"class.Eigen::IndexedView" = type { ptr, %"class.Eigen::Matrix.45", %"struct.Eigen::internal::AllRange" }
%"struct.Eigen::internal::AllRange" = type { %"class.Eigen::internal::variable_if_dynamic.75" }
%"class.Eigen::Matrix.43" = type { %"class.Eigen::PlainObjectBase.18" }
%"class.Eigen::PlainObjectBase.18" = type { %"class.Eigen::DenseStorage.25" }
%"class.Eigen::DenseStorage.25" = type { %"struct.Eigen::internal::plain_array.26" }
%"struct.Eigen::internal::plain_array.26" = type { [9 x double] }
%"struct.Eigen::internal::evaluator.129" = type { %"struct.Eigen::internal::binary_evaluator" }
%"struct.Eigen::internal::binary_evaluator" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 3, 3>>, const Eigen::Replicate<Eigen::Matrix<double, 1, 3>, -1, 1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 3, 3>>, const Eigen::Replicate<Eigen::Matrix<double, 1, 3>, -1, 1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.132", %"struct.Eigen::internal::evaluator.139" }
%"struct.Eigen::internal::evaluator.132" = type { %"struct.Eigen::internal::evaluator.133" }
%"struct.Eigen::internal::evaluator.133" = type { %"struct.Eigen::internal::product_evaluator" }
%"struct.Eigen::internal::product_evaluator" = type { %"struct.Eigen::internal::evaluator.134", %"class.Eigen::Matrix.54" }
%"struct.Eigen::internal::evaluator.134" = type { %"struct.Eigen::internal::evaluator.135" }
%"struct.Eigen::internal::evaluator.135" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.138" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.138" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.139" = type { %"struct.Eigen::internal::evaluator.base", [6 x i8] }
%"struct.Eigen::internal::evaluator.base" = type { %"struct.Eigen::internal::unary_evaluator.base" }
%"struct.Eigen::internal::unary_evaluator.base" = type <{ ptr, %"struct.Eigen::internal::evaluator.143", [2 x i8] }>
%"struct.Eigen::internal::evaluator.160" = type { %"struct.Eigen::internal::product_evaluator.161" }
%"struct.Eigen::internal::product_evaluator.161" = type { ptr, ptr, %"struct.Eigen::internal::evaluator.148", %"struct.Eigen::internal::evaluator.118", i64 }
%"struct.Eigen::internal::evaluator.148" = type { %"struct.Eigen::internal::evaluator.149" }
%"struct.Eigen::internal::evaluator.149" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.138" }
%"struct.Eigen::internal::evaluator.118" = type { %"struct.Eigen::internal::evaluator.119" }
%"struct.Eigen::internal::evaluator.119" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.122" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.122" = type { ptr }
%"class.Eigen::internal::generic_dense_assignment_kernel.164" = type { ptr, ptr, ptr, ptr }

$_ZN3igl23iterative_closest_pointIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EEiiRNS1_15PlainObjectBaseIT3_EERNSO_IT4_EE = comdat any

$_ZN3igl23iterative_closest_pointIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS_4AABBISG_Li3EEERKNS7_IT3_EEiiRNS1_15PlainObjectBaseIT4_EERNSW_IT5_EE = comdat any

$__clang_call_terminate = comdat any

$_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv = comdat any

$_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_ = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS3_NS2_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS2_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi3ELi3ELi0ELi3ELi3EEELi0EEELi3ENS_10DenseShapeES7_ddEC2ERKS6_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi3ELi3ELi0ELi3ELi3EEELi1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE = comdat any

@_ZN3igl12placeholdersL3allE = internal constant %"struct.Eigen::internal::all_t" undef, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23iterative_closest_pointIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EEiiRNS1_15PlainObjectBaseIT3_EERNSO_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::AABB", align 8         ; 12 uses
  %9 = alloca %"class.Eigen::Matrix.15", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %8, i8 0, i64 24, i1 false)
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.a, align 8, !tbaa !9
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 -1, ptr %i.b, align 8, !tbaa !11
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 8 dereferenceable(76) %8, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3igl23iterative_closest_pointIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS_4AABBISG_Li3EEERKNS7_IT3_EEiiRNS1_15PlainObjectBaseIT4_EERNSW_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(76) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %9, align 8, !tbaa !20
  call void @free(ptr noundef %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %8)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit unwind label %bb.e, !inline_history !24

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #18, !inline_history !24
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.f:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %9, align 8, !tbaa !20
  call void @free(ptr noundef %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.f ]
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %8)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit17 unwind label %bb.i, !inline_history !24

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #18, !inline_history !24
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit17: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl23iterative_closest_pointIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS_4AABBISG_Li3EEERKNS7_IT3_EEiiRNS1_15PlainObjectBaseIT4_EERNSW_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.Eigen::internal::evaluator.284", align 8 ; 4 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Matrix.15", align 8 ; 9 uses
  %13 = alloca %"class.Eigen::Matrix.45", align 8 ; 7 uses
  %14 = alloca %"class.Eigen::Matrix.54", align 8 ; 7 uses
  %15 = alloca %"class.Eigen::Matrix.15", align 8 ; 12 uses
  %16 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 8 uses
  %17 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %18 = alloca %"class.Eigen::Matrix.45", align 8 ; 8 uses
  %19 = alloca %"class.Eigen::Matrix.15", align 8 ; 8 uses
  %20 = alloca %"class.Eigen::Matrix.76", align 8 ; 7 uses
  %21 = alloca %"class.Eigen::Matrix.15", align 8 ; 7 uses
  %22 = alloca %"class.Eigen::IndexedView", align 8 ; 6 uses
  %23 = alloca %"class.Eigen::Matrix.43", align 16 ; 13 uses
  %24 = alloca %"class.Eigen::Matrix.44", align 16 ; 6 uses
  %.sroa.561 = alloca [4 x double], align 16      ; 7 uses
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.e = icmp sgt i32 %7, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 4992
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.561.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.561, i64 8
  %.sroa.561.24..sroa_idx75 = getelementptr inbounds nuw i8, ptr %.sroa.561, i64 24
  %.sroa.561.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.561, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.03166 = phi i32 [ 0, %.lr.ph ], [ %i.dh, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.y = load i64, ptr %i.f, align 8, !tbaa !28, !noalias !29 ; 7 uses
  store ptr %0, ptr %16, align 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %9, ptr %i.g, align 8, !alias.scope !25
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.z = icmp sgt i64 %i.y, 3074457345618258602
  br i1 %i.z, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

.invoke:                                          ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %i.aa = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !32
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.cont unwind label %.body.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.b
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductIS2_NS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ugt i64 %i.y, 768614336404564650
  br i1 %i.ac, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.ad = mul i64 %i.y, 24
  %i.ae = call noalias ptr @malloc(i64 noundef %i.ad) #20 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.invoke, label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.c
  %.sink.i = phi ptr [ %i.ae, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.c ]
  store ptr %.sink.i, ptr %15, align 8, !tbaa !20
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductIS2_NS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductIS2_NS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.y, ptr %i.h, align 8, !tbaa !28
  store i64 3, ptr %i.i, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS3_NS2_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS2_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.e unwind label %.body.loopexit

.body.loopexit:                                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductIS2_NS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.loopexit.split-lp:                          ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.loopexit.split-lp, %.body.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.body.loopexit ], [ %lpad.loopexit.split-lp, %.body.loopexit.split-lp ]
  %i.ag = load ptr, ptr %15, align 8, !tbaa !20
  call void @free(ptr noundef %i.ag) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.o

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductIS2_NS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.ah = call i32 @rand() #17, !noalias !35
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  store i64 %i.ai, ptr %17, align 8, !tbaa !38, !alias.scope !35
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %store_forwarded = phi i64 [ %i.ai, %bb.e ], [ %i.av, %bb.g ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.e ], [ %i.aw, %bb.g ] ; 4 uses
  %i.aj = getelementptr [8 x i8], ptr %17, i64 %.011.i.i.i
  %i.ak = lshr i64 %store_forwarded, 30
  %i.al = xor i64 %i.ak, %store_forwarded
  %i.am = mul nuw nsw i64 %i.al, 1812433253
  %i.an = add nuw i64 %i.am, %.011.i.i.i          ; 2 uses
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !38, !alias.scope !35
  %i.ap = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, 624
  br i1 %exitcond.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr [8 x i8], ptr %17, i64 %i.ap
  %i.ar = lshr i64 %i.ao, 30
  %i.as = xor i64 %i.ar, %i.an
  %i.at = mul i64 %i.as, 1812433253
  %i.au = add i64 %i.at, %i.ap
  %i.av = and i64 %i.au, 4294967295               ; 2 uses
  store i64 %i.av, ptr %i.aq, align 8, !tbaa !38, !alias.scope !35
  %i.aw = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  store i64 624, ptr %i.j, align 8, !tbaa !39, !alias.scope !35
  invoke void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_St23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEOT4_(i32 noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(5000) %17)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.ax = load ptr, ptr %15, align 8, !tbaa !20
  call void @free(ptr noundef %i.ax) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.ay = load ptr, ptr %14, align 8, !tbaa !41
  call void @free(ptr noundef %i.ay) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.az = load ptr, ptr %13, align 8, !tbaa !43
  call void @free(ptr noundef %i.az) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  invoke void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSL_IT2_EERNSL_IT3_EE(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %20, align 8, !tbaa !46
  call void @free(ptr noundef %i.ba) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView") align 8 %22, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !43
  call void @free(ptr noundef %i.bb) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  invoke void @_ZN3igl15rigid_alignmentIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EERNSJ_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.561)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.bc = load <2 x double>, ptr %8, align 8, !tbaa !51, !noalias !48 ; 3 uses
  %i.bd = load <2 x double>, ptr %23, align 16, !noalias !48 ; 3 uses
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = load <2 x double>, ptr %i.l, align 8, !tbaa !51, !noalias !48 ; 3 uses
  %i.bh = load <2 x double>, ptr %i.m, align 8, !noalias !48 ; 2 uses
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x double> %i.bg, %i.bi
  %i.bk = fadd <2 x double> %i.bf, %i.bj
  %i.bl = load <2 x double>, ptr %i.n, align 8, !tbaa !51, !noalias !48 ; 3 uses
  %i.bm = load <2 x double>, ptr %i.o, align 16, !noalias !48 ; 4 uses
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bl, %i.bn
  %i.bp = fadd <2 x double> %i.bk, %i.bo
  %i.bq = load double, ptr %i.p, align 8, !tbaa !9, !noalias !48 ; 3 uses
  %i.br = extractelement <2 x double> %i.bd, i64 0
  %i.bs = fmul double %i.br, %i.bq
  %i.bt = load double, ptr %i.c, align 8, !tbaa !9, !noalias !48 ; 3 uses
  %i.bu = extractelement <2 x double> %i.bh, i64 0
  %i.bv = fmul double %i.bu, %i.bt
  %i.bw = load double, ptr %i.d, align 8, !tbaa !9, !noalias !48 ; 3 uses
  %26 = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %27 = fmul <2 x double> %i.bc, %26
  %28 = load double, ptr %25, align 16, !tbaa !9, !noalias !48 ; 2 uses
  %29 = insertelement <2 x double> poison, double %28, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x double> %i.bg, %30
  %32 = fadd <2 x double> %27, %31
  %33 = load double, ptr %i.q, align 8, !tbaa !9, !noalias !48 ; 3 uses
  %34 = insertelement <2 x double> poison, double %33, i64 0
  %i.bx = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bl, %i.bx
  %i.bz = fadd <2 x double> %32, %i.by
  store <2 x double> %i.bz, ptr %.sroa.561.8..sroa_idx, align 8, !tbaa !51, !alias.scope !48
  %35 = insertelement <2 x double> poison, double %i.bw, i64 0
  %36 = insertelement <2 x double> %35, double %i.bq, i64 1
  %i.ca = fmul <2 x double> %i.bm, %36            ; 2 uses
  %37 = extractelement <2 x double> %i.ca, i64 0
  %38 = fadd double %i.bv, %37
  %39 = fadd double %i.bs, %38
  store double %39, ptr %.sroa.561, align 16, !tbaa !9, !alias.scope !48
  %40 = fmul double %i.bt, %28
  %i.cb = fmul double %i.bw, %33
  %41 = fadd double %40, %i.cb
  %42 = extractelement <2 x double> %i.ca, i64 1
  %i.cc = fadd double %42, %41
  store double %i.cc, ptr %.sroa.561.24..sroa_idx75, align 8, !tbaa !9, !alias.scope !48
  %43 = load double, ptr %i.r, align 16, !tbaa !9, !noalias !48 ; 2 uses
  %44 = insertelement <2 x double> poison, double %43, i64 0
  %i.cd = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.bc, %i.cd
  %45 = load double, ptr %i.s, align 8, !tbaa !9, !noalias !48 ; 2 uses
  %46 = insertelement <2 x double> poison, double %45, i64 0
  %i.cf = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.bg, %i.cf
  %i.ch = fadd <2 x double> %i.ce, %i.cg
  %47 = load double, ptr %i.t, align 16, !tbaa !9, !noalias !48 ; 3 uses
  %48 = insertelement <2 x double> poison, double %47, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = fmul <2 x double> %i.bl, %49
  %51 = fadd <2 x double> %i.ch, %50
  %52 = fmul double %i.bq, %43
  %53 = fmul double %i.bt, %45
  %54 = fmul double %i.bw, %47
  %55 = fadd double %53, %54
  %i.ci = fadd double %52, %55
  store <2 x double> %i.bp, ptr %8, align 8, !tbaa !51
  %.sroa.561.0..sroa.561.0..sroa.561.0..sroa.561.16. = load <2 x double>, ptr %.sroa.561, align 16, !tbaa !51
  store <2 x double> %.sroa.561.0..sroa.561.0..sroa.561.0..sroa.561.16., ptr %i.p, align 8, !tbaa !51
  %.sroa.561.16..sroa.561.16..sroa.561.16..sroa.561.32. = load <2 x double>, ptr %.sroa.561.16..sroa_idx, align 16, !tbaa !51
  store <2 x double> %.sroa.561.16..sroa.561.16..sroa.561.16..sroa.561.32., ptr %i.b, align 8, !tbaa !51
  store <2 x double> %51, ptr %i.n, align 8, !tbaa !51
  store double %i.ci, ptr %i.d, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.561)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17, !noalias !52
  store ptr %i.v, ptr %i.u, align 8, !tbaa !55, !noalias !52
  %i.cj = load <2 x double>, ptr %9, align 8, !tbaa !51, !noalias !52 ; 3 uses
  %i.ck = fmul <2 x double> %i.bd, %i.cj          ; 2 uses
  %i.cl = load double, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9, !noalias !52 ; 2 uses
  %56 = load <2 x double>, ptr %i.w, align 8, !tbaa !51, !noalias !52
  %i.cm = fmul <2 x double> %i.cj, %56            ; 2 uses
  %i.cn = shufflevector <2 x double> %i.ck, <2 x double> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.co = shufflevector <2 x double> %i.ck, <2 x double> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cp = fadd <2 x double> %i.cn, %i.co
  %i.cq = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %57 = insertelement <2 x double> %i.bm, double %33, i64 1
  %i.cs = fmul <2 x double> %i.cr, %57
  %i.ct = fadd <2 x double> %i.cp, %i.cs
  store <2 x double> %i.ct, ptr %i.v, align 8, !tbaa !9, !noalias !52
  %58 = load <2 x double>, ptr %i.r, align 16, !tbaa !51, !noalias !52
  %i.cu = fmul <2 x double> %i.cj, %58            ; 2 uses
  %shift.a = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x double> %i.cu, %shift.a
  %i.cv = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.cw = fmul double %47, %i.cl
  %i.cx = fadd double %i.cw, %i.cv
  %i.cy = load <2 x double>, ptr %i.v, align 8, !tbaa !51, !noalias !52
  %i.cz = load <2 x double>, ptr %24, align 16, !tbaa !51, !noalias !52
  %i.da = fadd <2 x double> %i.cy, %i.cz
  %i.db = load double, ptr %i.x, align 16, !tbaa !9, !noalias !52
  %i.dc = fadd double %i.cx, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17, !noalias !52
  store <2 x double> %i.da, ptr %9, align 8, !tbaa !51
  store double %i.dc, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.dd = load ptr, ptr %21, align 8, !tbaa !20
  call void @free(ptr noundef %i.dd) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.de = load ptr, ptr %19, align 8, !tbaa !20
  call void @free(ptr noundef %i.de) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.df = load ptr, ptr %18, align 8, !tbaa !43
  call void @free(ptr noundef %i.df) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %i.dg = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.dg) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.dh = add nuw nsw i32 %.03166, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !57

bb.n:                                             ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.dj = load ptr, ptr %15, align 8, !tbaa !20
  call void @free(ptr noundef %i.dj) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.body
  %.pn = phi { ptr, i32 } [ %i.di, %bb.n ], [ %lpad.phi, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.dk = load ptr, ptr %14, align 8, !tbaa !41
  call void @free(ptr noundef %i.dk) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.dl = load ptr, ptr %13, align 8, !tbaa !43
  call void @free(ptr noundef %i.dl) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.w

bb.p:                                             ; preds = %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %20, align 8, !tbaa !46
  call void @free(ptr noundef %i.dn) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.v

bb.q:                                             ; preds = %bb.j
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !43
  call void @free(ptr noundef %i.dq) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn37 = phi { ptr, i32 } [ %i.dp, %bb.r ], [ %i.do, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.ds = load ptr, ptr %21, align 8, !tbaa !20
  call void @free(ptr noundef %i.ds) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn39.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.t ], [ %.pn37, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.u ], [ %i.dm, %bb.p ]
  %i.dt = load ptr, ptr %19, align 8, !tbaa !20
  call void @free(ptr noundef %i.dt) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.du = load ptr, ptr %18, align 8, !tbaa !43
  call void @free(ptr noundef %i.du) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %.pn39.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %bb.v ], [ %.pn, %bb.o ]
  %i.dv = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.dv) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.e, align 8, !tbaa !9
  %i.f = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %i.f)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit unwind label %bb.c, !inline_history !24

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #18, !inline_history !24
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 80) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %i.k)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit5 unwind label %bb.f, !inline_history !24

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #18, !inline_history !24
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit5: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 80) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit5, %bb.d
  store ptr null, ptr %i.j, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.p, align 8, !tbaa !59
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = icmp eq ptr %i.t, %0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.s, align 8, !tbaa !60
  br label %bb.l

end_hunk_0
